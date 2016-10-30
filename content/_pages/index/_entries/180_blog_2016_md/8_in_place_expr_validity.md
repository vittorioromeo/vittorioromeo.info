


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

