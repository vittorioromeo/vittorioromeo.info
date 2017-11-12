#include <cassert>
#include <type_traits>
#include <utility>

template <typename Counter, typename F>
void repeat(Counter c, F&& f)
{
    for(Counter i = 0; i < c; ++i)
    {
        if constexpr(std::is_invocable_v<F&&, Counter>)
        {
            f(i);
        }
        else
        {
            f();
        }
    }
}

template <auto... Is>
struct seq_type : std::common_type<decltype(Is)...>
{
};

template <>
struct seq_type<>
{
    using type = int;
};

template <auto... Is>
using sequence = std::integer_sequence<typename seq_type<Is...>::type, Is...>;


template <auto X>
using cnst = std::integral_constant<decltype(X), X>;

template <auto X>
inline constexpr cnst<X> c{};

namespace detail
{
    template <typename F, auto... Is>
    void repeat_impl(F&& f, sequence<Is...>)
    {
        if constexpr((std::is_invocable_v<F&&, cnst<Is>> && ...))
        {
            (f(c<Is>), ...);
        }
        else
        {
            (((void)Is, f()), ...);
        }

        // If only: ...
        // (constexpr((std::is_invocable_v<F&&, cnst<Is>> && ...)) ? f(c<Is>) :
        // f(), ...);
    }
} // namespace detail

template <auto Counter, typename F>
void repeat(F&& f)
{
    detail::repeat_impl(
        f, std::make_integer_sequence<decltype(Counter), Counter>{});
}


template <auto I, typename F>
void repeat(cnst<I>, F&& f)
{
    repeat<I>(f);
}

int main()
{
    {
        repeat(0, [] { throw; });
    }

    {
        repeat<0>([] { throw; });
    }

    {
        repeat(0, [](int) { throw; });
    }

    {
        repeat<0>([](auto) { throw; });
    }

    {
        int i = 0;
        repeat(1, [&i] { ++i; });
        assert(i == 1);
    }

    {
        int i = 0;
        repeat<1>([&i] { ++i; });
        assert(i == 1);
    }

    {
        int i = 0;
        repeat(1, [&i](int x) { i += x; });
        assert(i == 0);
    }

    {
        int i = 0;
        repeat<1>([&i](auto x) { i += x; });
        assert(i == 0);
    }


    {
        int i = 0;
        repeat(2, [&i] { ++i; });
        assert(i == 2);
    }

    {
        int i = 0;
        repeat<2>([&i] { ++i; });
        assert(i == 2);
    }

    {
        int i = 0;
        repeat(2, [&i](int x) { i += x; });
        assert(i == 1);
    }

    {
        int i = 0;
        repeat<2>([&i](auto x) { i += x; });
        assert(i == 1);
    }


    {
        int i = 0;
        repeat(3, [&i](int x) { i += x; });
        assert(i == 3);
    }

    {
        int i = 0;
        repeat<3>([&i](auto x) { i += x; });
        assert(i == 3);
    }
}
