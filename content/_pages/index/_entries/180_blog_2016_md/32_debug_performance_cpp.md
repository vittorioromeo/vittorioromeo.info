By now, it should (hopefully) be common knowledge that the term "zero cost abstraction" is a *lie*. To be fair, it's more of a misnomer -- had the term been "abstraction likely to result in zero runtime overhead after optimizations" then it would have been much more honest, but I can see why that didn't fly...

Most C++ developers tend to accept the fact that "zero cost abstractions" provide zero runtime overhead only *with* optimizations enabled, and that they have a negative impact on compilation speed. The same developers tend to believe that the benefits of such abstractions are so valuable that having your program perform poorly in debug mode (i.e. without optimizations enabled) and compile more slowly *is* worth it.

I used to be one of them.

However, in the past few years, I've come to realize how important it is in certain domains to have performant debug builds and quick compilation. A domain where such requirements are critical is *game development*. The people working in game development tend to be quite vocal about C++'s abstractions being unfit for their work, and for good reason: games are real-time simulations that need to be playable and responsive even in debug builds -- imagine the motion sickness induced by trying to debug a virtual reality game at ~20FPS.

In this article, we'll explore how C++'s abstraction model heavily relies on compiler optimizations, unveiling some unfortunate examples of unexpected performance loss. Afterwards, we will compare how the three major compilers (GCC, Clang, and MSVC) fare in this area, and we'll discuss some potential future improvements or workarounds.



### moving an int is slow

