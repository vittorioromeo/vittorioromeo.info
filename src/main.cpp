#include <vector>
#include <map>
#include <string>
#include <experimental/optional>
#include <SSVUtils/Core/Core.hpp>
#include <SSVUtils/Json/Json.hpp>
#include <SSVUtils/TemplateSystem/TemplateSystem.hpp>
#include <DiscountCpp/DiscountCpp.hpp>
#include <vrm/core/strong_typedef.hpp>

namespace std
{
    using namespace std::experimental;
}

using sz_t = std::size_t;

VRM_CORE_STRONG_TYPEDEF(sz_t, aside_id);
VRM_CORE_STRONG_TYPEDEF(sz_t, page_id);
VRM_CORE_STRONG_TYPEDEF(sz_t, entry_id);


namespace constant
{
    namespace folder
    {
        namespace name
        {
            std::string pages{"_pages"};
            std::string entries{"_entries"};
            std::string asides{"_asides"};

            std::string content{"content"};
            std::string resources{"resources"};
            std::string result{"result"};
            std::string temp{"temp"};
        }

        namespace path
        {
            std::string content{folder::name::content + "/"};

            std::string pages{content + folder::name::pages + "/"};

            std::string result{folder::name::result + "/"};
            std::string temp{folder::name::temp + "/"};

            std::string resources{"/" + folder::name::resources};
        }
    }

    namespace file
    {
        std::string page_json{"_page.json"};
        std::string main_menu_json{"_menu.json"};
    }
}


namespace utils
{
    size_t find_nth(const std::string& haystack, size_t pos,
        const std::string& needle, size_t nth)
    {
        size_t found_pos = haystack.find(needle, pos);
        if(0 == nth || std::string::npos == found_pos) return found_pos;
        return find_nth(haystack, found_pos + 1, needle, nth - 1);
    }

    // TODO:
    /*
    auto path_depth(const ssvufs::Path& p)
    {
        return ssvu::getCharCount(p, '/');
    }

    auto resources_folder_path(sz_t depth)
    {
        ssvufs::Path result;

        for(sz_t i(0); i < depth + 1; ++i)
        {
            result += "../";
        }

        return result + "resources";
    }
    */

    auto html_from_md(const ssvufs::Path& p)
    {
#if 0
        return discountcpp::getHTMLFromMarkdownFile(p);
#else
        std::string cmd = "mkdir -p "s + constant::folder::path::temp +
                          " ; touch "s + constant::folder::path::temp +
                          "temp.html ; chmod 777 "s +
                          constant::folder::path::temp + "temp.html ; "s +
                          "pandoc --mathjax --highlight-style=pygments " + p +
                          " -o "s + constant::folder::path::temp + "temp.html";

        system(cmd.c_str());

        std::ifstream ifs{constant::folder::path::temp + "temp.html"};
        return std::string{std::istreambuf_iterator<char>(ifs),
            std::istreambuf_iterator<char>()};

#endif
    }

    auto expand_to_dictionary(
        const ssvufs::Path& working_directory, const ssvj::Val& mVal)
    {
        ssvu::TemplateSystem::Dictionary result;

        for(const auto& p : mVal.forObjAs<std::string>())
        {
            if(ssvu::endsWith(p.value, ".md"))
            {
                auto md_path = working_directory + ssvufs::Path{p.value};
                result[p.key] = html_from_md(md_path);
            }
            else
            {
                result[p.key] = p.value;
            }
        }

        return result;
    }

    void write_to_file(const ssvufs::Path& p, const std::string& s)
    {
        auto p_parent = p.getParent();
        if(!p_parent.exists<ssvufs::Type::Folder>())
        {
            std::string cmd("mkdir -p "s + p_parent.getStr());
            system(cmd.c_str());
        }

        assert(p_parent.exists<ssvufs::Type::Folder>());

        std::ofstream o{p};
        o << s;
        o.flush();
    }

