#include <type_traits>
#include <utility>
#include <cassert>
#include <future>
#include <iostream>
#include <condition_variable>
#include <mutex>
#include <atomic>

#define FWD(...) ::std::forward<decltype(__VA_ARGS__)>(__VA_ARGS__)

using namespace std::literals;

struct nothing { };

template <typename T>
struct void_to_nothing { using type = T; };

template <>
struct void_to_nothing<void> { using type = nothing; };

template <typename T>
using void_to_nothing_t = typename void_to_nothing<T>::type;

template <typename F, typename... Ts>
decltype(auto) returning_nothing_instead_of_void(F&& f, Ts&&... xs)
{
    if constexpr(std::is_same_v<decltype(FWD(f)(FWD(xs)...)), void>)
    {
        FWD(f)(FWD(xs)...);
        return nothing{};
    }
    else
    {
        return FWD(f)(FWD(xs)...);
    }
}

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
            return returning_nothing_instead_of_void(as_f());
        }
        else
        {
            return returning_nothing_instead_of_void(as_f(), as_parent());
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
    void execute(Scheduler&& s) &
    {
        s([this]
        {
            call_with_parent();
        });
    }

    template <typename Scheduler>
    decltype(auto) wait_and_get(Scheduler&& s) &
    {
        using result_type = void_to_nothing_t<decltype(call_with_parent())>;

        result_type out;
        std::atomic<bool> finished{false};
        std::condition_variable cv;

        auto f = then([&](auto&& x)
                      {
                          out = FWD(x);
                          finished.store(true);
                          cv.notify_one();
                      });

        f.execute(s);

        std::mutex mtx;
        std::unique_lock lk(mtx);
        cv.wait(lk, [&]{ return finished.load(); });

        return out;
    }
};

template <typename ParentFwd, typename FFwd>
node(ParentFwd&&, FFwd&&) -> node<std::decay_t<ParentFwd>, std::decay_t<FFwd>>;

template <typename F>
auto initiate(F&& f)
{
    return node{root{}, std::forward<F>(f)};
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
    {
        auto f = initiate([]{ return 1; });
        assert(f.wait_and_get(world_s_best_thread_pool{}) == 1);
    }

    {
        auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; });

        assert(f.wait_and_get(world_s_best_thread_pool{}) == 2);
    }

    {
        auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; });

        assert(f.wait_and_get(world_s_best_thread_pool{}) == 3);
    }

    auto f0 = initiate([]{ return 1; })
              .then([](int x){ return x + 1; })
              .then([](int x){ return x + 1; });

    std::cout << f0.wait_and_get(world_s_best_thread_pool{})
              << "\n";

    auto f1 = initiate([]{ return 1; })
              .then([](int x){ return x + 1; })
              .then([](int){ std::cout << "void!"; });

    f1.wait_and_get(world_s_best_thread_pool{});
}
