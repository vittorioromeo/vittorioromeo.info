#include "./fwd_capture.hpp"
#include "./is_valid.hpp"
#include <cassert>
#include <experimental/tuple>
#include <functional>
#include <type_traits>

#define IF_CONSTEXPR \
    if               \
    constexpr

using vr::impl::apply_fwd_capture;

namespace impl
{
    template <typename F>
    constexpr auto is_callable_with_no_args = IS_VALID(_0())(F);
}

// clang-format off
template <typename F>
constexpr decltype(auto) curry(F&& f) 
{
    // If `f()` can be called, then immediately call and return. 
    // (Base case.)

    // Otherwise, return a function that allows partial application of any 
    // number of arguments. 
    // (Recursive case.)

    IF_CONSTEXPR (impl::is_callable_with_no_args<F>) 
    {   
        // Base case.
        return f();
    }
    else
    {
        // Recursive case.
        
        // Return a lambda that binds any number of arguments to the current 
        // callable object `f` - this is "partial application".
        return [f = FWD_CAPTURE(f)](auto&&... partials) constexpr 
        {
            // As we may want to partial-apply multiple times (currying in the 
            // case of a single argument), we need to recurse here.
            return curry
            (
                [
                    partial_pack = FWD_CAPTURE_PACK_AS_TUPLE(partials), 
                    
                    // `f` can be moved as it's a "forward-capture" wrapper.
                    f = std::move(f)
                ]
                (auto&&... xs) constexpr 
                    // For some reason `g++` doesn't like `decltype(auto)` here.
                    -> decltype(f.get()(FWD(partials)..., FWD(xs)...))
                {
                    // `f` will be called by applying the concatenation of
                    // `partial_pack` and `xs...`, retaining the original value
                    // categories thanks to the "forward-capture" wrappers.
                    return apply_fwd_capture(
                    [
                        // `f` can be captured by reference as it's just a 
                        // wrapper which lives in the parent lambda.
                        &f
                    ](auto&&... ys) constexpr -> decltype(f.get()(FWD(ys)...)) 
                    {//         ^^
                        // The `ys...` pack will contain all the concatenated 
                        // values.     
                        //             vvvvvvvvvv
                        return f.get()(FWD(ys)...);
                        //     ^^^^^^^
                        // `f.get()` is either the original callable object or
                        // an intermediate step of the `curry` recursion.
                    }, partial_pack, FWD_CAPTURE_PACK_AS_TUPLE(xs));
                    // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                    // Automatically concatenated by `apply_fwd_capture`.
                }
            );
        };
    }
}
// clang-format on

struct nocopy
{
    nocopy() = default;
    nocopy(const nocopy&) = delete;
    nocopy(nocopy&&) = default;
};

int main()
{
    const auto sum = [](auto a, auto b, auto c, auto d, auto e, auto f, auto g,
        auto h) constexpr
    {
        return a + b + c + d + e + f + g + h;
    };

    /* TODO: curry<5>(vsum) ?
    const auto vsum = [](auto... xs) { return (0 + ... + xs); };
    assert(curry(vsum) == 0);
    */

    constexpr auto cexpr_csum0 = curry(sum)(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto cexpr_csum1 = curry(sum)(0)(1, 2, 3, 4, 5, 6, 7);
    constexpr auto cexpr_csum2 = curry(sum)(0, 1)(2, 3, 4, 5, 6, 7);
    constexpr auto cexpr_csum3 = curry(sum)(0, 1, 2)(3, 4, 5, 6, 7);
    constexpr auto cexpr_csum4 = curry(sum)(0, 1, 2, 3)(4, 5, 6, 7);
    constexpr auto cexpr_csum5 = curry(sum)(0, 1, 2, 3, 4)(5, 6, 7);
    constexpr auto cexpr_csum6 = curry(sum)(0, 1, 2, 3, 4, 5)(6, 7);
    constexpr auto cexpr_csum7 = curry(sum)(0, 1, 2, 3, 4, 5, 6)(7);

    static_assert(cexpr_csum0 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum1 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum2 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum3 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum4 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum5 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum6 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    static_assert(cexpr_csum7 == sum(0, 1, 2, 3, 4, 5, 6, 7));

}