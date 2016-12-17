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

template <typename TSignature>
class function_view;

template <typename TReturn, typename... TArgs>
class function_view<TReturn(TArgs...)>
{
private:
    using signature_type = TReturn(char*, TArgs...);
    using fn_ptr_type = fn_ptr<signature_type>;

    char* _ptr;
    fn_ptr_type _fn_ptr;

public:
    template <typename T,
        typename = std::enable_if_t<is_callable<T(TArgs...), TReturn>{}>>
    function_view(T&& x) : _ptr(reinterpret_cast<char*>(&x))
    {
        _fn_ptr = [](char* ptr, TArgs... xs) -> TReturn {
            return std::invoke(reinterpret_cast<T&>(*ptr), xs...);
        };
    }

    auto operator()(TArgs... xs)
    {
        return _fn_ptr(_ptr, xs...);
    }
};
