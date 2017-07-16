#include <atomic>
#include <cassert>
#include <iostream>
#include <thread>
#include <chrono>

struct world_s_best_thread_pool
{
    template <typename F>
    void operator()(F&& f)
    {
        std::thread{std::move(f)}.detach();
    }
};

int main()
{
    std::atomic<int> left = 3;
    int flag = 0;

    for(int i = 0; i < 3; ++i)
    {
        world_s_best_thread_pool{}([&] {
            if(left.fetch_sub(1) == 1)
            {
                ++flag;
            }
        });
    }

    while(flag == 0) { std::this_thread::sleep_for(std::chrono::nanoseconds(1)); }
    std::this_thread::sleep_for(std::chrono::milliseconds(10));

    if(flag != 1)
    {
        std::cout << flag << std::endl;
        throw;
    }
}
