volatile int state = 0;


#if defined(VR_BASELINE)

int main()
{
    state = 1;
    return state;
}

#else



#if defined(VR_FN_PTR)
void f(void (*x)(volatile int&))
#elif defined(VR_TEMPLATE)
template <typename TF>
void f(TF&& x)
#elif defined(VR_FUNCTION_VIEW)
#include "function_view.hpp"
void f(function_view<void(volatile int&)> x)
#elif defined(VR_STD_FUNCTION)
#include <functional>
void f(std::function<void(volatile int&)> x)
#endif
{
    x(state);
}

int main()
{
    f([](volatile auto& y){ y = 1; });
    return state;
}

#endif