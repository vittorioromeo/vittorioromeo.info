

Since the advent of [C++11](https://en.wikipedia.org/wiki/C%2B%2B11) writing *more [**functional**](https://en.wikipedia.org/wiki/Functional_programming)* code has become easier. Functional programming patterns and ideas are powerful additions to the C++ developer's huge toolbox. *(I recently attended a great introductory talk on them by [*Phil Nash*](https://twitter.com/phil_nash) at the first London C++ Meetup - you can find an older recording [here on YouTube](https://www.youtube.com/watch?v=YgcUuYCCV14).)*

In this blog post I'll briefly cover some techniques that can be used to *pass functions to other functions* and show their impact on the generated assembly at the end. 

*(If you are familiar with **lambdas** and **higher-order functions** you can [skip the following paragraphs](#what_your_options_are).)*

[**First-class and higher-order functions**](https://en.wikipedia.org/wiki/Functional_programming#First-class_and_higher-order_functions) are one of the staples of functional programming. Wikipedia concisely describes them as follows:

> Higher-order functions are **functions that can either take other functions as arguments or return them** as results. [...]
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

This article aims to compare the aforementioned function-passing techniques and to provide some guidelines. Every technique will benchmarked.



### What your options are {#what_your_options_are}

Without introducing any additional dependency, your options for passing *callable objects* around are:

* [**Function pointers**](http://en.cppreference.com/w/cpp/language/pointer#Pointers_to_functions).

* [**Template parameters**](http://en.cppreference.com/w/cpp/language/template_parameters).

* [**`std::function`**](http://en.cppreference.com/w/cpp/utility/functional/function).

* **`function_view`** - a lightweight class that we're going to implement in this article.

*(If you are familiar with everything except `function_view`, you can [skip to its related paragraph](#function_view).)*

### Function pointers

[**Function pointers**](http://en.cppreference.com/w/cpp/language/pointer#Pointers_to_functions) are not just a relic from the past in modern C++ - they can be used to pass [*free functions*](http://en.cppreference.com/w/cpp/language/functions) and *captureless [lambdas](http://en.cppreference.com/w/cpp/language/lambda)*. [Member functions](http://en.cppreference.com/w/cpp/language/member_functions) can be passed to other functions with [member function pointers](http://en.cppreference.com/w/cpp/language/pointer#Pointers_to_member_functions).


```cpp
void f(int) { }
void g(void(*x)(int)) { }

// ...

g(f);
g([](int){ });
```

Compilers can aggressively optimize function pointers, resulting in a **small run-time overhead**. Unfortunately, not being able to pass stateful lambdas and generic callable objects is a huge limitation which prevents many functional patterns.



### Template parameters

Using a [function template](http://en.cppreference.com/w/cpp/language/function_template) that takes another function via a *template parameter* allows **any callable object** to be passed **without any run-time overhead**. That's right: the compiler is able to completely optimize away the "indirection".

```cpp
void f(int) { }

template <typename TF>
void g(TF&& x) { }

// ...

g(f);
g([](int){ });
g([i = 0](int) -> mutable { });
```

The drawbacks of this technique are:

* In very large codebases, the use of *templates* for callbacks may be problematic, as they require to be included in every TU they're used in. This can often lead to long re-compilation times and binary size bloat *(which could be worse than some run-time overhead!)*   

* It's non-trivial to constrain the callable object to a particular signature and to make the type of the expected callable obvious to the user of the function. This could become much easier in the future if [concepts lite](http://en.cppreference.com/w/cpp/language/constraints) are introduced in the standard. 



### `std::function`

I see [`std::function`](http://en.cppreference.com/w/cpp/utility/functional/function) being suggested for the purpose of passing callbacks/functions **way too often**. `std::function` is a **heavyweight general-purpose polymorphic function wrapper** that is meant to **store and "own"** a callable object. It also has an [*empty state*](http://en.cppreference.com/w/cpp/utility/functional/function/operator_bool) that causes [an exception to be thrown upon invocation](http://en.cppreference.com/w/cpp/utility/functional/bad_function_call). 

```cpp
void f(int) { }
void g(std::function<void(int)> x) { }

// ...

g(f);
g([](int){ });
g([i = 0](int) -> mutable { });
```

Again, this is a very **general-purpose** class that **models ownership of a callable object**. It introduces a **significant run-time overhead** and can potentially dynamically allocate. Use it sparingly!

I *strongly* recommend not using `std::function` unless you need its general-purpose polymorphic semantics.  



### `function_view` {#function_view}

This is where things start to get interesting. It is possible to easily implement a **lightweight non-owning generic callable object view** with an overhead comparable to raw function pointers quite easily *(and zero overhead when inlined)*. I am going to benchmark and show a C++17 implementation. *(Note that the I've seen already the idea of a "function view" multiple times online - I don't claim to have invented this. An example is [this StackOverflow answer by Yakk](http://stackoverflow.com/a/39087660/598696).)* 

```cpp
void f(int) { }
void g(function_view<void(int)> x) { }

// ...

g(f);
g([](int){ });
g([i = 0](int) -> mutable { });
```

As you can see from the example above, it looks reasonably similar to `std::function` - however, its semantics are way different: **`function_view` does not own a callable object. It merely refers to an existing one.** That means that any instance of `function_view` **assumes** the *pointee* callable object to be alive.

This is very often what you want when you pass a function to another one.

*(The implementation of `function_view` will be shown and explained [at the end of the article](TODO).)*



### Benchmark - generated assembly

I created a [small *horrible* Python script](TODO) that compiles a small code snippet in multiple ways and counts the lines of generated x86-64 assembly *(after [stripping all the cruft](TODO))*. This is **not** an accurate benchmark that resembles the real world but **should give you an idea of how easy/hard it is for a compiler to optimize the techniques described above**.

#### Stateless callable objects

The first benchmarked code snippet deals with *stateless* callable objects. The **baseline** is as follows:

```cpp
volatile int state = 0;

int main()
{
    state = 1;
    return state;
}
```

Here's a table of the lines of generated assembly.

**Baseline** *(lines of generated assembly)*

|               |  O0  |  O1  |  O2  |  O3  |  Ofast
|---------------|------|------|------|------|-------
|g++ 6.2.1      |  6   |  3   |  3   |  3   |  3
|clang++ 3.9.0  |  7   |  3   |  3   |  3   |  3

The benchmark script tests this piece of code...

```cpp
int main()
{
    f([](volatile auto& y){ y = 1; });
    return state;
}
```

...by alternating between the following definitions of `f`:

```cpp
void f(void (*x)(volatile int&)) { x(state); }

template <typename TF> 
void f(TF&& x) { x(state); }

void f(std::function<void(volatile int&)> x) { x(state); }

void f(function_view<void(volatile int&)> x) { x(state); }
```

The results are not surprising.


**Function pointer**

|               |  O0             |  O1             |  O2            |  O3            |  Ofast
|---------------|-----------------|-----------------|----------------|----------------|--------------
|g++ 6.2.1      |  42 *(+600.%)*  |  12 *(+300.%)*  |  6 *(+100.%)*  |  6 *(+100.%)*  |  6 *(+100.%)*
|clang++ 3.9.0  |  42 *(+500.%)*  |  8 *(+166.%)*   |  5 *(+66.6%)*  |  5 *(+66.6%)*  |  5 *(+66.6%)*



**Template parameter**

|               |  O0             |  O1            |  O2           |  O3           |  Ofast
|---------------|-----------------|----------------|---------------|---------------|-------------
|g++ 6.2.1      |  27 *(+350.%)*  |  3 *(+0.0%)*   |  3 *(+0.0%)*  |  3 *(+0.0%)*  |  3 *(+0.0%)*
|clang++ 3.9.0  |  26 *(+271.%)*  |  6 *(+100.%)*  |  3 *(+0.0%)*  |  3 *(+0.0%)*  |  3 *(+0.0%)*



**`function_view`**

|               |  O0              |  O1             |  O2            |  O3            |  Ofast
|---------------|------------------|-----------------|----------------|----------------|--------------
|g++ 6.2.1      |  164 *(+2633%)*  |  13 *(+333.%)*  |  6 *(+100.%)*  |  6 *(+100.%)*  |  6 *(+100.%)*
|clang++ 3.9.0  |  136 *(+1842%)*  |  34 *(+1033%)*  |  5 *(+66.6%)*  |  5 *(+66.6%)*  |  5 *(+66.6%)*



**`std::function`**

|               |  O0              |  O1             |  O2             |  O3             |  Ofast
|---------------|------------------|-----------------|-----------------|-----------------|---------------
|g++ 6.2.1      |  349 *(+5716%)*  |  34 *(+1033%)*  |  22 *(+633.%)*  |  22 *(+633.%)*  |  22 *(+633.%)*
|clang++ 3.9.0  |  267 *(+3714%)*  |  98 *(+3166%)*  |  22 *(+633.%)*  |  22 *(+633.%)*  |  22 *(+633.%)*


Pay attention to the following things:

* **Template parameter** is effectively a **zero-cost abstraction** for both compilers starting from `-O2`.

* **`function_view`** has the same overhead as a raw function pointer starting from `-O2`, but supports any generic callable object!

    * The generated assembly instructions are identical for this particular code snippet.

* *Don't* use **`std::function`** unless you need its features and semantics!

Adding the `inline` keyword in front of the functions changes things dramatically: **only `std::function` has additional overhead** - **+466%** more assembly lines are produced compared to the *baseline*. The rest of the techniques become *"zero-cost"*. 

You can play around with the code snippet [on **gcc.godbolt.org**](https://godbolt.org/g/I2vQCR), in order to closely analyze the generated assembly.






#### Stateful callable objects

The second benchmark snippet deals with simple *stateful* callable objects. The **baseline** is as follows:

```cpp
volatile int state = 0;

int main()
{
    volatile int k = 1;
    state += k;
    return state;
}
```

Here's a table of the lines of generated assembly.

**Baseline**

|               |  O0  |  O1  |  O2  |  O3  |  Ofast
|---------------|------|------|------|------|-------
|g++ 6.2.1      |  10  |  7   |  7   |  7   |  7
|clang++ 3.9.0  |  11  |  5   |  5   |  5   |  5


The benchmark script tests this piece of code...

```cpp
int main()
{
    volatile int k = 1;
    f([&k](volatile auto& y){ y += k; });
    return state;
}
```

...by alternating between the following definitions of `f`:

```cpp
template <typename TF>
void f(TF&& x) { x(state); }

void f(function_view<void(volatile int&)> x) { x(state); }

void f(std::function<void(volatile int&)> x) { x(state); }
```

The results are similar to the previous benchmark:

**Template parameter**

|               |  O0             |  O1             |  O2           |  O3           |  Ofast
|---------------|-----------------|-----------------|---------------|---------------|-------------
|g++ 6.2.1      |  36 *(+260.%)*  |  7 *(+0.0%)*    |  7 *(+0.0%)*  |  7 *(+0.0%)*  |  7 *(+0.0%)*
|clang++ 3.9.0  |  34 *(+209.%)*  |  12 *(+140.%)*  |  5 *(+0.0%)*  |  5 *(+0.0%)*  |  5 *(+0.0%)*



**`function_view`**

|               |  O0              |  O1             |  O2             |  O3             |  Ofast
|---------------|------------------|-----------------|-----------------|-----------------|---------------
|g++ 6.2.1      |  173 *(+1630%)*  |  20 *(+185.%)*  |  10 *(+42.8%)*  |  10 *(+42.8%)*  |  10 *(+42.8%)*
|clang++ 3.9.0  |  144 *(+1209%)*  |  64 *(+1180%)*  |  7 *(+40.0%)*   |  7 *(+40.0%)*   |  7 *(+40.0%)*



**`std::function`**

|               |  O0              |  O1              |  O2             |  O3             |  Ofast
|---------------|------------------|------------------|-----------------|-----------------|---------------
|g++ 6.2.1      |  372 *(+3620%)*  |  45 *(+542.%)*   |  37 *(+428.%)*  |  37 *(+428.%)*  |  37 *(+428.%)*
|clang++ 3.9.0  |  281 *(+2454%)*  |  141 *(+2720%)*  |  33 *(+560.%)*  |  33 *(+560.%)*  |  33 *(+560.%)*

All the previously made observations apply here. Using `inline` also makes the assembly generated by `function_view` identical to the baseline/template one.

You can play around with the code snippet [on **gcc.godbolt.org**](https://godbolt.org/g/FwFNzU), in order to closely analyze the generated assembly.

In order to make sure that the overhead introduced by `std::function` wasn't mostly "fixed" and actually "scaled" by adding more functions, I manually created some snippets that invoke multiple callable objects *(up to 5)* and plotted the results. As an example, this is the baseline code for **5** functions..

```cpp
int main()
{
    volatile int k = 1;
    state += k;
    state += k;
    state += k;
    state += k;
    state += k;
    return state;
}
```

...this is the code being measured...

```cpp
int main()
{
    volatile int k = 1;
    f([&k](volatile auto& y){ y += k; });
    g([&k](volatile auto& y){ y += k; });
    j([&k](volatile auto& y){ y += k; });
    h([&k](volatile auto& y){ y += k; });
    i([&k](volatile auto& y){ y += k; });
    return state;
}
```

...and this is the resulting plot:

![*"Scaling" generated assembly overhead*](resources/img/blog/pf2f_plot0.png)

Unfortunately, the overhead from `std::function` seems to scale linearly with the number of function invocations - my recommendation of avoiding it unless you need all of its "power" therefore persists. Let's end the article by looking at the implementation of `function_view`.



### Implementation of `function_view`

```cpp
struct function_view { magic(); };
```

cya