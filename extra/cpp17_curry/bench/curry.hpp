#pragma once

#include <experimental/tuple>
#include <functional>
#include <tuple>
#include <type_traits>

#define FWD(...) std::forward<decltype(__VA_ARGS__)>(__VA_ARGS__)

namespace impl
{
    template <typename T, typename TSource>
    using copy_referenceness_impl =
        std::conditional_t<!std::is_reference<TSource>{}, T,
            std::conditional_t<std::is_lvalue_reference<TSource>{},
                std::add_lvalue_reference_t<T>,
                std::conditional_t<std::is_rvalue_reference<TSource>{},
                    std::add_rvalue_reference_t<T>, void>>>;
}

/// @brief Removes reference from `T`, then applies `TSource`'s
/// "referenceness" to it.
template <typename T, typename TSource>
using copy_referenceness =
    impl::copy_referenceness_impl<std::remove_reference_t<T>, TSource>;

/// @brief Alias for the type that `T` would have as if it was forwarded
/// like `TSource`.
/// @details Does not check for possible incongruences. Example: if the
/// input type `T` is an rvalue and the source type `TSource` is an lvalue,
/// `T&` will be computed.
template <typename T, typename TSource>
using as_if_forwarded = std::conditional_t<!std::is_reference<TSource>{},
    std::add_rvalue_reference_t<std::remove_reference_t<T>>,
    copy_referenceness<T, TSource>>;

/// @brief Casts the passed forwarding reference `x` as if it was being
/// forwarded as `TLike`.
template <typename TLike, typename T>
inline constexpr decltype(auto) forward_like(T&& x) noexcept
{
    static_assert(!(std::is_rvalue_reference<decltype(x)>{} &&
                    std::is_lvalue_reference<TLike>{}));

    return static_cast<as_if_forwarded<T, TLike>>(x);
}

namespace vr::impl
{
    using std::experimental::apply;

    template <typename TF, typename TTuple>
    decltype(auto) for_tuple(TF&& f, TTuple&& t)
    {
        return vr::impl::apply(
            [&f](auto&&... xs) { (f(FWD(xs)), ...); }, FWD(t));
    }

    namespace detail
    {
        template <typename T>
        class fwd_capture_tuple : private std::tuple<T>
        {
        private:
            using decay_element_type = std::decay_t<T>;
            using base_type = std::tuple<T>;

        protected:
            constexpr auto& as_tuple() noexcept
            {
                return static_cast<base_type&>(*this);
            }

            constexpr const auto& as_tuple() const noexcept
            {
                return static_cast<const base_type&>(*this);
            }

            template <typename TFwd,
                typename = std::enable_if_t<
                    !std::is_same<std::decay_t<TFwd>, fwd_capture_tuple>{}>>
            constexpr fwd_capture_tuple(TFwd&& x) noexcept(
                std::is_nothrow_constructible<base_type, decltype(x)>{})
                : base_type(FWD(x))
            {
            }

        public:
            constexpr auto& get() & noexcept
            {
                return std::get<0>(as_tuple());
            }

            constexpr const auto& get() const & noexcept
            {
                return std::get<0>(as_tuple());
            }

            constexpr auto get() &&
                noexcept(std::is_move_constructible<decay_element_type>{})
            {
                return std::move(std::get<0>(as_tuple()));
            }
        };
    }

    template <typename T>
    class fwd_capture_wrapper : public detail::fwd_capture_tuple<T>
    {
    private:
        using base_type = detail::fwd_capture_tuple<T>;

    public:
        template <typename TFwd,
            typename = std::enable_if_t<
                !std::is_same<std::decay_t<TFwd>, fwd_capture_wrapper>{}>>
        constexpr fwd_capture_wrapper(TFwd&& x) noexcept(
            std::is_nothrow_constructible<base_type, decltype(x)>{})
            : base_type(FWD(x))
        {
        }
    };

    template <typename T>
    class fwd_copy_capture_wrapper : public detail::fwd_capture_tuple<T>
    {
    private:
        using base_type = detail::fwd_capture_tuple<T>;

    public:
        // No `FWD` is intentional, to force a copy if `T` is not an lvalue
        // reference.
        template <typename TFwd>
        constexpr fwd_copy_capture_wrapper(TFwd&& x) noexcept(
            std::is_nothrow_constructible<base_type, decltype(x)>{})
            : base_type(x)
        {
        }
    };

