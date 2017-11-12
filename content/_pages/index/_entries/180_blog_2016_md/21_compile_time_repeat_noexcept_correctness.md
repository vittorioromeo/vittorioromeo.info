


<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

In my previous article *([**"abstraction design and implementation: `repeat`"**](https://vittorioromeo.info/index/blog/abstraction_design_implementation_repeat.html))* I've shown how to implement a simple `repeat(n, f)` abstraction that invokes a `FunctionObject` `f` $n$ times in a row.

A large part of the article focused on adding a `noexcept` specifier to `repeat` that correctly propagated `noexcept`-correctness depending on the actions performed on the passed arguments. Adding a `noexcept` specifier resulted in a less elegant, longer, and less accessible implementation.

*Is it worth the hassle?* [Jason Rice](TODO) posted a comment on the previous article asking:

> What are the benefits of `noexcept`-correctness?

Before diving into the implementation of a compile-time version of `repeat`, let's try to understand the importance *(or lack thereof)* of `noexcept`-correctness.



### `noexcept`-correctness

Let's begin with the `noexcept` keyword itself. When was it added? Why does it exist?

The `noexcept` keyword can have two meanings.

[**`noexcept` specifier**](http://en.cppreference.com/w/cpp/language/noexcept_spec): appears in a *lambda declarator* or *function declarator*. Since C++17, this [is part of the *function type*](https://stackoverflow.com/questions/38760784).

```cpp
void infallible() noexcept;
// We are declaring that this function will not throw any exception.

void everyone_makes_mistakes();
// We are declaring that this function might throw an exception.

template <int Age>
void especially_when_young() noexcept(Age > 18);
// We are declaring that this function will not throw any exception
// if `Age > 18`, but might throw an exception otherwise.
```

<br>

[**`noexcept` operator**](http://en.cppreference.com/w/cpp/language/noexcept): given an expression `e`, evaluates to `true` if `e` is `noexcept`. *(The expression itself is not evaluated.)*

```cpp
static_assert(noexcept(infallible()));
static_assert(!noexcept(everyone_makes_mistakes()));
static_assert(noexcept(especially_when_young<23>()));
static_assert(!noexcept(especially_when_young<11>()));
```

<div class="inline-link">

[(on *godbolt.org*)](https://godbolt.org/g/mhhWst)

</div>
