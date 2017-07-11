#include <type_traits>
#include <utility>
#include <cassert>
#include <future>
#include <iostream>

#define FWD(...) ::std::forward<decltype(__VA_ARGS__)>(__VA_ARGS__)

struct root { };

template <typename Parent, typename F>
struct node : Parent, F
{
    template <typename ParentFwd, typename FFwd>
    node(ParentFwd&& p, FFwd&& f) : Parent{FWD(p)}, F{FWD(f)}
    {
    }

    auto& as_parent() noexcept
    {
        return static_cast<Parent&>(*this);
    }

    auto& as_f() noexcept
    {
        return static_cast<F&>(*this);
    }

    decltype(auto) call_with_parent()
    {
        if constexpr(std::is_same_v<Parent, root>)
        {
            return as_f()();
        }
        else
        {
            return as_f()(as_parent());
        }
    }

    template <typename FThen>
    auto then(FThen&& f_then)
    {
        return ::node{std::move(*this), [f_then = FWD(f_then)](auto& parent) mutable
        {
            return f_then(parent.call_with_parent());
        }};
    }

    template <typename Scheduler>
    decltype(auto) execute(Scheduler&& s) &
    {
        return s([this]() -> decltype(auto)
        {
            return call_with_parent();
        });
    }
};

template <typename ParentFwd, typename FFwd>
node(ParentFwd&&, FFwd&&) -> node<std::decay_t<ParentFwd>, std::decay_t<FFwd>>;

template <typename F>
auto initiate(F&& f)
{
    return node{root{}, std::forward<F>(f)};
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
    {
        auto f = initiate([]{ return 1; });
        assert(f.execute(synchronous_scheduler{}) == 1);
    }

    {
        auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; });

        assert(f.execute(synchronous_scheduler{}) == 2);
    }

    {
        auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; });

        assert(f.execute(synchronous_scheduler{}) == 3);
    }
}
