#include <type_traits>
#include <utility>
#include <boost/hana.hpp>


struct Cat
{
    Cat() = delete;
    void meow();
};

struct Dog
{
    Dog() = delete;
    void bark();
};

int main()
{
    auto has_meow = boost::hana::is_valid([](auto x) -> decltype(x.meow())
        {
        });

    auto has_bark = boost::hana::is_valid([](auto x) -> decltype(x.bark())
        {
        });

    static_assert(has_meow(Cat{}));
    static_assert(has_bark(Dog{}));
}