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

template <typename Parent>
struct child_of : Parent
{
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
struct node : child_of<Parent>, F
{
    template <typename ParentFwd, typename FFwd>
    node(ParentFwd&& p, FFwd&& f) : child_of<Parent>{FWD(p)}, F{FWD(f)}
    {
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
            return returning_nothing_instead_of_void(as_f(), this->as_parent());
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
        // TODO: unneeded void_to_nothing?
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


template <typename F, typename... Ts, std::size_t... Is>
void enumerate_args_impl(std::index_sequence<Is...>, F&& f, Ts&&... xs)
{
    (f(std::integral_constant<std::size_t, Is>{}, FWD(xs)), ...);
}

template <typename F, typename... Ts>
void enumerate_args(F&& f, Ts&&... xs)
{
    enumerate_args_impl(std::index_sequence_for<Ts...>{}, FWD(f), FWD(xs)...);
}

template <typename T>
struct type_wrapper
{
    using type = T;
};

template <typename T>
inline constexpr type_wrapper<T> type_wrapper_v;

template <typename Parent, typename... Fs>
struct when_all : child_of<Parent>, Fs...
{
    template <typename ParentFwd, typename... FFwds>
    when_all(ParentFwd&& p, FFwds&&... fs) : child_of<Parent>{FWD(p)}, Fs{FWD(fs)}...
    {
    }

    template <typename Scheduler>
    auto execute(Scheduler&& s) &
    {
        using result_type = std::tuple<decltype(call_with_parent<Fs>())...>;

        result_type out;
        std::atomic<std::size_t> left{sizeof...(Fs)};
        std::condition_variable cv;

        enumerate_args([&](auto i, auto t)
        {
            s([&]
            {
                using my_t = typename decltype(t)::type;
                auto x = this->call_with_parent<my_t>();
                std::get<decltype(i){}>(out) = x;
                left.fetch_sub(1);
                cv.notify_one();
            });
        }, type_wrapper_v<Fs>...);

        std::mutex mtx;
        std::unique_lock lk(mtx);
        cv.wait(lk, [&]{ return left.load() == 0; });

        return out;
    }

    template <typename F>
    decltype(auto) call_with_parent()
    {
        if constexpr(std::is_same_v<Parent, root>)
        {
            return returning_nothing_instead_of_void(static_cast<F&>(*this));
        }
        else
        {
            return returning_nothing_instead_of_void(static_cast<F&>(*this), this->as_parent());
        }
    }
};

template <typename ParentFwd, typename... FFwds>
when_all(ParentFwd&&, FFwds&&...) -> when_all<std::decay_t<ParentFwd>, std::decay_t<FFwds>...>;

template <typename... Fs>
auto initiate(Fs&&... fs)
{
    if constexpr(sizeof...(Fs) == 1)
    {
        return node{root{}, FWD(fs)...};
    }
    else
    {
        return when_all{root{}, FWD(fs)...};
    }
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

    {
        auto f0 = initiate([]{ std::cout << "A"; return 1; }, []{ std::cout << "B"; return 1; });
        f0.execute(world_s_best_thread_pool{});
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
