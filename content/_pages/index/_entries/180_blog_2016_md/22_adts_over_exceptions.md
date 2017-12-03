


<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

Simon Brand *(a.k.a. [TartanLlama](https://twitter.com/TartanLlama))* recently published an article called [**"Functional exceptionless error-handling with optional and expected"**](https://blog.tartanllama.xyz/optional-expected/) where he excellently explains how **sum types** *(e.g. [`std::optional`](http://en.cppreference.com/w/cpp/utility/optional) and [`std::variant`](http://en.cppreference.com/w/cpp/utility/variant))* can be used in lieu of exceptions in order to implement error handling.

The article focuses on the usage of `std::optional`, on `std::expected`, and on two monadic operations, `map` and `and_then`, which reduce boilerplate and increase readability of the code. While Simon briefly mentions the benefits of ADTs *([algebraic data types](https://en.wikipedia.org/wiki/Algebraic_data_type))* over exceptions, I think that the topic deserves more attention, as some readers missed the point.

Here's an example comment from the [/r/cpp thread for the article](https://www.reddit.com/r/cpp/comments/7gua48/functional_exceptionless_errorhandling_with/):

> ```cpp
> return crop_to_cat(img)
>        .and_then(add_bow_tie)
>        .and_then(make_eyes_sparkle)
>        .map(make_smaller)
>        .map(add_rainbow);
> ```
>
> Compared to
>
> ```cpp
> crop_to_cat(img);
> add_bow_tie(img);
> make_eyes_sparkle(img);
> make_smaller(img);
> add_rainbow(img);
> ```
>
> ?
>
> It's just cute. Also, if there's any memory allocation needed anywhere, it's either lying about not throwing or each such function is wrapped in a try/catch. (And no, you can't rig operator new to return `nullptr` because std lib needs it to throw).

While at first this might seem like a proper rebuttal, I strongly believe it isn't.



### exception-based solution

We'll start by analyzing the exception-based solution proposed in the comment:

```cpp
image_view get_cute_cat(image_view img)
{
    crop_to_cat(img);
    add_bow_tie(img);
    make_eyes_sparkle(img);
    make_smaller(img);
    add_rainbow(img);

    return img;
}
```

These might be the signtures of the operations on `image_view`:

```cpp
void crop_to_cat(image_view&);
void add_bow_tie(image_view&);
void make_eyes_sparkle(image_view&);
void make_smaller(image_view&);
void add_rainbow(image_view&);
```

What do these signtures tell us about potential failures or error cases? **Nothing.**

With this design, the user is **not** aware that these functions might fail/throw an exception unless it's explicitly documented. Similarly, the *type system* does not expose any failure cases - this means that the compiler won't be able to help us remember to handle them.

Here's an example of what I mean:

```cpp
void send(image_view);

image_view just_crop(image_view x)
{
    crop_to_cat(x); // <== (0)
    return x;
}

int main()
{
    auto cropped = just_crop(get_cat_image()); // <== (1)
    send(cropped); // <== (2)
}
```

When you write/read the code snippet above, you need to ask yourself these questions:

* Should `(0)` be wrapped in a `try...catch` block?

* Should `(1)` be wrapped in a `try...catch` block?

* Can I safely invoke `send(cropped)` on `(2)` without checking if an exception has been thrown?

These questions do **not** have obvious answers. The developer/reviewer is forced to look at human-written documentation or at the implementation of the functions. The compiler can **not** help in this situation.

In my opinion, these are the major pain points with an exception-based solution:

**1. Function signtures do not expose possible failure states.**

**2. It is not immediately obvious whether or not an operation can fail and how.**

**3. The compiler cannot help us prevent mistakes.**

My claim is that all of these issues are solved when using algebraic data types for error handling. Let's see how!



### ADT-based solution

Consider the following solution based on [`tl::optional`](https://github.com/TartanLlama/optional):

```cpp
tl::optional<image_view> get_cute_cat(image_view img)
{
    return crop_to_cat(img)
           .and_then(add_bow_tie)
           .and_then(make_eyes_sparkle)
           .map(make_smaller)
           .map(add_rainbow);
}
```

These might be the signtures of the operations on `image_view`:

```cpp
tl::optional<image_view> crop_to_cat(image_view);
tl::optional<image_view> add_bow_tie(image_view);
tl::optional<image_view> make_eyes_sparkle(image_view);
image_view make_smaller(image_view);
image_view add_rainbow(image_view);
```

Just by looking at the above declarations, we **immediately** know the following:

* `crop_to_cat`, `add_bow_tie`, and `make_eyes_sparkle` might fail.

* `make_smaller` and `add_rainbow` will never fail.

This means that, in order to have a correct program, we **must** check whether or not the `tl::optional` instance returned by the first three function is set and act accordingly. The best part is that **the compiler will help us here!**

Remember the previous `just_crop` example? Here it is again, this time using ADTs:

```cpp
void send(image_view);

tl::optional<image_view> just_crop(image_view x)
{
    return crop_to_cat(x); // <== (0)
}

int main()
{
    auto cropped = just_crop(get_cat_image()); // <== (1)
    cropped.map(send); // <== (2)
}
```

This version of the snippet is much more readable and easier to understand, as all possible failure points are obvious and "checked" by the compiler.

* At `(0)`, `crop_to_cat`'s signature exactly matches our desired operation.

* At `(1)`, we know that `get_cat_image()` will never fail as it returns an `image_view`. We also know that `cropped` might or might not be in a valid state *(because `just_crop` returns a `tl::optional`)*.

* At `(2)`, we know that `send` will never fail as it returns `void`. Most importantly, **we will get a compilation error** if we attempt to write:

    ```cpp
    send(cropped);
    ```

    The type system is protecting us from human mistakes here. By using `cropped.map`, we **explicitly** handle the possible failure case, and only invoke `send` with a valid argument.

Did we solve all of the previously mentioned pain points?

**1. Function signtures do not expose possible failure states.**

* Thanks to ADTs, it is obvious when a function might or might not fail. Glancing at the signature is enough to understand whether or not a possible failure must be handled.

**2. It is not immediately obvious whether or not an operation can fail and how.**

* By using monadic operations such as `map` and `and_then`, the code becomes self-explanatory in regard to possible failures. Instead of guessing whether or not an exception will be thrown, possible failure states become **explicit**.

**3. The compiler cannot help us prevent mistakes.**

* The type system will prevent us from writing code that doesn't properly check failure states. We simply cannot write `send(cropped)` without checking the state of `cropped` beforehand - the program will fail to compile.



### symptom of a larger problem?

You might argue that this whole article is based upon an incorrect premise:

> You should have never used exceptions to handle errors in `get_cute_cat` in the first place.

I completely agree with that - **exceptions should only be used for truly exceptional errors**. In the case of `get_cute_cat`, failure states are not exceptional: we're dealing with image data and image transformations - we should be prepared to handle failures.

Unfortunately, the reality is that I keep seeing exceptions being used for basic error handling almost every day. Due to the lack of familiarity with ADTs or due to laziness *("why refactor all the signatures when I can just add a `throw` here?")*, developers choose exceptions to handle **unexceptional** errors. This leads to a lack of clarity *(uninformative interfaces)* and human mistakes *("I should have put a `try...catch` block there!")*.

The moral of the story is: **write code optimizing for readability and safety**. As shown in this article, **ADTs are more readable and safer than exceptions for basic error handling.** If you have been using exceptions for years, it might take a while to get used to ADTs - but it is worth it.
