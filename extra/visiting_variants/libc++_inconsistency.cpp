#include <vector>
#include <boost/variant.hpp>
#include <boost/version.hpp>

struct my_variant_wrapper;

using my_variant_array = std::vector<my_variant_wrapper>; // <- indirection here
using my_variant = boost::variant<int, my_variant_array>;

struct my_variant_wrapper
{
    my_variant _v;

    template <typename... Ts>
    my_variant_wrapper(Ts&&... xs)
        : _v(std::forward<Ts>(xs)...)
    {
    }
};

struct my_visitor
{
    void operator()(int x) const
    {
    }

    void operator()(const my_variant_array& arr) const
    {
        for(const auto& x : arr)
        {
            boost::apply_visitor(*this, x._v);
        }
    }
};

int main()
{
    my_variant v0 = my_variant_array{my_variant{1}, my_variant{2},
        my_variant_array{my_variant{3}, my_variant{4}}};

    boost::apply_visitor(my_visitor{}, v0);
}
