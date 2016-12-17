#include "function_view.hpp"

#define volatile

#if not defined(VR_FN_PTR)

volatile int state = 0;

#if defined(VR_TEMPLATE)
template <typename TF>
void f(TF&& x)
#elif defined(VR_FUNCTION_VIEW)
void f(function_view<void(volatile int&)> x)
#elif defined(VR_STD_FUNCTION)
void f(std::function<void(volatile int&)> x)
#endif
{
    x(state);
}

int main()
{
    volatile int k = 1;
    f([&k](volatile auto& y){ y += k; });
    return state;
}

#else

int main(){}

#endif