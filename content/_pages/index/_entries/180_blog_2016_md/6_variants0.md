


In [*"visiting variants using lambdas - part 1"*](https://vittorioromeo.info/index/blog/variants_lambdas_part_1.html) I wrote about a simple `boost::hana`-based implementation of lambda variant visitation.

The technique consisted in using [`boost::hana::overload`](http://www.boost.org/doc/libs/1_61_0/libs/hana/doc/html/group__group-functional.html#ga83e71bae315e299f9f5f9de77b012139) in order to create a valid visitor with a variadic amount of lambdas, without having to define a `class`/`struct`.

<p></p>

Here's an example:

```cpp
using vnum = vr::variant<int, float, double>;

auto vnp = make_visitor
(
    [](int x)    { std::cout << x << "i\n"; },
    [](float x)  { std::cout << x << "f\n"; },
    [](double x) { std::cout << x << "d\n"; }
);

// Prints "0i"
vnum v0{0};
vr::visit(vnp, v0);

// Prints "5f"
v0 = 5.f;
vr::visit(vnp, v0);

// Prints "33.51d"
v0 = 33.51;
vr::visit(vnp, v0);
```

You can find a similar example [on GitHub](https://github.com/SuperV1234/vittorioromeo.info/blob/master/extra/visiting_variants/2_lambda_visitation.cpp).



### "Recursive" variants

Variants are often used to represent recursive structures *(e.g. JSON objects)*. Since variants have a fixed size, a trivial way of implementing such structures consists in using **indirection with dynamically-allocated memory**.

As an example, let's extend our previous `vnum` variant type to support vectors of other `vnum` instances.

The first problem is that the variant will have to refer to itself in its own type alias definition - this can be solved by **forward-declaring** a `vnum_wrapper` class *(which can be safely "stored" in `std::vector` since the approval of [N4510](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2015/n4510.html))*:

```cpp
namespace impl
{
    struct vnum_wrapper;

    using varr = std::vector<vnum_wrapper>;
    using vnum = vr::variant<int, float, double, varr>;

    // `vnum_wrapper` provides the same interface/semantics as `vnum`
    struct vnum_wrapper : public vnum
    {
        using vnum::vnum;
    };
}

// Expose `vnum` and `varr` to the user
using vnum = impl::vnum_wrapper;
using impl::varr;
```

Thanks to the indirection provided by `std::vector` and to the wrapper class, `vnum` can now be used recursively:

```cpp
vnum v0 = 0;
vnum v1 = 5.f;
vnum v2 = 33.51;
vnum v3 = varr{vnum{1}, vnum{2.0}, vnum{3.f}};
vnum v4 = varr{vnum{5}, varr{vnum{7}, vnum{8.0}, vnum{9.}}, vnum{4.f}};
```

Let's take a look at various visitation techniques in the following sections.



### *"Traditional"* recursive visitation

As seen in the last article, this technique requires the definition of a separate `class`/`struct`. The implementation is straightforward:

```cpp
struct vnum_printer
{
    void operator()(int x)    { cout << x << "i\n"; }
    void operator()(float x)  { cout << x << "f\n"; }
    void operator()(double x) { cout << x << "d\n"; }

    void operator()(const varr& arr)
    {
        for(const auto& x : arr)
        {
            vr::visit(*this, x);
        }
    }
};
```

All that's left is invoking `vr::visit`, and everything *just works*:

```cpp
// Prints "0i".
vnum v0{0};
vr::visit(vnum_printer{}, v0);

// Prints "5f".
v0 = 5.f;
vr::visit(vnum_printer, v0);

// Prints "33.51d".
v0 = 33.51;
vr::visit(vnum_printer, v0);

// Prints "1i 2d 3f".
v0 = varr{vnum{1}, vnum{2.0}, vnum{3.f}};
vr::visit(vnp, v0);

// Prints "5i 7i 8d 9d 4f".
v0 = varr{vnum{5}, varr{vnum{7}, vnum{8.0}, vnum{9.}}, vnum{4.f}};
vr::visit(vnp, v0);
```

You can find a similar example [on GitHub](https://github.com/SuperV1234/vittorioromeo.info/blob/master/extra/visiting_variants/1_traditional_recursive_visitation.cpp).



### *"Lambda-based"* recursive visitation - take one

The first thing to try is to apply our previous solution to recursive variants.

```cpp
auto my_visitor = boost::hana::overload
(
    [](int x)    { cout << x << "i\n"; },
    [](float x)  { cout << x << "f\n"; },
    [](double x) { cout << x << "d\n"; },

    [&](const varr& arr)
    {
        for(const auto& x : arr)
        {
            vr::visit(my_visitor, x);
        }
    }
);
```

Unfortunately, we are greeted with a *compiler error*:

> error: variable 'my_visitor' declared with 'auto' type cannot appear in its own initializer

You can find a similar example [on GitHub](https://github.com/SuperV1234/vittorioromeo.info/blob/master/extra/visiting_variants/5_lambda_visitation_notworking.cpp).

In short, the problem is that `my_visitor`'s type will be deduced from its own initialization... but `my_visitor` is also part of the initialization! If we could explicitly specify the lambda's type in place of `auto`, the above code snippet could compile. [More details can be found here.](http://stackoverflow.com/questions/7861506/recursive-call-in-lambda-c11)

One common solution that is used to implement recursive lambdas is using [`std::function`](http://en.cppreference.com/w/cpp/utility/functional/function), which allows `auto` to be replaced with an explicit type that does not need to be deduced. Unfortunately `std::function` **is not a zero-cost abstraction**, as it's a general-purpose polymorphic wrapper.



### *"Lambda-based"* recursive visitation - take two







# TODO

* link to previous article
* simple solution (repeat 'auto' in every lambda)
* hard solution (recurse(...) ((((((((
(
