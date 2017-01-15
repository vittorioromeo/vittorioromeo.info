

As I mentioned in [my previous article](https://vittorioromeo.info/index/blog/passing_functions_to_functions.html) many features introduced in the latest C++ standards allow *functional patterns* to thrive in your codebase. Two ideas from that programming paradigm that I really like are [**currying**](https://en.wikipedia.org/wiki/Currying) and [**partial application**](https://en.wikipedia.org/wiki/Partial_application).

In this article we're going to:

* Introduce and briefly explain the two aforementioned concepts.

* Write a generic `constexpr` zero-overhead `curry` function in C++17.

* Analyze the generated assembly of the implementation to prove the lack of overhead.



### Currying

Let's begin by explaining currying.

> > In mathematics and computer science, **currying** is the technique of translating the evaluation of a function that takes multiple arguments *(or a tuple of arguments)* into evaluating a sequence of functions, each with a single argument.
>
> [*(from Wikipedia)*](https://en.wikipedia.org/wiki/Currying)

The following `add3` function is an example of a *non-curried* function, as its [*arity*](https://en.wikipedia.org/wiki/Arity) is $3$.

```cpp
auto add3(int a, int b, int c)
{
    return a + b + c;
}

add3(1, 2, 3); // Returns `6`.
```

We can *curry* it by returning nested [*lambda expressions*](http://en.cppreference.com/w/cpp/language/lambda).

```cpp
auto curried_add3(int a)
{
    return [a](int b)
    {
        return [a, b](int c)
        {
            return a + b + c;
        };
    };
}

curried_add3(1)(2)(3); // Returns `6`.
```

[**wandbox example**](http://melpon.org/wandbox/permlink/HGACYHh1sV3knQGZ)

As you can see, the arity of every lambda is $1$. This pattern is useful because it allows to intuitively *bind* arguments incrementally until the last one. If you're finding yourself constantly using the same arguments except one in a series of function calls, currying avoids repetition and increases readability.

```cpp
auto add2_one = curried_add3(1);
auto add1_three = add2_one(2);

add1_three(3); // Returns `6`.
add1_three(4); // Returns `7`.
add1_three(5); // Returns `8`.
```

[**wandbox example**](http://melpon.org/wandbox/permlink/7w4RUHqHEL1Y7Yx1)

Basically, `add1_three(5)` is equivalent to `add2_one(2)(5)`, which is equivalent to `curried_add3(1)(2)(5)`.

*([This short article](http://cukic.co/2013/08/07/curry-all-over-the-c11/) by Ivan Čukić has some additional interesting examples of currying in C++.)*



### Partial application

> > In computer science, **partial application** (or **partial function application**) refers to the process of fixing a number of arguments to a function, producing another function of smaller arity.
>
> [*(from Wikipedia)*](https://en.wikipedia.org/wiki/Partial_application)

Even though they are two separate concepts, *partial application* is very similar to *currying*. Even though I couldn't find a formal confirmation anywhere, I believe that thinking about *partial application* as a "generalized form of *currying*" can be helpful: instead of binding one argument and getting $arity - 1$ unary functions back, we can bind $n$ arguments at once and get another *partially-applicable* function with $arity - n$ arity.

Imagine we had add a `partial_add3` function which allowed *partial application* to sum three numbers:

```cpp
partial_add3(1, 2, 3); // Returns `6`.
partial_add3(1)(2, 3); // Returns `6`.
partial_add3(1, 2)(3); // Returns `6`.
partial_add3(1)(2)(3); // Returns `6`. (Currying!)
```

As you can see, we can decide how many arguments to bind *(including zero)*. We could easily implement this in C++17 using *recursion*, [*generic lambdas*](http://en.cppreference.com/w/cpp/language/lambda), [*`if constexpr(...)`*](http://en.cppreference.com/w/cpp/language/if#Constexpr_If), and [*variadic templates*](http://en.cppreference.com/w/cpp/language/parameter_pack). *(We'll also use a [fold expression](http://en.cppreference.com/w/cpp/language/fold) to compute the sum.)*

```cpp
template <typename... Ts>
auto partial_add3(Ts... xs)
{
    if constexpr (sizeof...(xs) == 3)
    {
        // Base case: evaluate and return the sum.
        return (0 + ... + xs);
    }
    else
    {
        // Recursive case: bind `xs...` and return another 
        return [xs...](auto... ys)
        {
            return partial_add3(xs..., ys...);
        };
    }
}
```

[**wandbox example**](http://melpon.org/wandbox/permlink/AFmdO0Cpkt5zRcJC)

Writing code that enables *currying* and *partial application* for every function is cumbersome. Let's write a generic `curry` function that, given a callable object `f`, returns a *curried*/*partial-applicable* version of `f`!



### C++17 `curry`

idea by julian: https://twitter.com/awtem/status/804781466852950017


#### Example usage

```cpp
sdgjs
```

#### Implementation

```cpp
sdgjs
```

#### Generated assembly benchmarks

```cpp
sdgjs
```

#### Compiler bugs


```cpp
sdgjs
```
