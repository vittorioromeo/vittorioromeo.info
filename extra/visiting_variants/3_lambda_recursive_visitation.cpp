// Copyright (c) 2015-2016 Vittorio Romeo
// License: Academic Free License ("AFL") v. 3.0
// AFL License page: http://opensource.org/licenses/AFL-3.0
// http://vittorioromeo.info | vittorio.romeo@outlook.com

// #define VR_USE_BOOST_VARIANT

#include <iostream>
#include <vector>
#include <type_traits>
#include <boost/hana.hpp>
// #include <vrm/core/static_if.hpp>
#include "variant_aliases.hpp"

// TODO: mention this works poorly with state

namespace impl
{
    struct vnum_wrapper;

    using varr = std::vector<vnum_wrapper>;
    using vnum = vr::variant<int, float, double, varr>;

    struct vnum_wrapper : public vnum
    {
        using vnum::vnum;
    };
}

using vnum = impl::vnum_wrapper;
using impl::varr;

/*namespace impl
{
    struct recurse_wrapper_base
    {
    };

    template <typename T, typename TF>
    struct recurse_wrapper : recurse_wrapper_base
    {
        using type = T;

        TF _f;

        template <typename TFFwd>
        recurse_wrapper(TFFwd f)
            : _f{FWD(f)}
        {
        }

        template <typename... Ts>
        auto operator()(Ts&&... xs)
        {
            _f(FWD(xs)...);
        }
    };

    template <typename TFParent, typename TF>
    auto expand_recurse(TFParent&& f_parent, TF&& f)
    {
        constexpr auto should_expand =
            std::is_base_of<recurse_wrapper_base, std::decay_t<TF>>{};

        return vrm::core::static_if(should_expand)
            .then([](auto&& xf)
                {
                    using arg_type = typename std::decay_t<decltype(xf)>::type;
                    return [](arg_type y)
                    {
                        return xf(f_parent, y);
                    };
                })
            .else_([&f_parent](auto&& xf)
                {
                    return [ xf = FWD(xf), &f_parent ](auto&& y)
                    {
                        return xf(f_parent, FWD(y));
                    };
                })(FWD(f));
    }
}*/

template <typename TReturn, typename... TFs>
auto make_recursive_visitor(TFs&&... fs)
{
    auto res = boost::hana::fix([&fs...](auto self, auto&& x) -> TReturn
                                {
                                    return boost::hana::overload(FWD(fs)...)(
                                        [&self](auto&& v)
                                        {
                                            vr::visit(self, v);
                                        },
                                        FWD(x));
                                });

    return res;
}

/*
template <typename T, typename TF>
auto recurse(TF&& f)
{
    return impl::recurse_wrapper<T, TF>(FWD(f));
}
*/

int main()

    // clang-format off
    auto vnp = make_recursive_visitor<void>
    (
        [](auto, int x)    { std::cout << x << "i\n"; },
        [](auto, float x)  { std::cout << x << "f\n"; },
        [](auto, double x) { std::cout << x << "d\n"; },

        [](auto visit_self, const varr& arr)
        {
            for(const auto& x : arr)
            {
                visit_self(x);
            }
        }
    );
// clang-format on

vnum v0{0};
vr::visit(vnp, v0);

v0 = 5.f;
vr::visit(vnp, v0);

v0 = 33.51;
vr::visit(vnp, v0);

v0 = varr{vnum{1}, vnum{2.0}, vnum{3.f}};
vr::visit(vnp, v0);

v0 = varr{vnum{5}, varr{vnum{7}, vnum{8.0}, vnum{9.}}, vnum{4.f}};
vr::visit(vnp, v0);
}
