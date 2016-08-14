#include <vector>
#include <map>
#include <string>
#include <experimental/optional>
#include <SSVUtils/Core/Core.hpp>
#include <SSVUtils/Json/Json.hpp>
#include <SSVUtils/TemplateSystem/TemplateSystem.hpp>
#include <vrm/core/strong_typedef.hpp>
#include <vrm/core/static_if.hpp>

constexpr bool verbose{true};

// "DRY? nope" -gcc
auto& lo_verbose()
{
    using namespace vrm::core;

    return static_if(bool_v<verbose>)
        .then([]() -> auto&
            {
                return ssvu::lo();
            })
        .else_([]() -> auto&
            {
                static auto ln = ssvu::loNull();
                return ln;
            })();
}

template <typename... Ts>
auto& lo_verbose(Ts&&... xs)
{
    using namespace vrm::core;

    return static_if(bool_v<verbose>)
        .then([](auto&&... ys) -> auto&
            {
                return ssvu::lo(FWD(ys)...);
            })
        .else_([](auto&&...) -> auto&
            {
                static auto ln = ssvu::loNull();
                return ln;
            })(FWD(xs)...);
}

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

    namespace url
    {
        namespace path
        {
            std::string website{"http://vittorioromeo.info/"};
        }
    }
}


namespace utils
{
    template <typename T>
    auto find_nth(const std::string& haystack, sz_t pos, const T& needle,
        sz_t nth) noexcept
    {
        auto found_pos = haystack.find(needle, pos);

        if(nth == 0 || std::string::npos == found_pos)
        {
            return found_pos;
        }

        return find_nth(haystack, found_pos + 1, needle, nth - 1);
    }

    template <typename T>
    void exec_cmd(T&& x)
    {
        std::string cmd(FWD(x));
        system(cmd.c_str());
    }

    namespace impl
    {
        auto html_from_md(const ssvufs::Path& p)
        {
            const auto& tempf = constant::folder::path::temp;

            {
                std::ostringstream oss;
                oss << "mkdir -p " << tempf << " ; touch " << tempf
                    << "temp.html ; chmod 777 " << tempf << "temp.html ; "
                    << "/usr/local/bin/pp -en " << p << " > " << tempf
                    << "x.md ; "
                    << "pandoc --mathjax --highlight-style=pygments " << tempf
                    << "x.md"
                    << " -o " << tempf << "temp.html";

                utils::exec_cmd(oss.str());
            }

            std::ifstream ifs{tempf + "temp.html"};
            return ssvu::getReplacedAll(
                std::string{std::istreambuf_iterator<char>(ifs),
                    std::istreambuf_iterator<char>()},
                "src=\"resources/", "src=\"/resources/");
            ;
        }

        template <typename T>
        auto expand_kv_pair(const ssvufs::Path& working_directory, const T& p)
        {
            if(ssvu::endsWith(p, ".md"))
            {
                auto md_path = working_directory + ssvufs::Path{p};
                return html_from_md(md_path);
            }

            return p;
        }
    }

    ssvu::TemplateSystem::Dictionary expand_to_dictionary(
        const ssvufs::Path& working_directory, const ssvj::Val& mVal)
    {
        using namespace ssvj;

        ssvu::TemplateSystem::Dictionary result;

        for(const auto& p : mVal.forObj())
        {
            if(p.value.is<Str>())
            {
                const auto& o = p.value.as<Str>();
                result[p.key] = impl::expand_kv_pair(working_directory, o);
            }
            else if(p.value.is<std::vector<Val>>())
            {
                for(auto x : p.value.as<std::vector<Val>>())
                {
                    auto inner = expand_to_dictionary(working_directory, x);
                    result[p.key] += inner;
                }
            }
        }

        return result;
    }



    void write_to_file(const ssvufs::Path& p, const std::string& s)
    {
        auto p_parent = p.getParent();
        if(!p_parent.exists<ssvufs::Type::Folder>())
        {
            exec_cmd("mkdir -p "s + p_parent.getStr());
        }

        assert(p_parent.exists<ssvufs::Type::Folder>());

        std::ofstream o{p};
        o << s;
        o.flush();
    }