    template <typename TF>
    void segmented_for(sz_t split_count, sz_t per_split, sz_t total, TF&& f)
    {
        assert(split_count > 0);

        for(sz_t i_split = 0; i_split < split_count - 1; ++i_split)
        {
            auto i_begin = i_split * per_split;
            auto i_end = (i_split + 1) * per_split;
            f(i_split, i_begin, i_end);
        }

        {
            auto i_split = split_count - 1;
            auto i_begin = i_split * per_split;
            auto i_end = total;
            f(i_split, i_begin, i_end);
        }
    }
}



namespace archetype
{
    struct main_menu_entry
    {
        std::string _label;
        std::string _href;
    };

    struct main_menu
    {
        std::vector<main_menu_entry> _menu_entries;
    };

    namespace impl
    {
        struct element
        {
            // TODO: probably good place to use `string_view`: store full path
            // in an `std::string` and slices in `string_view`

            ssvufs::Path _template_path;
            ssvu::TemplateSystem::Dictionary _expand;
            ssvufs::Path _output_path;
            page_id _parent_page;
        };
    }

    struct aside : public impl::element
    {
    };

    struct entry : public impl::element
    {
        std::optional<std::string> _link_name;
    };

    struct page
    {
        std::string _name;
        ssvufs::Path _path;
        std::string _full_name;
        ssvufs::Path _output_path;
        std::optional<sz_t> _subpaging;
        std::vector<entry_id> _entries;
        std::vector<aside_id> _asides;
    };
}

namespace structure
{
    namespace impl
    {
        template <typename TID, typename TArchetype>
        class mapping
        {
        private:
            std::map<TID, TArchetype> _archetypes;
            TID _next_id{0};

        public:
            template <typename TF>
            void create(TF&& f)
            {
                f(_next_id, _archetypes[_next_id]);
                ++_next_id;
            }

            const auto& get(TID id) const
            {
                return _archetypes.at(id);
            }

            template <typename TF>
            void for_all(TF&& f)
            {
                for(auto& a : _archetypes)
                {
                    f(std::get<0>(a), std::get<1>(a));
                }
            }
        };
    }

    using aside_mapping = impl::mapping<aside_id, archetype::aside>;
    using entry_mapping = impl::mapping<entry_id, archetype::entry>;
    using page_mapping = impl::mapping<page_id, archetype::page>;

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

using namespace ssvu::FileSystem;
using namespace ssvu::TemplateSystem;
using namespace ssvu::Json;

template <typename TF>
void for_all_page_json_files(TF&& f)
{
    std::vector<Path> page_json_paths{
        getScan<Mode::Recurse, Type::File, Pick::ByName>(
            constant::folder::path::pages, constant::file::page_json)};

    for(auto& p : page_json_paths)
    {
        const auto& path = p;
        const auto& name = p.getParent().getFolderName();

        const auto& full_name =
            ssvu::getTrimR(ssvu::getReplaced(p.getParent().getStr(),
                               constant::folder::path::pages, ""),
                [](char c)
                {
                    return c == '/';
                });

        const auto& contents = ssvj::fromFile(path);

        f(path, name, full_name, contents);
    }
}

// TODO: patreon button in template

namespace impl
{
    template <typename TF>
    void for_all_page_element_files(
        const std::string& element_folder_name, ssvufs::Path page_path, TF&& f)
    {
        ssvufs::Path elements_path =
            page_path.getParent() + element_folder_name;

        if(!elements_path.exists<ssvufs::Type::Folder>())
        {
            return;
        }

        std::vector<Path> json_files{
            getScan<Mode::Recurse, Type::File, Pick::ByExt>(
                elements_path, ".json")};

        for(auto& path : json_files)
        {
            // Filename without extension.
            const auto& name =
                ssvu::getReplaced(path.getFileName(), ".json", "");

            // Remove parent elements folder and `.json` extension.
            const auto& full_name = ssvu::getReplaced(
                ssvu::getReplaced(path.getStr(), elements_path, ""), ".json",
                "");

            // Read json contents.
            const auto& json_val = ssvj::fromFile(path);

            f(path, name, full_name, json_val);
        }
    }

