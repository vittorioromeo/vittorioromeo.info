#include <experimental/tuple>
#include <iostream>
#include <tuple>
#include <type_traits>
#include <utility>
#include <vrm/pp.hpp>

template <typename... Ts, typename TF>
static constexpr auto is_valid(TF)
{
    return std::is_invocable<TF, Ts...>{};
}

#define IS_VALID_EXPANDER_BEGIN(count)                    \
    [](VRM_PP_REPEAT_INC(count, IS_VALID_EXPANDER_MIDDLE, \
        _)) constexpr IS_VALID_EXPANDER_END

#define IS_VALID_EXPANDER_MIDDLE(idx, _) VRM_PP_COMMA_IF(idx) auto _##idx

#define IS_VALID_EXPANDER_END(...) \
    -> decltype(void(__VA_ARGS__)){})

#define IS_VALID(...)                              \
    is_valid<__VA_ARGS__>(IS_VALID_EXPANDER_BEGIN( \
        VRM_PP_ARGCOUNT(__VA_ARGS__))

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
    if
        constexpr(IS_VALID(T)(_0.meow()))
        {
            x.meow();
        }
    else if
        constexpr(IS_VALID(T)(_0.bark()))
        {
            x.bark();
        }
    else
    {
        struct cannot_meow_or_bark;
        cannot_meow_or_bark{};
    }
}

int main()
{
    make_noise(Cat{});
    make_noise(Dog{});
    // make_noise(int{});
}
