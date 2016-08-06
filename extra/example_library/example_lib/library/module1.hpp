#pragma once

#include "../api.hpp"
#include "./module1/module1.hpp"
#include "./module1/module1.inl"

#if defined(LIBRARY_HEADER_ONLY)
#include "./module1/module1.cpp"
#endif