#include "./curry.hpp"

int main()
{
    const auto sum = [](volatile auto a, volatile auto b, volatile auto c,
        volatile auto d, volatile auto e, volatile auto f, volatile auto g,
        volatile auto h) constexpr -> volatile auto
    {
        return a + b + c + d + e + f + g + h;
    };

    constexpr auto expected = sum(0, 1, 2, 3, 4, 5, 6, 7);

#if defined(VR_BASELINE)
    volatile auto s0 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s1 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s2 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s3 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s4 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s5 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s6 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s7 = sum(0, 1, 2, 3, 4, 5, 6, 7);
#elif defined(VR_CURRY)
    volatile auto s0 = curry(sum)(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s1 = curry(sum)(0)(1, 2, 3, 4, 5, 6, 7);
    volatile auto s2 = curry(sum)(0, 1)(2, 3, 4, 5, 6, 7);
    volatile auto s3 = curry(sum)(0, 1, 2)(3, 4, 5, 6, 7);
    volatile auto s4 = curry(sum)(0, 1, 2, 3)(4, 5, 6, 7);
    volatile auto s5 = curry(sum)(0, 1, 2, 3, 4)(5, 6, 7);
    volatile auto s6 = curry(sum)(0, 1, 2, 3, 4, 5)(6, 7);
    volatile auto s7 = curry(sum)(0, 1, 2, 3, 4, 5, 6)(7);
#endif

    // clang-format off
    if(s0 != expected) { return -1; }
    if(s1 != expected) { return -1; }
    if(s2 != expected) { return -1; }
    if(s3 != expected) { return -1; }
    if(s4 != expected) { return -1; }
    if(s5 != expected) { return -1; }
    if(s6 != expected) { return -1; }
    if(s7 != expected) { return -1; }
    // clang-format on

    return s0 + s1 + s2 + s3 + s4 + s5 + s6 + s7;
}