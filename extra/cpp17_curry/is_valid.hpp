#pragma once

#include <experimental/tuple>
#include <iostream>
#include <tuple>
#include <type_traits>
#include <utility>
#include <vrm/pp.hpp>

template <typename T>
struct type_w
{
    using type = T;
};

template <typename T>
constexpr type_w<T> type_c{};

template <typename TF>
struct validity_checker
{
    template <typename... Ts>
    constexpr auto operator()(Ts... ts)
    {
        return std::is_callable<std::decay_t<TF>(
            typename decltype(ts)::type...)>{};
    }
};


template <typename TF>
constexpr auto is_valid(TF)
{
    return validity_checker<TF>{};
}

#define IS_VALID_2_EXPANDER(type0, type1) (type_c<type0>, type_c<type1>)

#define IS_VALID_1_EXPANDER(type0) (type_c<type0>)

#define IS_VALID_2(...)                                               \
    is_valid([](auto _0, auto _1) constexpr->decltype(__VA_ARGS__){}) \
        IS_VALID_2_EXPANDER

#define IS_VALID_1(...) \
    is_valid([](auto _0) constexpr->decltype(__VA_ARGS__){}) IS_VALID_1_EXPANDER

#define IS_VALID(...) \
    VRM_PP_CAT(IS_VALID_, VRM_PP_ARGCOUNT(__VA_ARGS__))(__VA_ARGS__)
