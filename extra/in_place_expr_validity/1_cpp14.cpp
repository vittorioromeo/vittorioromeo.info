#include <type_traits>
#include <utility>
#include <boost/hana.hpp>
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

template <typename T>
auto make_noise(const T& x)
{
    auto has_meow =
        boost::hana::is_valid([](const auto& x) -> decltype(x.meow())
            {
            });

    auto has_bark =
        boost::hana::is_valid([](const auto& x) -> decltype(x.bark())
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