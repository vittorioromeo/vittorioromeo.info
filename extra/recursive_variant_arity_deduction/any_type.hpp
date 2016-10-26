// Copyright(c)2015 - 2016 Vittorio Romeo
// License: Academic Free License ("AFL") v. 3.0
// AFL License page: http://opensource.org/licenses/AFL-3.0
// http://vittorioromeo.info | vittorio.romeo@outlook.com

#pragma once

struct any_type
{
    constexpr any_type() noexcept;
    constexpr any_type(const any_type&) noexcept;

    template <typename... Ts>
    constexpr any_type(Ts&&...) noexcept;

    constexpr any_type& operator=(const any_type&);

    template <typename T>
    constexpr any_type& operator=(T&&);

    template <typename T>
    constexpr operator T&() const noexcept;

    template <typename T>
    constexpr operator T &&() const noexcept;

    template <typename T>
    constexpr operator T const&() const noexcept;

    template <typename T>
    constexpr operator T const &&() const noexcept;

    template<typename... Ts>
    constexpr any_type operator()(Ts&&...) const noexcept;

    template <typename T>
    constexpr any_type operator->*(T&&) noexcept;

    template <typename T>
    constexpr any_type operator[](T&&) noexcept;

    template <typename T>
    constexpr any_type operator,(T&&) noexcept;

    constexpr any_type operator~() const noexcept;
    constexpr any_type operator!() const noexcept;

    constexpr any_type operator*() const noexcept;
    constexpr any_type operator->() const noexcept;
    constexpr any_type operator++() const noexcept;
    constexpr any_type operator++(int)const noexcept;
    constexpr any_type operator--() const noexcept;
    constexpr any_type operator--(int)const noexcept;

    constexpr any_type begin() const noexcept;
    constexpr any_type end() const noexcept;
    constexpr any_type cbegin() const noexcept;
    constexpr any_type cend() const noexcept;
    constexpr any_type rbegin() const noexcept;
    constexpr any_type rend() const noexcept;
};

constexpr any_type operator+(any_type, any_type) noexcept;
constexpr any_type operator-(any_type, any_type) noexcept;
constexpr any_type operator*(any_type, any_type) noexcept;
constexpr any_type operator/(any_type, any_type) noexcept;
constexpr any_type operator%(any_type, any_type) noexcept;
constexpr any_type operator^(any_type, any_type) noexcept;
constexpr any_type operator&(any_type, any_type) noexcept;
constexpr any_type operator|(any_type, any_type) noexcept;
constexpr any_type operator<(any_type, any_type) noexcept;
constexpr any_type operator>(any_type, any_type) noexcept;
constexpr any_type operator+=(any_type, any_type) noexcept;
constexpr any_type operator-=(any_type, any_type) noexcept;
constexpr any_type operator*=(any_type, any_type) noexcept;
constexpr any_type operator/=(any_type, any_type) noexcept;
constexpr any_type operator%=(any_type, any_type) noexcept;
constexpr any_type operator^=(any_type, any_type) noexcept;
constexpr any_type operator&=(any_type, any_type) noexcept;
constexpr any_type operator|=(any_type, any_type) noexcept;
constexpr any_type operator<<(any_type, any_type) noexcept;
constexpr any_type operator>>(any_type, any_type) noexcept;
constexpr any_type operator>>=(any_type, any_type) noexcept;
constexpr any_type operator<<=(any_type, any_type) noexcept;
constexpr any_type operator==(any_type, any_type) noexcept;
constexpr any_type operator!=(any_type, any_type) noexcept;
constexpr any_type operator<=(any_type, any_type) noexcept;
constexpr any_type operator>=(any_type, any_type) noexcept;
constexpr any_type operator&&(any_type, any_type) noexcept;
constexpr any_type operator||(any_type, any_type) noexcept;
