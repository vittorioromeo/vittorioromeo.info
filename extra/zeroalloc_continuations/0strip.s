	ret
	movq	(%rdi), %rax
	jmp	*8(%rax)
	addl	$1, 88(%rdi)
	ret
	rep ret
	rep ret
	movq	(%rdi), %rax
	ret
	rep ret
	rep ret
	rep ret
	rep ret
	rep ret
	rep ret
	rep ret
	rep ret
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	jmp	*8(%rax)
	rep ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	jmp	*24(%rax)
	rep ret
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	movl	$24, %esi
	movl	$24, %esi
	movl	$24, %esi
	movl	$24, %esi
	movl	$24, %esi
	movl	$24, %esi
	movl	$16, %esi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$16, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	leaq	48(%rbx), %rax
	cmpq	%rax, %rdi
	movq	%rbx, %rdi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$64, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$104, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$64, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$104, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$64, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$104, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	call	*24(%rax)
	movq	16(%rbp), %rax
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	(%rdi), %r10
	addq	-32(%r10), %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	call	*24(%rax)
	movq	16(%rbp), %rax
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	(%rdi), %r10
	addq	-32(%r10), %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	call	*24(%rax)
	movq	16(%rbp), %rax
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	(%rdi), %r10
	addq	-32(%r10), %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$40, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$32, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$32, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$32, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$32, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$32, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$40, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rbx, %rdi
	movups	%xmm0, 16(%rbx)
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$40, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	leaq	32(%rbx), %rax
	movups	%xmm0, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	addq	$40, %rdi
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	popq	%rbx
	movq	32(%rax), %rax
	jmp	*%rax
	popq	%rbx
	ret
	subq	$40, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$8, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	addq	$40, %rdi
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	popq	%rbx
	movq	32(%rax), %rax
	jmp	*%rax
	popq	%rbx
	ret
	subq	$40, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$8, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$8, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$8, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$32, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$16, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$8, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	addq	$40, %rdi
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	popq	%rbx
	movq	32(%rax), %rax
	jmp	*%rax
	popq	%rbx
	ret
	subq	$40, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	subq	$8, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	movq	(%rdi), %rax
	testq	%rax, %rax
	cmpq	%rsi, %rax
	addq	%rsi, %rsi
	cmpq	%rsi, %rax
	testq	%rsi, %rsi
	movq	%rsi, (%rdi)
	leaq	1(%rsi), %rdi
	leaq	1(%rax), %rdi
	movabsq	$9223372036854775807, %rax
	movq	%rax, (%rdi)
	movabsq	$-9223372036854775808, %rdi
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	movq	%rdi, %rbp
	subq	$40, %rsp
	testq	%rsi, %rsi
	testq	%rdx, %rdx
	subq	%r12, %rdx
	cmpq	$15, %rdx
	movq	%rdx, 24(%rsp)
	cmpq	$1, %rdx
	movq	0(%rbp), %rax
	testq	%rdx, %rdx
	movq	%rdx, 8(%rbp)
	movb	$0, (%rax,%rdx)
	addq	$40, %rsp
	popq	%rbp
	popq	%r12
	ret
	movzbl	(%r12), %edx
	movb	%dl, (%rax)
	movq	24(%rsp), %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 8(%rbp)
	movb	$0, (%rax,%rdx)
	addq	$40, %rsp
	popq	%rbp
	popq	%r12
	ret
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rdx, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, 0(%rbp)
	movq	%rcx, 16(%rbp)
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	24(%rsp), %rdx
	movq	0(%rbp), %rax
	movq	%rdx, 8(%rbp)
	movb	$0, (%rax,%rdx)
	addq	$40, %rsp
	popq	%rbp
	popq	%r12
	ret
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	392(%rdi), %rbx
	cmpq	400(%rdi), %rbx
	movq	%rsi, (%rbx)
	movq	%rdx, 8(%rbx)
	addq	$16, %rbx
	movq	%rbx, 392(%rdi)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	movq	%rdx, %r12
	movq	%rbx, %rdx
	subq	384(%rdi), %rdx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	%rdx, %rax
	sarq	$4, %rax
	testq	%rax, %rax
	leaq	(%rax,%rax), %r14
	cmpq	%r14, %rax
	movq	$-16, %r14
	movq	%r14, %rdi
	movq	%rdx, 8(%rsp)
	movq	392(%rbp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %r15
	movq	384(%rbp), %rdi
	addq	%r15, %rdx
	movq	%r13, (%rdx)
	movq	%r12, 8(%rdx)
	cmpq	%rdi, %rbx
	movq	%rdi, %rdx
	movq	%r15, %rsi
	movdqu	(%rdx), %xmm0
	addq	$16, %rdx
	addq	$16, %rsi
	movups	%xmm0, -16(%rsi)
	cmpq	%rdx, %rbx
	leaq	-16(%rbx), %rax
	subq	%rdi, %rax
	andq	$-16, %rax
	leaq	16(%r15,%rax), %r12
	addq	$16, %r12
	cmpq	%rcx, %rbx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movdqu	(%rdx), %xmm0
	addq	$16, %rdx
	addq	$16, %rsi
	movups	%xmm0, -16(%rsi)
	cmpq	%rdx, %rcx
	subq	$16, %rcx
	subq	%rbx, %rcx
	andq	$-16, %rcx
	leaq	16(%r12,%rcx), %r12
	testq	%rdi, %rdi
	addq	%r15, %r14
	movq	%r15, 384(%rbp)
	movq	%r12, 392(%rbp)
	movq	%r14, 400(%rbp)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	movl	$16, %r14d
	movabsq	$1152921504606846975, %rsi
	cmpq	%rsi, %r14
	xorl	%r15d, %r15d
	testq	%r14, %r14
	movq	%rbx, %rcx
	salq	$5, %rax
	movq	%rax, %r14
	movq	%r15, %r12
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	subq	$24, %rsp
	movq	8(%rsi), %rax
	movq	8(%rax), %r12
	cmpb	$42, (%r12)
	leaq	4(%rsp), %rcx
	leaq	8(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	$0, 4(%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, %rbx
	leaq	16(%rbp), %rax
	testq	%rbx, %rbx
	movq	%rax, 0(%rbp)
	movq	%rbx, %r13
	movq	%rbx, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdi
	call	free
	addq	$24, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	1(%r12), %rbx
	leaq	4(%rsp), %rcx
	leaq	8(%rsp), %rdx
	xorl	%esi, %esi
	movl	$0, 4(%rsp)
	movq	$0, 8(%rsp)
	movq	%rbx, %rdi
	movq	%rax, %r13
	leaq	16(%rbp), %rax
	testq	%r13, %r13
	testq	%rbx, %rbx
	movq	%rax, 0(%rbp)
	movq	$-1, %rdx
	movq	%r13, %rbx
	movq	%rax, 0(%rbp)
	xorl	%r13d, %r13d
	movq	%r12, %rbx
	movq	%rax, %rbx
	movq	%r13, %rdi
	call	free
	movq	%rbx, %rdi
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movl	$16, %esi
	rep ret
	jmp	*%rax
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-40(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-64(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$104, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-40(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-40(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$72, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-64(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$104, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-64(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$104, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$32, %rdi
	subq	$32, %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$64, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$32, %rdi
	subq	$8, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$8, %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$32, %rdi
	subq	$64, %rdi
	subq	$8, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$40, %rdi
	subq	$8, %rdi
	subq	$40, %rdi
	subq	$32, %rdi
	subq	$40, %rdi
	subq	$8, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$64, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$16, %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$16, %rdi
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	subq	$16, %rdi
	subq	$32, %rdi
	subq	$16, %rdi
	pushq	%rbx
	movq	(%rdi), %rax
	movq	-40(%rax), %rbx
	addq	%rdi, %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$40, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-40(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-64(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-64(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-8(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-64(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$112, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-16(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-40(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	movq	(%rdi), %rax
	addq	-40(%rax), %rdi
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbx
	leaq	-40(%rdi), %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$40, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	leaq	32(%rbx), %rax
	movups	%xmm0, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	subq	$456, %rsp
	testq	%rsi, %rsi
	leaq	64(%rsp), %rdi
	movq	%rsi, %rbx
	movl	$16, %esi
	movq	%rbx, %rdi
	call	strlen
	leaq	64(%rsp), %rdi
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	32(%rbp), %rbx
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsp)
	cmpq	%rax, %rbx
	leaq	48(%rsp), %r13
	leaq	28(%rsp), %rcx
	leaq	32(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	$0, 28(%rsp)
	movq	$0, 32(%rsp)
	testq	%rax, %rax
	movq	%rax, %r14
	movq	%r13, 32(%rsp)
	movq	%r14, %r12
	movq	%r14, %rdi
	call	strlen
	leaq	(%r14,%rax), %rdx
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	free
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movq	32(%rsp), %rdi
	cmpq	%r13, %rdi
	movq	%rbx, %rdi
	cmpq	%rax, 8(%rsp)
	movq	%rax, %rbx
	movq	40(%rbx), %rsi
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	8(%rsi), %rax
	movq	8(%rax), %r15
	cmpb	$42, (%r15)
	leaq	1(%r15), %r14
	leaq	28(%rsp), %rcx
	leaq	32(%rsp), %rdx
	xorl	%esi, %esi
	movl	$0, 28(%rsp)
	movq	$0, 32(%rsp)
	movq	%r14, %rdi
	testq	%rax, %rax
	movq	%rax, %r12
	testq	%r14, %r14
	movq	%r13, 32(%rsp)
	movq	$-1, %rdx
	leaq	64(%rsp), %rax
	leaq	32(%rsp), %rdi
	leaq	8(%rax), %rsi
	movq	32(%rsp), %rax
	leaq	48(%rsp), %rdx
	movq	56(%rbp), %rdi
	leaq	72(%rbp), %rcx
	movq	40(%rsp), %rsi
	movq	64(%rbp), %r8
	cmpq	%rdx, %rax
	cmpq	%rcx, %rdi
	movq	48(%rsp), %r9
	movq	72(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rax, 56(%rbp)
	movq	%r9, 72(%rbp)
	leaq	48(%rsp), %rax
	movq	%r8, 40(%rsp)
	movq	%rsi, 64(%rbp)
	cmpq	%rax, %rdi
	leaq	64(%rsp), %rdi
	movq	56(%rbp), %rax
	addq	$456, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	leaq	32(%rsp), %rdi
	call	*%rax
	movq	%rax, %r14
	cmpq	%rcx, %rdi
	movq	72(%rbp), %rax
	movq	%rdi, 32(%rsp)
	movdqa	48(%rsp), %xmm0
	movq	%rcx, 56(%rbp)
	movups	%xmm0, 72(%rbp)
	movq	%rax, 48(%rsp)
	movdqu	72(%rbp), %xmm0
	movq	%rdx, %rdi
	movaps	%xmm0, 48(%rsp)
	movq	%r13, 32(%rsp)
	xorl	%r12d, %r12d
	movq	%r15, %r14
	testq	%rsi, %rsi
	movdqa	48(%rsp), %xmm0
	movups	%xmm0, 72(%rbp)
	movq	%rsi, 64(%rbp)
	testq	%r8, %r8
	movq	$0, 64(%rbp)
	movb	$0, 72(%rbp)
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	free
	leaq	64(%rsp), %rdi
	movq	%rbx, %rdi
	movq	32(%rsp), %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	cmpq	%rax, %rdi
	movq	%rax, %rbx
	pushq	%rbx
	movq	16(%rdi), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	popq	%rbx
	ret
	movq	%rbx, %rdi
	popq	%rbx
	jmp	*%rax
	pushq	%rbx
	movq	16(%rdi), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	popq	%rbx
	ret
	movq	%rbx, %rdi
	popq	%rbx
	jmp	*%rax
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$40, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rbx, %rdi
	movups	%xmm0, 16(%rbx)
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	pushq	%rbx
	movq	%rdi, %rbp
	subq	$16, %rsp
	movq	8(%rsi), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	%rbx, %rsi
	leaq	8(%rsp), %rdi
	call	*40(%rax)
	movq	8(%rsp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	addl	$1, 88(%rbx)
	movq	%rbx, %rdi
	call	*32(%rax)
	movq	24(%r12), %rax
	movq	8(%rbp), %rdi
	movq	%rax, 24(%rbp)
	movl	32(%r12), %eax
	testq	%rdi, %rdi
	movl	%eax, 32(%rbp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rbp)
	movq	(%rdi), %rax
	call	*32(%rax)
	testq	%rbx, %rbx
	movq	%rbx, 8(%rbp)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	addl	$1, 88(%rbx)
	movq	%rbx, %rdi
	call	*32(%rax)
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	24(%r12), %rax
	movq	8(%rbp), %rdi
	movq	%rax, 24(%rbp)
	movl	32(%r12), %eax
	testq	%rdi, %rdi
	movl	%eax, 32(%rbp)
	movq	16(%r12), %rax
	movq	%rax, 16(%rbp)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	movl	32(%rsi), %eax
	movl	%eax, 32(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	call	*%rdx
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	movq	(%rbx), %rax
	movq	%rbx, 8(%rbp)
	movq	24(%rax), %rdx
	movq	%rbx, %rdi
	call	*%rdx
	movq	(%rbx), %rax
	movq	%rax, %rbp
	movq	%rbp, %rdi
	testq	%rbx, %rbx
	movq	%rax, %rbp
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*32(%rax)
	movq	%rax, %rbp
	movq	8(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%rbp
	pushq	%rbx
	movl	$56, %edi
	subq	$56, %rsp
	leaq	8(%rsp), %rsi
	leaq	8(%rax), %rdi
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	%rax, %rbx
	movl	$-1, 40(%rax)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movl	$-1, 40(%rsp)
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	40(%rbp), %rdi
	movdqu	16(%rbp), %xmm0
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movups	%xmm0, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	40(%rbp), %rdi
	movdqu	16(%rbp), %xmm0
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movups	%xmm0, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	40(%rbp), %rdi
	movdqu	16(%rbp), %xmm0
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movups	%xmm0, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	40(%rbp), %rdi
	movdqu	16(%rbp), %xmm0
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movups	%xmm0, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$112, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	32(%rbp), %rsi
	movq	40(%rbp), %rdx
	leaq	48(%rbx), %rax
	movdqu	16(%rbp), %xmm0
	leaq	32(%rbx), %rdi
	movq	%rax, 32(%rbx)
	addq	%rsi, %rdx
	movups	%xmm0, 16(%rbx)
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 72(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	96(%rbp), %eax
	leaq	64(%rbp), %rsi
	leaq	64(%rbx), %rdi
	movdqu	80(%rbp), %xmm0
	movups	%xmm0, 80(%rbx)
	movl	%eax, 96(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$112, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$112, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	32(%rbp), %rsi
	movq	40(%rbp), %rdx
	leaq	48(%rbx), %rax
	movdqu	16(%rbp), %xmm0
	leaq	32(%rbx), %rdi
	movq	%rax, 32(%rbx)
	addq	%rsi, %rdx
	movups	%xmm0, 16(%rbx)
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 72(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	96(%rbp), %eax
	leaq	64(%rbp), %rsi
	leaq	64(%rbx), %rdi
	movdqu	80(%rbp), %xmm0
	movups	%xmm0, 80(%rbx)
	movl	%eax, 96(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$112, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$112, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	32(%rbp), %rsi
	movq	40(%rbp), %rdx
	leaq	48(%rbx), %rax
	movdqu	16(%rbp), %xmm0
	leaq	32(%rbx), %rdi
	movq	%rax, 32(%rbx)
	addq	%rsi, %rdx
	movups	%xmm0, 16(%rbx)
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 72(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	96(%rbp), %eax
	leaq	64(%rbp), %rsi
	leaq	64(%rbx), %rdi
	movdqu	80(%rbp), %xmm0
	movups	%xmm0, 80(%rbx)
	movl	%eax, 96(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$112, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	40(%rbp), %rdi
	movdqu	16(%rbp), %xmm0
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movups	%xmm0, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	lock subl	$1, 12(%rdi)
	rep ret
	movq	(%rdi), %rax
	movq	24(%rax), %rdx
	jmp	*8(%rax)
	jmp	*%rdx
	lock subl	$1, 8(%rdi)
	rep ret
	pushq	%rbx
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	call	*16(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	rep ret
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %rbp
	pushq	%rbx
	movq	264(%rdi), %rdi
	testq	%rdi, %rdi
	movq	240(%rbp), %r12
	movq	232(%rbp), %rbx
	cmpq	%rbx, %r12
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	addq	$16, %rbx
	cmpq	%rbx, %r12
	movq	232(%rbp), %rbx
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	movq	200(%rbp), %rax
	testq	%rax, %rax
	testb	$1, %al
	andq	$-2, %rax
	leaq	208(%rbp), %rdi
	movq	(%rax), %rax
	testq	%rax, %rax
	movl	$2, %edx
	movq	%rdi, %rsi
	call	*%rax
	movq	176(%rbp), %rdi
	leaq	176(%rbp), %r12
	cmpq	%rdi, %r12
	movq	(%rdi), %rbx
	cmpq	%rbx, %r12
	movq	%rbx, %rdi
	leaq	88(%rbp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	leaq	128(%rbp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	leaq	48(%rbp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	movq	32(%rbp), %rdi
	testq	%rdi, %rdi
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	popq	%rbx
	popq	%rbp
	popq	%r12
	addq	$16, %rbx
	cmpq	%rbx, %r12
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$272, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$280, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$288, %esi
	popq	%rbx
	pushq	%rbx
	movq	16(%rdi), %rbx
	testq	%rbx, %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$288, %esi
	popq	%rbx
	popq	%rbx
	ret
	movq	(%rdi), %rax
	movq	8(%rax), %rdi
	movq	(%rsi), %rax
	cmpb	$42, (%rdi)
	movq	8(%rax), %rsi
	subq	$8, %rsp
	call	strcmp
	addq	$8, %rsp
	shrl	$31, %eax
	ret
	cmpb	$42, (%rsi)
	cmpq	%rsi, %rdi
	setb	%al
	ret
	pushq	%r14
	pushq	%r13
	movq	%rdi, %r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	24(%rsi), %rbx
	testq	%rbx, %rbx
	leaq	16(%rsi), %r14
	movq	%rdx, %rbp
	movq	%r14, %r12
	movq	%rbx, %r12
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	leaq	32(%rbx), %rdi
	movq	%rbp, %rsi
	testb	%al, %al
	movq	24(%rbx), %rbx
	testq	%rbx, %rbx
	cmpq	%r12, %r14
	leaq	32(%r12), %rsi
	movq	%rbp, %rdi
	testb	%al, %al
	movq	40(%r12), %rax
	movq	%rax, 0(%r13)
	movq	48(%r12), %rax
	testq	%rax, %rax
	movq	%rax, 8(%r13)
	lock addl	$1, 8(%rax)
	popq	%rbx
	movq	%r13, %rax
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	popq	%rbx
	movq	%r13, %rax
	movq	$0, 0(%r13)
	movq	$0, 8(%r13)
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	pushq	%r12
	pushq	%rbp
	movq	%rdx, %rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %r12
	subq	$32, %rsp
	movq	(%rdx), %rax
	movl	%esi, %edx
	movq	%rsp, %rdi
	movq	%rbp, %rsi
	call	*24(%rax)
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rax
	cmpq	%rax, %rdi
	movq	%r12, 16(%rbx)
	movq	%rbp, 24(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movq	%rax, %rbx
	cmpq	%rdx, %rdi
	movq	%rbx, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$4, %esi
	movq	%rax, %rdx
	popq	%rbx
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$3, %esi
	movq	%rax, %rdx
	popq	%rbx
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$4, %esi
	movq	%rax, %rdx
	popq	%rbx
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	popq	%rbx
	popq	%rbx
	ret
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	%rsi, (%rbx)
	movq	$0, 8(%rdi)
	movl	$24, %edi
	movq	8(%rbx), %rdi
	movabsq	$4294967297, %rdx
	movq	%rdx, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	%rax, 8(%rbx)
	testq	%rdi, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rdi
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*24(%rax)
	movq	%rax, %rbp
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbp, %rdi
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$136, %rsp
	leaq	16(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	$-1, 48(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movl	$-1, 96(%rsp)
	movl	$128, 96(%rsp)
	movq	8(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	testb	%al, %al
	movq	%rax, (%rbx)
	testq	%rax, %rax
	movq	%rax, 8(%rbx)
	lock addl	$1, 8(%rax)
	leaq	64(%rsp), %rdi
	leaq	16(%rsp), %rdi
	addq	$136, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	testl	%eax, %eax
	movl	$56, %edi
	movq	72(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movdqa	80(%rsp), %xmm0
	movl	$24, %edi
	leaq	48(%rbp), %r13
	movl	96(%rsp), %eax
	movups	%xmm0, 16(%rbp)
	movq	8(%rsp), %xmm0
	movl	%eax, 32(%rbp)
	movups	%xmm0, 40(%rbp)
	movq	%rax, %r12
	movabsq	$4294967297, %rax
	movq	%rax, 8(%r12)
	movq	%rbp, 16(%r12)
	lock addl	$1, 8(%r12)
	movq	%r12, %rdi
	call	*%rax
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*8(%rax)
	movq	%rax, %rbx
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$136, %rsp
	leaq	16(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	$-1, 48(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movl	$-1, 96(%rsp)
	movl	$128, 96(%rsp)
	movq	8(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	testb	%al, %al
	movq	%rax, (%rbx)
	testq	%rax, %rax
	movq	%rax, 8(%rbx)
	lock addl	$1, 8(%rax)
	leaq	64(%rsp), %rdi
	leaq	16(%rsp), %rdi
	addq	$136, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	testl	%eax, %eax
	movl	$56, %edi
	movq	72(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movdqa	80(%rsp), %xmm0
	movl	$24, %edi
	leaq	48(%rbp), %r13
	movl	96(%rsp), %eax
	movups	%xmm0, 16(%rbp)
	movq	8(%rsp), %xmm0
	movl	%eax, 32(%rbp)
	movups	%xmm0, 40(%rbp)
	movq	%rax, %r12
	movabsq	$4294967297, %rax
	movq	%rax, 8(%r12)
	movq	%rbp, 16(%r12)
	lock addl	$1, 8(%r12)
	movq	%r12, %rdi
	call	*%rax
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdi
	movl	$56, %esi
	movq	%rbp, %rdi
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*8(%rax)
	movq	%rax, %rbx
	movq	8(%rsi), %rax
	pushq	%rbx
	movq	%rdi, %rbx
	movq	(%rsi), %rdx
	testq	%rax, %rax
	lock addl	$1, 8(%rax)
	movq	8(%rbx), %rdi
	movq	%rdx, (%rbx)
	movq	%rax, 8(%rbx)
	testq	%rdi, %rdi
	movq	%rbx, %rax
	popq	%rbx
	ret
	pushq	%r15
	pushq	%r14
	movq	%rdx, %r14
	pushq	%r13
	pushq	%r12
	movq	%rdi, %r15
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbx
	subq	$24, %rsp
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	subq	%rdx, %rax
	subq	%rdx, %rbx
	sarq	$4, %rax
	testq	%rax, %rax
	leaq	(%rax,%rax), %rdx
	movq	$-16, %r12
	cmpq	%rdx, %rax
	movq	%r12, %rdi
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rsi
	leaq	16(%rax), %r13
	movq	%rax, %rbp
	addq	%rax, %r12
	movq	(%r14), %rax
	addq	%rbp, %rbx
	movq	%rax, (%rbx)
	movq	8(%r14), %rax
	testq	%rax, %rax
	movq	%rax, 8(%rbx)
	lock addl	$1, 8(%rax)
	movq	(%r15), %rbx
	cmpq	%rsi, %rbx
	movq	%rbx, %rax
	movq	%rbp, %rdx
	movq	(%rax), %rcx
	movq	$0, 8(%rdx)
	addq	$16, %rax
	addq	$16, %rdx
	movq	%rcx, -16(%rdx)
	movq	-8(%rax), %rcx
	movq	$0, -8(%rax)
	movq	%rcx, -8(%rdx)
	movq	$0, -16(%rax)
	cmpq	%rax, %rsi
	leaq	-16(%rsi), %rax
	movq	8(%r15), %r14
	subq	%rbx, %rax
	andq	$-16, %rax
	cmpq	%rsi, %r14
	leaq	32(%rbp,%rax), %r13
	movq	%rsi, %rax
	movq	%r13, %rdx
	movq	(%rax), %rcx
	movq	$0, (%rax)
	addq	$16, %rax
	addq	$16, %rdx
	movq	%rcx, -16(%rdx)
	movq	-8(%rax), %rcx
	movq	$0, -8(%rax)
	movq	%rcx, -8(%rdx)
	cmpq	%rax, %r14
	movq	%r14, %rax
	subq	%rsi, %rax
	subq	$16, %rax
	andq	$-16, %rax
	cmpq	%r14, %rbx
	leaq	16(%r13,%rax), %r13
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	addq	$16, %rbx
	cmpq	%r14, %rbx
	movq	(%r15), %r14
	testq	%r14, %r14
	movq	%r14, %rdi
	movq	%rbp, (%r15)
	movq	%r13, 8(%r15)
	movq	%r12, 16(%r15)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	addq	$16, %rbx
	cmpq	%r14, %rbx
	movl	$1, %edx
	salq	$4, %rdx
	movq	%rdx, %r12
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rdx
	testq	%rdx, %rdx
	movl	$16, %r13d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	movq	8(%r15), %r14
	cmpq	%r14, %rsi
	testq	%rsi, %rsi
	pushq	%r12
	movq	%rdi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbx
	movq	24(%rbx), %rsi
	movq	%r12, %rdi
	movq	48(%rbx), %rdi
	movq	16(%rbx), %rbp
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	testq	%rbp, %rbp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	rep ret
	subl	$1, 88(%rdi)
	xorl	%eax, %eax
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	56(%rdi), %rdi
	leaq	72(%rbx), %rax
	cmpq	%rax, %rdi
	movq	24(%rbx), %rsi
	leaq	8(%rbx), %rdi
	movq	%rbx, %rdi
	movl	$96, %esi
	movl	$1, %eax
	popq	%rbx
	ret
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	16(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	leaq	48(%rbx), %rax
	leaq	32(%rbx), %rdi
	movdqu	16(%rbp), %xmm0
	movq	%rax, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movq	32(%rbp), %rsi
	movq	40(%rbp), %rdx
	addq	%rsi, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 72(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	96(%rbp), %eax
	movdqu	80(%rbp), %xmm0
	movups	%xmm0, 80(%rbx)
	movl	%eax, 96(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$120, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movl	$-1, 96(%rsp)
	leaq	64(%rsp), %rsi
	leaq	64(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	xorl	%esi, %esi
	subq	$72, %rsp
	testl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movl	%eax, %ebx
	movq	%rsp, %rdi
	movq	%rax, %rbp
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	%ebx, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	pushq	%rbp
	pushq	%rbx
	xorl	%esi, %esi
	movq	%rdi, %rbx
	subq	$72, %rsp
	testl	%eax, %eax
	leaq	40(%rbx), %rdi
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	%eax, %ebp
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movl	%eax, %ebp
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	%ebp, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	%ebp, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	64(%rbp), %rsi
	leaq	64(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$112, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$112, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 72(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	96(%rbp), %eax
	movdqu	80(%rbp), %xmm0
	movups	%xmm0, 80(%rbx)
	movl	%eax, 96(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$120, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movl	$-1, 96(%rsp)
	leaq	64(%rsp), %rsi
	leaq	64(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	cmpb	$0, 8(%rdi)
	movq	%rdi, %rbp
	movq	%rbx, %rdi
	cmpl	$4, %eax
	movb	$0, 8(%rbp)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	$1, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	$1, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	subq	$72, %rsp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movl	%eax, %ebx
	testl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rsp, %rdi
	movq	%rax, %rbp
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	%ebx, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	cmpb	$0, 16(%rbx)
	movq	8(%rdi), %rdi
	movq	(%rbx), %rax
	leaq	48(%rax), %rbp
	movq	%rbp, %rdi
	movq	(%rbx), %rax
	movq	$0, 368(%rax)
	movq	(%rbx), %rax
	movq	$0, 376(%rax)
	movq	%rbp, %rdi
	cmpl	$4, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$64, %rsp
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	cmpb	$0, 8(%rbx)
	movb	$1, 8(%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	$1, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	$35, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	pushq	%rbp
	pushq	%rbx
	leaq	48(%rdi), %rax
	movq	%rdi, %rbx
	subq	$24, %rsp
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	movb	$0, 8(%rsp)
	movzbl	42(%rbx), %ebp
	testb	%bpl, %bpl
	movzbl	40(%rbx), %ebp
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$24, %rsp
	movl	%ebp, %eax
	popq	%rbx
	popq	%rbp
	ret
	movq	(%rbx), %rax
	movb	$0, 42(%rbx)
	movq	56(%rax), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*%rax
	cmpb	$0, 8(%rsp)
	movq	%rax, %rbx
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rdi
	pushq	%rbp
	pushq	%rbx
	leaq	48(%rdi), %rax
	movq	%rdi, %rbx
	subq	$24, %rsp
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	movb	$0, 8(%rsp)
	movzbl	42(%rbx), %ebp
	testb	%bpl, %bpl
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$24, %rsp
	movl	%ebp, %eax
	popq	%rbx
	popq	%rbp
	ret
	movq	(%rbx), %rax
	movb	$0, 42(%rbx)
	movq	56(%rax), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*%rax
	cmpb	$0, 8(%rsp)
	movq	%rax, %rbx
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rdi
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	240(%rdi), %r8
	movq	232(%rdi), %r13
	cmpq	%r8, %r13
	movq	%rdi, %rbx
	movq	%r8, %rdi
	movq	%rsi, 8(%rsp)
	subq	%r13, %rdi
	movq	%rdi, %rax
	sarq	$4, %rax
	testq	%rax, %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rdx, %rax
	movq	240(%rbx), %r8
	movq	232(%rbx), %r13
	movq	%rax, %r12
	cmpq	%r13, %r8
	movq	%r13, %rax
	movq	%r12, %rdx
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rdx)
	lock addl	$1, 8(%rcx)
	addq	$16, %rax
	addq	$16, %rdx
	cmpq	%rax, %r8
	subq	$16, %r8
	movq	240(%rbx), %r15
	subq	%r13, %r8
	movq	232(%rbx), %r13
	andq	$-16, %r8
	leaq	16(%r12,%r8), %rbp
	cmpq	%r13, %r15
	movq	%r13, %r14
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	addq	$16, %r14
	cmpq	%r14, %r15
	movq	8(%rsp), %rdi
	movq	%r13, 240(%rbx)
	cmpq	%r12, %rbp
	movq	%r12, %rbx
	addq	$16, %rbx
	cmpq	%rbx, %rbp
	movq	(%rbx), %rdi
	movq	(%rdi), %rax
	movq	(%rax), %rax
	call	*%rax
	addq	$16, %rbx
	cmpq	%rbx, %rbp
	movq	8(%rsp), %rax
	cmpb	$0, 8(%rax)
	movq	%rax, %rdi
	movq	%r12, %rbx
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	addq	$16, %rbx
	cmpq	%rbp, %rbx
	testq	%r12, %r12
	addq	$24, %rsp
	movq	%r12, %rdi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	addq	$16, %r14
	cmpq	%r15, %r14
	addq	$16, %rbx
	cmpq	%rbp, %rbx
	movq	%rax, %rbp
	movq	8(%rsp), %rax
	cmpb	$0, 8(%rax)
	movq	%rax, %rdi
	xorl	%r12d, %r12d
	movq	%rax, %r13
	movq	%r12, %rbx
	cmpq	%rbp, %rbx
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	addq	$16, %rbx
	testq	%r12, %r12
	movq	%r12, %rdi
	movq	%r13, %rdi
	movq	%rax, %rbx
	movq	8(%rsp), %rax
	cmpb	$0, 8(%rax)
	movq	%rax, %rdi
	movq	%rbx, %r13
	movq	%r12, %rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	240(%rdi), %rax
	cmpq	248(%rdi), %rax
	movq	(%rsi), %rdx
	movq	%rdx, (%rax)
	movq	8(%rsi), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 8(%rax)
	lock addl	$1, 8(%rdx)
	movq	240(%rdi), %rax
	addq	$16, %rax
	movq	%rax, 240(%rbx)
	cmpb	$0, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	addq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%rbp
	leaq	232(%rdi), %rdi
	movq	%rsi, %rdx
	movq	%rax, %rsi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	64(%rbp), %rsi
	leaq	64(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$112, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$112, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	72(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 72(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	96(%rbp), %eax
	movdqu	80(%rbp), %xmm0
	movups	%xmm0, 80(%rbx)
	movl	%eax, 96(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$120, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movl	$-1, 96(%rsp)
	leaq	64(%rsp), %rsi
	leaq	64(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$112, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	64(%rbp), %rsi
	leaq	64(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$112, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$112, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%r15
	pushq	%r14
	movq	%rdx, %r14
	pushq	%r13
	pushq	%r12
	movq	%r8, %rax
	pushq	%rbp
	pushq	%rbx
	subq	%r14, %rax
	leaq	16(%rdi), %r13
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$40, %rsp
	movq	8(%rdi), %rdx
	movq	%rdx, %r12
	addq	%rdx, %rax
	subq	%rsi, %r12
	movq	%rax, 24(%rsp)
	movl	$15, %esi
	subq	%r14, %r12
	cmpq	(%rdi), %r13
	movq	16(%rdi), %rsi
	leaq	24(%rsp), %rdi
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	testq	%rbp, %rbp
	movq	%rax, %r15
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
	cmpq	$1, %rbp
	movq	(%rbx), %rsi
	movzbl	(%rsi), %eax
	movb	%al, (%r15)
	testq	%rcx, %rcx
	testq	%r8, %r8
	cmpq	$1, %r8
	leaq	(%r15,%rbp), %rdi
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	testq	%r12, %r12
	movq	(%rbx), %rdi
	leaq	0(%rbp,%r14), %rsi
	addq	%r8, %rbp
	addq	%rdi, %rsi
	cmpq	$1, %r12
	leaq	(%r15,%rbp), %rdi
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rdi
	cmpq	%rdi, %r13
	movq	24(%rsp), %rax
	movq	%r15, (%rbx)
	movq	%rax, 16(%rbx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	movq	%r12, %rdx
	call	memcpy
	movq	(%rbx), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r8, (%rsp)
	call	memcpy
	movq	(%rsp), %r8
	movq	%rbp, %rdx
	movq	%rax, %rdi
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	memcpy
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
	pushq	%r15
	pushq	%r14
	movabsq	$9223372036854775807, %rax
	pushq	%r13
	pushq	%r12
	addq	%rdx, %rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$24, %rsp
	movq	8(%rdi), %rdi
	subq	%rdi, %rax
	cmpq	%rax, %r8
	movq	(%rbx), %rax
	leaq	16(%rbx), %r9
	movq	%r8, %r13
	subq	%rdx, %r13
	movq	%rdx, %rbp
	movl	$15, %edx
	leaq	(%rdi,%r13), %r12
	cmpq	%r9, %rax
	movq	16(%rbx), %rdx
	cmpq	%r12, %rdx
	movq	%rdi, %r15
	leaq	(%rax,%rsi), %r14
	subq	%rsi, %r15
	subq	%rbp, %r15
	cmpq	%rax, %rcx
	testq	%r15, %r15
	cmpq	%r8, %rbp
	cmpq	$1, %r15
	leaq	(%r14,%rbp), %rsi
	leaq	(%r14,%r8), %rdi
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	testq	%r8, %r8
	cmpq	$1, %r8
	movzbl	(%rcx), %eax
	movb	%al, (%r14)
	movq	(%rbx), %rax
	movq	%r12, 8(%rbx)
	movb	$0, (%rax,%r12)
	addq	$24, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	testq	%r8, %r8
	cmpq	%r8, %rbp
	cmpq	$1, %r8
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	memmove
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
	testq	%r15, %r15
	cmpq	%r8, %rbp
	cmpq	$1, %r15
	leaq	(%r14,%rbp), %rsi
	leaq	(%r14,%r8), %rdi
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	cmpq	%r8, %rbp
	leaq	(%rcx,%r8), %rax
	addq	%r14, %rbp
	cmpq	%rax, %rbp
	cmpq	%rcx, %rbp
	cmpq	$1, %r8
	leaq	(%rcx,%r13), %rsi
	movq	%r8, %rdx
	movq	%r14, %rdi
	call	memcpy
	movq	%rbp, %rdx
	movq	%rbx, %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	call	memcpy
	movq	%r15, %rdx
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	memmove
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
	testq	%r8, %r8
	cmpq	$1, %r8
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	call	memmove
	movq	%r15, %rdx
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	memmove
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
	movzbl	(%rcx), %eax
	movb	%al, (%r14)
	subq	%rcx, %rbp
	cmpq	$1, %rbp
	testq	%rbp, %rbp
	movq	%r8, %rdx
	leaq	(%r14,%r8), %rsi
	leaq	(%r14,%rbp), %rdi
	subq	%rbp, %rdx
	cmpq	$1, %rdx
	testq	%rdx, %rdx
	call	memcpy
	movzbl	(%rcx), %eax
	movb	%al, (%r14)
	movzbl	(%rsi), %eax
	movb	%al, (%r14)
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movq	%r8, (%rsp)
	call	memmove
	movq	(%rsp), %r8
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	leaq	16(%rbx), %r8
	movl	$15, %eax
	subq	$8, %rsp
	movq	8(%rdi), %r9
	movq	(%rdi), %rdi
	cmpq	%r8, %rdi
	leaq	(%rdx,%r9), %rbp
	movq	16(%rbx), %rax
	cmpq	%rax, %rbp
	testq	%rdx, %rdx
	addq	%r9, %rdi
	cmpq	$1, %rdx
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rdi
	movq	%rbp, 8(%rbx)
	movb	$0, (%rdi,%rbp)
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rdx, %r8
	movq	%rsi, %rcx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movq	%r9, %rsi
	movq	(%rbx), %rdi
	call	memcpy
	movq	(%rbx), %rdi
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$48, %rsp
	cmpq	$0, 40(%rdi)
	movq	32(%rbx), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rax, %rdi
	movq	%rax, %r12
	leaq	32(%rbx), %rbp
	call	strlen
	movq	40(%rbx), %rdx
	movq	%rax, %r8
	movq	%r12, %rcx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	40(%rbx), %rax
	testq	%rax, %rax
	movq	24(%rbx), %rsi
	movl	16(%rbx), %edx
	leaq	16(%rsp), %rdi
	movq	(%rsi), %rax
	call	*24(%rax)
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	movabsq	$9223372036854775807, %rdx
	subq	%rax, %rdx
	cmpq	$1, %rdx
	movl	$2, %edx
	movq	%rbp, %rdi
	movq	%rax, %rdi
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rax, %rbp
	cmpq	%rdx, %rdi
	movq	%rbp, %rax
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movdqu	16(%rbp), %xmm0
	movq	40(%rbp), %rdi
	movups	%xmm0, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$88, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	leaq	32(%rsp), %rsi
	leaq	32(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	leaq	48(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$72, %rsp
	leaq	16(%rsp), %rdi
	movq	%rax, 16(%rsp)
	movb	$0, 24(%rsp)
	cmpb	$0, 40(%rbx)
	cmpq	$0, 24(%rbx)
	leaq	24(%rbx), %rdi
	movq	%rbp, %rsi
	movq	16(%rbx), %rax
	movb	$1, 43(%rbx)
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	leaq	8(%rax), %rdx
	movl	8(%rax), %eax
	testl	%eax, %eax
	leal	1(%rax), %ecx
	lock cmpxchgl	%ecx, (%rdx)
	testl	%eax, %eax
	movq	8(%rbx), %rax
	leaq	32(%rsp), %rdi
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	cmpb	$0, 24(%rsp)
	movq	16(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	leaq	32(%rsp), %rdi
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rdi
	movq	%rax, %rbx
	cmpb	$0, 24(%rsp)
	movq	16(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rdi
	leaq	32(%rsp), %rdi
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rax, %rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movdqu	16(%rbp), %xmm0
	movq	40(%rbp), %rdi
	movups	%xmm0, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$88, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	leaq	32(%rsp), %rsi
	leaq	32(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%r14
	pushq	%r13
	movq	%rdi, %r13
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	pushq	%rbx
	movq	16(%rdi), %rbx
	testq	%rbx, %rbx
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	movq	%rdx, %rbx
	leaq	32(%rbx), %rbp
	movq	%r12, %rdi
	movq	%rbp, %rsi
	testb	%al, %al
	movq	24(%rbx), %rdx
	testq	%rdx, %rdx
	testb	%al, %al
	movq	%rbx, %r14
	movq	%r12, %rsi
	movq	%rbp, %rdi
	xorl	%edx, %edx
	testb	%al, %al
	movq	%rbx, %rax
	cmovne	%rdx, %rax
	cmovne	%r14, %rdx
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	leaq	8(%rdi), %rbx
	xorl	%eax, %eax
	cmpq	24(%r13), %rbx
	movq	%rbx, %rdx
	movq	%rbx, %rdi
	movq	%rbx, %r14
	leaq	32(%rax), %rbp
	movq	%rax, %rbx
	pushq	%r13
	leaq	8(%rdi), %rax
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rdx, %r13
	subq	$24, %rsp
	cmpq	%rax, %rsi
	leaq	32(%rsi), %r12
	movq	%rsi, %rbx
	movq	%rdx, %rdi
	movq	%r12, %rsi
	testb	%al, %al
	movq	24(%rbp), %rax
	cmpq	%rbx, %rax
	movq	%rbx, %rdi
	leaq	32(%rax), %rdi
	movq	%r13, %rsi
	movq	%rax, %r12
	testb	%al, %al
	xorl	%eax, %eax
	cmpq	$0, 24(%r12)
	movq	%r12, %rdx
	movq	%rbx, (%rsp)
	movq	(%rsp), %xmm0
	punpcklqdq	%xmm0, %xmm0
	movaps	%xmm0, (%rsp)
	movq	8(%rsp), %rdx
	movq	%xmm0, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movq	%r13, %rsi
	movq	%r12, %rdi
	testb	%al, %al
	movq	32(%rbp), %rdx
	xorl	%eax, %eax
	cmpq	%rbx, %rdx
	movq	%rbx, %rdi
	leaq	32(%rax), %rsi
	movq	%r13, %rdi
	movq	%rax, %r12
	testb	%al, %al
	cmpq	$0, 24(%rbx)
	movq	%r12, (%rsp)
	movq	(%rsp), %xmm2
	punpcklqdq	%xmm2, %xmm2
	movaps	%xmm2, (%rsp)
	movq	%xmm2, %rax
	movq	8(%rsp), %rdx
	cmpq	$0, 40(%rdi)
	movq	32(%rdi), %rbx
	movq	%rdx, %rsi
	leaq	32(%rbx), %rdi
	testb	%al, %al
	addq	$24, %rsp
	movq	%r13, %rsi
	movq	%rbp, %rdi
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	addq	$24, %rsp
	movq	%rbx, %rax
	xorl	%edx, %edx
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	addq	$24, %rsp
	movq	%rbx, %rdx
	xorl	%eax, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movq	%rax, (%rsp)
	movq	(%rsp), %xmm1
	punpcklqdq	%xmm1, %xmm1
	movaps	%xmm1, (%rsp)
	movq	%xmm1, %rax
	movq	8(%rsp), %rdx
	pushq	%r15
	pushq	%r14
	movq	%rsi, %r15
	pushq	%r13
	pushq	%r12
	movq	%rdx, %r14
	pushq	%rbp
	pushq	%rbx
	leaq	16(%rdi), %rbx
	movq	%rdi, %r12
	subq	$24, %rsp
	movq	24(%rdi), %r13
	movq	%rbx, (%rsp)
	testq	%r13, %r13
	movq	(%rdx), %rax
	movq	8(%rax), %rbp
	movq	%r13, %rbx
	movq	16(%r13), %r13
	testq	%r13, %r13
	movq	32(%r13), %rax
	movq	8(%rax), %rdi
	cmpb	$42, (%rdi)
	movq	%rbp, %rsi
	call	strcmp
	shrl	$31, %eax
	testb	%al, %al
	movq	24(%r13), %r13
	testq	%r13, %r13
	cmpq	%rbx, (%rsp)
	leaq	32(%rbx), %rsi
	movq	%r14, %rdi
	testb	%al, %al
	movl	$56, %edi
	movq	%rbx, 8(%rsp)
	movq	%rax, %rbx
	movq	(%r14), %rax
	movq	8(%rsp), %rsi
	leaq	32(%rbx), %rbp
	leaq	8(%r12), %rdi
	movq	$0, 40(%rbx)
	movq	$0, 48(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rbp, %rdx
	testq	%rdx, %rdx
	movq	%rax, %r14
	cmpq	%rdx, (%rsp)
	testq	%rax, %rax
	movl	$1, %edi
	movq	(%rsp), %rcx
	movq	%rbx, %rsi
	addq	$1, 48(%r12)
	movq	8(%r15), %rax
	movq	(%r15), %rdx
	testq	%rax, %rax
	lock addl	$1, 8(%rax)
	movq	48(%rbx), %rdi
	movq	%rdx, 40(%rbx)
	movq	%rax, 48(%rbx)
	testq	%rdi, %rdi
	movq	56(%r12), %rax
	movq	$0, 64(%r12)
	movb	$0, (%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	cmpq	%rbp, %rdi
	setb	%al
	cmpb	$42, 0(%rbp)
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	%r14, %rbx
	leaq	32(%rdx), %rsi
	movq	%rbp, %rdi
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rdx
	movzbl	%al, %edi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movdqu	16(%rbp), %xmm0
	movq	40(%rbp), %rdi
	movups	%xmm0, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	16(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	16(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	16(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	16(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 16(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$56, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$56, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	48(%rbp), %eax
	movdqu	32(%rbp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	%eax, 48(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$72, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	$-1, 48(%rsp)
	leaq	16(%rsp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	200(%rdi), %rax
	testq	%rax, %rax
	cmpb	$0, 40(%rdi)
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbx
	subq	$56, %rsp
	testb	$1, %al
	movq	%rax, 16(%rsp)
	andq	$-2, %rax
	addq	$208, %rdi
	xorl	%edx, %edx
	leaq	24(%rsp), %rsi
	call	*(%rax)
	movq	%rbx, %rdi
	movq	16(%rsp), %rax
	testq	%rax, %rax
	andq	$-2, %rax
	leaq	24(%rsp), %rdi
	call	*8(%rax)
	cmpb	$0, 8(%rbx)
	movq	16(%rsp), %rax
	testq	%rax, %rax
	testb	$1, %al
	andq	$-2, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	leaq	24(%rsp), %rdi
	movl	$2, %edx
	movq	%rdi, %rsi
	call	*%rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	rep ret
	movq	%rbx, %rdi
	movq	224(%rdi), %rax
	movdqu	208(%rdi), %xmm0
	movq	%rax, 40(%rsp)
	movups	%xmm0, 24(%rsp)
	movq	%rsp, %rdi
	movq	%rsp, %rdi
	movq	%rsp, %rdi
	movq	%rax, %rbp
	cmpb	$0, 8(%rbx)
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	movq	16(%rsp), %rax
	testq	%rax, %rax
	testb	$1, %al
	andq	$-2, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	leaq	24(%rsp), %rsi
	movl	$2, %edx
	movq	%rsi, %rdi
	call	*%rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rax, %rbx
	pushq	%r15
	pushq	%r14
	movl	%edx, %r15d
	pushq	%r13
	pushq	%r12
	movq	%rdi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %r14
	subq	$88, %rsp
	cmpb	$0, 42(%r12)
	cmpb	$0, 40(%r12)
	leaq	88(%r12), %rbp
	leaq	128(%r12), %r13
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	movq	8(%rsp), %xmm0
	movq	%rbp, 8(%rsp)
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	cmpb	$0, 432(%rax)
	leaq	48(%rax), %rbx
	movb	$1, 32(%rsp)
	movq	%rbx, %rdi
	movq	16(%rsp), %rax
	cmpb	$0, 433(%rax)
	movq	%rbp, 368(%rax)
	movq	%r13, 376(%rax)
	movq	24(%rsp), %rdi
	movq	%rbx, %rdi
	cmpl	$4, %eax
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	16(%rsp), %rdi
	movl	%eax, %ebx
	movq	%r14, %rdi
	testl	$-5, %ebx
	leaq	16(%rsp), %rdi
	movq	%rax, %rbp
	leaq	64(%rsp), %rax
	leaq	16(%rsp), %rdi
	movl	%ebx, 32(%rsp)
	movq	%rbp, 40(%rsp)
	movq	$0, 56(%rsp)
	movq	%rax, 48(%rsp)
	movb	$0, 64(%rsp)
	movq	%rbp, %rdi
	movb	$0, 32(%rsp)
	testb	%r15b, %r15b
	movq	24(%r12), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	call	abort
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	movq	(%r12), %rax
	movb	$0, 42(%r12)
	movq	56(%rax), %rax
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	*%rax
	leaq	16(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movl	$1, %edi
	movb	$0, 433(%rax)
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	cmpl	$4, %eax
	movq	%rbp, %rdi
	movq	%rax, %rbx
	leaq	16(%rsp), %rdi
	testq	%r14, %r14
	movq	%r14, %rdi
	movq	%rax, %rbx
	xorl	%r14d, %r14d
	movzbl	%dl, %edx
	pushq	%rbx
	movl	$1, %edx
	movq	%rdi, %rbx
	leaq	276(%rbx), %rax
	popq	%rbx
	ret
	pushq	%rbx
	movl	$1, %edx
	movq	%rdi, %rbx
	movl	276(%rbx), %eax
	popq	%rbx
	ret
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$64, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$64, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movdqu	16(%rbp), %xmm0
	movq	40(%rbp), %rdi
	movups	%xmm0, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$88, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	leaq	32(%rsp), %rsi
	leaq	32(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	(%rdi), %rax
	testq	%rax, %rax
	addq	$48, %rax
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	movb	$0, 8(%rsp)
	movq	(%rbx), %rbx
	cmpb	$0, 41(%rbx)
	movq	(%rbx), %rax
	movq	64(%rax), %rax
	movl	$1, %edx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movl	276(%rbx), %ebp
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$56, %rsp
	movl	%ebp, %eax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	call	*%rax
	movl	%eax, %ebp
	leaq	16(%rsp), %rdi
	leaq	16(%rsp), %rdi
	leaq	16(%rsp), %rdi
	movq	%rax, %rbx
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rdi
	leaq	16(%rsp), %rdi
	leaq	16(%rsp), %rdi
	leaq	16(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbx
	movq	%rsi, %rbx
	subq	$16, %rsp
	movq	8(%rdi), %rax
	testq	%rax, %rax
	movq	8(%rax), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 8(%rdi)
	cmpq	24(%rdx), %rax
	movq	$0, 16(%rdx)
	movq	48(%rax), %rdi
	testq	%rdi, %rdi
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rdx, 32(%rax)
	movq	8(%rbx), %rdx
	movq	%rdx, 40(%rax)
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 48(%rax)
	lock addl	$1, 8(%rdx)
	addq	$16, %rsp
	popq	%rbx
	ret
	movl	$56, %edi
	movq	$0, (%rdi)
	movq	$0, 24(%rdx)
	movq	16(%rdx), %rdx
	testq	%rdx, %rdx
	movq	24(%rdx), %rcx
	movq	%rdx, 8(%rdi)
	testq	%rcx, %rcx
	movq	%rdx, %rcx
	movq	24(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rcx, 8(%rdi)
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 8(%rdi)
	movq	%rdx, %rcx
	pushq	%r15
	pushq	%r14
	movq	%rdi, %r15
	pushq	%r13
	pushq	%r12
	movq	%rcx, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbx
	addq	$32, %rsi
	movq	%rdx, %rbp
	movq	%rcx, %r14
	subq	$8, %rsp
	movq	%rax, %r13
	movl	(%rbx), %eax
	movq	$0, 16(%r13)
	movq	$0, 24(%r13)
	movq	%rbp, 8(%r13)
	movl	%eax, 0(%r13)
	movq	24(%rbx), %rsi
	testq	%rsi, %rsi
	movq	16(%rbx), %rbp
	testq	%rbp, %rbp
	movq	%r13, %r12
	leaq	32(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rax, %rbx
	movl	0(%rbp), %eax
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movl	%eax, (%rbx)
	movq	%rbx, 16(%r12)
	movq	%r12, 8(%rbx)
	movq	24(%rbp), %rsi
	testq	%rsi, %rsi
	movq	16(%rbp), %rbp
	movq	%rbx, %r12
	testq	%rbp, %rbp
	addq	$8, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movq	%r15, %rdi
	movq	%rax, 24(%rbx)
	movq	%r14, %rcx
	movq	%r13, %rdx
	movq	%r15, %rdi
	movq	%rax, 24(%r13)
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	subq	$40, %rsp
	movq	$0, (%rdi)
	movl	$96, %edi
	leaq	16(%rax), %r13
	movq	0(%rbp), %rdi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	leaq	72(%rax), %rax
	movq	$0, -48(%rax)
	movq	%r13, -40(%rax)
	movq	%r13, -32(%rax)
	movq	$0, -24(%rax)
	testq	%rdi, %rdi
	movq	%rax, 56(%rbx)
	movq	$0, 64(%rbx)
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movq	%rbx, 0(%rbp)
	addl	$1, 88(%rbx)
	leaq	8(%rbx), %rdi
	leaq	8(%r12), %rax
	cmpq	%rax, %rdi
	movq	24(%rbx), %rax
	movq	40(%rbx), %rdx
	movq	%rdi, 16(%rsp)
	testq	%rax, %rax
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	16(%rdx), %rdx
	movq	$0, 8(%rax)
	testq	%rdx, %rdx
	movq	%rdx, 8(%rsp)
	movq	24(%r12), %rsi
	movq	$0, 24(%rbx)
	movq	%r13, 32(%rbx)
	movq	%r13, 40(%rbx)
	movq	$0, 48(%rbx)
	testq	%rsi, %rsi
	movq	%rsp, %rcx
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rdx, %rcx
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rcx, 32(%rbx)
	movq	%rax, %rcx
	movq	%rdx, %rcx
	movq	24(%rcx), %rdx
	testq	%rdx, %rdx
	movq	48(%r12), %rdx
	movq	%rax, 24(%rbx)
	movq	16(%rsp), %rdi
	movq	(%rsp), %rax
	movq	%rcx, 40(%rbx)
	movq	%rdx, 48(%rbx)
	movq	%rax, %rsi
	addq	$40, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movq	%rbx, 0(%rbp)
	movq	$0, 8(%rsp)
	movq	%rbx, %rdi
	call	*%rax
	movq	%rax, %rbx
	movq	0(%rbp), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	movq	(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	%rax, %rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	subq	$8, %rsp
	movq	%rsi, (%rbx)
	movq	$0, 8(%rdi)
	movl	$24, %edi
	movq	8(%rbx), %rdi
	movabsq	$4294967297, %rdx
	movq	%rdx, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	%rax, 8(%rbx)
	testq	%rdi, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rdi
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*16(%rax)
	movq	%rax, %rbp
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	8(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	8(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 8(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 8(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	40(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	40(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 40(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 40(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	24(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 24(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 24(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	16(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 16(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 16(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	16(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 16(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 16(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	16(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 16(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 16(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	movl	$16, %edi
	subq	$56, %rsp
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	leaq	8(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	call	*%rcx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$56, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movl	$96, %edi
	movq	%rax, %rbx
	movl	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	16(%rbp), %rdi
	leaq	16(%rax), %rax
	movq	$0, 48(%rbx)
	movq	$0, 64(%rbx)
	movq	%rax, 32(%rbx)
	movq	%rax, 40(%rbx)
	leaq	72(%rbx), %rax
	testq	%rdi, %rdi
	movb	$0, 72(%rbx)
	movl	$0, 88(%rbx)
	movq	%rax, 56(%rbx)
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	(%rbx), %rax
	movq	24(%rax), %rdx
	movq	%rbx, 16(%rbp)
	addl	$1, 88(%rbx)
	movq	%rbx, 16(%rbp)
	movq	%rbx, %rdi
	call	*%rdx
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	pushq	%rbx
	movq	%rdi, %rbp
	movq	$-2, %rcx
	movq	%r12, %rdi
	subq	$80, %rsp
	testq	%rax, %rax
	movq	8(%rax), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbx), %rax
	leaq	16(%rsp), %rsi
	movq	8(%rsp), %xmm0
	movq	%rax, 56(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 64(%rsp)
	movl	32(%rbx), %eax
	leaq	32(%rsp), %rbx
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rdi
	movl	%eax, 72(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	addq	$80, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	pxor	%xmm0, %xmm0
	movq	(%r12), %rax
	leaq	32(%rsp), %rbx
	leaq	16(%rsp), %rsi
	movq	$0, 64(%rsp)
	movl	$-1, 72(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	-8(%rax), %rax
	movq	%rbx, %rdi
	movq	8(%rsp), %xmm0
	movq	%rax, 24(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%rax
	leaq	32(%rsp), %rbx
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$48, %rsp
	movq	%rax, %rdi
	leaq	-1(%rdx), %rax
	cmpq	$16, %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	$-1, 32(%rsp)
	movq	%rsp, %rdi
	addq	$48, %rsp
	movq	%rbx, %rax
	popq	%rbx
	ret
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	(%rax), %rdx
	movq	%rax, %rdi
	call	*(%rdx)
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	testq	%rax, %rax
	movups	%xmm0, (%rbx)
	lock addl	$1, 8(%rax)
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$24, %rsp
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	%rsp, %rdi
	movq	8(%rbx), %rdi
	pxor	%xmm1, %xmm1
	movdqa	(%rsp), %xmm0
	testq	%rdi, %rdi
	movaps	%xmm1, (%rsp)
	movups	%xmm0, (%rbx)
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	addq	$24, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	subq	$1, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movq	8(%rbx), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	%rbp, %rdi
	pushq	%r13
	pushq	%r12
	leaq	48(%rdi), %rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r12
	subq	$40, %rsp
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	movb	$0, 8(%rsp)
	leaq	16(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	88(%r12), %rbx
	leaq	24(%r12), %rdi
	leaq	176(%r12), %r13
	movq	%rbx, %rdi
	movb	$1, 40(%r12)
	leaq	128(%r12), %rdi
	movq	%rbx, %rdi
	movq	176(%r12), %rbx
	cmpq	%r13, %rbx
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	leaq	40(%rbp), %rdi
	movq	%rbp, %rdi
	movq	(%rbx), %rbx
	cmpq	%rbx, %r13
	movq	%rsp, %rsi
	movq	%r12, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movq	%rax, %rbx
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rdi
	movq	24(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	pushq	%r13
	pushq	%r12
	leaq	48(%rdi), %rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r12
	subq	$24, %rsp
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	movb	$0, 8(%rsp)
	cmpb	$0, 272(%r12)
	movb	$1, 272(%r12)
	leaq	88(%r12), %rbx
	movl	$123, 276(%r12)
	movb	$1, 40(%r12)
	leaq	176(%r12), %r13
	movq	%rbx, %rdi
	leaq	128(%r12), %rdi
	movq	%rbx, %rdi
	movq	176(%r12), %rbx
	cmpq	%r13, %rbx
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	leaq	40(%rbp), %rdi
	movq	%rbp, %rdi
	movq	(%rbx), %rbx
	cmpq	%rbx, %r13
	movq	%rsp, %rsi
	movq	%r12, %rdi
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movq	%rax, %rdi
	movq	%r12, %rdi
	cmpb	$0, 8(%rsp)
	movq	%rax, %rbx
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rax
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rdi, %r13
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	$-2, %rcx
	subq	$104, %rsp
	movq	%rbp, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %r12
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	8(%r12), %rdi
	movdqu	16(%rbp), %xmm0
	testq	%rdi, %rdi
	movq	%rdi, 56(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 64(%rsp)
	movq	24(%r12), %rax
	movq	%rax, 72(%rsp)
	movl	32(%r12), %eax
	movl	%eax, 80(%rsp)
	movq	0(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$104, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	0(%rbp), %rax
	movq	%rsp, %rsi
	movdqu	16(%rbp), %xmm0
	movq	%rbx, %rdi
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	-8(%rax), %rax
	movq	$0, 72(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	$-1, 80(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	56(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	56(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$64, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	16(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rsi, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	$-2, %rcx
	subq	$88, %rsp
	movq	%r12, %rdi
	testq	%rax, %rax
	leaq	16(%rsp), %rbx
	movq	%rax, %rbp
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
	movq	24(%rbp), %rax
	movq	%rax, 56(%rsp)
	movl	32(%rbp), %eax
	movl	%eax, 64(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdi
	addq	$88, %rsp
	movq	%r13, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	16(%rsp), %rbx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	%rbx, %rdi
	call	*%rax
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	pushq	%rbx
	movq	%rdi, %rbp
	movq	$-2, %rcx
	movq	%r12, %rdi
	subq	$80, %rsp
	testq	%rax, %rax
	movq	8(%rax), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbx), %rax
	leaq	16(%rsp), %rsi
	movq	8(%rsp), %xmm0
	movq	%rax, 56(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 64(%rsp)
	movl	32(%rbx), %eax
	leaq	32(%rsp), %rbx
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rdi
	movl	%eax, 72(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	addq	$80, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	pxor	%xmm0, %xmm0
	movq	(%r12), %rax
	leaq	32(%rsp), %rbx
	leaq	16(%rsp), %rsi
	movq	$0, 64(%rsp)
	movl	$-1, 72(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	-8(%rax), %rax
	movq	%rbx, %rdi
	movq	8(%rsp), %xmm0
	movq	%rax, 24(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%rax
	leaq	32(%rsp), %rbx
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	%rbx, %rdi
	call	*%rax
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	pushq	%rbx
	movq	%rdi, %rbp
	movq	$-2, %rcx
	movq	%r12, %rdi
	subq	$80, %rsp
	testq	%rax, %rax
	movq	8(%rax), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbx), %rax
	leaq	16(%rsp), %rsi
	movq	8(%rsp), %xmm0
	movq	%rax, 56(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 64(%rsp)
	movl	32(%rbx), %eax
	leaq	32(%rsp), %rbx
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rdi
	movl	%eax, 72(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	addq	$80, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	pxor	%xmm0, %xmm0
	movq	(%r12), %rax
	leaq	32(%rsp), %rbx
	leaq	16(%rsp), %rsi
	movq	$0, 64(%rsp)
	movl	$-1, 72(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	-8(%rax), %rax
	movq	%rbx, %rdi
	movq	8(%rsp), %xmm0
	movq	%rax, 24(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%rax
	leaq	32(%rsp), %rbx
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	%rbx, %rdi
	call	*%rax
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r12
	pushq	%rbp
	movq	%rsi, %r12
	pushq	%rbx
	movq	%rdi, %rbp
	movq	$-2, %rcx
	movq	%r12, %rdi
	subq	$80, %rsp
	testq	%rax, %rax
	movq	8(%rax), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 48(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbx), %rax
	leaq	16(%rsp), %rsi
	movq	8(%rsp), %xmm0
	movq	%rax, 56(%rsp)
	movq	24(%rbx), %rax
	movq	%rax, 64(%rsp)
	movl	32(%rbx), %eax
	leaq	32(%rsp), %rbx
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rdi
	movl	%eax, 72(%rsp)
	movq	(%r12), %rax
	movq	-8(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	addq	$80, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	pxor	%xmm0, %xmm0
	movq	(%r12), %rax
	leaq	32(%rsp), %rbx
	leaq	16(%rsp), %rsi
	movq	$0, 64(%rsp)
	movl	$-1, 72(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	-8(%rax), %rax
	movq	%rbx, %rdi
	movq	8(%rsp), %xmm0
	movq	%rax, 24(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%rax
	leaq	32(%rsp), %rbx
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	48(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$56, %edi
	movq	16(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 16(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	24(%rbp), %rax
	leaq	8(%rbp), %rsi
	leaq	8(%rbx), %rdi
	movq	%rax, 24(%rbx)
	movq	32(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	40(%rbp), %eax
	movl	%eax, 40(%rbx)
	movq	%rbx, %rdi
	call	*%rax
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %r12
	pushq	%rbx
	movq	%rsi, %rbp
	movl	$56, %edi
	movq	8(%rbp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rdi, 8(%rax)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movq	16(%rbp), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rbx)
	movq	24(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbp), %eax
	movl	%eax, 32(%rbx)
	movq	%rbx, %rdi
	call	*%rax
	movq	%rax, %rdi
	movq	%r12, %rdi
	movq	%r12, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rax
	movq	%rax, %rbp
	movq	%rax, %rbx
	movq	%rbx, %rdi
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$80, %rsp
	movq	8(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	32(%rsi), %eax
	leaq	32(%rsp), %rdi
	movdqu	16(%rsi), %xmm0
	movl	%eax, 64(%rsp)
	movq	(%rsi), %rax
	leaq	16(%rsp), %rsi
	movaps	%xmm0, 48(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 24(%rsp)
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	32(%rsp), %rdi
	addq	$80, %rsp
	movq	%rbx, %rax
	popq	%rbx
	ret
	movq	%rsi, 8(%rsp)
	call	*%rax
	movq	8(%rsp), %rsi
	leaq	72(%rsp), %rdi
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	leaq	32(%rsp), %rdi
	movq	%rax, %rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	$-2, %rcx
	subq	$72, %rsp
	movq	%rbp, %rdi
	testq	%rax, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	addq	$72, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	0(%rbp), %rax
	leaq	16(%rsp), %rdi
	movq	%rsp, %rsi
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	$-1, 48(%rsp)
	movq	-8(%rax), %rax
	movq	%rax, 8(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	16(%rsp), %rdi
	addq	$72, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	leaq	56(%rsp), %rdi
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*32(%rax)
	movq	%rbx, %rdi
	leaq	16(%rsp), %rdi
	movq	%rax, %rbx
	pushq	%r13
	pushq	%r12
	leaq	48(%rdi), %rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$72, %rsp
	movq	%rsp, %rdi
	movq	%rax, (%rsp)
	movb	$0, 8(%rsp)
	cmpb	$0, 280(%rbx)
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movb	$1, 280(%rbx)
	leaq	32(%rsp), %rdi
	movl	$1, %esi
	movq	%rax, %rdx
	movl	$40, %edi
	leaq	32(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	movdqa	48(%rsp), %xmm0
	movups	%xmm0, 16(%rbp)
	movq	%rbp, %rdi
	movq	%rax, %rdi
	leaq	16(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	88(%rbx), %rbp
	leaq	24(%rbx), %rdi
	leaq	176(%rbx), %r13
	movq	%rbp, %rdi
	movb	$1, 40(%rbx)
	leaq	128(%rbx), %rdi
	movq	%rbp, %rdi
	movq	176(%rbx), %rbp
	cmpq	%rbp, %r13
	movq	16(%rbp), %r12
	movq	%r12, %rdi
	leaq	40(%r12), %rdi
	movq	%r12, %rdi
	movq	0(%rbp), %rbp
	movq	%rax, %rbx
	cmpb	$0, 8(%rsp)
	movq	(%rsp), %rbp
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	%rbx, %rdi
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	leaq	32(%rsp), %rdi
	movq	24(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	leaq	32(%rsp), %rdi
	movq	%rax, %rbx
	movq	%rax, %rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	popq	%rbx
	popq	%rbx
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	440(%rdi), %rdi
	testq	%rdi, %rdi
	movq	448(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	440(%rdi), %rdi
	testq	%rdi, %rdi
	movq	448(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	movl	$464, %esi
	popq	%rbx
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	movq	%rdi, %rbp
	pushq	%rbx
	movl	$464, %edi
	subq	$64, %rsp
	movzbl	16(%rsi), %eax
	movb	$0, 16(%rsi)
	movb	%al, 16(%rsp)
	movq	(%rsi), %rax
	movq	$0, (%rsi)
	movq	%rax, (%rsp)
	movq	8(%rsi), %rax
	movq	$0, 8(%rsi)
	movq	%rax, 8(%rsp)
	leaq	48(%rax), %r12
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %rbx
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	movq	%r12, %rdi
	leaq	88(%rbx), %r13
	movq	%r13, %rdi
	leaq	176(%rbx), %r14
	movq	%r14, %rdi
	leaq	216(%rbx), %rdi
	leaq	328(%rbx), %rax
	pxor	%xmm0, %xmm0
	movb	$0, 304(%rbx)
	movb	$0, 305(%rbx)
	movl	$24, %edi
	movq	%rax, 344(%rbx)
	movq	%rax, 352(%rbx)
	movzbl	16(%rsp), %eax
	movb	$0, 306(%rbx)
	movq	$0, 312(%rbx)
	movl	$0, 328(%rbx)
	movq	$0, 336(%rbx)
	movq	$0, 360(%rbx)
	movq	$0, 368(%rbx)
	movq	$0, 376(%rbx)
	movb	%al, 456(%rbx)
	movq	(%rsp), %rax
	movq	$0, 384(%rbx)
	movq	$0, 392(%rbx)
	movq	$0, 400(%rbx)
	movq	$0, 408(%rbx)
	movq	%rax, 440(%rbx)
	movq	8(%rsp), %rax
	movq	$0, 416(%rbx)
	movq	$0, 424(%rbx)
	movb	$1, 432(%rbx)
	movb	$0, 433(%rbx)
	movq	%rax, 448(%rbx)
	movq	%rbx, 0(%rbp)
	movq	$0, 8(%rbp)
	movaps	%xmm0, (%rsp)
	movb	$0, 16(%rsp)
	movabsq	$4294967297, %rdx
	movq	8(%rbp), %rdi
	movq	%rdx, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rax, 8(%rbp)
	testq	%rdi, %rdi
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	movl	8(%rdi), %eax
	testl	%eax, %eax
	movq	8(%rbp), %r12
	testq	%r12, %r12
	lock addl	$1, 8(%r12)
	cmpq	16(%rbx), %r12
	movq	%rbx, 8(%rbx)
	lock addl	$1, 12(%r12)
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%r12, 16(%rbx)
	movq	%r12, %rdi
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rbp, %rdi
	testb	%al, %al
	addq	$64, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	testq	%rdi, %rdi
	movq	%rbx, 8(%rbx)
	testq	%r12, %r12
	movq	%r12, 16(%rbx)
	movq	%rsp, %rdi
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsp, %rdi
	movl	$11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, 48(%rsp)
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	%rax, %rbp
	movq	%r14, %rdi
	cmpl	$4, %eax
	movq	%rax, %rbp
	movq	%r13, %rdi
	cmpl	$4, %eax
	leaq	128(%rbx), %r13
	movq	%r13, %rdi
	cmpl	$4, %eax
	movq	%rax, %rbp
	movq	%r12, %rdi
	cmpl	$4, %eax
	movq	%rax, %rdi
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*8(%rax)
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movl	$464, %esi
	movq	%rbp, %rbx
	movq	%rax, %rbx
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	pushq	%r13
	pushq	%r12
	leaq	48(%rdi), %rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$72, %rsp
	leaq	16(%rsp), %rdi
	movq	%rax, 16(%rsp)
	movb	$0, 24(%rsp)
	cmpb	$0, 40(%rbx)
	cmpq	$0, 24(%rbx)
	cmpb	$0, 272(%rbx)
	movb	$1, 272(%rbx)
	movq	16(%rbx), %rax
	movl	$123, 276(%rbx)
	movb	$1, 43(%rbx)
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	leaq	8(%rax), %rdx
	movl	8(%rax), %eax
	testl	%eax, %eax
	leal	1(%rax), %ecx
	lock cmpxchgl	%ecx, (%rdx)
	testl	%eax, %eax
	movq	8(%rbx), %rax
	leaq	32(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	cmpb	$0, 24(%rsp)
	movq	16(%rsp), %rbx
	movq	%rbx, %rdi
	cmpl	$4, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	leaq	32(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbp, %rdi
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rbp
	movq	%rax, %r12
	cmpb	$0, 24(%rsp)
	movq	16(%rsp), %r13
	movq	%r13, %rdi
	cmpl	$4, %eax
	movq	%r12, %rax
	movq	%rbp, %rdi
	movq	%rax, %r12
	leaq	32(%rsp), %rbp
	movq	%rax, %rdi
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	movq	%rax, %r12
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movdqu	16(%rbp), %xmm0
	movq	40(%rbp), %rdi
	movups	%xmm0, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$88, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	leaq	32(%rsp), %rsi
	leaq	32(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	cmpb	$0, 16(%rsi)
	movq	8(%rsi), %rbx
	movq	%rdi, %rbp
	movb	$1, 16(%rsi)
	testq	%rbx, %rbx
	leaq	8(%rbx), %rax
	lock addl	$1, (%rax)
	lock addl	$1, (%rax)
	movq	%rdx, (%rdi)
	movq	%rbx, 8(%rdi)
	lock addl	$1, (%rax)
	movq	%rbx, %rdi
	movq	%rbx, %rdi
	addq	$40, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rdx, (%rdi)
	movq	$0, 8(%rdi)
	addq	$40, %rsp
	movq	%rbp, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rsp, %rdi
	movl	$2, %esi
	movq	%rax, %rdx
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rsp, %rdi
	movq	%rsp, %rdi
	pushq	%r12
	pushq	%rbp
	movl	$288, %edi
	pushq	%rbx
	subq	$80, %rsp
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	48(%rax), %rbp
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %rbx
	movq	$0, 32(%rax)
	movb	$0, 40(%rax)
	movq	%rbp, %rdi
	movb	$1, 41(%rax)
	movb	$0, 42(%rax)
	movb	$0, 43(%rax)
	movl	$0, 44(%rax)
	leaq	88(%rbx), %rdi
	leaq	176(%rbx), %rax
	movq	$0, 192(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 232(%rbx)
	movq	$0, 240(%rbx)
	movl	$24, %edi
	movq	%rax, 176(%rbx)
	movq	%rax, 184(%rbx)
	movq	$0, 248(%rbx)
	movq	$0, 256(%rbx)
	movq	$0, 264(%rbx)
	movb	$0, 272(%rbx)
	movb	$0, 280(%rbx)
	movq	%rax, %rbp
	movabsq	$4294967297, %rax
	movq	%rax, 8(%rbp)
	movq	16(%rbx), %rax
	movq	%rbx, 16(%rbp)
	testq	%rax, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	lock addl	$1, 8(%rbp)
	cmpq	16(%rbx), %rbp
	movq	%rbx, 8(%rbx)
	movq	%rbp, %rdi
	movq	%rbx, 8(%rsp)
	movq	56(%rsp), %rdi
	movq	8(%rsp), %xmm0
	movq	%rbp, 8(%rsp)
	movhps	8(%rsp), %xmm0
	testq	%rdi, %rdi
	movaps	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movb	$0, 64(%rsp)
	movq	16(%rsp), %rax
	leaq	48(%rsp), %rsi
	leaq	32(%rsp), %rdi
	movb	$0, 42(%rax)
	movl	$1, 44(%rax)
	leaq	32(%rsp), %rdi
	leaq	32(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	lock addl	$1, 8(%rax)
	movq	24(%rsp), %rdi
	pxor	%xmm0, %xmm0
	testq	%rdi, %rdi
	movaps	%xmm0, 16(%rsp)
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rdi
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	movl	%eax, 8(%rsp)
	movl	8(%rsp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
	lock addl	$1, 12(%rbp)
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbp, 16(%rbx)
	movq	%rax, %rbx
	leaq	48(%rsp), %rdi
	movq	%rbx, %rdi
	movq	%rax, %rdi
	movq	%rbx, %rdi
	movl	$288, %esi
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rax, %r12
	movq	%rbp, %rdi
	cmpl	$4, %eax
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	movq	%rbx, %rdi
	movl	$288, %esi
	movq	%r12, %rbx
	movq	%rax, %rbx
	movq	%rax, %r12
	movq	40(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	leaq	32(%rsp), %rdi
	movq	%rax, %rbx
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%rax, %rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	movdqu	16(%rbp), %xmm0
	movq	40(%rbp), %rdi
	movups	%xmm0, 16(%rbx)
	testq	%rdi, %rdi
	movq	%rdi, 40(%rbx)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	addl	$1, 88(%rdi)
	movl	64(%rbp), %eax
	movdqu	48(%rbp), %xmm0
	movups	%xmm0, 48(%rbx)
	movl	%eax, 64(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	call	*%rax
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$88, %rsp
	movq	%rbp, %rsi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movdqu	16(%rbp), %xmm0
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	leaq	32(%rsp), %rsi
	leaq	32(%rbx), %rdi
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	440(%rdi), %rbp
	testq	%rbp, %rbp
	leaq	48(%rbp), %rbx
	movq	%rbx, %rdi
	cmpb	$0, 280(%rbp)
	movb	$1, 280(%rbp)
	movq	%rbx, %rdi
	cmpl	$4, %eax
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*80(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rsp, %rdi
	movq	%rsp, %rdi
	movq	%rax, %rbx
	movq	%rsp, %rdi
	movq	%rbx, %rdi
	movl	$3, %esi
	movq	%rax, %rdx
	movq	%rsp, %rdi
	movq	%rsp, %rdi
	movq	%rsp, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	cmpl	$4, %eax
	movq	%rbp, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	movl	$80, %edi
	subq	$8, %rsp
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	leaq	32(%rbp), %rsi
	leaq	32(%rbx), %rdi
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	addq	$8, %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	ret
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movl	$80, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	pushq	%rbp
	pushq	%rbx
	subq	$8, %rsp
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$80, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	subq	$8, %rsp
	addq	$8, %rsp
	ret
	popq	%rax
