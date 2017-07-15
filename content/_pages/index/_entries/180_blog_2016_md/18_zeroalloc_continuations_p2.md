


<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

In [**part 1**](https://vittorioromeo.info/index/blog/zeroalloc_continuations_p0.html) and [**part 2**](https://vittorioromeo.info/index/blog/zeroalloc_continuations_p0.html) we have explored some techniques that allow us to build simple `future`-like computation chains without type-erasure or allocations. While our examples demonstrated the idea of nesting types by moving `*this` into a parent node, they did not implement any operation that could be executed in parallel.

Our goal is to have a new `when_all` node type at the end of this article, which takes an arbitrary amount of `Callable` objects, invokes them **in parallel**, aggregates the results, and invokes an eventual continuation afterwards. We'll do this in a **non-blocking manner**: the thread that completes the last `Callable` will continue executing the rest of the computation chain without blocking or context-switching.

<p></p>

> How can we achieve this? Is our existing design good enough?

Unfortunately, the answer is no.



### table of contents

TODO



### flaws with the current design

In our current design, the computation chain is executed **bottom-to-top**:

* Every node only knows about its parent, but not about its children.

* Every node expects to get a result when invoking the `.call_with_parent()` member function. While this is enough to model linear chains, it's not enough for a non-blocking fork/join model - it would mean that `.call_with_parent()` would have to block until all the parallel computations are completed so that a value can be returned.

Here's a diagram of the current design:

[![Diagram: current design](resources/img/blog/zeroalloc_p2/d0.jpg)](resources/img/blog/zeroalloc_p2/d0.jpg)

Note that we could make `when_all` fit in our current design, but it would need to block until all its computations are completed *(e.g. using a `latch`)*. Here's an example of how it would look:

[![Diagram: blocking `when_all` in current design](resources/img/blog/zeroalloc_p2/d1.jpg)](resources/img/blog/zeroalloc_p2/d1.jpg)

In order to allow `when_all` to have non-blocking behavior, we have to almost literally turn our design upside-down: we'll being at the root, recursively executing the children of the current node.

* When we are at the `root`, we'll simply execute its child.

* When executing a `node`, we'll invoke the stored computation and execute its child **in the same thread**, with the result of the function.

* When executing a `when_all`, we'll invoke every stored computation in parallel - the last one that finished will execute the next child **in the same thread**.

We'll have to solve two problems:

1. Finding the `root`, while propagating the children.

2. Going down the chain, executing everything in a non-blocking manner.



### going up

Here's a simple chain:

```cpp
auto f = initiate([]{ return 1; })
    .then([](int x){ return x + 1; })
    .then([](int x){ return x + 1; });
```

Remember that:

* Every node stores and can access its parent, but has no knowledge about its children.

* `f` represents the final leaf of the chain.

> How can we possibly find the `root` node while still keeping track of all the children found along the way?

The answer is, of course, **recursion**. We'll define a `walk_up` member function that, when invoked, will invoke itself recursively on the parent, passing the current node as an argument. This will build a linear chain of nodes as a variadic set of function arguments.

```¢pp
template <typename Scheduler, typename... Children>
void node</* ... */>::walk_up(Scheduler&& s, Children&... cs) &
{
    this->as_parent().walk_up(s, *this, cs...);
}
```

The first node on which `walk_up` will be invoked is the final leaf. It will pass the scheduler and itself to its parent, which will do the same recursively until the `root` is found. Upon reaching the `root`, we'll stop going up and begin going down, having every node execute itself and its child.

Here's an example diagram of `walk_up` invocations:

[![Diagram: invoking `walk_up`](resources/img/blog/zeroalloc_p2/d2.jpg)](resources/img/blog/zeroalloc_p2/d2.jpg)



### going down

The `walk_up` implementation for `root` will start "going down", by calling `.execute` on its child:

```cpp
template <typename Scheduler, typename Child, typename... Children>
void root::walk_up(Scheduler&& s, Child& c, Children&... cs) &
{
    c.execute(s, nothing{}, cs...);
}
```

The semantics of `.execute` are as follows:

* It always returns `void`.

* It uses the scheduler only when appropriate.

    * For linear nodes it will completely avoid using it, in order to chain everything on the same thread.

    * For fork/join nodes with $N$ computations it will execute one computation on the current thread, and schedule the remaining $N - 1$.

* It will call the current node's stored computation(s) with the result value received from the parent.

* If the current node is not a leaf, it will call `.execute` on its child.

This is the signature of `.execute`:

```cpp
// Leaf case:
template <typename Scheduler, typename Result>
void /* ... */::execute(Scheduler&&, Result&&) &;

// General case:
template <typename Scheduler, typename Result,
          typename Child, typename... Children>
void /* ... */::execute(Scheduler&&, Result&&, Child&, Children&...) &
```

As you can see, we always expect to get a scheduler and a result *(which could be `nothing`)* from our parent. If the current node is not a leaf, one or more children will be passed to `.execute` from its parent.

Here's a diagram showing a simplified example of going down a linear chain:

[![Diagram: `.execute` in a linear chain](resources/img/blog/zeroalloc_p2/d3.jpg)](resources/img/blog/zeroalloc_p2/d3.jpg)

You can see the benefit of this approach in the following diagram. The scenario is as follows: after the root, there is a `when_all` node with three computations *($A_0$, $A_1$, $A_2$)*. In the particular hypotethical example run shown in the diagram, $A_2$ is the last node to complete execution. Since $A_2$ knows that its children are $B$ and $C$, it can invoke `.execute` on $B$ on the same thread, without requiring blocking/synchronization.

[![Diagram: `.execute` with fork/join](resources/img/blog/zeroalloc_p2/d4.jpg)](resources/img/blog/zeroalloc_p2/d4.jpg)



### implementation: linear `node`

Let's now take a look at how this new design is implemented in a linear chain. Do not worry - I promise that I'll show the implementation for `when_all` in this article. We'll begin with *boilerplate*:

* Every node will expose the `input_type` and `output_type` type aliases which will be used to easily compute the final result value of a computation chain.

* Nodes will derive from a `child_of<Parent>` base class, that reduces code repetition and simplifies CRTP usage.

```cpp
struct root
{
    // The `root` produces `nothing`.
    using output_type = nothing;

    // When we are at the `root`, we cannot go "up" the chain anymore.
    // Therefore we being going "down".
    template <typename Scheduler, typename Child, typename... Children>
    void walk_up(Scheduler&& s, Child& c, Children&... cs) &
    {
        c.execute(s, nothing{}, cs...);
    }
};
```

```cpp
template <typename Parent>
struct child_of : Parent
{
    // The input type of a node is the output of its parent.
    using input_type = typename Parent::output_type;

    template <typename ParentFwd>
    child_of(ParentFwd&& p);

    auto& as_parent() noexcept;
    {
        return static_cast<Parent&>(*this);
    }
};
```

Here's `node`'s interface:

```cpp
template <typename Parent, typename F>
struct node : child_of<Parent>, F
{
    using typename child_of<Parent>::input_type;
    using output_type = result_of_ignoring_nothing_t<F&, input_type>;

    template <typename ParentFwd, typename FFwd>
    node(ParentFwd&&, FFwd&&);

    template <typename FThen>
    auto then(FThen&&) &&;

    auto& as_f() noexcept;

    template <typename Scheduler, typename Result>
    void execute(Scheduler&&, Result&&) &;

    template <typename Scheduler, typename Result,
              typename Child, typename... Children>
    void execute(Scheduler&&, Result&&, Child&, Children&...) &;

    template <typename Scheduler, typename... Children>
    void walk_up(Scheduler&&, Children&...) &;

    template <typename Scheduler>
    decltype(auto) wait_and_get(Scheduler&&) &&;
};
```

It's very similar to the implementation we had in the previous article, but there are a few things to note:

* `output_type` uses a weird `result_of_ignoring_nothing_t` type alias - we'll get to that in a bit. In short, it prevents passing `nothing` to another function to make the user interface more convenient.

* `then` is now ref-qualified with `&&` - it's a good idea to enforce that, as `*this` will be moved during its invocation. *(Thanks to Андрей Давыдов for the suggestion.)*

* We have `execute` and `walk_up`.

With our new design, `wait_and_get` remains unchanged. The definition of `node</* ... */>::then` is however greatly simplified, because we don't need to propagate parents anymore:

```cpp
template <typename FThen>
auto then(FThen&& f_then) &&
{
    return ::node{std::move(*this), FWD(f_then)};
}
```

Let's now take a look at `.execute` *(general case)*:

```cpp
template <typename Scheduler, typename Result,
          typename Child, typename... Children>
void execute(Scheduler&& s, Result&& r, Child& c, Children&... cs) &
{
    c.execute(s, as_f()(FWD(r)), cs...);
}
```

Firstly, it executes the stored computation with the value received from the parent node: `as_f()(FWD(r))`. It then invokes `.execute` on the next child, propagating the scheduler, the result of the computation, and the eventual rest of the children.

`as_f()(FWD(r))` is a *lie*. The real code is actually `call_ignoring_nothing(as_f(), FWD(r))`. The `call_ignoring_nothing(f, xs...)` invokes `f` passing all `xs...` that are not `nothing` as arguments. Its implementation is explained [in the appendix](TODO). The previously encountered `result_of_ignoring_nothing_t` behaves like [`std::invoke_result_t`](http://en.cppreference.com/w/cpp/types/result_of), but uses `call_ignoring_nothing` instead of `std::invoke`.

That's basically it for linear nodes - you can find [a complete example **on wandbox.org**](https://wandbox.org/permlink/LMzrCQBFYvNQE7n3) or [here **on GitHub**](https://github.com/SuperV1234/vittorioromeo.info/blob/master/extra/zeroalloc_continuations/p2_linear.cpp).



### appendix: `call_ignoring_nothing`

TODO
