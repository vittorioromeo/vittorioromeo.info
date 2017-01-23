#include "./curry.hpp"

int main()
{
    const auto sum = [](volatile auto a, volatile auto b, volatile auto c,
        volatile auto d, volatile auto e, volatile auto f, volatile auto g,
        volatile auto h) -> volatile auto
    {
        return a + b + c + d + e + f + g + h;
    };

    volatile auto v0 = 0;
    volatile auto v1 = 1;
    volatile auto v2 = 2;
    volatile auto v3 = 3;
    volatile auto v4 = 4;
    volatile auto v5 = 5;
    volatile auto v6 = 6;
    volatile auto v7 = 7;

    auto expected = sum(v0, v1, v2, v3, v4, v5, v6, v7);

#if defined(VR_BASELINE)
    volatile auto s0 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s1 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s2 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s3 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s4 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s5 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s6 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s7 = sum(v0, v1, v2, v3, v4, v5, v6, v7);
#elif defined(VR_CURRY)
    volatile auto s0 = curry(sum)(v0, v1, v2, v3, v4, v5, v6, v7);
    volatile auto s1 = curry(sum)(v0)(v1, v2, v3, v4, v5, v6, v7);
    volatile auto s2 = curry(sum)(v0, v1)(v2, v3, v4, v5, v6, v7);
    volatile auto s3 = curry(sum)(v0, v1, v2)(v3, v4, v5, v6, v7);
    volatile auto s4 = curry(sum)(v0, v1, v2, v3)(v4, v5, v6, v7);
    volatile auto s5 = curry(sum)(v0, v1, v2, v3, v4)(v5, v6, v7);
    volatile auto s6 = curry(sum)(v0, v1, v2, v3, v4, v5)(v6, v7);
    volatile auto s7 = curry(sum)(v0, v1, v2, v3, v4, v5, v6)(v7);
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