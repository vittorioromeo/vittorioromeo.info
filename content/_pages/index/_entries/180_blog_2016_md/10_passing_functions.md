

Since the advent of [C++11](https://en.wikipedia.org/wiki/C%2B%2B11) writing *more [**functional**](https://en.wikipedia.org/wiki/Functional_programming)* code has become easier. Functional programming patterns and ideas are another powerful tool in the C++ developer's huge *(and dangerous)* toolbox - [*Phil Nash*](https://twitter.com/phil_nash) gave a great introductory talk about some of them that you can find [here on YouTube](https://www.youtube.com/watch?v=YgcUuYCCV14).

*(If you are familiar with **lambdas** and **higher-order functions** you can [skip the following paragraphs](TODO).)*

[**First-class and higher-order functions**](https://en.wikipedia.org/wiki/Functional_programming#First-class_and_higher-order_functions) are one of the staples of functional programming. Wikipedia concisely explains them as follows:

> Higher-order functions are functions that can either take other functions as arguments or return them as results. [...]
>
> Higher-order functions are closely related to first-class functions in that higher-order functions and first-class functions both allow functions as arguments and results of other functions. The distinction between the two is subtle: "higher-order" describes a mathematical concept of functions that operate on other functions, while "first-class" is a computer science term that describes programming language entities that have no restriction on their use *(thus first-class functions can appear anywhere in the program that other first-class entities like numbers can, including as arguments to other functions and as their return values)*.

The introduction of [`auto`](http://en.cppreference.com/w/cpp/language/auto), [**lambda functions**](http://en.cppreference.com/w/cpp/language/lambda), [`std::function`](http://en.cppreference.com/w/cpp/utility/functional/function), and many other features in C++11/14/17 effectively make C++ a language where functions are treated as first-class citizens.

```cpp
// Put a function in a variable.
// This function takes another function as an argument.
auto benchmark = [](auto f)
{
    start_timer();
    f();
    cout << end_timer();
};  

// Pass a function to another function.
// This function captures the surrounding environment (it's a closure).
data some_data;
benchmark([&some_data]{ some_computation(); });
```

When passing functions around to other functions things are however not as straightforward as they might sound. Should you use a *template parameter*? Should you use `std::function`? A *function pointer*? 

This article aims to compare the aforementioned function-passing techniques and to provide some guidelines.



### What your options are

Without introducing any additional dependency, your options for passing around functions are:

* [**Function pointers**](http://en.cppreference.com/w/cpp/language/pointer#Pointers_to_functions).

    ```cpp
    void f(int) { }
    void g(void(*x)(int)) { }

    // ...

    g(f);
    g([](int){ });
    ```

* [**Template parameters**](http://en.cppreference.com/w/cpp/language/template_parameters).

    ```cpp
    void f(int) { }

    template <typename TF>
    void g(TF&& x) { }

    // ...

    g(f);
    g([](int){ });
    g([i = 0](int) -> mutable { });
    ```

* [**`std::function`**](http://en.cppreference.com/w/cpp/utility/functional/function).

    ```cpp
    void f(int) { }

    template <typename TF>
    void g(std::function<void(int)> x) { }

    // ...

    g(f);
    g([](int){ });
    g([i = 0](int) -> mutable { });
    ```
