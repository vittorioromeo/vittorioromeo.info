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
    volatile auto s0 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s1 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s2 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s3 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s4 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s5 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s6 = sum(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s7 = sum(0, 1, 2, 3, 4, 5, 6, 7);
#elif defined(VR_CURRY)
    auto i0 = curry(sum);
    auto i1 = curry(sum)(0);
    auto i2 = curry(sum)(0, 1);
    auto i3 = curry(sum)(0, 1, 2);
    auto i4 = curry(sum)(0, 1, 2, 3);
    auto i5 = curry(sum)(0, 1, 2, 3, 4);
    auto i6 = curry(sum)(0, 1, 2, 3, 4, 5);
    auto i7 = curry(sum)(0, 1, 2, 3, 4, 5, 6);

    volatile auto s0 = i0(0, 1, 2, 3, 4, 5, 6, 7);
    volatile auto s1 = i1(1, 2, 3, 4, 5, 6, 7);
    volatile auto s2 = i2(2, 3, 4, 5, 6, 7);
    volatile auto s3 = i3(3, 4, 5, 6, 7);
    volatile auto s4 = i4(4, 5, 6, 7);
    volatile auto s5 = i5(5, 6, 7);
    volatile auto s6 = i6(6, 7);
    volatile auto s7 = i7(7);
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