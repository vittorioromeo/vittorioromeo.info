#include <type_traits>
#include <utility>
#include <cassert>
#include <future>
#include <iostream>
#include <condition_variable>
#include <mutex>
#include <atomic>
#include <random>
#include <chrono>

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
    return call_ignoring_nothing([&](auto&&... ys) -> decltype(auto)
    {
        if constexpr(std::is_same_v<std::decay_t<T>, nothing>)
        {
            return FWD(f)(FWD(ys)...);
        }
        else
        {
            return FWD(f)(FWD(x), FWD(ys)...);
        }
    }, FWD(xs)...);
}

template <typename F, typename... Ts>
using result_of_ignoring_nothing_t =
    decltype(call_ignoring_nothing(std::declval<F>(), std::declval<Ts>()...));

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
inline constexpr type_wrapper<T> type_wrapper_v{};

template <typename T>
using unwrap = typename std::decay_t<T>::type;

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


template <typename Parent, typename F>
class node;

template <typename Parent, typename... Fs>
class when_all;

class root
{
    template <typename>
    friend class node_base;

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

template <typename Derived>
class node_base
{
private:
    auto& as_derived() noexcept
    {
        return static_cast<Derived&>(*this);
    }

public:
    template <typename... FThens>
    auto then(FThens&&... f_thens) &&
    {
        if constexpr(sizeof...(FThens) == 1)
        {
            return node{std::move(as_derived()), FWD(f_thens)...};
        }
        else
        {
            return when_all{std::move(as_derived()), FWD(f_thens)...};
        }
    }

    template <typename Scheduler, typename... Children>
    void walk_up(Scheduler&& s, Children&... cs) &
    {
        as_derived().as_parent().walk_up(s, as_derived(), cs...);
    }

    template <typename Scheduler>
    decltype(auto) wait_and_get(Scheduler&& s) &&
    {
        typename Derived::output_type out;
        bool_latch l;

        auto f = std::move(as_derived()).then([&](auto&&... x)
        {
            ((out = FWD(x)), ...);
            l.count_down();
        });

        f.walk_up(s);

        l.wait();
        return out;
    }
};

template <typename Parent, typename F>
class node : private child_of<Parent>, private F,
             public node_base<node<Parent, F>>
{
public:
    using typename child_of<Parent>::input_type;
    using output_type = result_of_ignoring_nothing_t<F&, input_type>;

    template <typename ParentFwd, typename FFwd>
    node(ParentFwd&& p, FFwd&& f) : child_of<Parent>{FWD(p)}, F{FWD(f)}
    {
    }

    using crtp_base_type = node_base<node<Parent, F>>;
    friend crtp_base_type;

    using crtp_base_type::then;
    using crtp_base_type::walk_up;
    using crtp_base_type::wait_and_get;

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

};

template <typename ParentFwd, typename FFwd>
node(ParentFwd&&, FFwd&&) -> node<std::decay_t<ParentFwd>, std::decay_t<FFwd>>;

template <typename Parent>
class schedule : private child_of<Parent>,
                 public node_base<schedule<Parent>>
{
public:
    using typename child_of<Parent>::input_type;
    using output_type = nothing;

    template <typename ParentFwd>
    schedule(ParentFwd&& p) : child_of<Parent>{FWD(p)} { }

    using crtp_base_type = node_base<schedule<Parent>>;
    friend crtp_base_type;

    using crtp_base_type::then;
    using crtp_base_type::walk_up;
    using crtp_base_type::wait_and_get;

    template <typename Scheduler, typename Result, typename Child, typename... Children>
    void execute(Scheduler&& s, Result&&, Child& c, Children&... cs) &
    {
        s([&]{ c.execute(s, nothing{}, cs...); });
    }
};

template <typename ParentFwd>
schedule(ParentFwd&&) -> schedule<std::decay_t<ParentFwd>>;

template <typename T>
struct movable_atomic : std::atomic<T>
{
    using std::atomic<T>::atomic;
    movable_atomic(movable_atomic&& rhs) : std::atomic<T>{rhs.load()}
    {
    }
};

template <typename Parent, typename... Fs>
class when_all : private child_of<Parent>, private Fs...,
                 public node_base<when_all<Parent, Fs...>>
{
public:
    using typename child_of<Parent>::input_type;
    using output_type = std::tuple<result_of_ignoring_nothing_t<Fs&, input_type>...>;

private:
    movable_atomic<int> _left{sizeof...(Fs)};
    output_type _out;

public:
    template <typename ParentFwd, typename... FFwds>
    when_all(ParentFwd&& p, FFwds&&... fs) : child_of<Parent>{FWD(p)}, Fs{FWD(fs)}...
    {
    }

    using crtp_base_type =  node_base<when_all<Parent, Fs...>>;
    friend crtp_base_type;

    using crtp_base_type::then;
    using crtp_base_type::walk_up;
    using crtp_base_type::wait_and_get;

public:
    template <typename Scheduler, typename Result>
    void execute(Scheduler&& s, Result&& r) &
    {
        enumerate_args([&](auto i, auto t)
        {
            using f_type = unwrap<decltype(t)>;

            if constexpr(i == sizeof...(Fs) - 1)
            {
                call_ignoring_nothing(static_cast<f_type>(*this), r);
            }
            else
            {
                s([&]{ call_ignoring_nothing(static_cast<f_type>(*this), r); });
            }
        }, type_wrapper_v<Fs>...);
    }

    template <typename Scheduler, typename Result, typename Child, typename... Children>
    void execute(Scheduler&& s, Result&& r, Child& c, Children&... cs) &
    {
        enumerate_args([&](auto i, auto t)
        {
            auto do_computation = [&]
            {
                using type = typename decltype(t)::type;

                std::get<decltype(i){}>(_out) =
                    call_ignoring_nothing(static_cast<type&>(*this), r);

                if(_left.fetch_sub(1) == 1)
                {
                    c.execute(s, std::move(_out), cs...);
                }
            };

            if constexpr(i == sizeof...(Fs) - 1)
            {
                do_computation();
            }
            else
            {
                s([&]{ do_computation(); });
            }
        }, type_wrapper_v<Fs>...);
    }
};

template <typename ParentFwd, typename... FFwds>
when_all(ParentFwd&&, FFwds&&...) -> when_all<std::decay_t<ParentFwd>, std::decay_t<FFwds>...>;

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

void fuzzy()
{
    std::random_device rd;
    std::default_random_engine re(rd());

    const auto rndint = [&](int min, int max)
    {
        return std::uniform_int_distribution<int>{min, max - 1}(re);
    };

    const auto rndsleep = [&]
    {
        std::this_thread::sleep_for(std::chrono::milliseconds{rndint(0, 10)});
    };

    for(int i = 0; i < 1000; ++i)
    {
        auto f = initiate([&]{ rndsleep(); return 1; },
                          [&]{ rndsleep(); return 2; },
                          [&]{ rndsleep(); return 3; })
            .then([&](auto t)
            {
                rndsleep();
                auto [a, b, c] = t;
                assert(a + b + c == 1 + 2 + 3);
                return 0;
            },
            [&](auto t)
            {
                rndsleep();
                auto [a, b, c] = t;
                assert(a + b + c == 1 + 2 + 3);
                return 1;
            }).then([](auto t){ auto [a, b] = t; assert(a+b==1); return std::string{"hello"}; },
                    [](auto t){ auto [a, b] = t; assert(a+b==1); return std::string{"world"}; })
            .then([](auto y){ auto [s0, s1] = y; assert(s0 + s1 == "helloworld"); });

        std::move(f).wait_and_get(world_s_best_thread_pool{});
    }
}

int main()
{
    fuzzy();

    {
        auto f = initiate([]{ return 1; });
        assert(std::move(f).wait_and_get(world_s_best_thread_pool{}) == 1);
    }


    {
        auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; });

        assert(std::move(f).wait_and_get(world_s_best_thread_pool{}) == 2);
    }

    {
        auto f = initiate([]{ return 1; })
             .then([](int x){ return x + 1; })
             .then([](int x){ return x + 1; });

        assert(std::move(f).wait_and_get(world_s_best_thread_pool{}) == 3);
    }

    {
        auto f = initiate([]{ return 1; })
                .then([](int x){ return x + 1; })
                .then([](int){ std::cout << "void!\n"; });

        std::move(f).wait_and_get(world_s_best_thread_pool{});
    }

    {
        auto f = initiate([]{ return 1; }, []{ return 2; });

        assert(std::move(f).wait_and_get(world_s_best_thread_pool{}) == (std::tuple{1, 2}));
    }

    {
        auto f = initiate([]{ return 1; }, []{ return 1; })
                .then([](auto t){ auto [a, b] = t; return a + b; });

        assert(std::move(f).wait_and_get(world_s_best_thread_pool{}) == 2);
    }

    auto f2 = initiate([]{ std::cout << "A0\n"; return 1; },
                       []{ std::cout << "A1\n"; return 2; })
       .then([](auto t)
    {
        auto [a, b] = t;
        return a + b;
    }).then([](auto x){ std::cout << x << " C0\n"; return std::string{"hello"}; },
            [](auto x){ std::cout << x << " C1\n"; return std::string{"world"}; })
      .then([](auto y){ auto [s0, s1] = y; std::cout << s0 << " " << s1 << "\n"; });

    std::move(f2).wait_and_get(world_s_best_thread_pool{});

    std::cout.flush();
    return 0;
}
