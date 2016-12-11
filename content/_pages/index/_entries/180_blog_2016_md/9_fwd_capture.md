

**Perfect forwarding** and **forwarding references** allow developers to write generic *template functions* that retain the *lvalueness*/*rvalueness* of passed arguments, in order to avoid unnecessary copies or support reference semantics without having to implement multiple overloads. 
*([This article](http://eli.thegreenplace.net/2014/perfect-forwarding-and-universal-references-in-c/) by **Eli Bendersky** explains them in depth. I will assume you're familiar with these concepts for the rest of the article.)*

In this article, I'll cover the issues related to capturing *perfectly-forwarded* objects into lambdas and a possible solution.



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

One possible way of solving the aforementioned issue and achieve the desired capturing semantics is to **create a *wrapper class***  that will always be *captured by copy* by the inner lambda, but will internally store either *an lvalue-reference* or *a value* depending on how it is constructed.

The solution I'm going to present here was recently designed and implemented because I encountered this particular situation when experimenting with *stack-allocated asynchronous chain generation*. Most of the ideas behind it come from this StackOverflow question I asked back in 2014: ["Capturing perfectly-forwarded variable in lambda"](http://stackoverflow.com/questions/26831382).

The wrapper will be a *template class* called `fwd_capture_wrapper`. It will be specialized depending on the *lvalue-ness*/*rvalue-ness* of the captured object:

```cpp
// Unspecialized version: stores a `T` instance by value.
template <typename T>
struct fwd_capture_wrapper : impl::by_value<T>
{
    // "Inherit" constructors.
    using impl::by_value<T>::by_value;
};

// Specialized version: stores a `T` reference.
template <typename T>
struct fwd_capture_wrapper<T&> : impl::by_ref<T>
{
    // "Inherit" constructors.
    using impl::by_ref<T>::by_ref;
};
```

Let's now implement `impl::by_value<T>`{.cpp}. It will store a plain `T` instance *(initialized via a *perfect forwarding constructor)* and provide `.get()` methods to access it.

```cpp
template <typename T>
class by_value
{
private:
    T _x;

public:
    template <typename TFwd>
    by_value(TFwd&& x) : _x{std::forward<TFwd>(x)} 
    {
    }

    auto&       get() &      { return _x; }
    const auto& get() const& { return _x; }
    auto        get() &&     { return std::move(_x); }
};
```

When designing `impl::by_ref<T>`, we could choose to store a `T&`. Unfortunately this would prevent us from easily adding copy/move operations for the wrapper itself. Thankfully [`std::reference_wrapper`](http://en.cppreference.com/w/cpp/utility/functional/reference_wrapper) was introduced in C++11. It is [`TriviallyCopyable`](http://en.cppreference.com/w/cpp/concept/TriviallyCopyable) and "behaves like a pointer", but does not allow any *null state* and prevents accidental construction from temporary objects.

```cpp
template <typename T>
class by_ref
{
private:
    std::reference_wrapper<T> _x;

public:
    by_ref(T& x) : _x{x} 
    {
    }

    auto&       get() &      { return _x.get(); }
    const auto& get() const& { return _x.get(); }
    auto        get() &&     { return std::move(_x.get()); }
};
```

That's it! The only missing piece is a nice `fwd_capture` interface function that hides the boilerplate away from the user:

```cpp
template <typename T>
auto fwd_capture(T&& x)
{
    return fwd_capture_wrapper<T>(std::forward<T>(x));
}
```

Let's revisit our flawed implementation of `foo`:

```cpp
auto foo = [](auto&& a)
{
    return [a = fwd_capture(std::forward<decltype(a)>(a))]() mutable 
    { 
        ++a.get()._value;
        std::cout << a.get()._value << "\n";
    };
};
```

`a` is now a `fwd_capture_wrapper` that will store either a value or a reference as intended, depending on what `a` is in the outer lambda.

Our test cases now work correctly!

```cpp
auto l_inner = foo(A{});
l_inner(); // Prints `1`.
l_inner(); // Prints `2`.
l_inner(); // Prints `3`.
```

```cpp
A my_a;
auto l_inner = foo(my_a);
l_inner(); // Prints `1`.
l_inner(); // Prints `2`.
l_inner(); // Prints `3`.

// Prints `3`, yay!
std::cout << my_a._value << "\n";
```

[*(Complete example on **wandbox**.)*](http://melpon.org/wandbox/permlink/CDq6ZLnImy9TABRd)



### Reducing noise

Typing `fwd_capture(std::forward<decltype(a)>(a))`{.cpp} is very annoying, as it's mostly *noise*/*boilerplate*. We have to perfectly-forward `a` into the wrapper though, so avoiding the call to `std::forward` is out of the question. 

There's only one **evil** tool that can help here: *macros*.

Let's begin with `std::forward<decltype(a)>(a)`{.cpp}