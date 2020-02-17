https://old.reddit.com/r/cpp/comments/f47x4o/202002_prague_iso_c_committee_trip_report_c20_is/fhslry8/?context=10000
https://old.reddit.com/r/cpp/comments/f47x4o/202002_prague_iso_c_committee_trip_report_c20_is/fhslzp6/?context=10000
https://twitter.com/Guriwesu/status/1228815932216283143
http://wiki.edg.com/bin/view/Wg21prague/P1881R1SG17

<style>
.inline-link
{
    font-size: small;
    margin-top: -2.6em;
    text-align: right;
    font-weight: bold;
}
</style>

TODO



### TODO

TODO

![](resources/img/blog/cpp_epochs/d0.png)

A nice example of a "breaking" change introduced in Rust 2018 is the requirement of using the `dyn` keyword for *run-time polymorphism*, making the presence of type erasure obvious to readers:

```rust
// Rust 2015
fn foo() -> Box<Trait> { /* ... */ }

// Rust 2018
fn foo() -> Box<dyn Trait> { /* ... */ }
    //                ^~~
    //             Required
```

Finally, Rust [provides tooling to automatically migrate old code to newer editions](https://doc.rust-lang.org/edition-guide/editions/transitioning-an-existing-project-to-a-new-edition.html). While not perfect, it makes the migration experience as painless as possible.






### additional resources

TODO

Here are some interesting discussions on the subject:

* [*"C++ Modules - a chance to clean up the language?"*](https://old.reddit.com/r/cpp/comments/agcw7d/c_modules_a_chance_to_clean_up_the_language/)

* [*"Is auto-conversion of C++ code to a simpler, modern, and not backwards-compatible version possible?"*](https://old.reddit.com/r/cpp/comments/cj9tnl/is_autoconversion_of_c_code_to_a_simpler_modern/)

* [*"What is the exact mechanism that allows source code targeting different Rust Editions to interoperate?"*](https://stackoverflow.com/questions/57332016/what-is-the-exact-mechanism-that-allows-source-code-targeting-different-editions)

Here's my previous article where I discuss my Jacksonville meeting experience, including the informal epochs proposal:

* ["*trip report: first ISO C++ meeting experience*"](https://vittorioromeo.info/index/blog/mar18_iso_meeting_report.html)