    template <typename T>
    constexpr auto fwd_capture(T&& x) noexcept(
        noexcept(fwd_capture_wrapper<T>(FWD(x))))
    {
        return fwd_capture_wrapper<T>(FWD(x));
    }

    template <typename T>
    constexpr auto fwd_copy_capture(T&& x) noexcept(
        noexcept(fwd_copy_capture_wrapper<T>(FWD(x))))
    {
        return fwd_copy_capture_wrapper<T>(FWD(x));
    }
}

#define FWD_CAPTURE(...) vr::impl::fwd_capture(FWD(__VA_ARGS__))

#define FWD_COPY_CAPTURE(...) vr::impl::fwd_copy_capture(FWD(__VA_ARGS__))

namespace vr::impl
{
    template <typename... Ts>
    constexpr auto fwd_capture_as_tuple(Ts&&... xs) noexcept(
        noexcept(std::make_tuple(FWD_CAPTURE(xs)...)))
    {
        return std::make_tuple(FWD_CAPTURE(xs)...);
    }

    template <typename... Ts>
    constexpr auto fwd_copy_capture_as_tuple(Ts&&... xs) noexcept(
        noexcept(std::make_tuple(FWD_COPY_CAPTURE(xs)...)))
    {
        return std::make_tuple(FWD_COPY_CAPTURE(xs)...);
    }

    template <typename TF, typename... TFwdCaptures>
    constexpr decltype(auto) apply_fwd_capture(TF&& f, TFwdCaptures&&... fcs)
    // TODO: noexcept
    {
        return vr::impl::apply([&f](auto&&... xs) mutable -> decltype(
                                   auto) { return f(FWD(xs).get()...); },
            std::tuple_cat(FWD(fcs)...));
    }
}

#define FWD_CAPTURE_PACK_AS_TUPLE(...) \
    vr::impl::fwd_capture_as_tuple(FWD(__VA_ARGS__)...)

#define FWD_COPY_CAPTURE_PACK_AS_TUPLE(...) \
    vr::impl::fwd_copy_capture_as_tuple(FWD(__VA_ARGS__)...)

using vr::impl::apply_fwd_capture;

template <typename TF>
constexpr decltype(auto) curry(TF&& f)
{
    // If `f()` can be called, then immediately call and return.
    // (Base case.)

    // Otherwise, return a function that allows partial application of any
    // number of arguments.
    // (Recursive case.)

    if
        constexpr(std::is_callable<TF()>{})
        {
            // Base case.
            return FWD(f)();
        }
    else
    {
        // Recursive case.

        // Return a lambda that binds any number of arguments to the current
        // callable object `f` - this is "partial application".
        return [xf = FWD_CAPTURE(f)](auto&&... partials) mutable constexpr
        { //                                              ^^^^^^^
            // The `mutable` is very important as we'll be moving `f` to the
            // inner lambda.

            // As we may want to partial-apply multiple times (currying in the
            // case of a single argument), we need to recurse here.
            return curry(
                [
                  partial_pack = FWD_CAPTURE_PACK_AS_TUPLE(partials),

                  // `xf` can be moved as it's a "forward-capture" wrapper.
                  yf = std::move(xf)
                ](auto&&... xs) constexpr
                    // Weirdly `g++` doesn't like `decltype(auto)` here.
                    ->decltype(forward_like<TF>(xf.get())(
                        FWD(partials)..., FWD(xs)...)) {
                        // `yf` will be called by applying the concatenation of
                        // `partial_pack` and `xs...`, retaining the original
                        // value
                        // categories thanks to the "forward-capture" wrappers.
                        return apply_fwd_capture(
                            [
                                // `yf` can be captured by reference as it's
                                // just a
                                // wrapper which lives in the parent lambda.
                                &yf](auto&&... ys) constexpr
                                ->decltype(forward_like<TF>(yf.get())(FWD(
                                    ys)...)) { //                                        ^^^^^^^^^^
                                    // The `ys...` pack will contain all the
                                    // concatenated
                                    // values.
                                    //                                vvvvvvvvvv
                                    return forward_like<TF>(yf.get())(
                                        FWD(ys)...);
                                    //                      ^^^^^^^^
                                    // `yf.get()` is either the original
                                    // callable object or
                                    // an intermediate step of the `curry`
                                    // recursion.
                                },
                            partial_pack, FWD_CAPTURE_PACK_AS_TUPLE(xs));
                        // ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                        // Automatically concatenated by `apply_fwd_capture`.
                    });
        };
    }
}