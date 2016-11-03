#include <type_traits>
#include <utility>
#include <vrm/core/static_if.hpp>

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

template <typename...>
using void_t = void;

template <typename, typename = void>
struct is_callable : std::false_type
{
};

template <typename TF, class... TArgs>
struct is_callable<TF(TArgs...),
    void_t<decltype(std::declval<TF>()(std::declval<TArgs>()...))>>
    : std::true_type
{
};

template <typename TF>
struct validity_checker
{
    template <typename... Ts>
    constexpr auto operator()(Ts&&...) const
    {
        return is_callable<TF(Ts...)>{};
    }
};

template <typename TF>
constexpr auto is_valid(TF)
{
    return validity_checker<TF>{};
}

template <typename T>
auto make_noise(const T& x)
{
    auto has_meow = is_valid([](auto&& x) -> decltype(x.meow())
        {
        });

    auto has_bark = is_valid([](auto&& x) -> decltype(x.bark())
        {
        });

    vrm::core::static_if(has_meow(x))
        .then([](const auto& y)
            {
                y.meow();
            })
        .else_if(has_bark(x))
        .then([](const auto& y)
            {
                y.bark();
            })
        .else_([](const auto&)
            {
                struct cannot_meow_or_bark;
                cannot_meow_or_bark{};
            })(x);
}

int main()
{
    make_noise(Cat{});
    make_noise(Dog{});
    // make_noise(int{});
}