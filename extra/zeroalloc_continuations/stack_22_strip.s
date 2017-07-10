	rep ret
	xorl	%eax, %eax
	ret
	movq	%fs:(%rax), %rax
	movq	16(%rax), %rdx
	movq	(%rax), %rcx
	movq	(%rdx), %rsi
	movq	24(%rax), %rdx
	movq	8(%rax), %rax
	movq	8(%rcx), %rdi
	movq	(%rdx), %rdx
	addq	(%rax), %rdi
	movq	(%rcx), %rax
	testb	$1, %al
	movq	(%rdi), %rcx
	movq	-1(%rcx,%rax), %rax
	jmp	*%rax
	movq	(%rdi), %rax
	jmp	*(%rax)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	jmp	*(%rax)
	rep ret
	movq	(%rsi), %rdx
	movq	%rdi, %rax
	movq	(%rdx), %rdx
	movl	$23, 16(%rdx)
	movb	$1, 20(%rdx)
	movq	(%rsi), %rdx
	movq	(%rdx), %rcx
	movq	$0, (%rdx)
	movq	%rcx, (%rdi)
	ret
	cmpl	$1, %edx
	cmpl	$2, %edx
	movdqu	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	xorl	%eax, %eax
	ret
	xorl	%eax, %eax
	ret
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	rep ret
	rep ret
	movl	$1, %eax
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	8(%rsi), %rdi
	cmpb	$42, (%rdi)
	call	strcmp
	testl	%eax, %eax
	leaq	16(%rbx), %rax
	popq	%rbx
	ret
	xorl	%eax, %eax
	popq	%rbx
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	8(%rsi), %rdi
	cmpb	$42, (%rdi)
	call	strcmp
	testl	%eax, %eax
	leaq	16(%rbx), %rax
	popq	%rbx
	ret
	xorl	%eax, %eax
	popq	%rbx
	ret
	subq	$72, %rsp
	leaq	32(%rdi), %rax
	addq	$40, %rdi
	leaq	32(%rsp), %rcx
	leaq	48(%rsp), %rdx
	movq	%rax, 24(%rsp)
	leaq	24(%rsp), %rax
	movq	$0, 40(%rsp)
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	movq	%rdx, %fs:(%rax)
	testq	%rax, %rax
	testl	%eax, %eax
	addq	$72, %rsp
	ret
	orl	$-1, %eax
	movl	%eax, %edi
	movl	$96, %esi
	movl	$80, %esi
	pushq	%rbx
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*(%rax)
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$24, %esi
	popq	%rbx
	cmpq	$0, 32(%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	jmp	*(%rax)
	rep ret
	subq	$8, %rsp
	pushq	%rbp
	pushq	%rbx
	subq	$24, %rsp
	cmpq	$0, 16(%rsi)
	movq	%rdi, %rbx
	movq	%rdx, %rbp
	leaq	8(%rsp), %rdi
	call	*24(%rsi)
	movq	8(%rbx), %rdi
	movq	8(%rsp), %rax
	movb	$1, 0(%rbp)
	testq	%rdi, %rdi
	movq	%rax, 8(%rbx)
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	call	*(%rax)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$16, %esi
	popq	%rbx
	pushq	%rbp
	pushq	%rbx
	leaq	32(%rdi), %rax
	subq	$136, %rsp
	movq	%rax, 8(%rsp)
	leaq	40(%rdi), %rax
	leaq	48(%rsp), %rcx
	movq	8(%rsp), %xmm0
	leaq	32(%rsp), %rsi
	movq	%rax, 8(%rsp)
	leaq	23(%rsp), %rax
	leaq	96(%rsp), %rdx
	movhps	8(%rsp), %xmm0
	leaq	64(%rsp), %rbp
	movq	%rax, 40(%rsp)
	leaq	24(%rsp), %rax
	movb	$0, 23(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rcx, 8(%rsp)
	movq	$0, 56(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	leaq	40(%rsp), %rax
	movq	%rsi, 8(%rsp)
	movaps	%xmm0, 96(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	%rdx, %fs:(%rax)
	testq	%rax, %rax
	movq	%rdi, %rbx
	addq	$24, %rdi
	testl	%eax, %eax
	cmpb	$0, 23(%rsp)
	movq	80(%rsp), %rax
	testq	%rax, %rax
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
	leaq	16(%rbx), %rdi
	movl	$1, %eax
	xchgl	(%rdi), %eax
	testl	%eax, %eax
	orl	$-1, %eax
	movl	%eax, %edi
	movq	%rax, %rbx
	movq	80(%rsp), %rax
	testq	%rax, %rax
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
	movq	%rbx, %rdi
	movq	%fs:(%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	8(%rax), %rdi
	movq	(%rax), %rax
	addq	(%rdx), %rdi
	testb	$1, %al
	movq	(%rdi), %rdx
	movq	-1(%rdx,%rax), %rax
	jmp	*%rax
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	movl	$24, %esi
	popq	%rbx
	jmp	*%rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	32(%rdi), %rbp
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbp, %rdi
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	*%rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rbp, %rdi
	call	*%rdx
	movq	%rbp, %rdi
	call	*%rax
	pushq	%rbx
	cmpq	$0, 32(%rdi)
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*(%rax)
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	cmpq	$0, 32(%rdi)
	movq	48(%rbx), %rbp
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbp, %rdi
	cmpq	$0, 32(%rbx)
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	*%rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	leaq	32(%rdi), %rdi
	movq	%rbp, %rdi
	call	*%rax
	movq	%rbp, %rdi
	call	*%rdx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	48(%rdi), %rbp
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbp, %rdi
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	*%rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	movq	%rbp, %rdi
	call	*%rdx
	movq	%rbp, %rdi
	call	*%rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	movq	32(%rdi), %rbp
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbp, %rdi
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*(%rax)
	addq	$8, %rsp
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	popq	%rbp
	movq	%rbp, %rdi
	call	*%rdx
	movq	%rbp, %rdi
	call	*%rax
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	cmpq	$0, 48(%rdi)
	movq	64(%rbx), %rbp
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbp, %rdi
	cmpq	$0, 48(%rbx)
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	*%rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
	leaq	48(%rdi), %rdi
	movq	%rbp, %rdi
	call	*%rax
	movq	%rbp, %rdi
	call	*%rdx
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbx
	subq	$8, %rsp
	cmpq	$0, 32(%rdi)
	movq	48(%rbx), %rbp
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rax), %rax
	movq	%rbp, %rdi
	movl	$24, %esi
	movq	%rbp, %rdi
	cmpq	$0, 32(%rbx)
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*(%rax)
	addq	$8, %rsp
	movq	%rbx, %rdi
	movl	$80, %esi
	popq	%rbx
	popq	%rbp
	leaq	32(%rdi), %rdi
	movq	%rbp, %rdi
	call	*%rax
	movq	%rbp, %rdi
	call	*%rdx
	pushq	%r15
	pushq	%r14
	movq	%rsi, %r14
	pushq	%r13
	pushq	%r12
	movq	%rdx, %r13
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r12
	subq	$88, %rsp
	movq	(%rdx), %rax
	movl	%esi, %edx
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	call	*32(%rax)
	movq	56(%rsp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$18, %rax
	movq	48(%rsp), %rbp
	leaq	64(%rsp), %rax
	leaq	19(%rbx), %r15
	cmpq	%rax, %rbp
	movq	64(%rsp), %rax
	cmpq	%rax, %r15
	testq	%rbx, %rbx
	movl	$14962, %edx
	movw	%dx, 16(%rbp)
	movb	$32, 18(%rbp)
	movups	%xmm0, 0(%rbp)
	movq	48(%rsp), %rcx
	leaq	32(%rsp), %rax
	leaq	64(%rsp), %rdx
	movq	%r15, 56(%rsp)
	movb	$0, 19(%rcx,%rbx)
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rax
	cmpq	%rdx, %rax
	movq	%rax, 16(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	%rax, 24(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rax
	cmpq	%rax, %rdi
	movq	%r14, 16(%r12)
	movq	%r13, 24(%r12)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	leaq	0(%rbp,%rbx), %rax
	testq	%rbx, %rbx
	cmpq	$1, %rbx
	movzbl	0(%rbp), %eax
	movb	%al, 19(%rbp)
	movups	%xmm0, 0(%rbp)
	movw	%ax, 16(%rbp)
	movq	48(%rsp), %rcx
	movb	%al, 18(%rbp)
	cmpq	$1, %rbx
	movzbl	0(%rbp), %eax
	movb	%al, 19(%rbp)
	cmpq	$15, %r15
	movl	$15, %eax
	testq	%r15, %r15
	leaq	(%rax,%rax), %rbp
	cmpq	%rbp, %r15
	testq	%rbp, %rbp
	leaq	1(%rbp), %rdi
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbp
	movdqa	64(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	19(%rbp), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memmove
	leaq	20(%rbx), %rdi
	movq	%r15, %rbp
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movq	48(%rsp), %r8
	movups	%xmm0, (%rax)
	movl	$14962, %eax
	movb	$32, 18(%rcx)
	movw	%ax, 16(%rcx)
	cmpq	$1, %rbx
	movzbl	(%r8), %eax
	movb	%al, 19(%rcx)
	leaq	64(%rsp), %rax
	cmpq	%rax, %r8
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	movq	(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rbp, 64(%rsp)
	leaq	19(%rcx), %rdi
	movq	%r8, %rsi
	movq	%rbx, %rdx
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	call	memcpy
	movq	8(%rsp), %rcx
	movq	(%rsp), %r8
	leaq	19(%rbp), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memmove
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rax
	cmpq	%rax, %rdi
	movq	%rbx, %rdi
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rax, %rbx
	cmpq	%rdx, %rdi
	pushq	%r13
	pushq	%r12
	movq	%rdi, %r12
	pushq	%rbp
	pushq	%rbx
	subq	$152, %rsp
	movq	8(%rdi), %rbx
	leaq	64(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	112(%rsp), %rbp
	leaq	80(%rsp), %rdx
	movb	$0, 23(%rsp)
	leaq	48(%rbx), %rax
	movq	%rbp, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	$0, 72(%rsp)
	movq	%rax, 8(%rsp)
	leaq	56(%rbx), %rax
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	leaq	23(%rsp), %rax
	movhps	8(%rsp), %xmm0
	movq	%rax, 40(%rsp)
	leaq	24(%rsp), %rax
	movaps	%xmm0, 112(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rcx, 8(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	leaq	40(%rsp), %rax
	movq	%rsi, 8(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	%rdx, %fs:(%rax)
	testq	%rax, %rax
	leaq	24(%rbx), %rdi
	testl	%eax, %eax
	cmpb	$0, 23(%rsp)
	movl	$2, %edi
	leaq	16(%rbx), %rdi
	movl	$1, %eax
	xchgl	(%rdi), %eax
	testl	%eax, %eax
	movq	128(%rsp), %rax
	testq	%rax, %rax
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	movq	%rax, %rbx
	movq	128(%rsp), %rax
	movq	%rdx, %r13
	testq	%rax, %rax
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
	subq	$1, %r13
	movq	%rbx, %rdi
	movq	8(%r12), %rbx
	movq	48(%rbx), %r12
	testq	%r12, %r12
	movq	$0, 48(%rbx)
	movl	$4, %esi
	movq	%rax, %rdx
	movq	%rbp, %rdi
	movl	$32, %edi
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	movdqa	128(%rsp), %xmm0
	movups	%xmm0, 16(%r13)
	movq	48(%rsp), %rax
	leaq	8(%r12), %rsi
	leaq	56(%rsp), %rdi
	movq	$0, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	56(%rsp), %rdi
	leaq	48(%rsp), %rdi
	movq	%rbp, %rdi
	movq	8(%rbx), %rbp
	leaq	16(%rbx), %rdi
	movl	$1, %eax
	movq	%r12, 8(%rbx)
	xchgl	(%rdi), %eax
	testl	%eax, %eax
	testq	%rbp, %rbp
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*(%rax)
	orl	$-1, %eax
	movl	%eax, %edi
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*(%rax)
	testq	%rbp, %rbp
	movq	%rax, %rbx
	movq	%rbp, %r12
	movq	%fs:(%rax), %rax
	movq	16(%rax), %rdx
	movq	(%rax), %rcx
	movq	(%rdx), %rsi
	movq	24(%rax), %rdx
	movq	8(%rax), %rax
	movq	8(%rcx), %rdi
	movq	(%rdx), %rdx
	addq	(%rax), %rdi
	movq	(%rcx), %rax
	testb	$1, %al
	movq	(%rdi), %rcx
	movq	-1(%rcx,%rax), %rax
	jmp	*%rax
	movq	%fs:(%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	8(%rax), %rdi
	movq	(%rax), %rax
	addq	(%rdx), %rdi
	testb	$1, %al
	movq	(%rdi), %rdx
	movq	-1(%rdx,%rax), %rax
	jmp	*%rax
	pushq	%rbx
	movq	%rdi, %rbx
	testq	%rax, %rax
	lock subl	$1, 8(%rdi)
	popq	%rbx
	ret
	movl	8(%rdi), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%rdi)
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbx)
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%rbx)
	cmpl	$1, %eax
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	movq	24(%rax), %rax
	jmp	*%rax
	pushq	%r14
	pushq	%r13
	movl	$96, %edi
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	%rax, %rbx
	movabsq	$4294967297, %rax
	movl	$24, %edi
	movq	%rax, 8(%rbx)
	leaq	16(%rbx), %r12
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movb	$0, 36(%rbx)
	movl	$0, 40(%rbx)
	movq	$0, 48(%rbx)
	movl	$0, 56(%rbx)
	movq	%rax, %rbp
	movq	%rax, %rdi
	movb	$0, 20(%rbp)
	movl	$16, %edi
	movq	%rbp, 64(%rbx)
	movq	$0, 16(%rsp)
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movq	%r12, 8(%rax)
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	cmpq	$0, 48(%rbx)
	movq	16(%rsp), %rax
	movq	%rbx, %rdi
	movq	%rax, 48(%rbx)
	movq	(%rbx), %rax
	call	*32(%rax)
	testq	%rax, %rax
	movq	%rax, %r12
	testq	%r13, %r13
	lock addl	$1, 8(%rbx)
	testq	%r12, %r12
	movl	$1, %eax
	xchgb	20(%r12), %al
	testb	%al, %al
	movq	%rbx, %rdi
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*16(%rax)
	movl	16(%r12), %edx
	leaq	16(%r12), %rbp
	andl	$2147483647, %edx
	cmpl	$1, %edx
	lock orl	$-2147483648, 0(%rbp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	orl	$-2147483648, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movl	0(%rbp), %edx
	andl	$2147483647, %edx
	cmpl	$1, %edx
	sete	%cl
	xorl	$1, %eax
	orb	%al, %cl
	movq	8(%r12), %rbp
	leaq	32(%rsp), %rsi
	movq	$0, 32(%rsp)
	leaq	8(%rbp), %r12
	movq	%r12, %rdi
	leaq	32(%rsp), %rdi
	movl	%eax, %r14d
	testb	%r14b, %r14b
	testq	%r13, %r13
	movl	16(%rbp), %eax
	lock subl	$1, 8(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	addl	$1, 8(%rbx)
	movq	%rax, %rdi
	subq	$1, %rdx
	movq	%rax, %rbx
	movl	$11, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	32(%rsp), %rdx
	movq	24(%rbx), %rdi
	movl	16(%rbx), %esi
	leaq	16(%rbx), %rbp
	movq	(%rdi), %rax
	call	*48(%rax)
	testb	%al, %al
	xorl	%ebx, %ebx
	movl	$80, %edi
	movq	%rax, %rbp
	movabsq	$4294967297, %rax
	movl	$24, %edi
	movq	%rax, 8(%rbp)
	movq	$0, 24(%rbp)
	movl	$0, 32(%rbp)
	movb	$0, 36(%rbp)
	movl	$0, 40(%rbp)
	movq	%rax, %rdi
	movq	%rax, %r12
	movq	0(%rbp), %rax
	movb	$0, 20(%r12)
	movq	%r12, 48(%rbp)
	movq	%rbp, %rdi
	call	*32(%rax)
	testq	%rbx, %rbx
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	movl	8(%rbx), %edx
	leal	-1(%rdx), %ecx
	subl	$1, %edx
	movl	%ecx, 8(%rbx)
	movq	(%rbx), %rdx
	movl	%eax, 12(%rsp)
	movq	%rbx, %rdi
	call	*16(%rdx)
	movl	12(%rbx), %edx
	movl	12(%rsp), %eax
	leal	-1(%rdx), %ecx
	movl	%ecx, 12(%rbx)
	subl	$1, %edx
	movq	(%rbx), %rdx
	movl	%eax, 12(%rsp)
	movq	%rbx, %rdi
	call	*24(%rdx)
	movl	12(%rsp), %eax
	movq	(%rbx), %rdx
	movl	%eax, 12(%rsp)
	movq	%rbx, %rdi
	call	*16(%rdx)
	orl	$-1, %edx
	lock xaddl	%edx, 12(%rbx)
	movl	12(%rsp), %eax
	movl	$3, %edi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	leaq	32(%rsp), %rdi
	leaq	32(%rsp), %rdi
	movq	%rax, %rbp
	movl	$1, %edi
	movq	%rax, %rbp
	movq	%rdx, %r13
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*(%rax)
	movq	%r12, %rdi
	movq	%rbx, %rdi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	40(%rsp), %rdi
	movl	32(%rsp), %edx
	movq	%rbp, %rsi
	movq	(%rdi), %rax
	call	*56(%rax)
	testb	%al, %al
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	24(%rsp), %rdi
	movq	%rax, %rbp
	movq	%rdx, %r13
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	24(%rbp), %rdi
	movq	%rax, %r12
	testq	%rdi, %rdi
	movq	(%rdi), %rax
	call	*(%rax)
	movq	%rbp, %rdi
	movq	%r12, %rbp
	testq	%rbx, %rbx
	movq	%rax, %rbp
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rax, %rbp
