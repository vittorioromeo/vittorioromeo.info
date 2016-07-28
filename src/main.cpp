#include <vector>
#include <map>
#include <string>
#include <experimental/optional>
#include <SSVUtils/Core/Core.hpp>
#include <SSVUtils/Json/Json.hpp>
#include <SSVUtils/TemplateSystem/TemplateSystem.hpp>
#include <DiscountCpp/DiscountCpp.hpp>

namespace std
{
    using namespace std::experimental;
}

namespace utils
{
    auto expand_to_dictionary(const ssvufs::Path& wd, const ssvj::Val& mVal)
    {
        ssvu::TemplateSystem::Dictionary result;

        for(const auto& p : mVal.forObjAs<std::string>())
        {
            if(ssvu::endsWith(p.value, ".md"))
            {
                result[p.key] = discountcpp::getHTMLFromMarkdownFile(
                    wd + ssvufs::Path{p.value});
            }
            else
            {
                result[p.key] = p.value;
            }
        }

        return result;
    }
}

using sz_t = std::size_t;
using page_id = sz_t;

namespace archetype
{
    struct entry
    {
        ssvufs::Path _template_path;
        ssvu::TemplateSystem::Dictionary _expand;
    };

    struct page
    {
        std::string _name;
        ssvufs::Path _path;
        std::string _full_name;
        std::string _output_path;
        std::optional<sz_t> _subpaging;
        std::vector<entry> _entries;
    };
}

namespace structure
{
    class page_mapping
    {
    private:
        std::map<page_id, archetype::page> _archetypes;

    public:
        auto& add(page_id pid)
        {
            _archetypes[pid] = archetype::page{};
            return _archetypes[pid];
        }

        auto get(page_id pid) const
        {
            return _archetypes.at(pid);
        }
    };

    /*
    class page_hierarchy
    {
    private:
        std::map<page_id, std::vector<page_id>> _children;
        std::map<page_id, page_id> _parents;

    public:
        void add(page_id parent, page_id child)
        {
            _children[parent].emplace_back(child);
            _parents[child] = parent;
        }
    };
    */
}

constexpr const char* pages_path = "content/_pages/";
constexpr const char* result_path = "result/";
constexpr const char* page_json = "_page.json";

using namespace ssvu::FileSystem;
using namespace ssvu::TemplateSystem;
using namespace ssvu::Json;

template <typename TF>
void for_all_page_json_files(TF&& f)
{
    std::vector<Path> page_json_paths{
        getScan<Mode::Recurse, Type::File, Pick::ByName>(
            pages_path, page_json)};

    for(auto& p : page_json_paths)
    {
        const auto& path = p;
        const auto& name = p.getParent().getFolderName();

        const auto& full_name = ssvu::getTrimR(
            ssvu::getReplaced(p.getParent().getStr(), pages_path, ""),
            [](char c)
            {
                return c == '/';
            });

        const auto& contents = ssvj::fromFile(path);

        f(path, name, full_name, contents);
    }
}

template <typename TF>
void for_all_entry_json_files(ssvufs::Path page_path, TF&& f)
{
    ssvufs::Path entries_path = page_path.getParent() + "_entries/";
    if(!entries_path.exists<ssvufs::Type::Folder>())
    {
        return;
    }

    std::vector<Path> entry_json_paths{
        getScan<Mode::Recurse, Type::File, Pick::ByExt>(pages_path, ".json")};

    for(auto& p : entry_json_paths)
    {
        const auto& path = p;
        const auto& name = ssvu::getReplaced(p.getFileName(), ".json", "");

        if(name == "_page")
        {
            continue;
        }

        const auto& full_name = ssvu::getReplaced(
            ssvu::getTrimR(ssvu::getReplaced(p.getStr(), entries_path, ""),
                [](char c)
                {
                    return c == '/';
                }),
            ".json", "");

        const auto& contents = ssvj::fromFile(path);

        f(path, name, full_name, contents);
    }
}

struct context
{
    page_id _next_page_id = 0;
    structure::page_mapping _page_mapping;
    // structure::page_hierarchy _page_hierarchy;
};

int main()
{
    context ctx;

    for_all_page_json_files(
        [&ctx](auto path, auto name, auto full_name, Val contents)
        {
            // Alias next page id.
            auto& pid = ctx._next_page_id;

            // Log data about page.
            ssvu::lo("Page|id") << pid << "\n";
            ssvu::lo("Page|path") << path << "\n";
            ssvu::lo("Page|name") << name << "\n";
            ssvu::lo("Page|full_name") << full_name << "\n";

            auto output_path = std::string{result_path} + full_name + ".html";
            ssvu::lo("Page|output_path") << output_path << "\n";

            // Register page.
            auto& ap = ctx._page_mapping.add(pid);
            ap._name = name;
            ap._path = path;
            ap._full_name = full_name;
            ap._output_path = output_path;

            // Check for subpaging options.
            if(contents.has("subpaging"))
            {
                auto eps =
                    contents["subpaging"]["entries_per_subpage"].as<IntU>();
                ap._subpaging = eps;
                ssvu::lo("Page|eps") << eps << "\n";
            }

            // Get entries.
            for_all_entry_json_files(path,
                [&output_path](auto e_path, auto e_name, auto e_full_name, Val)
                {
                    ssvu::lo("Entry|path") << e_path << "\n";
                    ssvu::lo("Entry|name") << e_name << "\n";
                    ssvu::lo("Entry|full_name") << e_full_name << "\n";

                    auto e_output_path =
                        Path{ssvu::getReplaced(output_path, ".html", "")} + "/" + e_full_name + ".html";
                    ssvu::lo("Entry|output_path") << e_output_path << "\n";

                    ssvu::lo() << "\n";
                });

            // Increment unique page id.
            ssvu::lo() << "\n";
            ++pid;
        });


    return 0;
}
