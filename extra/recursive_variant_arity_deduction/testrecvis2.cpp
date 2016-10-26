// Copyright(c)2015 - 2016 Vittorio Romeo
// License: Academic Free License ("AFL") v. 3.0
// AFL License page: http://opensource.org/licenses/AFL-3.0
// http://vittorioromeo.info | vittorio.romeo@outlook.com

#define VR_USE_BOOST_VARIANT

#include <iostream>
#include <vector>
#include <type_traits>
#include <experimental/type_traits>
#include <tuple>
#include <map>
#include <boost/hana.hpp>
#include "variant_aliases.hpp"
#include "any_type.hpp"

// Compatibility with MinGW:
namespace std
{
    template<class... B>
    constexpr bool disjunction_v = disjunction<B...>::value;
}

namespace deduced_arity
{
    template <std::size_t TS>
    struct deducible_t : boost::hana::size_t<TS>
    {
    };

    struct undeducible_t
    {
    };

    constexpr undeducible_t undeducible{};
    constexpr deducible_t<1> unary{};
    constexpr deducible_t<2> binary{};
}

/*
template <typename... TFs>
auto make_visitor_great_again(TFs... fs)
{
    auto unary = filter([](auto f)( return deduce_arity(f) == deduced_arity::unary; }, fs...);
    auto binary = filter([](auto f)( return deduce_arity(f) == deduced_arity::binary; }, fs...);

    auto undeducible_fns = filter([](auto f)( return deduce_arity(f) == deduced_arity::undeducible; }, fs...);
    static_assert
}
*/

// TODO: assume undeducible are unary? Force disambiguation?
// TODO: abstract wrapper?

namespace impl
{
    template <typename T, typename TDerived>
    struct wrapper_impl
    {
        T _data;

         template <typename... Ts,
              typename = std::enable_if_t<!std::disjunction_v<
                  std::is_same<std::decay_t<Ts>, TDerived>...>>>
        wrapper_impl(Ts&&... xs) : _data{FWD(xs)...}
        {
        }
    };
}

namespace impl
{
    struct vnum_wrapper;

    using varr = std::vector<vnum_wrapper>;
    using vmap = std::map<int, vnum_wrapper>;
    using vnum = vr::variant<int, float, double, varr, long, vmap>;

    struct vnum_wrapper : wrapper_impl<vnum, vnum_wrapper>
    {
        // seems to work on libc++
        using wrapper_impl::wrapper_impl;
    };
}

using vnum = impl::vnum;
using impl::varr;
using impl::vmap;

template <typename TTpl>
auto overload_tuple(TTpl&& x)
{
    return boost::hana::unpack(FWD(x), boost::hana::overload);
}

template <typename T>
struct function_traits : public function_traits<decltype(&T::operator())>
{
};

template <typename T, typename TReturn, typename... TArgs>
struct function_traits<TReturn (T::*)(TArgs...) const>
{
    static constexpr std::size_t arity = sizeof...(TArgs);

    using result_type = TReturn;

    template <std::size_t TI>
    using arg = std::tuple_element_t<TI, std::tuple<TArgs...>>;
};

template <typename T>
using is_not_overloaded_impl = decltype(&std::decay_t<T>::operator());

template <typename T>
using is_not_overloaded = std::experimental::is_detected<is_not_overloaded_impl, T>;

template<class T>
using is_binary_callable_impl = decltype(std::declval<T>()(any_type{}, any_type{}));

template <typename T>
using is_binary_callable = std::experimental::is_detected<is_binary_callable_impl, T>;

template<class T>
using is_unary_callable_impl = decltype(std::declval<T>()(any_type{}));

template <typename T>
using is_unary_callable = std::experimental::is_detected<is_unary_callable_impl, T>;

struct arity_detector_t
{
    template <typename TF>
    constexpr auto operator()(TF&&) const
    {
        return is_binary_callable<TF>{};
    }
};

constexpr arity_detector_t arity_detector;

template <bool TOverloaded>
struct adapt_helper;

template <>
struct adapt_helper<true>
{
    template <typename TF>
    auto operator()(TF&& f)
    {
        return [f = FWD(f)](auto, auto&& x) -> decltype(f(FWD(x)))
        {
            return f(FWD(x));
        };
    }
};

template <>
struct adapt_helper<false>
{
    template <typename TF>
    auto operator()(TF&& f)
    {
        using argt = typename function_traits<
            std::decay_t<decltype(f)>>::template arg<0>;

        return [f = FWD(f)](auto, argt x) -> decltype(f(x))
        {
            return f(x);
        };
    }
};

namespace vr
{
    struct recursive_tag_t {};
    constexpr recursive_tag_t recursive;

    template<typename TF>
    struct recursive_visitor_branch : TF
    {
        template<typename TFFwd>
        recursive_visitor_branch(TFFwd&& f) : TF(FWD(f))
        {
        }
    };

