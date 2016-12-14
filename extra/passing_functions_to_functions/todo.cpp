#include <experimental/type_traits>
#include <functional>

template <typename TSignature>
struct signature_helper;

template <typename TReturn, typename... TArgs>
struct signature_helper<TReturn(TArgs...)>
{
	using fn_ptr_type = TReturn(*)(TArgs...);
};

template <typename TSignature>
using fn_ptr = typename signature_helper<TSignature>::fn_ptr_type;

template <typename TSignature>
class function_view;

template <typename TReturn, typename... TArgs>
class function_view<TReturn(TArgs...)>
{
private:
	using signature_type = TReturn(char*, TArgs...);
	using fn_ptr_type = fn_ptr<signature_type>;
    
    char* _ptr;
    fn_ptr_type _fn_ptr;

public:
	// template <typename TXReturn, typename... TXArgs, 
    // 	typename = std::enable_if_t<std::is_convertible<TXReturn(*)(TXArgs...), fn_ptr_type>{}>>
    // function_view(TXReturn(*x)(TXArgs...)) 
    // { 2

	// TODO: stackoverflow, why?
	// template <typename TXReturn, typename... TXArgs>
    // function_view(fn_ptr<TXReturn(TXArgs...)> x) { }

	template <typename T, 
    	typename = std::enable_if_t<std::is_callable<T(TArgs...), TReturn>{}>>
	function_view(T&& x) 
    {
    	_fn_ptr = [](char* ptr, TArgs... xs) -> TReturn 
        {
        	return std::invoke(reinterpret_cast<T&>(*ptr), xs...);
        };
    }
    
    auto operator()(TArgs... xs) 
    { 
    	return _fn_ptr(_ptr, xs...);
    }
};

/*
int f(float) {}

int main()
{
  	auto l = [](float){ return 0; };
	function_view<int(float)> fv(&f);
  	function_view<int(float)> fv2(l); 
  
  	volatile int a = fv(1.f);
  	volatile int b = fv2(2.f);
}
*/

volatile int k;

 void f(function_view<int(float)> x){ k = x(0.f); }

// void f(std::function<int(float)> x){ k = x(0.f); }

// template <typename TF>
// void f(TF x){ k = x(0.f); }

template <int TX>
constexpr std::integral_constant<int, TX> ic{};

template <typename TF, typename... Ts>
void for_each(TF&& f, Ts&&... xs)
{
	(f(xs), ...);
}

int main()
{
	 f([](float y){ return 5 + y; });
  
  /*
 	for_each([](auto x){ f(x); }, 
		[](float y){ return 5 + y; },
		[](float y){ return 5 + y; },
		[](float y){ return 5 + y; },
		[](float y){ return 5 + y; },
		[](float y){ return 5 + y; });
	*/
}


