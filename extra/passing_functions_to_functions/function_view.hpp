#pragma once

#include <experimental/type_traits>
#include <functional>

template <typename...>
using void_t = void;

template <class T, class R = void, class = void>
struct is_callable : std::false_type
{
};

template <class T>
struct is_callable<T, void, void_t<std::result_of_t<T>>> : std::true_type
{
};

template <class T, class R>
struct is_callable<T, R, void_t<std::result_of_t<T>>>
    : std::is_convertible<std::result_of_t<T>, R>
{
};

template <typename TSignature>
struct signature_helper;

template <typename TReturn, typename... TArgs>
struct signature_helper<TReturn(TArgs...)>
{
    using fn_ptr_type = TReturn (*)(TArgs...);
};

template <typename TSignature>
using fn_ptr = typename signature_helper<TSignature>::fn_ptr_type;

template <typename T>
struct dependent_false : std::false_type
{
};



template <typename TSignature>
class function_view;

template <typename TReturn, typename... TArgs>
class function_view<TReturn(TArgs...)> final
{
private:
    using signature_type = TReturn(void*, TArgs...);

    void* _ptr;
    TReturn (*_erased_fn)(void*, TArgs...);

public:
    template <typename T>
    function_view(T&& x) noexcept : _ptr{std::addressof(x)}
    {
        if constexpr(!is_callable<T(TArgs...)>{})
        {
            static_assert(dependent_false<T>{},
                "The provided callable doesn't have the correct "
                "signature.");
        }
        else
        {
            _erased_fn = [](void* ptr, TArgs... xs) -> TReturn {
                return (*static_cast<T*>(ptr))(xs...);
            };
        }
    }

    decltype(auto) operator()(TArgs... xs) const
        noexcept(noexcept(_erased_fn(_ptr, xs...)))
    {
        return _erased_fn(_ptr, xs...);
    }
};