    template <typename TF>
    void for_all_elements(
        const std::string& element_folder_name, ssvufs::Path page_path, TF&& f)
    {
        for_all_page_element_files(element_folder_name, page_path,
            [&f](auto path, auto name, auto full_name, Val element_json)
            {
                // Force link/output name of a group of entries.
                if(element_json.has("link_name"))
                {
                    auto link_name = element_json["link_name"].as<Str>();
                    ssvu::replace(full_name, name, link_name);
                    name = link_name;
                }

                for(Val element : element_json["elements"].forArr())
                {
                    f(path, name, full_name, element);
                }
            });
    }
}

template <typename TF>
void for_all_entry_json_files(ssvufs::Path page_path, TF&& f)
{
    impl::for_all_page_element_files(
        constant::folder::name::entries, page_path, FWD(f));
}

template <typename TF>
void for_all_aside_json_files(ssvufs::Path page_path, TF&& f)
{
    impl::for_all_page_element_files(
        constant::folder::name::asides, page_path, FWD(f));
}

template <typename TF>
void for_all_entries(ssvufs::Path page_path, TF&& f)
{
    impl::for_all_elements(constant::folder::name::entries, page_path, FWD(f));
}

template <typename TF>
void for_all_asides(ssvufs::Path page_path, TF&& f)
{
    impl::for_all_elements(constant::folder::name::asides, page_path, FWD(f));
}


struct context
{
    structure::aside_mapping _aside_mapping;
    structure::entry_mapping _entry_mapping;
    structure::page_mapping _page_mapping;

    // TODO: already expanded menu
    archetype::main_menu _main_menu;

    // structure::page_hierarchy _page_hierarchy;
};

struct subpage_expansion
{
    std::vector<std::string> _expanded_entries;
    std::string _link;

    auto produce_result(context& ctx, const archetype::page& ap,
        const std::vector<subpage_expansion>& subpages, const Path& output_path,
        const std::vector<std::string>& expanded_asides)
    {
        (void)output_path;

        Dictionary dict;

        for(const auto& e : _expanded_entries)
        {
            dict["Entries"] += Dictionary{"Entry", e};
        }

        for(const auto& a : expanded_asides)
        {
            dict["Asides"] += Dictionary{"Aside", a};
        }



        // Pagination controls

        if(ap._subpaging)
        {
            int aidx = 0;
            for(const auto& a : subpages)
            {
                Dictionary inner_dict;

                inner_dict["Subpage"] =
                    ssvu::getReplaced(a._link, "result/", "/");

                if(a._link == _link)
                {
                    inner_dict["SubpageLabel"] =
                        "[[ " + std::to_string(aidx++) + " ]]";
                }
                else
                {
                    inner_dict["SubpageLabel"] = std::to_string(aidx++);
                }

                dict["Subpages"] += inner_dict;
            }
        }



        auto main_exp =
            dict.getExpanded(Path{"templates/base/main.tpl"}.getContentsAsStr(),
                Settings::EraseUnexisting);

        Dictionary dict2;



        // Expand main menu to string

        auto mm_template =
            Path{"templates/base/mainMenu.tpl"}.getContentsAsStr();

        Dictionary mm_dict;
        for(const auto& mm_e : ctx._main_menu._menu_entries)
        {
            Dictionary mm_inner_dict;
            mm_inner_dict["Link"] = mm_e._href;
            mm_inner_dict["Title"] = mm_e._label;

            mm_dict["MenuItems"] += mm_inner_dict;
        }

        auto mm_res =
            mm_dict.getExpanded(mm_template, Settings::EraseUnexisting);

        dict2["MainMenu"] = mm_res;


        dict2["Main"] = main_exp;
        dict2["ResourcesPath"] = constant::folder::path::resources;
        return dict2.getExpanded(Path{"templates/page.tpl"}.getContentsAsStr(),
            Settings::EraseUnexisting);
    }
};

struct page_expansion
{
    std::vector<std::string> _expanded_asides;

