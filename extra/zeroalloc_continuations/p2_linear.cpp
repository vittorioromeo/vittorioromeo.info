#include <type_traits>
#include <utility>
#include <cassert>
#include <future>
#include <iostream>
#include <condition_variable>
#include <mutex>
#include <atomic>

#define FWD(...) ::std::forward<decltype(__VA_ARGS__)>(__VA_ARGS__)

struct nothing { };

template <typename T>
using void_to_nothing_t = std::conditional_t<std::is_void_v<T>, nothing, T>;

template <typename F, typename... Ts>
decltype(auto) returning_nothing_instead_of_void(F&& f, Ts&&... xs)
{
    if constexpr(std::is_void_v<decltype(FWD(f)(FWD(xs)...))>)
    {
        FWD(f)(FWD(xs)...);
        return nothing{};
    }
    else
    {
        return FWD(f)(FWD(xs)...);
    }
}

template <typename F>
decltype(auto) call_ignoring_nothing(F&& f)
{
    return returning_nothing_instead_of_void(FWD(f));
}

template <typename F, typename T, typename... Ts>
decltype(auto) call_ignoring_nothing(F&& f, T&& x, Ts&&... xs)
{
    return call_ignoring_nothing([&f, &x](auto&&... ys) -> decltype(auto)
    {
        return std::forward<F>(f)(std::forward<T>(x), FWD(ys)...);
    }, FWD(xs)...);
}

template <typename F, typename... Ts>
decltype(auto) call_ignoring_nothing(F&& f, nothing, Ts&&... xs)
{
    return call_ignoring_nothing([&f](auto&&... ys) -> decltype(auto)
    {
        return std::forward<F>(f)(FWD(ys)...);
    }, FWD(xs)...);
}

template <typename F, typename... Ts>
using result_of_ignoring_nothing_t =
    decltype(call_ignoring_nothing(std::declval<F>(), std::declval<Ts>()...));

class bool_latch
{
private:
    std::atomic<bool> _finished{false};
    std::condition_variable _cv;
    std::mutex _mtx;

public:
    void count_down()
    {
        std::scoped_lock lk{_mtx};
        _finished.store(true);
        _cv.notify_all();
    }

    void wait()
    {
        std::unique_lock lk{_mtx};
        _cv.wait(lk, [this]{ return _finished.load(); });
    }
};

class root
{
    template <typename, typename>
    friend class node;

    template <typename, typename...>
    friend class when_all;

    template <typename>
    friend class schedule;

public:
    // The `root` produces `nothing`.
    using output_type = nothing;

private:
    // When we are at the `root`, we cannot go "up" the chain anymore.
    // Therefore we being going "down".
    template <typename Scheduler, typename Child, typename... Children>
    void walk_up(Scheduler&& s, Child& c, Children&... cs) &
    {
        c.execute(s, nothing{}, cs...);
    }
};

template <typename Parent>
class child_of : public Parent
{
public:
    using input_type = typename Parent::output_type;

protected:
    template <typename ParentFwd>
    child_of(ParentFwd&& p) : Parent{FWD(p)}
    {
    }

    auto& as_parent() noexcept
    {
        return static_cast<Parent&>(*this);
    }
};

template <typename Parent, typename F>
class node : private child_of<Parent>, private F
{
public:
    using typename child_of<Parent>::input_type;
    using output_type = result_of_ignoring_nothing_t<F&, input_type>;

    template <typename ParentFwd, typename FFwd>
    node(ParentFwd&& p, FFwd&& f) : child_of<Parent>{FWD(p)}, F{FWD(f)}
    {
    }

    template <typename FThen>
    auto then(FThen&& f_then) &&
    {
        return ::node{std::move(*this), FWD(f_then)};
    }

private:
    auto& as_f() noexcept
    {
        return static_cast<F&>(*this);
    }

public:
    template <typename Scheduler, typename Result>
    void execute(Scheduler&&, Result&& r) &
    {
        call_ignoring_nothing(as_f(), FWD(r));
    }

    template <typename Scheduler, typename Result, typename Child, typename... Children>
    void execute(Scheduler&& s, Result&& r, Child& c, Children&... cs) &
    {
        c.execute(s, call_ignoring_nothing(as_f(), FWD(r)), cs...);
    }

    template <typename Scheduler, typename... Children>
    void walk_up(Scheduler&& s, Children&... cs) &
    {
        this->as_parent().walk_up(s, *this, cs...);
    }

    template <typename Scheduler>
    decltype(auto) wait_and_get(Scheduler&& s) &&
    {
        output_type out;
        bool_latch l;

        auto f = std::move(*this).then([&](auto&&... x)
        {
            ((out = FWD(x)), ...);
            l.count_down();
        });

        f.walk_up(s);

        l.wait();
        return out;
    }
};

template <typename ParentFwd, typename FFwd>
node(ParentFwd&&, FFwd&&) -> node<std::decay_t<ParentFwd>, std::decay_t<FFwd>>;

template <typename Parent>
class schedule : private child_of<Parent>
{
public:
    using typename child_of<Parent>::input_type;
    using output_type = nothing;

    template <typename ParentFwd>
    schedule(ParentFwd&& p) : child_of<Parent>{FWD(p)} { }

    template <typename FThen>
    auto then(FThen&& f_then) &&
    {
        return ::node{std::move(*this), FWD(f_then)};
    }

    template <typename Scheduler, typename Result, typename Child, typename... Children>
    void execute(Scheduler&& s, Result&&, Child& c, Children&... cs) &
    {
        s([&]{ c.execute(s, nothing{}, cs...); });
    }

    template <typename Scheduler, typename... Children>
    void walk_up(Scheduler&& s, Children&... cs) &
    {
        this->as_parent().walk_up(s, *this, cs...);
    }
};

template <typename ParentFwd>
schedule(ParentFwd&&) -> schedule<std::decay_t<ParentFwd>>;

template <typename... Fs>
auto initiate(Fs&&... fs)
{
    return schedule{root{}}.then(FWD(fs)...);
}

struct world_s_best_thread_pool
{
    template <typename F>
    void operator()(F&& f)
    {
        std::thread{FWD(f)}.detach();
    }
};

int main()
{
    auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; });

    assert(std::move(f).wait_and_get(world_s_best_thread_pool{}) == 3);
}
