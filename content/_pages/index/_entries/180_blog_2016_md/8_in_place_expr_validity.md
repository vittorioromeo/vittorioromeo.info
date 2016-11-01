


When writing generic code, it is sometimes useful to check whether or not **a particular SFINAE-friendly expression is valid** *(e.g. to branch at compile-time)*. Let's assume that we have the following class declarations...

```cpp
struct Cat
{
    void meow() const { cout << "meow\n"; }
};

struct Dog
{
    void bark() const { cout << "bark\n"; }
};
```

...and that we would like to write a template function `make_noise(x)` that calls `x.meow()` and/or `x.bark()` if they are well-formed expressions:

```cpp
template <typename T>
void make_noise(const T& x)
{
    // Pseudocode:
    /*
        if(`x.meow()` is well formed)
        {
            execute `x.meow();`
        }
        else if(`x.bark()` is well formed)
        {
            execute `x.bark();`
        }
        else
        {
            compile-time error
        }
    */
}
```

In this article I'll show how to implement the *pseudocode* in:

* **C++11**: using [`std::void_t`](http://en.cppreference.com/w/cpp/types/void_t) and [`std::enable_if`](http://en.cppreference.com/w/cpp/types/enable_if).

* **C++14**: using [`boost::hana::is_valid`](http://www.boost.org/doc/libs/1_62_0/libs/hana/doc/html/structboost_1_1hana_1_1type.html#a2d2e7e08e284f7e0bd1bd9c3ad0e0a2b) and [`vrm::core::static_if`](https://github.com/SuperV1234/vrm_core/blob/master/include/vrm/core/static_if/static_if.hpp).

* **C++17**: using [`if constexpr(...)`](http://en.cppreference.com/w/cpp/language/if#Constexpr_If), [`constexpr` lambdas](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2015/n4487.pdf), and [std::is_callable](http://en.cppreference.com/w/cpp/types/is_callable). This version will allow expression validity to be **checked in-place** *(i.e. directly in the `if constexpr` predicate)*. [Variadic preprocessor macros](http://en.cppreference.com/w/cpp/preprocessor/replace) will also be used to make the user code easier to read and maintain.



### C++11 implementation

The technique that will be used in the C++11 implementation consists of combining [std::void_t](http://en.cppreference.com/w/cpp/types/void_t) with [`std::enable_if`](http://en.cppreference.com/w/cpp/types/enable_if) - this allows us to detect *ill-formed* expressions in SFINAE contexts. I first heard about this method by attending the excellent ["Modern Template Metaprogramming: A Compendium"](https://www.youtube.com/watch?v=a0FliKwcwXE) talk by [*Walter E. Brown*](https://cppcon2014.sched.org/speaker/walter_e_brown) at CppCon 2014 - I remember being *mind-blown* after the talk!

Let's begin by implementing `void_t`, which is only part of the standard since C++17:

```cpp
template <typename...>
using void_t = void;
```

Yeah, it's *that* simple. In order to use `void_t` to detect expression validity, [*partial template specialization*](http://en.cppreference.com/w/cpp/language/partial_specialization) must be used - here's a detector class for `meow`:

```cpp
template <typename, typename = void>
struct has_meow : std::false_type { };

template <typename T>
struct has_meow<T, void_t<decltype(std::declval<T>().meow())>> 
    : std::true_type { };
```

The way this idiom works is not very complex: roughly speaking, instantiating `has_meow<T>` will attempt to evaluate `void_t<decltype(std::declval<T>().meow())>`.

* If `std::declval<T>().meow()` is a *well-formed* expression, `void_t<decltype(std::declval<T>().meow())>>` will evaluate to `void`, and `has_meow`'s `std::true_type` specialization will be taken.

* If `std::declval<T>().meow()` is an *ill-formed* expression, `void_t<decltype(std::declval<T>().meow())>>` will be *ill-formed* as well, thus removing the `std::true_type` specialization thanks to SFINAE - all that's left is the `std::false_type` specialization.

[`std::declval<T>()`](http://en.cppreference.com/w/cpp/utility/declval) is being used in place of `T{}` because it is not guaranteed that `T` is default-constructible. 

After defining the `has_bark` detector class *(which is trivial to implement as well)*, all that's left to do is use `std::enable_if` to constrain `make_noise`:

```cpp
template <typename T>
auto make_noise(const T& x) 
    -> typename std::enable_if<has_meow<T>{}>::type
{
    x.meow();
}

template <typename T>
auto make_noise(const T& x) 
    -> typename std::enable_if<has_bark<T>{}>::type
{
    x.bark();
}
```

That's it for C++11! [*You can find a complete example on GitHub.*](TODO)



### C++14 implementation

There are some annoyances in the C++11 implementation:

* A detector class has to be defined for every expression we want to check. The class cannot be defined locally.

* `std::enable_if` has to be used to constrain multiple versions of the same function. It is not possible to *"branch"* locally at compile-time.

Both those issues can be solved thanks to one of the best features introduced in C++14: [**generic lambdas**](https://en.wikipedia.org/wiki/C%2B%2B14#Generic_lambdas).



**TODO**
**TODO**
**TODO**

- mention boost::hana::is_valid
- mention vrm::core::static_if and my talk