


<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

Is it possible to attend the same conference four years in a row while still feeling excited and going back home mind-blown... just like the first time?

If we're talking about [C++Now](TODO), the answer is definitely **yes**.

I still remember how lucky I felt back in 201X (TODO), on my way back home from Aspen: the 30 miserable hours of flying had been worth it. I remember an amazing experience of knowledge sharing and networking surrounded by beautiful scenery. Guess what? I feel exactly the same way right now, while I write this report on my way back to London.

(Heartfelt thanks to my company, [Bloomberg](https://www.techatbloomberg.com/), who sponsored my flights and accommodation.)



### cppnow in a nutshell

If you are not familiar with C++Now, you're missing out! This conference was originally known as BoostCon, and has been the catalyst (TODO: term) for many amazing Boost libraries that we take for granted today. Over the years, the conference opened up to non-Boost specific content, still maintaining a focus on library development and advanced C++, but also welcoming talks and workshops tailored to any level of expertise.

One of the key differences between C++Now and other conferences is the audience: most of the attendees here are either [WG21](TODO) members or C++ experts. When you're attending (or giving) a talk, you should expect a lot of very valuable interaction with the audience. It doesn't feel like that the presenter is lecturing the audience - it feels more like an exchange of ideas between experts and enthusiasts that is hard to experience anywhere else.

In this short trip report, I'm going to give a brief overview of the talks I liked the most, along with some of my thoughts. I greatly recommend(TODO: spelling) watching all the presentations listed here when they become available on YouTube.



### the talks

The conference began with the [**"TODO Shape of program"**](TODO) keynote, by [**Lisa Lippincott**](TODO). She questioned why, as a community of developers, we do not formally check our programs. One of the answers is that the mathematical tools available to us today provide a very poor user experience for *procedural programs*.

In order to provide a solution, Lisa is exploring a possible set of extensions to C++ that would allow developers to annotate their source code with *claims* and *requirements* that could then be statically analyzed in order to prove correctness. Imagine something like the current [Contracts proposal](TODO), but way more powerful (and complicated).(TODO: maybe screen from ACCU?)

The keynote revolved around the fact that the structure of a program fits the field of *topology* pretty well. Lisa demonstrated how modeling programs through topology can provide an intuition for describing their "shape", which is helpful when trying to create a formally verifiable representation of them. I didn't fully understand why topology was chosen instead of *graph theory*, but - after asking - Lisa clarified that the multi-dimensionality of topology can capture control flow that relies on values more elegantly than graphs (e.g. branches).

I found the keynote very inspiring, although some of the content in the second half was too reliant on category theory knowledge for me to fully comprehend. My only concern with the keynote is the uncertainty (TODO: spelling) of when/if we'll get a concrete application of Lisa's work, as it is currently only theorethical (TODO: spelling) research.

<br>

Next on my list was [**Odin Holmes**](TODO), presenting [**TODO MIXINS**](TODO). In short, Odin demonstrated how [*policy-based design*](TODO) via [CRTP](TODO) is efficient but *unmaintainable*, due to the fact that it's cumbersome to write policies that can communicate with each other, and also because it often ends up in a *"pile of template spaghetti"*.

He proposed a very interesting alternative approach: *mixins*. Mixins are small non-complete objects that can be mixed together with other mixins to build something useful. They can build interfaces, implementations, or both. Every mixin exposes a set of *abilities* that it provides, and might also *require* some abilities to work.

As an example, a mixin-based `vector` implementation might be composed of:

* A `small_buffer<N>` mixin, which exposes the `storage` ability and provides a place to store elements;

* A `control_block` mixin, which requires the `storage` ability and keeps track of size & capacity;

* An `exceptionless_interface` mixin, which requires a `control_block` and exposes an interface which works in a context with `-fno-exceptions`.

The mixins can communicate between each other by using simple operations such as *"find all the mixins that have ability `a`"*. The talk showed how to implement a framework that enables mixin-based design with *low syntactical overhead*, while still retaining *encapsulation*.

Odin is using this approach in production, targeting *microcontrollers*! A great example of how Modern C++ metaprogramming-heavy code can work well with limited resources.

Some of the drawbacks of this approach mentioned in the talk involve the "usual suspects" of heavily-template code: debug mode bloat, cryptical (TODO: spelling) error messages, and potentially longer compilation times. Additionally, initialization of objects is difficult with a mixin-based approach: Odin opted for *two-phase initialization*, which allows mixins to be initialized by looking at the state of other mixins.

The talk was really enjoyable and engaging - I can definitely see how this kind of approach would be preferable to *policy-based design* in many situations. One of my concerns is that - as with many other interesting C++ libraries - this would greatly benefit from language support.

<br>

The next two talks I went to were all about [*polymorphic allocators*](TODO):

* [**TODO**](TODO), by [**Arthur O'Dwyer**](TODO);

* [**TODO**](TODO), by [**David Sankel**](TODO).

The first presentation explained the relationship between [`std::pmr::polymorphic_allocator`](TODO) and [`std::pmr::memory_resource`](TODO). In short, the *allocator* is just a lightweight handle to the *memory resource* (e.g. a pointer). This implies a few things:

* `pmr` allocators should be stateless;

* `pmr` allocators should be copyable (and cheap to copy);

* `pmr` memory resources should be immobile (as allocators are pointing to their location in memory).

Additionally, Arthur explained why `pmr` allocator types are *copy-only* (i.e. they can be moved, but the move must be exactly the same as a copy): since moved-from objects are left in a *valid but unspecified* state, the following code has to be well-defined:

```cpp
std::pmr::vector<T> v0;
std::pmr::vector<T> v1{std::move(v0)};

v0.clear();
v0.emplace_back();
```

It is obvious that `v0`'s allocator must be left in a *valid* state after moving, as it must be able to work properly for `v0.emplace_back()`.

<br>

David's talk focused on all the drawbacks of *polymorphic allocators*, which can sometimes be subtle and very costly. According to David, these are the problems that `std::pmr` tried to solve:

* Allocations are slow;

* Memory fragmentation hurts performance;

* Pre-C++17 allocators are complicated and hard to use.

Research and [extensive benchmarks](TODO) by **John Lakos** (TODO: and?) have shown the potential performance benefits of polymorphic allocators in scenarios with multiple nested allocating data structures. Now that `pmr` is part of the Standard, it is also important to understand what it takes to use it.

First of all, `pmr` data structures are *allocator-aware* - they must explicitly deal with allocators and provide "custom" versions of *copy* and *move* operations that accept an extra allocator argument. This is intrusive: any business type that you own needs to do exactly the same in order to be used in a `pmr`-friendly code base.

Here's a brief summary of what needs to be done in order to create an allocator-aware type:

* Provide a constructor that takes an allocator, and manually pass it down to every allocator-aware data member;

* Expose an `::allocator_type` type alias;

* Provide a custom *move constructor* that also takes an allocator argument;

    * At run-time, this needs to check whether or not the allocator of the two objects is the same. If it is, the internal state can be moved. Otherwise, this usually *silently performs a copy*;

    * This cannot usually be marked `noexcept`, preventing important optimizations such as [the one during `std::vector`'s buffer growth](TODO).

* Since the `noexcept` mentioned above is important, it is also good practice to provide a traditional *move constructor* which is marked `noexcept` and unconditionally moves the internal state.

    * David calls this the *"dirty little secret"*, as it behaves very differently from the custom move constructor that takes an allocator argument.

In conclusion, these are the major drawbacks of using *polymorphic allocators*:

* Unsafe and error-prone code, especially in the context of move semantics;

* Very high development cost - propagation code must be written manually for every allocator-aware type.

I feel like [*metaclasses*](TODO) would greatly alleviate the points above thanks to the automatic generation of boilerplate for allocator-aware types.

Nevertheless, I am still skeptical on whether or not propagating allocators everywhere is a good idea: as mentioned by David, a reasonable alternative would be creating a custom data structure optimized for your memory access patterns. I still need to make up my mind on whether or not that's the best approach in practice.

I strongly recommend (TODO: spelling) watching [**TODO NAME**](TODO) by [**John Lakos**](TODO), and both Arthur and David's talks.

---

Arthur's traits talk:
* relocatability (avoids two passes for reserve, not sure)
* trivially comparable vs memberwise comparable (memcmp, jeff's paper gets it wrong)
* tombstones: invalid states could be used to represent unengaged optional (e.g. std::string with size > capacity) - optional will not be bigger than std::string!
    * tombstone_traits
        * number of spare representation
        * get spare representation #
        * set uninitialized T* to spare representation #
        * multiple spare representations are used for nested optional<optional<...>> ...
    * TODO: watch robin hood hashset talk
        * outperform fast hashset with crappy one purely thanks to small objects -> all in L1
    * drawbacks
        * cannot be constexpr because fiddling with bits
