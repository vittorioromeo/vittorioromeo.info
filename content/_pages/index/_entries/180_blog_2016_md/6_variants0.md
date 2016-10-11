


In [*"visiting variants using lambdas - part 1"*](https://vittorioromeo.info/index/blog/variants_lambdas_part_1.html) I wrote about a simple `boost::hana`-based implementation of lambda variant visitation.

The technique consisted in using [`boost::hana::overload`](http://www.boost.org/doc/libs/1_61_0/libs/hana/doc/html/group__group-functional.html#ga83e71bae315e299f9f5f9de77b012139) in order to create a valid visitor with a variadic amount of lambdas, without having to define a `class`/`struct`. Here's an example:

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





# TODO

* link to previous article
* simple solution (repeat 'auto' in every lambda)
* hard solution (recurse(...) ((((((((
(
