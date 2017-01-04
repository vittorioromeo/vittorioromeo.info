#pragma once



#if 0
#include "function_view.hpp"
void f(function_view<int(float)>);
#else
#include <functional>
void f(std::function<int(float)>);
#endif