    template <typename TF>
    void segmented_for(sz_t split_count, sz_t per_split, sz_t total, TF&& f)
    {
        // TODO:
        if(split_count <= 0)
        {
            return;
        }

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


    auto expand_to_str(
        ssvu::TemplateSystem::Dictionary& d, const std::string& p)
    {
        static std::map<std::string, std::string> memoized_templates;

        if(memoized_templates.count(p) == 0)
        {
            memoized_templates[p] = ssvufs::Path{p}.getContentsAsStr();
        }

        return d.getExpanded(memoized_templates[p],
            ssvu::TemplateSystem::Settings::EraseUnexisting);
    }

    template <typename T>
    auto result_to_website(const T& x)
    {
        return ssvu::getReplaced(
            x, constant::folder::path::result, constant::url::path::website);
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
        std::vector<std::string> _tags;
    };

    struct page
    {
        std::string _name;
        ssvufs::Path _path;
        std::string _full_name;
        ssvufs::Path _output_path;
        std::optional<sz_t> _subpaging;
        std::optional<std::string> _rss;
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

        // Name of the folder containing "_page.json".
        const auto& name = p.getParent().getFolderName();

        // Remove "_pages" and right-trim until first "/".
        const auto& full_name =
            ssvu::getTrimR(ssvu::getReplaced(p.getParent().getStr(),
                               constant::folder::path::pages, ""),
                [](char c)
                {
                    return c == '/';
                });

        const auto& json_val = ssvj::fromFile(path);
        f(path, name, full_name, json_val);
    }
}

// TODO: patreon button in template

namespace impl
{
    template <typename TF>
    void for_all_page_element_files(const std::string& element_folder_name,
        const ssvufs::Path& page_path, TF&& f)
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
    void for_all_elements(const std::string& element_folder_name,
        const ssvufs::Path& page_path, TF&& f)
    {
        for_all_page_element_files(element_folder_name, page_path,
            [&f](auto path, auto name, auto full_name, const Val& element_json)
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
void for_all_entry_json_files(const ssvufs::Path& page_path, TF&& f)
{
    impl::for_all_page_element_files(
        constant::folder::name::entries, page_path, FWD(f));
}

template <typename TF>
void for_all_aside_json_files(const ssvufs::Path& page_path, TF&& f)
{
    impl::for_all_page_element_files(
        constant::folder::name::asides, page_path, FWD(f));
}

template <typename TF>
void for_all_entries(const ssvufs::Path& page_path, TF&& f)
{
    impl::for_all_elements(constant::folder::name::entries, page_path, FWD(f));
}

template <typename TF>
void for_all_asides(const ssvufs::Path& page_path, TF&& f)
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
    std::vector<entry_id> _expanded_entry_ids;
    std::string _link;

    void write_rss_feed(
        bool first, context& ctx, const archetype::page& ap) const
    {
        if(!ap._rss)
        {
            return;
        }

        auto feed_output_path = ssvu::getReplaced(
            first ? ap._output_path : Path{_link}, ".html", ".rss");

        Dictionary d;
        d["FeedLink"] = utils::result_to_website(feed_output_path);

        for(const auto& ei : _expanded_entry_ids)
        {
            const archetype::entry& ae = ctx._entry_mapping.get(ei);
            const auto& aee = ae._expand;
            if(!ae._link_name) continue;

            if(!aee.has("Title") || !aee.has("Date"))
            {
                continue;
            }

            Dictionary d_item;
            d_item["Title"] = aee["Title"].asStr();
            d_item["Link"] = utils::result_to_website(ae._output_path);
            d_item["Date"] = aee["Date"].asStr();

            d["Items"] += d_item;
        }

        auto res = utils::expand_to_str(d, "templates/other/rss.tpl");
        utils::write_to_file(feed_output_path, res);
    }

    auto produce_expanded_main(const archetype::page& ap,
        const std::vector<subpage_expansion>& subpages,
        const std::vector<std::string>& expanded_asides) const
    {
        Dictionary d_main;

        // Add expanded entries.
        for(const auto& e : _expanded_entries)
        {
            d_main["Entries"] += Dictionary{"Entry", e};
        }

        // Add expanded asides.
        for(const auto& a : expanded_asides)
        {
            d_main["Asides"] += Dictionary{"Aside", a};
        }

        // Add pagination controls.
        if(ap._subpaging && subpages.size() > 1)
        {
            sz_t page_idx = 0;
            for(const auto& a : subpages)
            {
                Dictionary inner_dict;

                inner_dict["Subpage"] =
                    ssvu::getReplaced(a._link, "result/", "/");

                inner_dict["SubpageLabel"] =
                    a._link == _link ? "[" + std::to_string(page_idx++) + "]"
                                     : std::to_string(page_idx++);

                d_main["Subpages"] += inner_dict;
            }
        }

        return utils::expand_to_str(d_main, "templates/base/main.tpl");
    }

    auto produce_expanded_main_menu(context& ctx) const
    {
        Dictionary d_mainmenu;

        for(const auto& mm_e : ctx._main_menu._menu_entries)
        {
            Dictionary d_button;
            d_button["Link"] = mm_e._href;
            d_button["Title"] = mm_e._label;

            d_mainmenu["MenuItems"] += d_button;
        }

        return utils::expand_to_str(d_mainmenu, "templates/base/mainMenu.tpl");
    }

    auto produce_expanded_page(const std::string& expanded_main,
        const std::string& expanded_main_menu) const
    {
        Dictionary d_page;
        d_page["Main"] = expanded_main;
        d_page["MainMenu"] = expanded_main_menu;
        d_page["ResourcesPath"] = constant::folder::path::resources;

        return utils::expand_to_str(d_page, "templates/page.tpl");
    }

    auto produce_result(bool first, context& ctx, const archetype::page& ap,
        const std::vector<subpage_expansion>& subpages, const Path& output_path,
        const std::vector<std::string>& expanded_asides) const
    {
        (void)output_path;

        write_rss_feed(first, ctx, ap);

        auto expanded_main =
            produce_expanded_main(ap, subpages, expanded_asides);

        auto expanded_main_menu = produce_expanded_main_menu(ctx);

        return produce_expanded_page(expanded_main, expanded_main_menu);
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

            _expanded_asides.emplace_back(
                utils::expand_to_str(aa._expand, aa._template_path));
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
            true, ctx, ap, _subpages, output_path, _expanded_asides);

        utils::write_to_file(output_path, first_subpage_html);

        for(sz_t i = 1; i < _subpages.size(); ++i)
        {
            const auto& s = _subpages[i];

            utils::write_to_file(
                s._link, s.produce_result(false, ctx, ap, _subpages,
                             Path{s._link}, _expanded_asides));
        }
    }
};

void process_page_entries(context& ctx, const Path& output_path,
    const Path& path, page_id pid, archetype::page& ap)
{
    for_all_entries(path,
        [&ctx, &output_path, &pid, &ap](auto e_path, auto e_name,
                        auto e_full_name, const Val& e_contents)
        {
            ctx._entry_mapping.create([&](auto eid, auto& ae)
                {
                    lo_verbose("Entry|parent_page") << pid << "\n";
                    lo_verbose("Entry|path") << e_path << " [" << eid << "]\n";
                    lo_verbose("Entry|name") << e_name << "/" << eid << "\n";
                    lo_verbose("Entry|full_name") << e_full_name << "/" << eid
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

                    if(e_contents.has("tags"))
                    {
                        for(const auto& t : e_contents["tags"].forArrAs<Str>())
                        {
                            ae._tags.emplace_back(t);
                        }
                    }
                    else
                    {
                        ae._tags.emplace_back("untagged");
                    }



                    ae._template_path = e_template_path;
                    ae._expand = dic;
                    ae._output_path = e_output_path;
                    ae._parent_page = pid;


                    lo_verbose("Entry|output_path") << e_output_path << "\n";
                    lo_verbose("Entry|template") << e_template_path << "\n";
                    // lo_verbose("Entry|expand") << e_expand_data << "\n";
                    lo_verbose() << "\n";
                });
        });
}

void process_page_asides(context& ctx, const Path& output_path,
    const Path& path, page_id pid, archetype::page& ap)
{
    for_all_asides(path,
        [&ctx, &pid, &ap, &output_path](auto a_path, auto a_name,
                       auto a_full_name, const Val& a_contents)
        {
            ctx._aside_mapping.create([&](auto aid, auto& aa)
                {
                    lo_verbose("Aside|parent_page") << pid << "\n";
                    lo_verbose("Aside|path") << a_path << "\n";
                    lo_verbose("Aside|name") << a_name << "\n";
                    lo_verbose("Aside|full_name") << a_full_name << "\n";

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
                    lo_verbose() << "\n";
                });
        });
}

void clean_and_recreate_result_folder()
{
    Path rp{constant::folder::path::result};
    assert(ssvu::endsWith(rp, "/"));

    if(!rp.exists<Type::Folder>())
    {
        ssvufs::createFolder(rp);
    }

    utils::exec_cmd("rm -R ./"s + rp.getStr() + "*");
    utils::exec_cmd("ln -s ../resources/ ./" + rp.getStr());
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

        lo_verbose("MMEntry|label") << last_e._label << "\n";
        lo_verbose("MMEntry|href") << last_e._href << "\n\n";
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
                    lo_verbose("Page|id") << pid << "\n";
                    lo_verbose("Page|path") << path << "\n";
                    lo_verbose("Page|name") << name << "\n";
                    lo_verbose("Page|full_name") << full_name << "\n";
                    lo_verbose("Page|output_path") << output_path << "\n";

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
                        lo_verbose("Page|eps") << eps << "\n";
                    }

