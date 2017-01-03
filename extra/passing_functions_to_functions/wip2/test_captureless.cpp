volatile int state = 0;

#if defined(VR_INLINE_ENABLED)
#define VR_INLINE inline
#else
#define VR_INLINE
#endif

#if defined(VR_BASELINE)

int main()
{
    state = 1;
    return state;
}

#else



#if defined(VR_FN_PTR)
VR_INLINE void f(void (*x)(volatile int&))
#elif defined(VR_TEMPLATE)
template <typename TF>
VR_INLINE void f(TF&& x)
#elif defined(VR_FUNCTION_VIEW)
#include "function_view.hpp"
VR_INLINE void f(function_view<void(volatile int&)> x)
#elif defined(VR_STD_FUNCTION)
#include <functional>
VR_INLINE void f(std::function<void(volatile int&)> x)
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