#include <cassert>
#include <type_traits>
#include <functional>
#include <experimental/tuple>
#include "./fwd_capture.hpp"

namespace impl
{
    template< class, class = std::void_t<> >
    struct needs_unapply : std::true_type { };

    template< class T >
    struct needs_unapply<T, std::void_t<decltype(std::declval<T>()())>> : std::false_type { };
}

template <typename F>
constexpr decltype(auto) curry(F&& f) 
{
    if constexpr (impl::needs_unapply<decltype(f)>{}) 
    {
        return [f = FWD_CAPTURE(f)](auto&&... partials) constexpr 
        {
            return curry
            (
                [
                    partial_pack = FWD_CAPTURE_PACK_AS_TUPLE(partials), 
                    wrapped_f = std::move(f)
                ]
                (auto&&... xs) constexpr -> decltype(f.get()(FWD(partials)..., FWD(xs)...)) // ???
                {
                    return apply_fwd_capture([&wrapped_f](auto&&... js) constexpr -> decltype(wrapped_f.get()(FWD(js)...)) // ??? 
                    {
                        return wrapped_f.get()(FWD(js)...);
                    }, std::tuple_cat(partial_pack, FWD_CAPTURE_PACK_AS_TUPLE(xs)));
                }
            );
        };
    }
    else return f();
}

struct nocopy
{   
    nocopy() = default;
    nocopy(const nocopy&) = delete;
    nocopy(nocopy&&) = default;
};

int main()
{
    auto sum = [](auto a, auto b, auto c, auto d, auto e, auto f, auto g, auto h) constexpr 
    {
        return a + b + c + d + e + f + g + h;
    };
    
    constexpr auto cexpr_csum0 = curry(sum)(0,1,2,3,4,5,6,7);
    constexpr auto cexpr_csum1 = curry(sum)(0)(1,2,3,4,5,6,7);
    constexpr auto cexpr_csum2 = curry(sum)(0,1)(2,3,4,5,6,7);
    constexpr auto cexpr_csum3 = curry(sum)(0,1,2)(3,4,5,6,7);
    constexpr auto cexpr_csum4 = curry(sum)(0,1,2,3)(4,5,6,7);
    constexpr auto cexpr_csum5 = curry(sum)(0,1,2,3,4)(5,6,7);
    constexpr auto cexpr_csum6 = curry(sum)(0,1,2,3,4,5)(6,7);
    constexpr auto cexpr_csum7 = curry(sum)(0,1,2,3,4,5,6)(7);
    
    static_assert(cexpr_csum0 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum1 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum2 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum3 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum4 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum5 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum6 == sum(0,1,2,3,4,5,6,7));
    static_assert(cexpr_csum7 == sum(0,1,2,3,4,5,6,7));

    volatile auto vcexpr_csum1 = curry(sum)(0)(1,2,3,4,5,6,7);
    volatile auto vcexpr_csum0 = curry(sum)(0,1,2,3,4,5,6,7);
    volatile auto vcexpr_csum2 = curry(sum)(0,1)(2,3,4,5,6,7);
    volatile auto vcexpr_csum3 = curry(sum)(0,1,2)(3,4,5,6,7);
    volatile auto vcexpr_csum4 = curry(sum)(0,1,2,3)(4,5,6,7);
    volatile auto vcexpr_csum5 = curry(sum)(0,1,2,3,4)(5,6,7);
    volatile auto vcexpr_csum6 = curry(sum)(0,1,2,3,4,5)(6,7);
    volatile auto vcexpr_csum7 = curry(sum)(0,1,2,3,4,5,6)(7);
}