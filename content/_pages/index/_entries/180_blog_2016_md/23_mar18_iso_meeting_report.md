

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

After landing in Jacksonville on Sunday, I was feeling like a zombie due to my sleep deprivation kicking in. It seems like my DNA has this *amazing* mutation that prevents me from sleeping on planes.

I rushed to the hotel to get some sleep as the first day of the ISO meeting was quickly approaching. Eight hours later I packed my laptop and my paper notebook and walked to the venue of the meeting, eager to finally have a glimpse of what goes behind the scenes of the C++ standardization process.

The meeting began with a plenary introductory session in a room packed with 100+ attendees - I was not expecting to see such a crowd! The room was uncomfortably hot due to the amount of people.

After a round of introductions and an overview of the week's agenda, the people in the room started splitting into *study groups* and *working groups*.

If you're not aware of how C++'s standardization process works, [the "committee" page on isocpp.org](https://isocpp.org/std/the-committee) has a great explanation that comes with a suprisingly helpful diagram:

![WG21 structure](https://isocpp.org/files/img/wg21-structure.png)



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
