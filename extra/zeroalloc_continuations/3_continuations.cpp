#define BOOST_THREAD_PROVIDES_FUTURE
#define BOOST_THREAD_PROVIDES_FUTURE_CONTINUATION

#include <boost/thread/future.hpp>
#include <iostream>
#include <string>

int main()
{
    return boost::async([] { return 123; })
        .then([](auto x) { return x.get() + 1; })
        .then([](auto x) { return x.get() + 1; })
        .then([](auto x) { return x.get() + 1; })
        .get();
}
