volatile int state = 0;

#if defined(VR_INLINE_ENABLED)
#define VR_INLINE inline
#else
#define VR_INLINE
#endif

#if defined(VR_BASELINE)

int main()
{
    volatile int k = 1;
    state += k;
    state += k;
    state += k;
    state += k;
    state += k;
    return state;
}

#else

#if not defined(VR_FN_PTR)


#if defined(VR_TEMPLATE)
template <typename TF>
VR_INLINE void f(TF&& x){ x(state); }
template <typename TF>
VR_INLINE void g(TF&& x){ x(state); }
template <typename TF>
VR_INLINE void j(TF&& x){ x(state); }
template <typename TF>
VR_INLINE void h(TF&& x){ x(state); }
template <typename TF>
VR_INLINE void i(TF&& x){ x(state); }
#elif defined(VR_FUNCTION_VIEW)
#include "function_view.hpp"
VR_INLINE void f(function_view<void(volatile int&)> x){ x(state); }
VR_INLINE void g(function_view<void(volatile int&)> x){ x(state); }
VR_INLINE void j(function_view<void(volatile int&)> x){ x(state); }
VR_INLINE void h(function_view<void(volatile int&)> x){ x(state); }
VR_INLINE void i(function_view<void(volatile int&)> x){ x(state); }
#elif defined(VR_STD_FUNCTION)
#include <functional>
VR_INLINE void f(std::function<void(volatile int&)> x){ x(state); }
VR_INLINE void g(std::function<void(volatile int&)> x){ x(state); }
VR_INLINE void j(std::function<void(volatile int&)> x){ x(state); }
VR_INLINE void h(std::function<void(volatile int&)> x){ x(state); }
VR_INLINE void i(std::function<void(volatile int&)> x){ x(state); }
#endif

int main()
{
    volatile int k = 1;
    f([&k](volatile auto& y){ y += k; });
    g([&k](volatile auto& y){ y += k; });
    j([&k](volatile auto& y){ y += k; });
    h([&k](volatile auto& y){ y += k; });
    i([&k](volatile auto& y){ y += k; });
    return state;
}

#else

int main(){}

#endif

#endif