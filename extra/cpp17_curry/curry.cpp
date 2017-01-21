#include "./fwd_capture.hpp"
#include <cassert>
#include <cstdio>
#include <experimental/tuple>
#include <functional>
#include <type_traits>
#include <vrm/core/type_traits.hpp>

using vr::impl::apply_fwd_capture;
using vrm::core::forward_like;

// clang-format off
template <typename TF>
constexpr decltype(auto) curry(TF&& f) 
{
    // If `f()` can be called, then immediately call and return. 
    // (Base case.)

    // Otherwise, return a function that allows partial application of any 
    // number of arguments. 
    // (Recursive case.)

    if constexpr (std::is_callable<TF()>{}) 
    {   
        // Base case.
        return FWD(f)();
    }
    else
    {
        // Recursive case.
        
        // Return a lambda that binds any number of arguments to the current 
        // callable object `f` - this is "partial application".
        return [xf = FWD_CAPTURE(f)](auto&&... partials) mutable constexpr 
        {//                                              ^^^^^^^
            // The `mutable` is very important as we'll be moving `f` to the 
            // inner lambda.

            // As we may want to partial-apply multiple times (currying in the 
            // case of a single argument), we need to recurse here.
            return curry
            (
                [
                    partial_pack = FWD_CAPTURE_PACK_AS_TUPLE(partials), 
                    
                    // `xf` can be moved as it's a "forward-capture" wrapper.
                    yf = std::move(xf)
                ]
                (auto&&... xs) constexpr 
                    // Weirdly `g++` doesn't like `decltype(auto)` here.
                    -> decltype(forward_like<TF>(xf.get())(FWD(partials)..., 
                                                           FWD(xs)...))
                {
                    // `yf` will be called by applying the concatenation of
                    // `partial_pack` and `xs...`, retaining the original value
                    // categories thanks to the "forward-capture" wrappers.
                    return apply_fwd_capture(
                    [
                        // `yf` can be captured by reference as it's just a 
                        // wrapper which lives in the parent lambda.
                        &yf
                    ](auto&&... ys) constexpr 
                        -> decltype(forward_like<TF>(yf.get())(FWD(ys)...)) 
                    {//                                        ^^^^^^^^^^
                        // The `ys...` pack will contain all the concatenated 
                        // values.     
                        //                                vvvvvvvvvv
                        return forward_like<TF>(yf.get())(FWD(ys)...);
                        //                      ^^^^^^^^
                        // `yf.get()` is either the original callable object or
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

struct nocopy_callable
{
    nocopy_callable() = default;
    nocopy_callable(const nocopy_callable&) = delete;
    nocopy_callable(nocopy_callable&&) = default;

    auto operator()(int, int, int) &&
    {
    }
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

    volatile auto vcexpr_csum0 = curry(sum)(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto vcexpr_csum1 = curry(sum)(0)(1, 2, 3, 4, 5, 6, 7);
    volatile auto vcexpr_csum2 = curry(sum)(0, 1)(2, 3, 4, 5, 6, 7);
    volatile auto vcexpr_csum3 = curry(sum)(0, 1, 2)(3, 4, 5, 6, 7);
    volatile auto vcexpr_csum4 = curry(sum)(0, 1, 2, 3)(4, 5, 6, 7);
    volatile auto vcexpr_csum5 = curry(sum)(0, 1, 2, 3, 4)(5, 6, 7);
    volatile auto vcexpr_csum6 = curry(sum)(0, 1, 2, 3, 4, 5)(6, 7);
    volatile auto vcexpr_csum7 = curry(sum)(0, 1, 2, 3, 4, 5, 6)(7);

    assert(vcexpr_csum0 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum1 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum2 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum3 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum4 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum5 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum6 == sum(0, 1, 2, 3, 4, 5, 6, 7));
    assert(vcexpr_csum7 == sum(0, 1, 2, 3, 4, 5, 6, 7));

    curry(nocopy_callable{})(0);

    assert(curry([](int a, int b, int c) { return a + b + c; })(1)(2)(3) ==
           1 + 2 + 3);

    auto greet = [] { std::puts("hi!\n"); };

    greet(); // Prints "hi!".

    curry(greet);
}