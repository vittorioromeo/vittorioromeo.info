

<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

Imagine that you have been designing a programming language for over 30 years and that it gradually became widely used across the globe. Some of the decisions you made at the beginning were excellent and contributed to the success of your project. Some others, however, were not the best: over the years you and your users realized that the world would have been a better place if those choices you made eons ago were slightly different.

You keep evolving your language, adding useful features and keeping it up to speed with the competition. The bad choices and older (now obsolete) constructs still linger.

You try *removing* the most dangerous and least used aspects of the language, and while their dismissal is highly successful, some users will undoubtely be hindered by it. For more popular constructs, you attempt *deprecation*: a large part of the community welcomes it and migrates their codebases, while another finds the work required to achieve conformance either unjustifiably large or impossible due to legacy dependencies or licensing issues.

There seems to be no way out, until you stumble on this post. Its author makes an incredible claim, worthy of the worst clickbait advertisement.

> What if I told you that I could **fix all of your problems**? Even better, what if I told you that **backwards-compatibility will never be broken**, and that **migration to newer versions of your language could be automated**?

At this point, you immediately think that this guy must be insane. Then he says...

> Also, **someone already did it**. And **it works**.

Now you're interested.



### rust epochs

In the C++ community, Rust is a controversial topic. Some people [seem frightened by it](https://old.reddit.com/r/cpp/comments/cj9tnl/is_autoconversion_of_c_code_to_a_simpler_modern/evckkg5/), and most are justifiably skeptical. Maybe we should start saying *"R-word"*, like we say *"M-word"* instead of monad.

Anyway, I believe that Rust elegantly solved the problem of language evolution, by using a system called **"Editions"**.

> From [**"What are Editions?"**](https://doc.rust-lang.org/edition-guide/editions/index.html)
>
> > Every two or three years, we'll be producing a new *edition* of Rust. Each edition brings together the features that have landed into a clear package, with fully updated documentation and tooling.
> >
> > When a new edition becomes available in the compiler, crates must explicitly opt in to it to take full advantage. This opt in enables editions to contain incompatible changes, like adding a new keyword that might conflict with identifiers in code, or turning warnings into errors.
> >
> > A Rust compiler will support all editions that existed prior to the compiler's release, and can link crates of any supported editions together.
> >
> > Edition changes only affect the way the compiler initially parses the code.
> >
> > Therefore, if you're using Rust 2015, and one of your dependencies uses Rust 2018, it all works just fine. The opposite situation works as well.

Editions guarantee the following:

* **Language designers can make "breaking" changes**, like removing features or adding keywords;

* Users can opt-in to new editions, and their **code is backwards-compatible with existing one**.

Also, automatic migration from an older edition to a new one is often possible.

Everything I described above is possible due to the fact that Rust is *module*-based, and doesn't support textual inclusion like C++'s `#include` preprocessor statement. In visual form, this is *roughly* what happens:


