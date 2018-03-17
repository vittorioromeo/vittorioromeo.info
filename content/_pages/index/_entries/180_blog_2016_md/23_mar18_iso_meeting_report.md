

<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

TODO:
* intro, with pic from twitter
* on behalf of bloomberg, thank bloomberg for sponsoring
* why I went to the meeting: my papers and...
* day-by-day
* Idea for article: using c++20 lambda template syntax for loops over types and ct-loops
* ask tony lewis for pics and credit him
* panorama pics night/day


I'm on a plane back to London from Jacksonville, where I attended my first ISO C++ meeting. Apart from the long flights and long working hours, it has been a very enjoyable experience for multiple reasons:

* I was able to actively participate in the evolution of the language and influence it by voting and discussing;

* Seeing the amount of work, the engaging debates, and the formal procedures used to move C++ forward gave me a newfound appreciation for all the members of the committee and for the language;

* I learned quite a lot about potentially upcoming changes and about the direction the language is taking;

* Last but not least, I was really glad to see friends from all around the world again and to make new ones!



I went to the meeting on behalf of my company, [Bloomberg](https://www.techatbloomberg.com/), who sponsored my flights and accommodation - **many thanks**! Two papers I authored were up for discussion:

* [(P0915) "Concept-constrained `auto`"](http://wg21.link/P0915) *(co-authored with John Lakos)*

* [(P0792) "`function_ref`: a non-owning reference to a `Callable`"](http://wg21.link/P0792)

The outcome of those discussions will be covered in this trip report, where I'll give a brief overview of how I spent every day and where I'll share my thoughts about my favourite papers and interactions.



### day 1/7

#### arrival

After landing in Jacksonville on Sunday, I was feeling like a zombie due to my sleep deprivation kicking in. It seems like my DNA has this *amazing* mutation that prevents me from sleeping on planes.

I rushed to the hotel to get some sleep as the first day of the ISO meeting was quickly approaching. Eight hours later I packed my laptop and my paper notebook and walked to the venue of the meeting, eager to finally have a glimpse of what goes behind the scenes of the C++ standardization process.

The meeting began with a plenary introductory session in a room packed with 100+ attendees - I was not expecting to see such a crowd! The room was uncomfortably hot due to the amount of people.

After a round of introductions and an overview of the week's agenda, the people in the room started splitting into *study groups* and *working groups*.

If you're not aware of how C++'s standardization process works, [the "committee" page on isocpp.org](https://isocpp.org/std/the-committee) has a great explanation that comes with a suprisingly helpful diagram:

![WG21 structure](https://isocpp.org/files/img/wg21-structure.png)



#### joint EWG + LEWG session

I began by attending a joint **EWG** *(Evolution Working Group)* + **LEWG** *(Library Evolution Working Group)* session.

The first discussion revolved around reports of *constrained non-templates* being an heavy burden on implementors. This is referring to the use of a [`requires` clause](http://en.cppreference.com/w/cpp/keyword/requires) to constrain a non-template function. After some short debate about the usefulness of the feature and whether or not it was intended, Faisal Vali volunteered to write a paper on the subject for the next meeting.

This interaction and many subsequent ones made it clear that the committee is only willing to discuss and debate on topics and issues that are accurately described by a paper. This is important as it formalizes the process, minimizes ambiguities/misunderstandings, and makes the content available to everyone.

Don't take it personally when someone tells you *"write a paper"* while discussing a proposal!



After that, we discussed a very interesting paper whose aim was to describes the procedures by which WG21 would be willing to break backwards compatibility: [(P0684R2) "C++ Stability, Velocity, and Deployment Plans"](http://open-std.org/JTC1/SC22/WG21/docs/papers/2018/p0684r2.pdf), by Titus Winters. In short, the paper classifies changes made to the language/library in multiple categories, depending on whether or not the change is statically detectable and on whether or not it has potential to break legacy code.

I strongly believe that without making huge breaking changes the C++ will never be able to get rid of dangerous and outdated language and library constructs. Most of the weird booby traps in the language today originate from backwards-compatibility with C and previous standards. I also understand that that same backwards-compatibility is a huge strength of C++.

However, I do see a way out: **modules**. Languages such as Rust have introduced concepts such as ["epochs"](https://github.com/rust-lang/rfcs/pull/2052): module-level switches that change the meaning of a program. Imagine the following:

* What if we could make uninitialized variable declaration (e.g. `int i;`) ill-formed?

* What if we could change our defaults? (e.g. `const` by default)

* What if we could fix uniform initialization and `initializer_list`?

* What if we could have `await` and `yield` instead of `co_await` and `co_yield`?

On a purely conceptual level, I think that this would be possible by allowing a module-level switch that changed the semantics of the language, while still retaining backwards compatibility. E.g.:

```cpp
module my_utilities;
epoch "C++XY"; // enable C++XY language features

import old_utilities; // safely import and use utilities that
                      // would not compile under C++XY

export void foo()
{
    int x; // * compile-time error in C++XY
           // * well-formed before C++XY
}
```

I think this is a reasonable way forward (unsure about technical feasibility), but I got resistance from the room when I spoke about this idea in the room. Several experts were concerned about fragmentation of the language and about the possibility of multiple "dialects" spawning from this approach.

I think those concerns are not valid: my idea is not to provide many "knobs" that users can finely tune to create their own preferred combination of language features - the point is to have a linear progression that allows WG21 to "fix" the language by breaking backwards-compatibility. There would be **no more fragmentation than what we have today** (e.g. codebase targeting different standards/toolchains), but we would be **finally able to extract the "much smaller and cleaner language struggling to get out"** that Bjarne was talking about in "The Design and Evolution of C++".

Another concern about this idea was that *"moving code from one module to the other might break it or change its semantics"*. This is again a non-issue - the fact that you are able to move code from one module to another means that you are in control of it, and you can choose not to do so or to change it to conform to the target module's epoch semantics.

The real problem is when a language/library breaking change hits code that you have no control over... and that's exactly what my proposed idea prevents. I will probably write a brief informal paper to propose this direction to EWG, and see if the working group agrees with me.

But I digress. Afterwards we discussed [(P0921R0) "Standard Library Compatibility Promises"](http://open-std.org/JTC1/SC22/WG21/docs/papers/2018/p0921r0.pdf) which, similarly to the previous paper, proposed a set of guidelines that the evolution working groups should follow when debating on potential breaking changes to the Standard Library. The general ideas were agreed upon by everyone, but the second half of the paper was quite controversial. Some of the guidelines for the users, such as

> Do not add `using namespace std` (or any using directive for sub-namespaces of `std`) to your code.

were overly restrictive. The above, as an example, would prevent UDLs from being usable.

The last paper discussed during the joint session was [(P0922R0) "LEWG wishlist for EWG"](http://open-std.org/JTC1/SC22/WG21/docs/papers/2018/p0922r0.pdf). This paper contains a list of desired language features that would make the life of LEWG (and library developers in general) easier. The described features are not well-defined, and merely serve as direction guidance for EWG.

Interesting thoughts were shared regarding RAII types such as `scoped_lock`, whose entire purpose is to live for the entire duration of a block. When a variable of one of those types is instantiated without a name, it dies immediately:

```cpp
{
    std::scoped_lock{_mutex};
    foo(); // <- Unprotected (!)
}

{
    std::scoped_lock l{_mutex};
    foo(); // <- Protected
}
```

In order to prevent the first undesired case, the idea of applying `[[nodiscard]]` to a constructor was floated around, alongside the possibility of ref-qualifying it as well. Another major concern was the issue of dangerous lifetimes with types such as `string_view` and `function_ref`:

```cpp
void foo(std::string_view x);

int main()
{
    foo(std::string{"hi"}); // OK
    std::string_view sv{std::string{"hi"}}; // Dangling reference (!)
}
```

Something like [(P0936R0) "Bind Returned/Initialized Objects to the Lifetime of Parameters"](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p0936r0.pdf), which reminds me of a barebones version of Rust's lifetimes, would probably be enough to solve this problem and statically prevent a class of dangerous bugs.

The paper also expressed the desire to get rid of macros, which was shared by pretty much everybody. One of the action points that came out of the discussion on that topic was to produce a paper that lists all the use cases for macros, so that we can understand how to provide features that can replace them. Me and some other attendees volunteered to write the document, under the lead of Ville Voutilainen (chair of EWG).



#### LEWG

After the joint session, I decided to check out LEWG.

One of the papers we discussed was [(P0966R TODO) "TODO"](TODO), which dealt with a very surprising part of [`std::string::reserve`](TODO)'s behavior: it is allowed(TODO required?) to shrink the amount of allocated memory if the argument passed to `reserve` is smaller than the current `capacity` of the `std::string` instance. I wasn't aware of this, and I always believed that it behaved in the same way as [`std::vector::reserve`](TODO) or [`std::unordered_set::reserve`](TODO), which can only increase the allocated memory.

The paper proposed to make `std::string::reserve` consistent with the other containers - the main motivation was to avoid performance issues in code such as:

```cpp
std::string s;
for(const auto& x : something)
{
    s.reserve(memory_for(x)); // might continuously shrink/grow
    s = stringify(x);
    send(s);
}
```

If `memory_for(x)` returns wildly different values on each iteration, that could lead to many unnecessary allocations and character buffer copies.

While this paper proposed a change that seems completely reasonable, a good counterpoint was provided by someone in the room: being allowed to shrink the memory allows implementations to bring a dynamically-allocated `std::string` back into the SBO (small buffer optimization) realm.

I had similar experiences throughout the meeting: almost every interaction when debating a paper was very well motivated, and I found myself thinking *"that's a very good point"* very often, even when two conflicting opinions were being stated one after another.



#### evening session: concept terse syntax

Almost every day of the meeting had one or more evening sessions planned after dinner, that started around 7.30PM and ended around 10.00PM. I can definitely say that WG21 meetings are exhausting, especially compared to conferences.

Anyway, this evening session was about terse (a.k.a. natural) syntax for concepts. This has been a very controversial topic for a plethora of reasons which have been extensively discussed already. We had several papers at the meeting that were presented and debated during the evening session:

* [(P0915) "Concept-constrained `auto`"](http://wg21.link/P0915) *(by Vittorio Romeo and John Lakos)*

* [(TODO) "TODO"](TODO) *(by TODO)*

* [(TODO) "TODO"](TODO) *(by TODO)*

* [(TODO) "TODO"](TODO) *(by TODO)*

* [(TODO) "TODO"](TODO) *(by TODO)*

I was the first one to present. In short, our proposal was aiming to introduce an **unambiguous** syntax for concept-constrained variable declarations. E.g.

```cpp
auto<ForwardIterator> it = foo();
// `it` must satisfy `ForwardIterator`, compile-time error otherwise
```

While explaining the proposed feature I was quickly interrupted by many people in the audience who were strongly against having extra syntax around the concept name and were in favour of just `ForwardIterator it = foo()`. My counterpoint was that the proposed syntax was unambiguous, explicit, and that it could be easily extended to remove the surrounding `auto<...>` in the future when people were ready for it.

Unfortunately I kept getting shut down with the argument that *"generic programming needs to look the same as regular programming"*. While I agree with the general sentiment and desired direction, unfortunately the reality is that **it's not the same thing**, due to issues such as:

* `ForwardIterator&&` can either be an *rvalue reference* or *forwarding reference* depending on whether or not `ForwardIterator` is a concept or a type;

* Functions accepting a concept-constrained argument actually are template functions, which behave very differently from non-template functions.

I am not opposed to something close to the terse syntax proposed by Bjarne - however I strongly believe that a migration path that starts with `auto<Concept>` and then moves towards just `Concept` when the inconsistencies between non-template and template functions are addressed would be a safer and better approach. Let developers be explicit if they want to: they might have very good reasons to do so.

Thomas Koppe (TODO umlaut?)'s paper was also shut down for similar reasons - this saddened me as the document presented a very elegant, unambiguous, and flexible approach that worked well in every circumstance a concept name could be used. Again, the audience simply did not appreciate the fact that `ForwardIterator typename T` had to be spelled instead of `ForwardIterator T`. I feel that sacrificing an elegant solution such as Thomas's only due to the concern that some people might be put off by writing `typename` and `auto` is a real shame, especially when those keywords could have been made optional in the future.

After the other papers were presented and discussed, the audience had to vote. Further work on our proposal and Thomas's was discouraged, and the room generally agreed to move forward with Herb Sutter's proposed syntax, having "independent bindings" when the same concept name was being used multiple times, and having an explicit syntactical indication of what a concept is. I am generally happy with the outcome, as it pretty much addresses my concerns. Herb's proposed syntax roughly looks as follows:

```cpp
void foo(ForwardIterator{} x);
// `foo` is a template function accepting an argument `x` whose type has to
// satisfy the `ForwardIterator` concept.

void foo(ForwardIterator{} x, ForwardIterator{} y);
// `x` and `y` can have different types, as long as they both satisfy the
// `ForwardIterator` concept`

void foo(ForwardIterator{T} x, T y);
// `T` is a placeholder for the type deduced for `x`. It must satisfy the
// `ForwardIterator` concept. `y` has the same type as `x`, which implies
// that it must also satisfy the `ForwardIterator` concept.

void foo(ForwardIterator{}&& x);
// `x` is unambiguously a forwarding reference.

template <typename T>
void foo(ConvertibleTo{T} x);
// `x` is a type that must be convertible to `T`.

template <typename T>
void foo(ConvertibleTo{U, T} x);
// `x` is a type that must be convertible to `T`. `U` is a placeholder for
// the type deduced for `x`.
```

One annoying quirk of this syntax is that `Concept{}` does not mean "nullary concept", but it's just notation for a "unary concept" where we don't care about giving a name to the deduced type. I proposed a simple fix for this issue...

```cpp
void foo(ForwardIterator{auto} x);
```

...which is very similar to what John and I were proposing in our paper. Unfortunately the sentiment of the room did not change.



### day 2/7

I spent the entire day in EWG. We discussed [(TODO) "TODO"](TODO) *(by TODO)*, which proposed to make the language more consistent by allowing a *structured bindings declaration* as part of an `if` statement:

```cpp
if(auto [ok, elem] = some_map[key]; ok) { /* ... */ }
// Well-formed in C++17.

if(auto [ok, elem] = some_map[key]) { /* ... */ }
// Ill-formed in C++17, proposed by this paper

if(auto rc = some_map[key]) { /* ... */ }
// Well-formed in C++17, as long as `rc` is convertible to `bool
```

The paper's main motivation was consistency between `if(auto [ok, elem] = some_map[key])` and `if(auto rc = some_map[key])` - unfortunately this would mean that the object to be tested in the first case would be the anonymous object that was being destructured (rather than `ok`), which is not always desirable and requires library developers to add conversions to `bool` to support this idiom.

A valuable concern were raised about the ordering of operations: *"does the object get tested after or before the destructuring happens?"* This is especially significant if the destructuring has side-effects.

In the end, the motivation was weak and the risks of this feature being misused were not worth it - the polls resulted in discouragement for further work.



Afterwards we looked at [(P0946R TODO) "TODO"](TODO) *(by TODO)*, whose aim was to provide consistency between comparisons performed with the new spaceship `<=>` operator and the existing two-way comparison operators (e.g. `<`, `==`, `>=`). The debate and subsequent voting resulted in some very interesting and bold changes that, if eventually merged into the Standard, would break compatibility not only with C++17 but also with C! In short:

* Two-way comparisons between `enum` and floating-point values would be deprecated;

* Two-way comparisons between different `enum` types would be deprecated;

* Three-way comparsions between `enum` and integral types would be allowed;

* **(!)** Comparisons between signed and unsigned integral types would now mathematical semantics. E.g.

    ```cpp
    assert(-1 < 0u);
    // Fails in C++17 and C
    // Would pass with the proposed changes
    ```

TODO: more examples and significant changes?

Note that this was not merged in the WD ("working draft") or sent to Core (TODO: sure?), the polls were merely encouraging more work in that direction.



[(P0919R TODO) "TODO"](TODO) *(by TODO)* was next - coroutines! TODO: was this paper an attempt to merge into WD?
TODO: explain what happened at the beginning.

Google presented [(TODO) "TODO"](TODO), a paper criticizing the current design for coroutines. The main point against it was:

* Even though for situations where they coroutines could be a **zero-overhead abstraction** (e.g. generators, monadic error handling), they are not. They will still allocate on the heap and in order to prevent extra costs we must rely on a (very likely) optimization... which is not guaranteed and doesn't happen in `-O0`.

The presenter claimed to have an alternative design (plus implementation experience) that guarantees no dynamic allocation is performed in cases where it can be avoided, and that a paper describing it wasn't at this meeting due to time constraints.

At the end, the general consensus was that we really want coroutines in C++20, and we would proceed with the current TS ("technical specification") unless Google is able to bring a detailed paper in (TODO: how to spell Rapysvils)??.

I generally agree with the points raised by Google, but I also agree with the fact that we cannot indefinitely delay an useful feature, especially when concrete evidence of a better design/implementation is not available. Hopefully they'll deliver at the next meeting and we'll have an improved version of Gor (TODO and who else??? TODO)'s very valuable and appreciated work.



The last paper we discussed was [(TODO) "TODO"](TODO) *(by TODO)*, which addressed a huge annoyance I've had with lambda expressions since C++14. We are going to finally be able to say:

```cpp
template <typename... Ts>
void foo(Ts... xs)
{
    auto l = [...xs = std::move(xs)]{ /* ... */ };
    // Capture the `xs` pack by move into the closure
}
```

This is obviously not limited to `std::move` - it's a extension of *generalized lambda capture syntax* to support parameter packs.

The original proposal's syntax had the ellipsis on the right hand side of the initializer: `[xs = std::move(xs)...]` - EWG summoned a Core expert in the room in order to explain why having the ellipsis on the left hand side was a better idea. In short, every place in the language where **declaration** happens during pack expansion has the ellipsis on the left hand side, while expansion of an existing pack has them on the right hand side:

```cpp
template <typename ...Ts>
//                 ^~~~~
// Declaration of template parameters (left)
void foo(Ts ...xs)
//          ^~~~~
// Declaration of function parameters (left)
{
    bar(xs...);
//      ^~~~~
// Expansion of existing pack (right)
}
```

Developers usually do not format the code like in the snippet above, but Core's argument does make sense and EWG unanimously agreed to change the syntax.



### day 3/7 (TODO /6?)
