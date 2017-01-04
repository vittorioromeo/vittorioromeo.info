#include "a0.hpp"

#if 0
void f(function_view<int(float)> f)
{
    f(0.f);
}
#else
void f(std::function<int(float)> f)
{
    f(0.f);
}
#endif