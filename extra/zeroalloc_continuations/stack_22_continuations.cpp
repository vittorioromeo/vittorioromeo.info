#include <type_traits>
#include <utility>
#include <future>

#define FWD(...) ::std::forward<decltype(__VA_ARGS__)>(__VA_ARGS__)

template <typename F>
struct node : F
{
    template <typename FFwd>
    node(FFwd&& f) : F{FWD(f)}
    {
    }

    template <typename FThen>
    auto then(FThen&& f_then)
    {
        return ::node{[parent = std::move(*this), f_then = FWD(f_then)]() mutable
        {
            return f_then(static_cast<F&>(parent)());
        }};
    }

    template <typename Scheduler>
    decltype(auto) execute(Scheduler&& s) &
    {
        return s(*this);
    }
};

template <typename FFwd>
node(FFwd&&) -> node<std::decay_t<FFwd>>;

template <typename F>
auto initiate(F&& f)
{
    return node{std::forward<F>(f)};
}


struct synchronous_scheduler
{
    template <typename F>
    decltype(auto) operator()(F&& f) const
    {
        return f();
    }
};

struct asynchronous_scheduler
{
    template <typename F>
    decltype(auto) operator()(F&& f) const
    {
        auto fut = std::async(f);
        return fut.get();
    }
};

int main()
{
    auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; });

    return f.execute(asynchronous_scheduler{});
}