                    // Check for RSS options.
                    if(contents.has("rss"))
                    {
                        ap._rss = contents["rss"]["output"].as<Str>();
                    }

                    process_page_entries(ctx, output_path, path, pid, ap);
                    process_page_asides(ctx, output_path, path, pid, ap);
                });
        });
}

void build_tag_expansion(archetype::entry& ae)
{
    for(const auto& t : ae._tags)
    {
        Dictionary tag0;
        tag0["Link"] = "#";
        tag0["Label"] = t;
        ae._expand["Tags"] += tag0;
    }
}

void process_pages_permalink(
    context& ctx, const archetype::page& ap, entry_id eid)
{
    // Create copy of page archetype for the single-article pages
    // and disable automatic pagination/RSS
    auto my_ap = ap;
    my_ap._subpaging = std::nullopt;
    my_ap._rss = std::nullopt;

    auto ae = ctx._entry_mapping.get(eid);
    if(!ae._link_name)
    {
        return;
    }


    page_expansion permalink_pe;
    permalink_pe._subpages.emplace_back();
    auto& subpage = permalink_pe._subpages.back();

    auto permalink_output_path = ae._output_path;
    auto canonical_permalink_url =
        utils::result_to_website(permalink_output_path.getStr());

    // Disqus
    {
        Dictionary disqus;
        disqus["PageUrl"] = canonical_permalink_url;
        disqus["PageId"] = ae._link_name.value();

        auto disqus_template =
            Path{"templates/other/disqus.tpl"}.getContentsAsStr();
        auto expanded_disqus =
            disqus.getExpanded(disqus_template, Settings::EraseUnexisting);

        ae._expand["CommentsBox"] = expanded_disqus;
    }



    build_tag_expansion(ae);
    auto e_expanded = utils::expand_to_str(ae._expand, ae._template_path);

    subpage._expanded_entries.emplace_back(e_expanded);
    permalink_pe.produce_result(ctx, my_ap, permalink_output_path);
}

