#include <utility>

template <typename P, typename F>
struct foo
{
    P _p;
    int i{0};

    foo(P&& p, F) : _p{std::move(p)} { }

    template <typename... Cs>
    void up(Cs&... cs)
    {
        if constexpr(sizeof...(Cs) == 2) { down(cs...); }
        else { _p.up(*this, cs...); }
    }

    void down() { --i; }

    template <typename C, typename... Cs>
    void down(C& c, Cs&... cs)
    {
        [&] { [&] { c.down(cs...); }(); }();
    }
};

int main()
{
    auto f = foo{foo{foo{0, 0}, 0}, 0};
    f.up();
}
