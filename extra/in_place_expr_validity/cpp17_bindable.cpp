#include <experimental/tuple>
#include <experimental/type_traits>
#include <iostream>
#include <tuple>
#include <type_traits>
#include <utility>
#include <vrm/pp.hpp>

template <typename T>
struct type_w
{
    using type = T;
};

template <typename T>
constexpr type_w<T> type_c{};

template <typename... Ts>
struct types_w
{
};

template <typename... Ts>
constexpr types_w<Ts...> types;

template <typename TF>
struct validity_checker
{
    template <typename... Ts>
    constexpr bool operator()(types_w<Ts...>)
    {
        return std::is_callable<std::decay_t<TF>(
            typename decltype(type_c<Ts>)::type...)>{};
    }
};

template <typename TF>
constexpr auto is_valid(TF)
{
    return validity_checker<TF>{};
}


#define IS_VALID_2(...) is_valid([](auto _0, auto _1) constexpr->decltype(__VA_ARGS__){})
#define IS_VALID_1(...) is_valid([](auto _0) constexpr->decltype(__VA_ARGS__){})
#define IS_VALID(n, ...) IS_VALID_ ## n (__VA_ARGS__)

struct Cat
{
    Cat() = delete;
    void meow() const
    {
        std::cout << "meow\n";
    }
};

struct Dog
{
    Dog() = delete;
    void bark() const
    {
        std::cout << "bark\n";
    }
};

template <typename T>
auto make_noise(const T& x)
{
    auto can_meow = IS_VALID(1, _0.meow());
    auto can_bark = IS_VALID(1, _0.bark());

    if constexpr(can_meow(types<T>))
    {
        x.meow();
    }
    else if constexpr(can_bark(types<T>))
    {
        x.bark();
    }
    else
    {
        struct cannot_meow_or_bark;
        cannot_meow_or_bark{};
    }

    auto addable = IS_VALID(2, _0 + _1);
    static_assert(addable(types<int, float>));
    static_assert(!addable(types<int, Dog>));
}

int main()
{
    make_noise(Cat{});
    make_noise(Dog{});
    // make_noise(int{});
}
