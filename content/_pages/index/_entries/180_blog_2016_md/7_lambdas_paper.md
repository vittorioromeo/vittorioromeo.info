

*"An Empirical Study on the Impact of C++ Lambdas and Programmer Experience"*, a recent research paper presented at [ICSE' 16](http://2016.icse.cs.txstate.edu/), sparked a lot of controversy *(e.g on [reddit](https://www.reddit.com/r/cpp/comments/588qap/c_lambdas_negatively_impact_novices_and_dont/) and [Hacker News](https://news.ycombinator.com/item?id=12741229))* after claiming that the use of [C++11 lambda functions](http://en.cppreference.com/w/cpp/language/lambda) is **harmful to beginners** and **unhelpful to professionals**. 

After carefully reading the paper, which is available on [Andreas Stefik, Ph.D.'s website](http://web.cs.unlv.edu/stefika/research.html) for free, I genuinely think that it is **misinformative** and that **the drawn conclusions are inaccurate** due to the naive approach taken for the experiments and due to the small sample size.

In this article, I will support my claims by quoting the original paper and explaining why the authors' work/conclusions are subpar. All blockquotes in this post are citations of [doi>10.1145/2884781.2884849](http://dl.acm.org/citation.cfm?doid=2884781.2884849).



### Lambdas vs... iterators?

From the first section of the paper:

> Willcock et al. [57] set design goals for a lambda syntax stating, *"For many uses, lambda expressions and STL-style algorithms compete directly with explicit loops and with explicitly named function objects. Therefore, simple uses of a lambda expression with algorithms must not be significantly more verbose than their equivalent hand-written loops and hand-written function objects. Simple uses must be very simple."* Thus, **we designed an evaluation on the use of iterators compared to lambdas from this recommendation**.

The authors' interpretation of the citation from [N1968 *(Willcock et al.)*](http://www.stroustrup.com/N1968-lambda-expressions.pdf) suggests that lambda expressions are meant as replacement for iterators. This is **nonsense**, and proving it is as easy as carefully reading again the quote:

> lambda expressions and STL-style algorithms compete directly with **explicit loops** and with **explicitly named function objects**

* [STL-style algorithms](http://en.cppreference.com/w/cpp/algorithm), when used in combination with lambdas, provide a powerful alternative to explicit loops. The use of "algorithms + lambdas" can increase readability, terseness and more clearly state the intent of the developer. Also, the use of explicit loops does not always imply the use of iterators.

    ```cpp
    // Example: sum all even numbers, using an explicit loop.
    std::vector<int> input;
    int output{0};

    for(auto x : input)
    {
        if(x % 2 == 0)
        {
            output += x;
        }
    }
    ```

    ```cpp
    // Example: sum all even numbers, using STL algorithm + lambda.
    std::vector<int> input;
    auto output = accumulate(begin(input), end(input), 0, 
        [](int acc, int x)
        { 
            return acc + ((x % 2 == 0) ? x : 0); 
        }); 
    ```

    *(Note: I am not claiming that one example is better than the other. I'm just showing two "competing" examples as intended by the quote from N1968.)*

* Explicitly named [function objects](http://en.cppreference.com/w/cpp/utility/functional) are, in my opinion, the *real* direct competitors to lambdas. Both language constructs can be used to write code in a functional style *(e.g. using [higher-order functions](https://en.wikipedia.org/wiki/Higher-order_function))*, but function objects are extremely verbose compared to lambdas. Again, iterators are not part of the equation here.

    ```cpp
    // Example: sum all even numbers, using STL algorithm + function object.
    struct even_accumulator
    {
        void operator()(int acc, int x) const
        {
            return acc + ((x % 2 == 0) ? x : 0);
        }
    };

    // ...

    std::vector<int> input;
    auto output = accumulate(begin(input), end(input), 0, even_accumulator{});
    ```

    ```cpp
    // Example: sum all even numbers, using STL algorithm + lambda.
    std::vector<int> input;
    auto output = accumulate(begin(input), end(input), 0, 
        [](int acc, int x)
        { 
            return acc + ((x % 2 == 0) ? x : 0);
        });
    ```

Additionally, at the end of the second section, the following code snippet is presented, described as a *"concrete example"* of lambdas in C++11:

```cpp
function<int(int, int)> func = [](int p, int q)
    {
        int s = q + p;
        return s - p;
    };

int a = 5;
int b = 6;
cout << func(a, b) << "\n";
```

I find the use of `function<int(int, int)>` instead of `auto` very concerning, as the snippet is meant to be a *minimal concrete example* of lambda usage. [`std::function`](http://en.cppreference.com/w/cpp/utility/functional/function) is unrelated to lambdas, and using it instead of `auto` in a minimal example is misleading to readers. *(In case you're confused, `std::function` is a generic polymorphic wrapper over any kind of callable object. It supports lambdas, but it's orthogonal to their existence/use.)*



### The experiment

The experiment executed during the research is a *randomized controlled trial* that aims to investigate the following hypotheses:

> Null hypothesis H0-1: There is no impact on the ability of developers to complete programming tasks **using lambda expressions compared to using iterators** in C++.
>
> Null hypothesis H0-2: There is no impact on the time it takes developers to correctly complete programming tasks **using lambda expressions compared to using iterators** in C++.
>
> Null hypothesis H0-3: There is no impact on the number of compiler errors developers have when they complete programming tasks **using lambda expressions compared to using iterators** in C++.
>
> Null hypothesis H0-4: There is no impact on the percentage of time developers spend in a non-compiling state when **using lambda expressions compared to using iterators** in C++.
>
> Null hypothesis H0-5: Experience level, defined by the position an individual has within an academic pipeline or professional status, has no impact on developer performance under any condition

I've highlighted *"using lambda expressions compared to using iterators"* because I strongly believe that this comparison is nonsensical *(for the reasons I explained earlier)* - the whole premise of the experiment is therefore flawed. Let's now analyze the execution of the experiment:

> Each group was asked to solve four tasks, the first of which was a warmup. 
>
> \[...\]
>
> The other three tasks were different between the two groups and were always presented in the same order. Group Lambda was instructed to use lambda expressions as seen in their code samples and group Iterator used the other.
> 
> \[...\]
>
> The participants in group Lambda had to write one or more lambda functions and call the provided method using what they implemented to complete the task. Group Iterator had to use the provided iterator class in a loop to solve the same problem. The tasks were designed to be the same, but solved using different programming constructs.

The paragraphs cited above imply that:

1. Lambdas and iterators are different tools that can be used to solve the same problem.

2. Solving the same task with different programming constructs provides data on the effectiveness of those constructs.

Since I've already explained why *(1)* is wrong, I'd like to focus on *(2)*: different programming constructs are effective in different situations. Given a specific task, every construct of a language will have a certain level of effectiveness. If *construct A* is less effective than *construct B* in solving *task T*, it **does not** mean that **in general** *construct A* is worse than *construct B*. I don't think that the authors are claiming that, but the way the experiment was designed and conducted seems to follow that logic.

> \[...\]
>
> Participants in this case had to create a lambda expression that is of the type function<void (item)> and that added to the already provided retVal variable

Again, lambdas are not the same thing as `std::function`. The wording here is very misleading.

> \[...\]
>
> After instructions, participants were given printouts of sample code they could refer to while solving tasks. Group Lambda got code of a C++ program using lambda expressions and group Iterator received code of the same program written using iterators. They then had time to study the samples before starting the tasks and could refer to these samples later.

I think that giving the readers access to the sample code is of utmost importance here, as test subjects used it to implement their solutions. I couldn't find a link to it in the paper.

> \[...\]
>
> A noteworthy detail is that the participants had to use \[&\] for their lambda function, which indicates to the compiler that the function captures the variables around it as reference, in contrast to \[\], which does not capture any variables, and \[=\], which captures variables by value. The code samples did not show any way to do this other than the \[&\] so that participants would not be confused and delayed.

I believe that testing the effectiveness of a feature, independently of the subjects' skill level, is inherently flawed if the way the feature works isn't explained. *Capture lists* are not a "detail", they are a fundamental part of lambdas - participants would be **less** confused by understanding the meaning of `[&]`.

Let's now take a look at *task 1*. 

> Please write a program that calculates the sum of the prices of the items using the same techniques as seen in the example code. Assign the result to retVal.

* Group Iterator:

    *Group Iterator* was given the following code...

    ![*Task 1 - iterator: given code*](resources/img/blog/lambdas_paper_0.png)

    ...which is an **unidiomatic** implementation of something resembling an iterator, that I personally find confusing and unfamiliar. The following code is the solution they were supposed to write:

    ![*Task 1 - iterator: expected solution*](resources/img/blog/lambdas_paper_1.png)

* Group Lambda:

    *Group Lambda* was given the following code...

    ![*Task 1 - lambda: given code*](resources/img/blog/lambdas_paper_2.png)

    ...which, again, is of very poor quality. `std::function` should not be used there, `string` should be taken by `const&` and `item` should have a reasonable constructor. If the aim of the authors was to make the code less confusing, they failed - this code is confusing to C++ developers of any skill level because it is **unidiomatic** and **inefficient**. 

    The following code is the solution they were supposed to write:

    ![*Task 1 - lambda: expected solution*](resources/img/blog/lambdas_paper_3.png)

    ...and it completely misses the point of lambdas:

    1. Given a pre-initialized `retVal` accumulator, the task becomes unsuitable for lambdas. A [range-based for loop](http://en.cppreference.com/w/cpp/language/range-for) would be much more readable and concise here. The idiomatic way of solving this problem with algorithms is using [`std::accumulate`](http://en.cppreference.com/w/cpp/algorithm/accumulate):

    ```cpp
    auto retVal = accumulate(begin(mb), end(mb), 0);
    ```

    A lambda isn't even required. The point is: **if your container interface is poor and unidiomatic, why are you using it to evaluate the effectiveness of a language feature?**

    2. The lambda is being used to construct an `std::function`, `func`, which is then passed to `iterateOverItems`. Major benefits of using lambdas in similar situations include **avoiding named functions** and **not paying any extra cost**. This is how it's done:

    ```cpp
    mb.iterateOverItems([&retVal](const item& x){ retVal += x.price; });
    ```

    Actually, there's an algorithm for that: [`std::for_each`](http://en.cppreference.com/w/cpp/algorithm/for_each).

    ```cpp
    for_each(begin(mb), end(mb), [&retVal](const item& x){ retVal += x.price; });
    ```

    Don't use a flawed and unfamiliar interface that doesn't resemble any standard container in an unrealistic situation to test the effectiveness of a language feature!

### The results

> The experiment had 58 participants. Of these, four data sets were not usable because three of the participants did not follow the experimental protocol and one data set was deleted by accident. Of the usable datasets, 42 participants were students at the University of Nevada, Las Vegas, of which 10 were freshmen, 8 sophomores, 17 juniors, and 7 seniors. The 12 remaining participants were professional programmers. 

So... the sample size was just **54** participants. 

> Evidence from our study shows that those in the lambda group received no benefits in regard to time, compiler errors, or their ability to complete tasks. \[...\] Given the popularity of lambdas in the literature, and the fact that design changes to programming languages cause additional costs (e.g., new textbooks, changes to software), we would encourage the broad community to run more tests to find out whether such changes are worth it.

The results that are being called *"evidence"* were obtained through a severely flawed study on a miniscule sample size. I would encourage the broad community to learn about lambdas and *(real)* iterators, understand their benefits and drawbacks and use them **where appropriate**.