

**Perfect forwarding** and **forwarding references** allow developers to write generic *template functions* that retain the *lvalueness*/*rvalueness* of passed arguments, in order to avoid unnecessary copies or support reference semantics without having to implement multiple overloads. *([This article](http://eli.thegreenplace.net/2014/perfect-forwarding-and-universal-references-in-c/) by **Eli Bendersky** explains them in depth. I will assume you're familiar with the concepts for the rest of the article.)*

In this article, I'll cover the issues *(and their solutions)* related to capturing perfectly-forwarded objects into lambdas.



### The problem

Let's begin with a simple *quiz*. Given this definition of `A`...

```cpp
struct A
{
    int _value{0};
};
```

...and the following code...

```cpp
auto foo = [](auto& a)
{
    return [&a]{ ++a._value; };
};

A my_a;
foo(my_a)();
```

...**what is the value of `my_a._value`?**

It should be obvious that, since `a` was passed by *lvalue reference* to `foo` and captured by reference from the inner lambda, the increment will be visible outside of the function call. Therefore, `my_a._value` is euqal to `1`. 

[*(Complete example on **wandbox**.)*](http://melpon.org/wandbox/permlink/ZFGfMWyLHzR36l9Z)

Let's now generalize `foo` - it will take `a` by *forwarding reference*, and should have the following semantics:

* When `a` is an *lvalue reference*, it should be **captured by reference** in the inner lambda, and any mutation on `a` should be visible outside of the function call *(i.e. what happened in the example above)*.

* When `a` is an *rvalue reference*, it should be **moved** in the inner lambda. The returned lambda will therefore hold a new instance of `A` whose mutations will only be visible from the lambda itself. 

> Sounds like a job for *perfect forwarding*!

Let's try to use `auto&&`, [`std::forward`](http://en.cppreference.com/w/cpp/utility/forward) and [C++14's *generalized lambda capture syntax*](http://en.cppreference.com/w/cpp/language/lambda#Lambda_capture) to implement our desired semantics. The inner lambda will be marked as `mutable` since it will store its own instance of `A` when `a` is an *rvalue reference*.

```cpp
auto foo = [](auto&& a)
{
    return [a = std::forward<decltype(a)>(a)]() mutable 
    { 
        ++a._value;

        // Print to see `a` being mutated when moved into
        // the inner lambda.
        std::cout << a._value << "\n";
    };
};
```

That was easy, wasn't it? Time to test our code.

* When `a` is an *rvalue reference*...

    ```cpp
    auto l_inner = foo(A{});
    l_inner(); // Prints `1`.
    l_inner(); // Prints `2`.
    l_inner(); // Prints `3`.
    ```

    ...the implementation works as intended. <br> [*(Complete example on **wandbox**.)*](http://melpon.org/wandbox/permlink/2FRKc4MboiUBCBLQ)

* When `a` is an *lvalue reference*...

    ```cpp
    A my_a;
    auto l_inner = foo(my_a);
    l_inner(); // Prints `1`.
    l_inner(); // Prints `2`.
    l_inner(); // Prints `3`.

    // Prints `0`... wtf?
    std::cout << my_a._value << "\n";
    ```

    ...reference semantics do not work as expected anymore! <br> [*(Complete example on **wandbox**.)*](http://melpon.org/wandbox/permlink/l5m67c2TDKfr0EyD)

While it seems natural to use `std::forward` and *generalized lambda captures* in order to achieve the same semantics as a *template function* that takes *forwarding references*, if we stop and think for a moment our mistake **will become obvious**.


Let's look at `foo` again: 

```
auto foo = [](auto&& a)
{
    return [a = std::forward<decltype(a)>(a)]() mutable { /* ... */ };
};
```

What does `a = std::forward<decltype(a)>(a)`{.cpp} really mean? It becomes clear if we *"play compiler"* and write a `struct` that is equivalent to the inner lambda:

```cpp
struct inner_lambda
{
    A _captured_a;

    template <typename T>
    inner_lambda(T&& a) : _captured_a(std::forward<decltype(a)>(a))
    {
    }

    void operator()() { /* ... */ }
};
```

As you can see, the type of the captured `a` is always a value! This is due to the fact that the *initializer* expression in a *generalized lambda capture* does not have effect on the deduced type of the capture. From [*cppreference/lambda/lambda_capture*](http://en.cppreference.com/w/cpp/language/lambda#Lambda_capture):

> **A capture with an initializer acts as if it declares and explicitly captures a variable declared with type `auto`**, whose declarative region is the body of the lambda expression (that is, it is not in scope within its initializer), except that: 
>
> * if the capture is by-copy, the non-static data member of the closure object is another way to refer to that `auto` variable.
>
> * if the capture is by-reference, the reference variable's lifetime ends when the lifetime of the closure object ends
>
> This is used to capture move-only types with a capture such as `x = std::move(x)`

Even with *generalized lambda captures* the programmer **has to be explicit** when a reference is desired:

```
int a = 0;
int& a_ref = a;

// Captures `a` by copy.
[b = a_ref]{ };

// Captures `a` by reference.
[&b = a_ref]{ }; 
```

It should be clear now that our previous approach is **fundamentally flawed**. What we really want to do is:

* *Capture by copy* if `a` is an *rvalue reference*.

* *Capture by reference* if `a` is an *lvalue reference*.

That's impossible without adding an *extra layer of indirection*, as the language requires us to be explicit about our capture semantics *(and does not provide any special syntax for "capture by perfect forwarding")*.



### The solution