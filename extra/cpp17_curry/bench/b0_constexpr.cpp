#include "./curry.hpp"

int main()
{
    const auto sum = [](auto a, auto b, auto c, auto d, auto e, auto f, auto g,
        auto h) constexpr
    {
        return a + b + c + d + e + f + g + h;
    };

    constexpr auto expected = sum(0, 1, 2, 3, 4, 5, 6, 7);

#if defined(VR_BASELINE)
    constexpr auto s0 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s1 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s2 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s3 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s4 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s5 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s6 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s7 = sum(0, 1, 2, 3, 4, 5, 6, 7);
#elif defined(VR_CURRY)
    constexpr auto s0 = curry(sum)(0, 1, 2, 3, 4, 5, 6, 7);
    constexpr auto s1 = curry(sum)(0)(1, 2, 3, 4, 5, 6, 7);
    constexpr auto s2 = curry(sum)(0, 1)(2, 3, 4, 5, 6, 7);
    constexpr auto s3 = curry(sum)(0, 1, 2)(3, 4, 5, 6, 7);
    constexpr auto s4 = curry(sum)(0, 1, 2, 3)(4, 5, 6, 7);
    constexpr auto s5 = curry(sum)(0, 1, 2, 3, 4)(5, 6, 7);
    constexpr auto s6 = curry(sum)(0, 1, 2, 3, 4, 5)(6, 7);
    constexpr auto s7 = curry(sum)(0, 1, 2, 3, 4, 5, 6)(7);
#endif

    static_assert(s0 == expected);
    static_assert(s1 == expected);
    static_assert(s2 == expected);
    static_assert(s3 == expected);
    static_assert(s4 == expected);
    static_assert(s5 == expected);
    static_assert(s6 == expected);
    static_assert(s7 == expected);

    return s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7;
}