    std::vector<subpage_expansion> _subpages;

    auto produce_result(
        context& ctx, const archetype::page& ap, const Path& output_path)
    {
        assert(_subpages.size() > 0);


        // Generate asides
        for(auto aid : ap._asides)
        {
            auto aa = ctx._aside_mapping.get(aid);
            auto& dict = aa._expand;

            auto aside_exp =
                dict.getExpanded(Path{aa._template_path}.getContentsAsStr(),
                    Settings::EraseUnexisting);

            _expanded_asides.emplace_back(std::move(aside_exp));
        }



        // Set links

        auto& first_subpage = _subpages[0];
        first_subpage._link = output_path.getStr();


        for(sz_t i = 1; i < _subpages.size(); ++i)
        {
            auto adapted_op = output_path.getStr();
            ssvu::replace(
                adapted_op, ".html", "/" + std::to_string(i) + ".html");
            _subpages[i]._link = adapted_op;
        }


        // ---
        // Write to file
        auto first_subpage_html = first_subpage.produce_result(
            ctx, ap, _subpages, output_path, _expanded_asides);

        utils::write_to_file(output_path, first_subpage_html);

        for(sz_t i = 1; i < _subpages.size(); ++i)
        {
            utils::write_to_file(_subpages[i]._link,
                _subpages[i].produce_result(ctx, ap, _subpages,
                    Path{_subpages[i]._link}, _expanded_asides));
        }
    }
};

void process_page_entries(context& ctx, const Path& output_path,
    const Path& path, page_id pid, archetype::page& ap)
{
    for_all_entries(path, [&ctx, &output_path, &pid, &ap](auto e_path,
                              auto e_name, auto e_full_name, Val e_contents)
        {
            ctx._entry_mapping.create([&](auto eid, auto& ae)
                {
                    ssvu::lo("Entry|parent_page") << pid << "\n";
                    ssvu::lo("Entry|path") << e_path << " [" << eid << "]\n";
                    ssvu::lo("Entry|name") << e_name << "/" << eid << "\n";
                    ssvu::lo("Entry|full_name") << e_full_name << "/" << eid
                                                << "\n";



                    auto e_template_path = e_contents["template"].as<Str>();
                    auto e_expand_data = e_contents["expand"].as<Val>();
                    auto wd = e_path.getParent();
                    auto dic = utils::expand_to_dictionary(wd, e_expand_data);

                    auto e_output_path =
                        Path{ssvu::getReplaced(output_path, ".html", "")} +
                        "/" + e_full_name;

                    // Register entry.
                    ap._entries.emplace_back(eid);


                    if(e_contents.has("link_name"))
                    {
                        auto link_name = e_contents["link_name"].as<Str>();
                        ae._link_name = link_name;
                        e_output_path += "/" + link_name + ".html";
                    }
                    else
                    {
                        e_output_path += "/" + std::to_string(eid) + ".html";
                    }



                    ae._template_path = e_template_path;
                    ae._expand = dic;
                    ae._output_path = e_output_path;
                    ae._parent_page = pid;


                    ssvu::lo("Entry|output_path") << e_output_path << "\n";
                    ssvu::lo("Entry|template") << e_template_path << "\n";
                    ssvu::lo("Entry|expand") << e_expand_data << "\n";



                    // ssvu::lo("Entry|dic|text")
                    //    << dic.getExpanded("{{Text}}") <<
                    //    "\n";

                    // Increment unique entry id.
                    ssvu::lo() << "\n";
                });
        });
}

void process_page_asides(context& ctx, const Path& output_path,
    const Path& path, page_id pid, archetype::page& ap)
{
    for_all_asides(path, [&ctx, &pid, &ap, &output_path](auto a_path,
                             auto a_name, auto a_full_name, Val a_contents)
        {
            ctx._aside_mapping.create([&](auto aid, auto& aa)
                {
                    ssvu::lo("Aside|parent_page") << pid << "\n";
                    ssvu::lo("Aside|path") << a_path << "\n";
                    ssvu::lo("Aside|name") << a_name << "\n";
                    ssvu::lo("Aside|full_name") << a_full_name << "\n";

                    auto template_path = a_contents["template"].as<Str>();
                    auto a_expand_data = a_contents["expand"].as<Val>();

                    auto a_output_path =
                        Path{ssvu::getReplaced(output_path, ".html", "")} +
                        "/" + a_full_name;

                    auto wd = a_path.getParent();
                    auto dict = utils::expand_to_dictionary(wd, a_expand_data);


                    // Register aside.
                    ap._asides.emplace_back(aid);

                    aa._parent_page = pid;
                    aa._template_path = template_path;
                    aa._output_path = a_output_path;
                    aa._expand = dict;


                    // Increment unique aside id.
                    ssvu::lo() << "\n";
                });
        });
}

void clean_and_recreate_result_folder()
{
    Path rp{constant::folder::path::result};
    if(rp.exists<Type::Folder>())
    {
        std::string cmd("rm -R ./"s + constant::folder::name::result);
        system(cmd.c_str());
    }

    if(!rp.exists<Type::Folder>())
    {
        ssvufs::createFolder(rp);

        std::string mk_link(
            "ln -s ../resources/ ./" + constant::folder::name::result);
        system(mk_link.c_str());
    }
}

void load_main_menu_data(context& ctx)
{
    auto main_menu_json_path =
        Path{constant::folder::path::content + constant::file::main_menu_json};

    auto main_menu_json = ssvj::fromFile(main_menu_json_path);
    auto& mm_entries = ctx._main_menu._menu_entries;

    for(auto mm_e : main_menu_json.forArr())
    {
        mm_entries.emplace_back();
        auto& last_e = mm_entries.back();

        last_e._label = mm_e["label"].as<Str>();
        last_e._href = mm_e["href"].as<Str>();

        ssvu::lo("MMEntry|label") << last_e._label << "\n";
        ssvu::lo("MMEntry|href") << last_e._href << "\n\n";
    };
}

void load_page_data(context& ctx)
{
    for_all_page_json_files(
        [&ctx](auto path, auto name, auto full_name, Val contents)
        {
            // Register page.
            ctx._page_mapping.create([&](auto pid, auto& ap)
                {
                    auto output_path =
                        std::string{constant::folder::path::result} +
                        full_name + ".html";

                    // Log data about page.
                    ssvu::lo("Page|id") << pid << "\n";
                    ssvu::lo("Page|path") << path << "\n";
                    ssvu::lo("Page|name") << name << "\n";
                    ssvu::lo("Page|full_name") << full_name << "\n";
                    ssvu::lo("Page|output_path") << output_path << "\n";

                    ap._name = name;
                    ap._path = path;
                    ap._full_name = full_name;
                    ap._output_path = output_path;

                    // Check for subpaging options.
                    if(contents.has("subpaging"))
                    {
                        auto eps = contents["subpaging"]["entries_per_subpage"]
                                       .as<IntU>();
                        ap._subpaging = eps;
                        ssvu::lo("Page|eps") << eps << "\n";
                    }

                    process_page_entries(ctx, output_path, path, pid, ap);
                    process_page_asides(ctx, output_path, path, pid, ap);
                });
        });
}

void process_pages(context& ctx)
{
    ctx._page_mapping.for_all([&ctx](auto, const archetype::page& ap)
        {
            page_expansion pe;


            const auto& entry_ids = ap._entries;
            if(entry_ids.empty())
            {
                return;
            }



            // Expand permalinks (single-article pages)
            for(auto eid : entry_ids)
            {
                // Create copy of page archetype for the single-article pages
                // and disable automatic pagination
                auto my_ap = ap;
                my_ap._subpaging = std::nullopt;

                auto ae = ctx._entry_mapping.get(eid);
                if(!ae._link_name)
                {
                    continue;
                }


                page_expansion permalink_pe;
                permalink_pe._subpages.emplace_back();
                auto& subpage = permalink_pe._subpages.back();

                auto permalink_output_path = ae._output_path;
                auto canonical_permalink_url =
                    ssvu::getReplaced(permalink_output_path.getStr(),
                        constant::folder::path::result,
                        "http://vittorioromeo.info/");

                ae._expand["CommentsBox"] =
                    R"(
                    <div id="disqus_thread"></div>
                    <script>

                    var disqus_url = 'http://vittorioromeo.info';

                    var disqus_config = function () {
                        this.page.url = ")" +
                    canonical_permalink_url +
                    R"(";
                        this.page.identifier = ")" +
                    ae._link_name.value() +
                    R"(";
                    };

                    (function() {
                        var d = document, s = d.createElement('script');
                        s.src = 'https://vittorioromeo.disqus.com/embed.js';
                        s.setAttribute('data-timestamp', +new Date());
                        (d.head || d.body).appendChild(s);
                    })();
                    </script>)";

                auto e_template = Path{ae._template_path}.getContentsAsStr();
                auto e_expanded = ae._expand.getExpanded(
                    e_template, Settings::EraseUnexisting);

                subpage._expanded_entries.emplace_back(e_expanded);
                permalink_pe.produce_result(ctx, my_ap, permalink_output_path);
            }



            auto entries_per_subpage = ap._subpaging
                                           ? ap._subpaging.value()
                                           : std::numeric_limits<sz_t>::max();


            auto subpage_count = entry_ids.size() / entries_per_subpage;

            utils::segmented_for(subpage_count, entries_per_subpage,
                entry_ids.size(), [&](auto idx, auto i_begin, auto i_end)
                {
                    (void)idx;

                    pe._subpages.emplace_back();
                    auto& subpage = pe._subpages.back();

                    for(sz_t ei(i_begin); ei < i_end; ++ei)
                    {
                        std::cout << ei << " / " << entry_ids.size() << "\r";

                        auto ae = ctx._entry_mapping.get(entry_ids[ei]);

                        auto e_template =
                            Path{ae._template_path}.getContentsAsStr();

                        // Has permalink
                        if(ae._link_name)
                        {
                            auto atag_link = "<a href='" +
                                             ssvu::getReplaced(ae._output_path,
                                                 "result/", "") +
                                             "'>";

                            auto atag_link_styled =
                                "<a style='color: black; text-decoration: "
                                "none;' href='" +
                                ssvu::getReplaced(
                                    ae._output_path, "result/", "") +
                                "'>";


                            std::string old_text = ae._expand["Text"].asStr();
                            auto second_paragraph =
                                utils::find_nth(old_text, 0, "</p>", 2);

                            if(second_paragraph != std::string::npos)
                            {

                                auto new_text =
                                    old_text.substr(0, second_paragraph + 4);
                                new_text +=
                                    "<p style='text-align: right; font-style: italic; font-size: small;'> "s +
                                    atag_link + " ... read more </a></p>";

                                ae._expand["Text"] = new_text;
                            }

                            ae._expand["PermalinkBegin"] = atag_link_styled;
                            ae._expand["PermalinkEnd"] = "</a>";
                        }

                        auto e_expanded = ae._expand.getExpanded(
                            e_template, Settings::EraseUnexisting);

                        subpage._expanded_entries.emplace_back(e_expanded);
                    }
                });

            pe.produce_result(ctx, ap, ap._output_path);
        });
}

int main()
{
    clean_and_recreate_result_folder();

    context ctx;
    load_main_menu_data(ctx);
    load_page_data(ctx);
    process_pages(ctx);

    return 0;
}