void process_entries_ellipsis_and_permalink(archetype::entry& ae)
{
    if(!ae._link_name)
    {
        // No permalink.
        return;
    }

    auto atag_href =
        ssvu::getReplaced(ae._output_path, constant::folder::path::result, "");

    auto atag_link = "<a href='" + atag_href + "'>";

    auto atag_link_styled =
        "<a style='color: black; text-decoration: "
        "none;' href='" +
        atag_href + "'>";

    // Ellipse long text
    std::string old_text = ae._expand["Text"].asStr();
    auto second_paragraph = utils::find_nth(old_text, 0, "</p>", 2);

    if(second_paragraph != std::string::npos)
    {
        auto new_text = old_text.substr(0, second_paragraph + 4);
        new_text +=
            "<p style='text-align: right; font-style: italic; font-size: small;'> "s +
            atag_link + " ... read more </a></p></body></html>";

        ae._expand["Text"] = new_text;
    }

    ae._expand["PermalinkBegin"] = atag_link_styled;
    ae._expand["PermalinkEnd"] = "</a>";
}

void process_pages(context& ctx)
{
    ctx._page_mapping.for_all([&ctx](auto, const archetype::page& ap)
        {
            const auto& entry_ids = ap._entries;
            if(entry_ids.empty())
            {
                return;
            }

            page_expansion pe;


            // Expand permalinks (single-article pages)
            for(auto eid : entry_ids)
            {
                process_pages_permalink(ctx, ap, eid);
            }



            auto make_subpage = [&](auto i_begin, auto i_end)
            {
                pe._subpages.emplace_back();
                auto& subpage = pe._subpages.back();

                for(sz_t ei(i_begin); ei < i_end; ++ei)
                {
                    entry_id eid = entry_ids[ei];
                    auto ae = ctx._entry_mapping.get(eid);
                    process_entries_ellipsis_and_permalink(ae);

                    build_tag_expansion(ae);
                    auto e_expanded =
                        utils::expand_to_str(ae._expand, ae._template_path);

                    subpage._expanded_entry_ids.emplace_back(eid);
                    subpage._expanded_entries.emplace_back(e_expanded);
                }
            };

            // Create subpages
            if(ap._subpaging)
            {
                auto entries_per_subpage = ap._subpaging.value();
                auto subpage_count =
                    std::max(sz_t(1), entry_ids.size() / entries_per_subpage);

                utils::segmented_for(subpage_count, entries_per_subpage,
                    entry_ids.size(), [&](auto, auto i_begin, auto i_end)
                    {
                        make_subpage(i_begin, i_end);
                    });
            }
            else
            {
                make_subpage(0, entry_ids.size());
            }

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
