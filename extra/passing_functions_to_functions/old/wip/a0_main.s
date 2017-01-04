	.file	"a0_main.cpp"
	.text
	.p2align 4,,15
	.type	_ZZN13function_viewIFifEEC4IZ4mainEUlfE_vEEOT_ENUlPcfE_4_FUNES6_f, @function
_ZZN13function_viewIFifEEC4IZ4mainEUlfE_vEEOT_ENUlPcfE_4_FUNES6_f:
.LFB3110:
	.cfi_startproc
	addss	.LC0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE3110:
	.size	_ZZN13function_viewIFifEEC4IZ4mainEUlfE_vEEOT_ENUlPcfE_4_FUNES6_f, .-_ZZN13function_viewIFifEEC4IZ4mainEUlfE_vEEOT_ENUlPcfE_4_FUNES6_f
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2857:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	movl	$_ZZN13function_viewIFifEEC4IZ4mainEUlfE_vEEOT_ENUlPcfE_4_FUNES6_f, %esi
	call	_Z1f13function_viewIFifEE
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2857:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (GNU) 7.0.0 20161204 (experimental)"
	.section	.note.GNU-stack,"",@progbits