This year I gave a lightning talk at ACCU 2022 (["Moving an `int` Is Slow: Debug Performance Matters!"](https://www.youtube.com/watch?v=ffFT-gIPCRE)) with an intentionally provocative title -- how can moving an `int` be *slow*?

Consider the following code:

```cpp
#include <utility>

int main()
{
    return std::move(0);
}
```

C++ developers should know that `std::move(0)` is semantically the same as `static_cast<int&&>(0)`, and most of them would expect the compiler to generate no code for the move, even with optimizations disabled. Turns out that *GCC 12.2*, *Clang 14.0*, and *MSVC v19.x* all end up generating a `call` instruction[^compiler_later] -- see for yourself [on Compiler Explorer](https://gcc.godbolt.org/z/h8b985jnE).

[^compiler_later]: GCC and Clang have made improvements here that we will discuss later in the article.

You might be thinking that it's not a huge deal -- after all, how can an extra call instruction here and there matter that much? Well, here's an example of a high-performance algorithm containing a move in its inner loop ([from `libcxx`](https://github.com/llvm/llvm-project/blob/main/libcxx/include/__numeric/accumulate.h), cleaned up a bit):

```cpp
template <class InputIterator, class _Tp>
inline constexpr
T accumulate(InputIterator first, InputIterator last, T init)
{
    for (; first != last; ++first)
#if _LIBCPP_STD_VER > 17
        init = std::move(init) + *first;
#else
        init = init + *first;
#endif
    return init;
}
```

Note how, in C++17 and above, the `init` object is moved on every iteration of the loop as an optimization. Ironically, switching from C++14 to C++17 resulted in a huge debug performance loss for programs using `std::accumulate` due to the addition of that `std::move` -- imagine the overhead of a per-iteration *useless* function call in a tight loop processing objects of arithmetic type!



### it gets worse... much worse

`std::move` is not an isolated case -- any function that semantically is a cast ends up generating a useless `call` instruction with optimizations disabled. Here are a few more examples: `std::addressof`, `std::forward`, `std::forward_like`, `std::move_if_noexcept`, `std::as_const`, `std::to_underlying`.

Let's say you don't care at all for debug performance... well, guess what -- all of the aforementioned utilities also result in a function template instantiation, which slows down compilation time. Furthermore, these "casts" they will appear as part of your call stack while debugging, making the process of stepping through your code much more painful and noisy.

Utility functions that behave as casts are not the only category of abstractions that needlessly behave poorly without optimizations -- you will also encounter the same issues with conceptually lightweight types such as `std::vector<T>::iterator`: no one wants to step into `iterator::operator*` and `iterator::operator++` while debugging, and no one wants the overhead of a function call on every iteration while looping over a `std::vector`. Yet, in debug mode, it happens.

You can find examples like these everywhere in C++. Notably, here's a tweet by [Chris Green](https://twitter.com/ChrisGr93091552/status/1567653943546908672) on `std::byte`:

<center>

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">You REALLY REALLY don&#39;t want to use std::byte:<a href="https://t.co/esFxAngT2D">https://t.co/esFxAngT2D</a></p>&mdash; Chris Green (@ChrisGr93091552) <a href="https://twitter.com/ChrisGr93091552/status/1567653943546908672?ref_src=twsrc%5Etfw">September 7, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

</center>

As you can see from [the linked Compiler Explorer example](https://godbolt.org/z/8sdvra6xb), the generated assembly for the bitwise shift operators on `std::byte` is dreadful, resulting in a `call` instruction for possibly the simplest and fastest operation that a CPU can perform. Of course, using a `char` would not produce such horrible assembly even with optimizations completely disabled.



### what are the consequences?

The consequences of these inefficiencies are *devastating* for the reputation and usefulness of C++ in the game development world, and also (in my opinion) result in lower productivity and more debugging cycles.

- First of all, everything we have shown so far means that any game developer working on a non-toy project will not use any "zero cost abstraction". `std::move`, `std::forward`, et cetera will all be replaced either by casts [or macros](https://www.foonathan.net/2020/09/move-forward/).

- The use of `std::vector<T>` will be discouraged in favour of `T*`, or at the very least iteration will be done through pointers (i.e. via `std::vector<T>::data`) and not through iterators.

- Anything from the `<algorithm>` and `<numeric>` headers will likely not be used, due to the risk of major overhead (such as in `std::accumulate`) or due to the fact that those headers are notoriously heavy on compilation times.

- Safer alternatives to C types such as `std::byte` will not be used, reducing type safety and expressiveness.

Every time a seasoned C++ programmer proposes the use of a safer, harder to misuse abstraction to a game developer, they will not listen -- they cannot afford to do so. Therefore people working in other domains will see game developers as primitive life forms that have not yet discovered abstractions and that like to play with fire by juggling pointers and using macros, completely failing to see the reasons that led them to those techniques.

On the other hand, game developers will laugh at and shun C++ developers who embrace high-level abstractions and type safety, because they fail to realize that debug performance and compilation speeds might not be as important as cleaner, safer, and more maintainable code. It sucks.

I also don't have any proof of this, but I suspect that writing low-level code with the desire of optimizing the debugging experience ironically ends up increasing the frequency of debugging.

Hear me out: if someone is constantly avoiding abstractions that could make their code safer, they will inevitably write bugs more often, which will require them to debug more frequently. The debugger will be praised once the bug is resolved, therefore the developer will be more motivated to keep debug performance high by writing low-level code. It's a vicious cycle!



### using optimizations in debug mode

I know what you have been thinking this whole time -- you are thinking that these developers are incompetent because they could have been using [`-Og`](https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html) all along!

You are wrong.

First of all, `-Og` is available *only* on GCC. Clang accepts the flag, but it's exactly the same as `-O1` -- LLVM maintainers have never implemented a proper debug-friendly optimization level. Even worse, MSVC has no equivalent of `-Og` whatsoever, and most game developers use MSVC as their main compiler!

Even if `-Og` was ubiquitous, it is still suboptimal to `-O0`: it can still inline code a bit too aggressively for an effective debugging session.

Any other optimization level higher than `-Og` is going to result in a very poor debugging experience due to the aggressive optimizations compilers will carry out.



### what can be done?

There are a few areas where improvements could be made: (1) the *language* itself, (2) the *compilers*, and (3) the *standard libraries* -- let's see.

1. We could argue that function templates are the wrong model to create lightweight abstractions over casts and bitwise operations. We could make a similar argument for class templates and lightweight types such as `std::vector<T>::iterator`.

    There have been attempts in the past at introducing a language feature for "hygenic macros" that would have solved the problems described in this article, notably Jason Rice's [**P1221**: "Parametric Expressions"](https://wg21.link/p1221) proposal. That paper [hasn't received any update](https://github.com/cplusplus/papers/issues/147) in a few years, unfortunately.

    Even if we managed to figure out a way to introduce "hygenic macros" into the language, it would not help with existing utilities that have been standardized as function and class templates in the past -- i.e. it wouldn't help `std::move` get any better. Maybe some sort of attribute or backwards-compatible keyword akin to `[[no_unique_address]]` combined with `[[gnu::always_inline]]` could be invented to force compilers to always inline marked functions and not require any code to be generated for them.

    I have nothing concrete in mind, but it would be a nice area to explore.

2. Compilers could be a lot smarter about the way they handle these functions. And they are becoming so!

    GCC 12.x introduced a new `-ffold-simple-inlines` flag as a result of [my #104719 bug report](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=104719), which permits the C++ frontend to fold calls to `std::move`, `std::forward`, `std::addressof`, and `std::as_const`. The [documentation](https://gcc.gnu.org/onlinedocs/gcc/C_002b_002b-Dialect-Options.html) mentions that it should be enabled by default, but I couldn't get the compiler to perform the folding unless I manually specified the flag -- see an example [on Compiler Explorer](https://gcc.godbolt.org/z/KPGe3YYsG).

    Clang 15.x, also motivated by [my #53689 issue](https://github.com/llvm/llvm-project/issues/53689), also introduced a similar folding pass for the same functions chosen by GCC (plus `std::move_if_noexcept`, which I assume GCC maintainers forgot about). This one seems to be enabled by default -- see a comparison between Clang 14.x and Clang 15.x [on Compiler Explorer]([-std=c++20](https://gcc.godbolt.org/z/7MjM53h7G)).

    ~~MSVC has not yet provided any improvement in this area.~~ The MSVC developer team has reached out after this article was published, and was very keen to improve the situation. In fact, they wrote a blog post about their improvements [here](https://devblogs.microsoft.com/cppblog/improving-the-state-of-debug-performance-in-c/). Thank you so much!

    I have to mention how happy I am to see GCC and Clang maintainers stepping up to improve the debug performance situation and I deeply thank them for that. Kudos!

    Regardless, I don't think an hardcoded set of functions is the right solution here. I am in favour of compilers performing some magic, but the criteria should be a bit more general.

    For example, they could perform this sort of folding on *any* function that consists of a single `return` statement containing only a cast. And then maybe they could relax the rule to any function containing a single "basic" operation, with the intention to also cover `std::byte` and `std::vector<T>::iterator`. It would be really cool and beneficial to see something like that!

3. Finally, the standard library implementations themselves could be a little bit more clever and user-friendly.

    As an example, they could use `static_cast<T&&>(x)` instead of `std::move(x)` inside the body of algorithms such as `std::accumulate`. Also, they could mark simple wrapper functions as `[[gnu::always_inline]]` or an equivalent builtin attribute forcing the compiler to inline them.

    Unfortunately, the `libc++` maintainers did not really like these ideas -- see [this comment](https://github.com/llvm/llvm-project/issues/53689#issuecomment-1042355958). I believe their arguments were quite weak, and that I made my point quite effectively on the GitHub issue, but they didn't budge.

    I'd like to see some work on this area -- maybe replacing a few `std::move` and `std::forward` calls with casts and adding a few attributes in strategic places could really end up benefitting the whole C++ community. Is the very minor readability hit in an already completely unreadable codebase really a worthwhile reason to not make these changes? I think not. :)



### faq

> People should just write better code with less bugs, then they wouldn't have to debug it!

- Maybe... :) However, debuggers are not only used to figure out why a defect is happening, but for other reasons as well. For example, some people use debuggers to navigate through unfamiliar code, or figuring out logic bugs that sanitizers and/or abstractions cannot help with.

> Cannot the people affected by this issue selectively only compile some files without optimization?

- This is technically possible, but quite hard to achieve in practice. First of all, you don't always know where you need to look if you are debugging -- you could probably make an educated guess and only disable optimizations in a few related modules, but you might not be correct and waste time.

    Also, many build systems might not easily support this sort of per-file basis optimization flag settings. I can imagine it might be very difficult to integrate this idea in older codebases or proprietary/legacy build systems.

    Finally, don't forget that we also get side benefits such as faster compilation by tackling this issue directly and not working around it.



### conclusion

I hope you have found this exploration of C++ debug performance interesting and enlightening, and I also hope to have inspired you to contribute in this area. Feel free to reach out via [email](mailto:mail@vittorioromeo.com) or [on Twitter](https://twitter.com/supahvee1234). to ask any question or provide your feedback/criticism!

Shameless self-promotion time!

- My book [**"Embracing Modern C++ Safely"** is now available on all major resellers](http://emcpps.com/). Please consider purchasing it and share the news with your friends and colleagues -- that helps a lot!

    - For more information, read the following interview: ["Why 4 Bloomberg engineers wrote another C++ book"](https://www.techatbloomberg.com/blog/why-4-bloomberg-engineers-wrote-another-cplusplus-book/)

- I offer 1-1 C++ mentoring and consulting sessions in my spare time. If it's something you are interested in, feel free to reach out at `mail (at) vittorioromeo (dot) com` or [on Twitter](https://twitter.com/supahvee1234).

- If you are a fan of fast-paced open-source arcade games that allow user-created content, check out [**Open Hexagon**](https://store.steampowered.com/app/1358090/Open_Hexagon/), my first fully-released game [available on Steam](https://store.steampowered.com/app/1358090/Open_Hexagon/) and [on itch.io](https://itch.io/t/1758441/open-hexagon-my-spiritual-successor-to-super-hexagon).

    - Open Hexagon is a spiritual successor to the critically acclaimed Super Hexagon by Terry Cavanagh. [Terry fully supports my project!](https://twitter.com/terrycavanagh/status/1397372432877379587) -- thank you!

- Got a VR headset and want to experience Quake, the timeless classic from 1996, as a first-class virtual reality experience? Check out [Quake VR](https://quakepcvr.com/), my "labour of love" one-man project that turns Quake into an experience with many VR-only features and interactions.

  A video is worth a thousand words: [YouTube: **Quake VR - Release Trailer (v0.0.5)**](https://www.youtube.com/watch?v=MBoI16z8Nxg).