    template <typename T>
    auto operator|(recursive_tag_t, T&& x) { return recursive_visitor_branch<std::decay_t<T>>{x}; }
}

template <typename, template <typename...> class>
struct is_specialization_of : boost::hana::false_
{
};

template <template <typename...> class TTemplate, typename... Ts>
struct is_specialization_of<TTemplate<Ts...>, TTemplate> : boost::hana::true_
{
};

template <typename T>
using is_tagged_as_recursive = is_specialization_of<T, vr::recursive_visitor_branch>;


namespace impl
{
    struct arity_deducer_t
    {
        template <typename TF>
        constexpr auto operator()(TF&&) const
        {
            using f_type = std::decay_t<TF>;

            if constexpr(is_tagged_as_recursive<f_type>{})
            {
                return deduced_arity::binary;
            }
            else if constexpr(is_binary_callable<f_type>{})
            {
                return deduced_arity::binary;
            }
            else if constexpr(is_unary_callable<f_type>{})
            {
                return deduced_arity::unary;
            }
            else if constexpr(is_not_overloaded<f_type>{})
            {
                constexpr auto arity = function_traits<f_type>::arity;

                if constexpr(arity == 1)
                {
                    return deduced_arity::unary;
                }
                else if constexpr(arity == 2)
                {
                    return deduced_arity::binary;
                }
                else
                {
                    struct unsupported_arity;
                    return unsupported_arity{};
                }
            }
            else
            {
                return deduced_arity::undeducible;
            }
        }
    };
}

constexpr impl::arity_deducer_t arity_deducer{};

// Added single 'f' due to gcc61 segfault
template <typename TRet, typename TF, typename... TFs>
auto make_recursive_visitor(TF&& f, TFs&&... fs)
{
    namespace bh = boost::hana;


    auto fns_tuple = bh::make_tuple(FWD(f), FWD(fs)...);

    auto fns_arities = bh::transform(fns_tuple, arity_deducer);

    bh::for_each(fns_arities, [](auto x)
    {
        if constexpr(std::is_same<decltype(x), deduced_arity::undeducible_t>{})
        {
            std::cout << "undeducible\n";
        }
        else
        {
            std::cout << x << "\n";;
        }
    });


    auto non_recs = bh::remove_if(fns_tuple, arity_detector);

    auto recs = bh::filter(fns_tuple, arity_detector);

    auto rnrecs = bh::transform(non_recs, [](auto&& f)
        {
           return adapt_helper<!is_not_overloaded<decltype(f)>{}>{}(FWD(f));
        });

    auto alltpl = bh::concat(rnrecs, recs);

    auto final_overload = overload_tuple(alltpl);

    // Probably need to assert tthat every lambda returns same type
    // TODO:
    // using return_type = decltype(f(any_type{}));

    return bh::fix([fo = std::move(final_overload)](auto self, auto&& x)
                       ->TRet
                   {
                       return fo(
                           [&self](auto&& v)
                           {
                               return vr::visit_recursively(self, v);
                           },
                           FWD(x));
                   });
}





int main()
{
    // clang-format off
    auto vnp = make_recursive_visitor<void>
    (
        [](auto x) -> std::enable_if_t<std::is_arithmetic<std::decay_t<decltype(x)>>{}> { std::cout << x << "N\n"; },
        [](int x)    { std::cout << x << "i\n"; },
        [](float x)  { std::cout << x << "f\n"; },
        [](double x) { std::cout << x << "d\n"; },
        [](auto recurse, const varr& x) { for(const auto& y : x) recurse(y); },
        [](auto recurse, const vmap& x) { for(const auto& y : x) recurse(y.second); }
    );
    // clang-format on

    /*
    // Alternative:
    auto vnp = make_recursive_visitor<void>([](auto overload, auto recurse)
    {
        return overload
        (
            [](auto x) -> std::enable_if_t<std::is_arithmetic<std::decay_t<decltype(x)>>{}> { std::cout << x << "N\n"; },
            [](int x)          { std::cout << x << "i\n"; },
            [](float x)        { std::cout << x << "f\n"; },
            [](double x)       { std::cout << x << "d\n"; },
            [&](const varr& x) { for(const auto& y : x) recurse(y); },
            [&](const vmap& x) { for(const auto& y : x) recurse(y.second); }
        );
    });
    */

    vnum v0{0};
    vr::visit(vnp, v0);

    v0 = 5.f;
    vr::visit(vnp, v0);

    v0 = 33.51;
    vr::visit(vnp, v0);

    v0 = 500l;
    vr::visit(vnp, v0);

    v0 = varr{vnum{1}, vnum{2.0}, vnum{3.f}};
    vr::visit(vnp, v0);

    v0 = varr{vnum{5}, varr{vnum{7}, vnum{8.0}, vnum{9.}}, vnum{4.f}};
    vr::visit(vnp, v0);

    v0 = varr{vnum{1}, vmap{{1, vnum{2.0}}}, vnum{3.f}};
    vr::visit(vnp, v0);
}