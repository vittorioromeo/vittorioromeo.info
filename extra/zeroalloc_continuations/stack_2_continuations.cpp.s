	.file	"stack_2_continuations.cpp"
	.section	.text._ZNSt13__future_base13_State_baseV217_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv
	.type	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv, @function
_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv:
.LFB2832:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE2832:
	.size	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv, .-_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv
	.section	.text._ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv,"axG",@progbits,_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.type	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv, @function
_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv:
.LFB2833:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2833:
	.size	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv, .-_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.section	.text._ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv,"axG",@progbits,_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv,comdat
	.p2align 4,,15
	.weak	_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv
	.type	_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, @function
_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv:
.LFB3392:
	.cfi_startproc
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
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
	je	.L5
	movq	(%rdi), %rcx
	movq	-1(%rcx,%rax), %rax
.L5:
	jmp	*%rax
	.cfi_endproc
.LFE3392:
	.size	_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, .-_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv
	.section	.text._ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv,"axG",@progbits,_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv,comdat
	.p2align 4,,15
	.weak	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv
	.type	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv, @function
_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv:
.LFB3631:
	.cfi_startproc
	movq	(%rdi), %rax
	jmp	*(%rax)
	.cfi_endproc
.LFE3631:
	.size	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv, .-_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv
	.section	.text._ZNSt13__future_base13_State_baseV2D2Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base13_State_baseV2D2Ev
	.type	_ZNSt13__future_base13_State_baseV2D2Ev, @function
_ZNSt13__future_base13_State_baseV2D2Ev:
.LFB4432:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4432
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L10
	movq	(%rdi), %rax
	jmp	*(%rax)
	.p2align 4,,10
	.p2align 3
.L10:
	rep ret
	.cfi_endproc
.LFE4432:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13__future_base13_State_baseV2D2Ev,"aG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
.LLSDA4432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4432-.LLSDACSB4432
.LLSDACSB4432:
.LLSDACSE4432:
	.section	.text._ZNSt13__future_base13_State_baseV2D2Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.size	_ZNSt13__future_base13_State_baseV2D2Ev, .-_ZNSt13__future_base13_State_baseV2D2Ev
	.weak	_ZNSt13__future_base13_State_baseV2D1Ev
	.set	_ZNSt13__future_base13_State_baseV2D1Ev,_ZNSt13__future_base13_State_baseV2D2Ev
	.text
	.p2align 4,,15
	.type	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJ4nodeIZNSD_IZNSD_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSJ_EUlvE_EEEEEiEEE9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJ4nodeIZNSD_IZNSD_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSJ_EUlvE_EEEEEiEEE9_M_invokeERKSt9_Any_data:
.LFB4505:
	.cfi_startproc
	movq	(%rsi), %rdx
	movq	%rdi, %rax
	movq	(%rdx), %rdx
	movl	$3, 16(%rdx)
	movb	$1, 20(%rdx)
	movq	(%rsi), %rdx
	movq	(%rdx), %rcx
	movq	$0, (%rdx)
	movq	%rcx, (%rdi)
	ret
	.cfi_endproc
.LFE4505:
	.size	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJ4nodeIZNSD_IZNSD_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSJ_EUlvE_EEEEEiEEE9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJ4nodeIZNSD_IZNSD_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSJ_EUlvE_EEEEEiEEE9_M_invokeERKSt9_Any_data
	.p2align 4,,15
	.type	_ZNSt14_Function_base13_Base_managerINSt13__future_base12_Task_setterISt10unique_ptrINS1_7_ResultIiEENS1_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSC_IZNSC_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSI_EUlvE_EEEEEiEEE10_M_managerERSt9_Any_dataRKST_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerINSt13__future_base12_Task_setterISt10unique_ptrINS1_7_ResultIiEENS1_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSC_IZNSC_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSI_EUlvE_EEEEEiEEE10_M_managerERSt9_Any_dataRKST_St18_Manager_operation:
.LFB4506:
	.cfi_startproc
	cmpl	$1, %edx
	je	.L15
	jb	.L16
	cmpl	$2, %edx
	jne	.L14
	movdqu	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
.L14:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	movq	$_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE, (%rdi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4506:
	.size	_ZNSt14_Function_base13_Base_managerINSt13__future_base12_Task_setterISt10unique_ptrINS1_7_ResultIiEENS1_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSC_IZNSC_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSI_EUlvE_EEEEEiEEE10_M_managerERSt9_Any_dataRKST_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerINSt13__future_base12_Task_setterISt10unique_ptrINS1_7_ResultIiEENS1_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSC_IZNSC_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSI_EUlvE_EEEEEiEEE10_M_managerERSt9_Any_dataRKST_St18_Manager_operation
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB4688:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4688:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB4695:
	.cfi_startproc
	rep ret
	.cfi_endproc
.LFE4695:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.align 2
	.p2align 4,,15
	.type	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE21_M_is_deferred_futureEv, @function
_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE21_M_is_deferred_futureEv:
.LFB4716:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE4716:
	.size	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE21_M_is_deferred_futureEv, .-_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE21_M_is_deferred_futureEv
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB4700:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	8(%rsi), %rdi
	cmpq	$_ZTSSt19_Sp_make_shared_tag, %rdi
	je	.L22
	cmpb	$42, (%rdi)
	je	.L25
	movl	$_ZTSSt19_Sp_make_shared_tag, %esi
	call	strcmp
	testl	%eax, %eax
	jne	.L25
.L22:
	leaq	16(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4700:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB4693:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	8(%rsi), %rdi
	cmpq	$_ZTSSt19_Sp_make_shared_tag, %rdi
	je	.L31
	cmpb	$42, (%rdi)
	je	.L34
	movl	$_ZTSSt19_Sp_make_shared_tag, %esi
	call	strcmp
	testl	%eax, %eax
	jne	.L34
.L31:
	leaq	16(%rbx), %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4693:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.type	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv, @function
_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv:
.LFB3009:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	leaq	32(%rdi), %rax
	addq	$40, %rdi
	leaq	32(%rsp), %rcx
	leaq	48(%rsp), %rdx
	movq	$_ZNSt6thread4joinEv, 32(%rsp)
	movq	%rax, 24(%rsp)
	leaq	24(%rsp), %rax
	movq	$0, 40(%rsp)
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	movq	%rdx, %fs:(%rax)
	movq	_ZSt11__once_call@gottpoff(%rip), %rax
	movq	$_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, %fs:(%rax)
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L42
	movl	$__once_proxy, %esi
	call	_ZL20__gthrw_pthread_oncePiPFvvE
	testl	%eax, %eax
	jne	.L40
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L42:
	.cfi_restore_state
	orl	$-1, %eax
.L40:
	movl	%eax, %edi
	call	_ZSt20__throw_system_errori
	.cfi_endproc
.LFE3009:
	.size	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv, .-_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB4697:
	.cfi_startproc
	movl	$80, %esi
	jmp	_ZdlPvm
	.cfi_endproc
.LFE4697:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB4690:
	.cfi_startproc
	movl	$64, %esi
	jmp	_ZdlPvm
	.cfi_endproc
.LFE4690:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt13__future_base13_State_baseV2D0Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base13_State_baseV2D0Ev
	.type	_ZNSt13__future_base13_State_baseV2D0Ev, @function
_ZNSt13__future_base13_State_baseV2D0Ev:
.LFB4434:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4434
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L47
	movq	(%rdi), %rax
	call	*(%rax)
.L47:
	movq	%rbx, %rdi
	movl	$32, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.cfi_endproc
.LFE4434:
	.section	.gcc_except_table._ZNSt13__future_base13_State_baseV2D0Ev,"aG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
.LLSDA4434:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4434-.LLSDACSB4434
.LLSDACSB4434:
.LLSDACSE4434:
	.section	.text._ZNSt13__future_base13_State_baseV2D0Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.size	_ZNSt13__future_base13_State_baseV2D0Ev, .-_ZNSt13__future_base13_State_baseV2D0Ev
	.section	.text._ZNSt13__future_base7_ResultIiED2Ev,"axG",@progbits,_ZNSt13__future_base7_ResultIiED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base7_ResultIiED2Ev
	.type	_ZNSt13__future_base7_ResultIiED2Ev, @function
_ZNSt13__future_base7_ResultIiED2Ev:
.LFB4723:
	.cfi_startproc
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, (%rdi)
	jmp	_ZNSt13__future_base12_Result_baseD2Ev
	.cfi_endproc
.LFE4723:
	.size	_ZNSt13__future_base7_ResultIiED2Ev, .-_ZNSt13__future_base7_ResultIiED2Ev
	.weak	_ZNSt13__future_base7_ResultIiED1Ev
	.set	_ZNSt13__future_base7_ResultIiED1Ev,_ZNSt13__future_base7_ResultIiED2Ev
	.section	.text._ZNSt13__future_base7_ResultIiED0Ev,"axG",@progbits,_ZNSt13__future_base7_ResultIiED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base7_ResultIiED0Ev
	.type	_ZNSt13__future_base7_ResultIiED0Ev, @function
_ZNSt13__future_base7_ResultIiED0Ev:
.LFB4725:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, (%rdi)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movq	%rbx, %rdi
	movl	$24, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.cfi_endproc
.LFE4725:
	.size	_ZNSt13__future_base7_ResultIiED0Ev, .-_ZNSt13__future_base7_ResultIiED0Ev
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D2Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base21_Async_state_commonV2D2Ev
	.type	_ZNSt13__future_base21_Async_state_commonV2D2Ev, @function
_ZNSt13__future_base21_Async_state_commonV2D2Ev:
.LFB4441:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4441
	cmpq	$0, 32(%rdi)
	movq	$_ZTVNSt13__future_base21_Async_state_commonV2E+16, (%rdi)
	jne	.L61
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L55
	movq	(%rdi), %rax
	jmp	*(%rax)
	.p2align 4,,10
	.p2align 3
.L55:
	rep ret
.L61:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZSt9terminatev
	.cfi_endproc
.LFE4441:
	.section	.gcc_except_table._ZNSt13__future_base21_Async_state_commonV2D2Ev,"aG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
.LLSDA4441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4441-.LLSDACSB4441
.LLSDACSB4441:
.LLSDACSE4441:
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D2Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.size	_ZNSt13__future_base21_Async_state_commonV2D2Ev, .-_ZNSt13__future_base21_Async_state_commonV2D2Ev
	.weak	_ZNSt13__future_base21_Async_state_commonV2D1Ev
	.set	_ZNSt13__future_base21_Async_state_commonV2D1Ev,_ZNSt13__future_base21_Async_state_commonV2D2Ev
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB4699:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE4699:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB4692:
	.cfi_startproc
	jmp	_ZdlPv
	.cfi_endproc
.LFE4692:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,"axG",@progbits,_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb
	.type	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb, @function
_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb:
.LFB2831:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2831
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$0, 16(%rsi)
	je	.L71
	movq	%rdi, %rbx
	movq	%rdx, %rbp
	leaq	8(%rsp), %rdi
.LEHB0:
	call	*24(%rsi)
.LEHE0:
	movq	8(%rbx), %rdi
	movq	8(%rsp), %rax
	movb	$1, 0(%rbp)
	testq	%rdi, %rdi
	movq	%rax, 8(%rbx)
	movq	%rdi, 8(%rsp)
	je	.L64
	movq	(%rdi), %rax
	call	*(%rax)
.L64:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L71:
	.cfi_restore_state
.LEHB1:
	call	_ZSt25__throw_bad_function_callv
.LEHE1:
	.cfi_endproc
.LFE2831:
	.section	.gcc_except_table._ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,"aG",@progbits,_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,comdat
.LLSDA2831:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2831-.LLSDACSB2831
.LLSDACSB2831:
	.uleb128 .LEHB0-.LFB2831
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2831
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2831:
	.section	.text._ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,"axG",@progbits,_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,comdat
	.size	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb, .-_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED2Ev:
.LFB4659:
	.cfi_startproc
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE+16, (%rdi)
	jmp	_ZNSt6thread6_StateD2Ev
	.cfi_endproc
.LFE4659:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED2Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED2Ev
	.align 2
	.p2align 4,,15
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED0Ev:
.LFB4661:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE+16, (%rdi)
	call	_ZNSt6thread6_StateD2Ev
	movq	%rbx, %rdi
	movl	$16, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.cfi_endproc
.LFE4661:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED0Ev
	.align 2
	.p2align 4,,15
	.type	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE17_M_complete_asyncEv, @function
_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE17_M_complete_asyncEv:
.LFB4715:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4715
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	32(%rdi), %rax
	subq	$136, %rsp
	.cfi_def_cfa_offset 160
	movq	%rax, 8(%rsp)
	leaq	40(%rdi), %rax
	leaq	48(%rsp), %rcx
	movq	8(%rsp), %xmm0
	leaq	32(%rsp), %rsi
	movq	%rax, 8(%rsp)
	leaq	23(%rsp), %rax
	leaq	96(%rsp), %rdx
	movhps	8(%rsp), %xmm0
	movq	$_ZNSt14_Function_base13_Base_managerINSt13__future_base12_Task_setterISt10unique_ptrINS1_7_ResultIiEENS1_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSC_IZNSC_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSI_EUlvE_EEEEEiEEE10_M_managerERSt9_Any_dataRKST_St18_Manager_operation, 8(%rsp)
	leaq	64(%rsp), %rbp
	movq	%rax, 40(%rsp)
	leaq	24(%rsp), %rax
	movb	$0, 23(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	%rbp, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rcx, 8(%rsp)
	movhps	.LC0(%rip), %xmm0
	movq	$_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb, 48(%rsp)
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
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	%rdx, %fs:(%rax)
	movq	_ZSt11__once_call@gottpoff(%rip), %rax
	movq	$_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, %fs:(%rax)
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L84
	movq	%rdi, %rbx
	movl	$__once_proxy, %esi
	addq	$24, %rdi
.LEHB2:
	call	_ZL20__gthrw_pthread_oncePiPFvvE
.LEHE2:
	testl	%eax, %eax
	jne	.L76
	cmpb	$0, 23(%rsp)
	jne	.L78
.L81:
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.L75
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
.L75:
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
	leaq	16(%rbx), %rdi
	movl	$1, %eax
	xchgl	(%rdi), %eax
	testl	%eax, %eax
	jns	.L81
.LEHB3:
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj
	jmp	.L81
.L84:
	orl	$-1, %eax
.L76:
	movl	%eax, %edi
	call	_ZSt20__throw_system_errori
.LEHE3:
.L85:
	movq	%rax, %rbx
	movq	80(%rsp), %rax
	testq	%rax, %rax
	je	.L83
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
.L83:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
	.cfi_endproc
.LFE4715:
	.section	.gcc_except_table,"a",@progbits
.LLSDA4715:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4715-.LLSDACSB4715
.LLSDACSB4715:
	.uleb128 .LEHB2-.LFB4715
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L85-.LFB4715
	.uleb128 0
	.uleb128 .LEHB3-.LFB4715
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L85-.LFB4715
	.uleb128 0
	.uleb128 .LEHB4-.LFB4715
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE4715:
	.text
	.size	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE17_M_complete_asyncEv, .-_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE17_M_complete_asyncEv
	.section	.text._ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv,"axG",@progbits,_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv,comdat
	.p2align 4,,15
	.weak	_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv
	.type	_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, @function
_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv:
.LFB3511:
	.cfi_startproc
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
	movq	%fs:(%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	8(%rax), %rdi
	movq	(%rax), %rax
	addq	(%rdx), %rdi
	testb	$1, %al
	je	.L91
	movq	(%rdi), %rdx
	movq	-1(%rdx,%rax), %rax
.L91:
	jmp	*%rax
	.cfi_endproc
.LFE3511:
	.size	_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, .-_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv
	.section	.text._ZNSt13__future_base7_ResultIiE10_M_destroyEv,"axG",@progbits,_ZNSt13__future_base7_ResultIiE10_M_destroyEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base7_ResultIiE10_M_destroyEv
	.type	_ZNSt13__future_base7_ResultIiE10_M_destroyEv, @function
_ZNSt13__future_base7_ResultIiE10_M_destroyEv:
.LFB4721:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L96
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, (%rdi)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movq	%rbx, %rdi
	movl	$24, %esi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.p2align 4,,10
	.p2align 3
.L96:
	jmp	*%rax
	.cfi_endproc
.LFE4721:
	.size	_ZNSt13__future_base7_ResultIiE10_M_destroyEv, .-_ZNSt13__future_base7_ResultIiE10_M_destroyEv
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev, @function
_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev:
.LFB4663:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4663
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %rbp
	movq	$_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, (%rdi)
	testq	%rbp, %rbp
	je	.L101
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	$_ZNSt13__future_base7_ResultIiE10_M_destroyEv, %rdx
	jne	.L102
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L103
	movq	%rbp, %rdi
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movl	$24, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm
.L101:
	movq	8(%rbx), %rdi
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rbx)
	testq	%rdi, %rdi
	je	.L100
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L100:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L102:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L103:
	movq	%rbp, %rdi
	call	*%rax
	jmp	.L101
	.cfi_endproc
.LFE4663:
	.section	.gcc_except_table
.LLSDA4663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4663-.LLSDACSB4663
.LLSDACSB4663:
.LLSDACSE4663:
	.text
	.size	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev, .-_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev
	.set	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED1Ev,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D0Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt13__future_base21_Async_state_commonV2D0Ev
	.type	_ZNSt13__future_base21_Async_state_commonV2D0Ev, @function
_ZNSt13__future_base21_Async_state_commonV2D0Ev:
.LFB4443:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4443
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmpq	$0, 32(%rdi)
	movq	$_ZTVNSt13__future_base21_Async_state_commonV2E+16, (%rdi)
	jne	.L116
	movq	%rdi, %rbx
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L111
	movq	(%rdi), %rax
	call	*(%rax)
.L111:
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
.L116:
	.cfi_restore_state
	call	_ZSt9terminatev
	.cfi_endproc
.LFE4443:
	.section	.gcc_except_table
.LLSDA4443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4443-.LLSDACSB4443
.LLSDACSB4443:
.LLSDACSE4443:
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D0Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.size	_ZNSt13__future_base21_Async_state_commonV2D0Ev, .-_ZNSt13__future_base21_Async_state_commonV2D0Ev
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev, @function
_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev:
.LFB4718:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4718
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 32(%rdi)
	movq	$_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, (%rdi)
	jne	.L128
.L118:
	movq	48(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L119
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	$_ZNSt13__future_base7_ResultIiE10_M_destroyEv, %rdx
	jne	.L120
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L121
	movq	%rbp, %rdi
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movl	$24, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm
.L119:
	cmpq	$0, 32(%rbx)
	movq	$_ZTVNSt13__future_base21_Async_state_commonV2E+16, (%rbx)
	jne	.L129
	movq	8(%rbx), %rdi
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rbx)
	testq	%rdi, %rdi
	je	.L117
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	.cfi_restore_state
	leaq	32(%rdi), %rdi
	call	_ZNSt6thread4joinEv
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L121:
	movq	%rbp, %rdi
	call	*%rax
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L120:
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L119
.L129:
	call	_ZSt9terminatev
	.cfi_endproc
.LFE4718:
	.section	.gcc_except_table
.LLSDA4718:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4718-.LLSDACSB4718
.LLSDACSB4718:
.LLSDACSE4718:
	.text
	.size	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev, .-_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev
	.set	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED1Ev,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED2Ev
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB4691:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4691
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	48(%rdi), %rbp
	movq	$_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, 16(%rdi)
	testq	%rbp, %rbp
	je	.L131
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	$_ZNSt13__future_base7_ResultIiE10_M_destroyEv, %rdx
	jne	.L132
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L133
	movq	%rbp, %rdi
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movl	$24, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm
.L131:
	movq	24(%rbx), %rdi
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, 16(%rbx)
	testq	%rdi, %rdi
	je	.L130
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L130:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L133:
	movq	%rbp, %rdi
	call	*%rax
	jmp	.L131
	.cfi_endproc
.LFE4691:
	.section	.gcc_except_table
.LLSDA4691:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4691-.LLSDACSB4691
.LLSDACSB4691:
.LLSDACSE4691:
	.text
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.align 2
	.p2align 4,,15
	.type	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev, @function
_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev:
.LFB4665:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4665
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %rbp
	movq	$_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, (%rdi)
	testq	%rbp, %rbp
	je	.L140
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	$_ZNSt13__future_base7_ResultIiE10_M_destroyEv, %rdx
	jne	.L141
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L142
	movq	%rbp, %rdi
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movl	$24, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm
.L140:
	movq	8(%rbx), %rdi
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rbx)
	testq	%rdi, %rdi
	je	.L143
	movq	(%rdi), %rax
	call	*(%rax)
.L143:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	movl	$48, %esi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.p2align 4,,10
	.p2align 3
.L141:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L142:
	movq	%rbp, %rdi
	call	*%rax
	jmp	.L140
	.cfi_endproc
.LFE4665:
	.section	.gcc_except_table
.LLSDA4665:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4665-.LLSDACSB4665
.LLSDACSB4665:
.LLSDACSE4665:
	.text
	.size	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev, .-_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev
	.align 2
	.p2align 4,,15
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB4698:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4698
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 48(%rdi)
	movq	$_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, 16(%rdi)
	jne	.L162
.L152:
	movq	64(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L153
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	$_ZNSt13__future_base7_ResultIiE10_M_destroyEv, %rdx
	jne	.L154
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L155
	movq	%rbp, %rdi
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movl	$24, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm
.L153:
	cmpq	$0, 48(%rbx)
	movq	$_ZTVNSt13__future_base21_Async_state_commonV2E+16, 16(%rbx)
	jne	.L163
	movq	24(%rbx), %rdi
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, 16(%rbx)
	testq	%rdi, %rdi
	je	.L151
	movq	(%rdi), %rax
	movq	(%rax), %rax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L151:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	.cfi_restore_state
	leaq	48(%rdi), %rdi
	call	_ZNSt6thread4joinEv
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L155:
	movq	%rbp, %rdi
	call	*%rax
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L154:
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L153
.L163:
	call	_ZSt9terminatev
	.cfi_endproc
.LFE4698:
	.section	.gcc_except_table
.LLSDA4698:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4698-.LLSDACSB4698
.LLSDACSB4698:
.LLSDACSE4698:
	.text
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.align 2
	.p2align 4,,15
	.type	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev, @function
_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev:
.LFB4720:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4720
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 32(%rdi)
	movq	$_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, (%rdi)
	jne	.L178
.L165:
	movq	48(%rbx), %rbp
	testq	%rbp, %rbp
	je	.L166
	movq	0(%rbp), %rax
	movq	(%rax), %rdx
	cmpq	$_ZNSt13__future_base7_ResultIiE10_M_destroyEv, %rdx
	jne	.L167
	movq	16(%rax), %rax
	cmpq	$_ZNSt13__future_base7_ResultIiED0Ev, %rax
	jne	.L168
	movq	%rbp, %rdi
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	call	_ZNSt13__future_base12_Result_baseD2Ev
	movl	$24, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm
.L166:
	cmpq	$0, 32(%rbx)
	movq	$_ZTVNSt13__future_base21_Async_state_commonV2E+16, (%rbx)
	jne	.L179
	movq	8(%rbx), %rdi
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, (%rbx)
	testq	%rdi, %rdi
	je	.L170
	movq	(%rdi), %rax
	call	*(%rax)
.L170:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm
	.p2align 4,,10
	.p2align 3
.L178:
	.cfi_restore_state
	leaq	32(%rdi), %rdi
	call	_ZNSt6thread4joinEv
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L168:
	movq	%rbp, %rdi
	call	*%rax
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L167:
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L166
.L179:
	call	_ZSt9terminatev
	.cfi_endproc
.LFE4720:
	.section	.gcc_except_table
.LLSDA4720:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4720-.LLSDACSB4720
.LLSDACSB4720:
.LLSDACSE4720:
	.text
	.size	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev, .-_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev
	.section	.rodata._ZNSt12future_errorC2ESt10error_code.str1.1,"aMS",@progbits,1
.LC1:
	.string	"basic_string::_M_replace"
.LC2:
	.string	"std::future_error: "
.LC3:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt12future_errorC2ESt10error_code,"axG",@progbits,_ZNSt12future_errorC5ESt10error_code,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt12future_errorC2ESt10error_code
	.type	_ZNSt12future_errorC2ESt10error_code, @function
_ZNSt12future_errorC2ESt10error_code:
.LFB2771:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2771
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	(%rdx), %rax
	movl	%esi, %edx
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
.LEHB5:
	call	*32(%rax)
.LEHE5:
	movq	56(%rsp), %rbx
	movabsq	$9223372036854775807, %rax
	subq	%rbx, %rax
	cmpq	$18, %rax
	jbe	.L223
	movq	48(%rsp), %rbp
	leaq	64(%rsp), %rax
	leaq	19(%rbx), %r15
	cmpq	%rax, %rbp
	je	.L182
	movq	64(%rsp), %rax
	cmpq	%rax, %r15
	ja	.L183
.L205:
	cmpq	$.LC2, %rbp
	jbe	.L224
.L184:
	testq	%rbx, %rbx
	jne	.L225
.L206:
	movdqa	.LC4(%rip), %xmm0
	movl	$14962, %edx
	movw	%dx, 16(%rbp)
	movb	$32, 18(%rbp)
	movups	%xmm0, 0(%rbp)
	movq	48(%rsp), %rcx
.L188:
	leaq	32(%rsp), %rax
	leaq	64(%rsp), %rdx
	movq	%r15, 56(%rsp)
	movb	$0, 19(%rcx,%rbx)
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rax
	cmpq	%rdx, %rax
	je	.L226
	movq	%rax, 16(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
.L198:
	movq	56(%rsp), %rax
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	%rax, 24(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
.LEHB6:
	call	_ZNSt11logic_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE6:
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L199
	call	_ZdlPv
.L199:
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L200
	call	_ZdlPv
.L200:
	movq	%r14, 16(%r12)
	movq	%r13, 24(%r12)
	movq	$_ZTVSt12future_error+16, (%r12)
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L224:
	.cfi_restore_state
	leaq	0(%rbp,%rbx), %rax
	cmpq	$.LC2, %rax
	jb	.L184
	testq	%rbx, %rbx
	je	.L189
	cmpq	$1, %rbx
	jne	.L190
	movzbl	0(%rbp), %eax
	movb	%al, 19(%rbp)
.L189:
	cmpq	$.LC2+19, %rbp
	jnb	.L206
	movzwl	.LC2+35(%rip), %eax
	movdqu	.LC2+19(%rip), %xmm0
	movups	%xmm0, 0(%rbp)
	movw	%ax, 16(%rbp)
	movzbl	.LC2+37(%rip), %eax
	movq	48(%rsp), %rcx
	movb	%al, 18(%rbp)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L225:
	cmpq	$1, %rbx
	jne	.L187
	movzbl	0(%rbp), %eax
	movb	%al, 19(%rbp)
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L182:
	cmpq	$15, %r15
	movl	$15, %eax
	jbe	.L205
.L183:
	testq	%r15, %r15
	js	.L227
	leaq	(%rax,%rax), %rbp
	cmpq	%rbp, %r15
	jnb	.L228
	testq	%rbp, %rbp
	leaq	1(%rbp), %rdi
	jns	.L193
	movabsq	$-9223372036854775808, %rdi
	movabsq	$9223372036854775807, %rbp
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L226:
	movdqa	64(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L187:
	leaq	19(%rbp), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memmove
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L228:
	leaq	20(%rbx), %rdi
	movq	%r15, %rbp
.L193:
.LEHB7:
	call	_Znwm
	movdqa	.LC4(%rip), %xmm0
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movq	48(%rsp), %r8
	movups	%xmm0, (%rax)
	movl	$14962, %eax
	movb	$32, 18(%rcx)
	movw	%ax, 16(%rcx)
	je	.L194
	cmpq	$1, %rbx
	jne	.L195
	movzbl	(%r8), %eax
	movb	%al, 19(%rcx)
.L194:
	leaq	64(%rsp), %rax
	cmpq	%rax, %r8
	je	.L196
	movq	%r8, %rdi
	movq	%rcx, (%rsp)
	call	_ZdlPv
	movq	(%rsp), %rcx
.L196:
	movq	%rcx, 48(%rsp)
	movq	%rbp, 64(%rsp)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L195:
	leaq	19(%rcx), %rdi
	movq	%r8, %rsi
	movq	%rbx, %rdx
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	call	memcpy
	movq	8(%rsp), %rcx
	movq	(%rsp), %r8
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L190:
	leaq	19(%rbp), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memmove
	jmp	.L189
.L223:
	movl	$.LC1, %edi
	call	_ZSt20__throw_length_errorPKc
.LEHE7:
.L209:
	movq	%rax, %rbx
.L203:
	movq	48(%rsp), %rdi
	leaq	64(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L204
	call	_ZdlPv
.L204:
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L227:
	movl	$.LC3, %edi
.LEHB9:
	call	_ZSt20__throw_length_errorPKc
.LEHE9:
.L210:
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rax, %rbx
	cmpq	%rdx, %rdi
	je	.L203
	call	_ZdlPv
	jmp	.L203
	.cfi_endproc
.LFE2771:
	.section	.gcc_except_table
.LLSDA2771:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2771-.LLSDACSB2771
.LLSDACSB2771:
	.uleb128 .LEHB5-.LFB2771
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2771
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L210-.LFB2771
	.uleb128 0
	.uleb128 .LEHB7-.LFB2771
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L209-.LFB2771
	.uleb128 0
	.uleb128 .LEHB8-.LFB2771
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2771
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L209-.LFB2771
	.uleb128 0
.LLSDACSE2771:
	.section	.text._ZNSt12future_errorC2ESt10error_code,"axG",@progbits,_ZNSt12future_errorC5ESt10error_code,comdat
	.size	_ZNSt12future_errorC2ESt10error_code, .-_ZNSt12future_errorC2ESt10error_code
	.weak	_ZNSt12future_errorC1ESt10error_code
	.set	_ZNSt12future_errorC1ESt10error_code,_ZNSt12future_errorC2ESt10error_code
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEE6_M_runEv:
.LFB4686:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4686
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$152, %rsp
	.cfi_def_cfa_offset 192
	movq	8(%rdi), %rbx
	leaq	64(%rsp), %rcx
	leaq	32(%rsp), %rsi
	leaq	112(%rsp), %rbp
	leaq	80(%rsp), %rdx
	movb	$0, 23(%rsp)
	movq	$_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb, 64(%rsp)
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
	movq	$_ZNSt14_Function_base13_Base_managerINSt13__future_base12_Task_setterISt10unique_ptrINS1_7_ResultIiEENS1_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSC_IZNSC_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSI_EUlvE_EEEEEiEEE10_M_managerERSt9_Any_dataRKST_St18_Manager_operation, 8(%rsp)
	movq	%rax, 40(%rsp)
	leaq	24(%rsp), %rax
	movaps	%xmm0, 112(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rcx, 8(%rsp)
	movhps	.LC0(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	leaq	40(%rsp), %rax
	movq	%rsi, 8(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	%rdx, %fs:(%rax)
	movq	_ZSt11__once_call@gottpoff(%rip), %rax
	movq	$_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENUlvE0_4_FUNEv, %fs:(%rax)
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	testq	%rax, %rax
	je	.L249
	leaq	24(%rbx), %rdi
	movl	$__once_proxy, %esi
.LEHB10:
	call	_ZL20__gthrw_pthread_oncePiPFvvE
	testl	%eax, %eax
	jne	.L230
	cmpb	$0, 23(%rsp)
	jne	.L265
	movl	$2, %edi
	call	_ZSt20__throw_future_errori
.LEHE10:
	.p2align 4,,10
	.p2align 3
.L265:
	leaq	16(%rbx), %rdi
	movl	$1, %eax
	xchgl	(%rdi), %eax
	testl	%eax, %eax
	js	.L233
.L236:
	movq	128(%rsp), %rax
	testq	%rax, %rax
	je	.L229
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
.L229:
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L233:
	.cfi_restore_state
.LEHB11:
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj
.LEHE11:
	jmp	.L236
.L252:
	movq	%rax, %rbx
	movq	128(%rsp), %rax
	movq	%rdx, %r13
	testq	%rax, %rax
	je	.L238
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
.L238:
	subq	$1, %r13
	movq	%rbx, %rdi
	jne	.L264
	call	__cxa_begin_catch
	movq	8(%r12), %rbx
	movq	48(%rbx), %r12
	testq	%r12, %r12
	je	.L241
	movq	$0, 48(%rbx)
	call	_ZSt15future_categoryv
	movl	$4, %esi
	movq	%rax, %rdx
	movq	%rbp, %rdi
.LEHB12:
	call	_ZNSt12future_errorC1ESt10error_code
.LEHE12:
	movl	$32, %edi
	call	__cxa_allocate_exception
	movl	$_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv, %edx
	movq	%rax, %r13
	movl	$_ZTISt12future_error, %esi
	movq	%rax, %rdi
	call	__cxa_init_primary_exception
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZNSt11logic_errorC2ERKS_
	movq	$_ZTVSt12future_error+16, 0(%r13)
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	movdqa	128(%rsp), %xmm0
	movups	%xmm0, 16(%r13)
	call	_ZNSt15__exception_ptr13exception_ptrC1EPv
	movq	48(%rsp), %rax
	leaq	8(%r12), %rsi
	leaq	56(%rsp), %rdi
	movq	$0, 48(%rsp)
	movq	%rax, 56(%rsp)
	call	_ZNSt15__exception_ptr13exception_ptr4swapERS0_
	leaq	56(%rsp), %rdi
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	leaq	48(%rsp), %rdi
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	movq	%rbp, %rdi
	call	_ZNSt12future_errorD1Ev
	movq	8(%rbx), %rbp
	leaq	16(%rbx), %rdi
	movl	$1, %eax
	movq	%r12, 8(%rbx)
	xchgl	(%rdi), %eax
	testl	%eax, %eax
	js	.L242
.L244:
	testq	%rbp, %rbp
	je	.L241
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*(%rax)
.L241:
.LEHB13:
	call	__cxa_rethrow
.LEHE13:
.L249:
	orl	$-1, %eax
.L230:
	movl	%eax, %edi
.LEHB14:
	call	_ZSt20__throw_system_errori
.LEHE14:
.L250:
	movq	%rax, %rbx
.L248:
	call	__cxa_end_catch
	movq	%rbx, %rdi
.L264:
.LEHB15:
	call	_Unwind_Resume
.LEHE15:
.L242:
.LEHB16:
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj
.LEHE16:
	jmp	.L244
.L253:
	movq	%rax, %rbx
.L247:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*(%rax)
	jmp	.L248
.L251:
	testq	%rbp, %rbp
	movq	%rax, %rbx
	movq	%rbp, %r12
	jne	.L247
	jmp	.L248
	.cfi_endproc
.LFE4686:
	.section	.gcc_except_table
	.align 4
.LLSDA4686:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4686-.LLSDATTD4686
.LLSDATTD4686:
	.byte	0x1
	.uleb128 .LLSDACSE4686-.LLSDACSB4686
.LLSDACSB4686:
	.uleb128 .LEHB10-.LFB4686
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L252-.LFB4686
	.uleb128 0x3
	.uleb128 .LEHB11-.LFB4686
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L252-.LFB4686
	.uleb128 0x3
	.uleb128 .LEHB12-.LFB4686
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L253-.LFB4686
	.uleb128 0
	.uleb128 .LEHB13-.LFB4686
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L250-.LFB4686
	.uleb128 0
	.uleb128 .LEHB14-.LFB4686
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L252-.LFB4686
	.uleb128 0x3
	.uleb128 .LEHB15-.LFB4686
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB4686
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L251-.LFB4686
	.uleb128 0
.LLSDACSE4686:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	_ZTIN10__cxxabiv115__forced_unwindE
.LLSDATT4686:
	.text
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEE6_M_runEv
	.section	.text._ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv,"axG",@progbits,_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv
	.type	_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv, @function
_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv:
.LFB3391:
	.cfi_startproc
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
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
	je	.L267
	movq	(%rdi), %rcx
	movq	-1(%rcx,%rax), %rax
.L267:
	jmp	*%rax
	.cfi_endproc
.LFE3391:
	.size	_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv, .-_ZZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS0_12_Result_baseENS4_8_DeleterEEvEEPbEJPS1_S9_SA_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv
	.section	.text._ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv,"axG",@progbits,_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv
	.type	_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv, @function
_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv:
.LFB3510:
	.cfi_startproc
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax
	movq	%fs:(%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movq	8(%rax), %rdi
	movq	(%rax), %rax
	addq	(%rdx), %rdi
	testb	$1, %al
	je	.L272
	movq	(%rdi), %rdx
	movq	-1(%rdx,%rax), %rax
.L272:
	jmp	*%rax
	.cfi_endproc
.LFE3510:
	.size	_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv, .-_ZZSt9call_onceIMSt6threadFvvEJPS0_EEvRSt9once_flagOT_DpOT0_ENKUlvE0_clEv
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB3611:
	.cfi_startproc
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	testq	%rax, %rax
	je	.L277
	lock subl	$1, 8(%rdi)
	je	.L284
.L276:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L277:
	.cfi_restore_state
	movl	8(%rdi), %eax
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, 8(%rdi)
	jne	.L276
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 12(%rbx)
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L284:
	movq	(%rdi), %rax
	call	*16(%rax)
	movl	$-1, %eax
	lock xaddl	%eax, 12(%rbx)
.L282:
	cmpl	$1, %eax
	jne	.L276
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	24(%rax), %rax
	jmp	*%rax
	.cfi_endproc
.LFE3611:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB3025:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3025
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$80, %edi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
.LEHB17:
	call	_Znwm
.LEHE17:
	movq	%rax, %rbx
	movabsq	$4294967297, %rax
	movl	$24, %edi
	movq	%rax, 8(%rbx)
	movq	$_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE+16, (%rbx)
	leaq	16(%rbx), %r12
	movq	$0, 24(%rbx)
	movl	$0, 32(%rbx)
	movb	$0, 36(%rbx)
	movl	$0, 40(%rbx)
	movq	$0, 48(%rbx)
	movl	$0, 56(%rbx)
	movq	$_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, 16(%rbx)
.LEHB18:
	call	_Znwm
.LEHE18:
	movq	%rax, %rbp
	movq	%rax, %rdi
	call	_ZNSt13__future_base12_Result_baseC2Ev
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, 0(%rbp)
	movb	$0, 20(%rbp)
	movl	$16, %edi
	movq	%rbp, 64(%rbx)
	movq	$0, 16(%rsp)
.LEHB19:
	call	_Znwm
.LEHE19:
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdi
	movq	$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE+16, (%rax)
	movq	%r12, 8(%rax)
	movl	$pthread_create, %edx
	movq	%rax, 24(%rsp)
.LEHB20:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.LEHE20:
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L286
	movq	(%rdi), %rax
	call	*8(%rax)
.L286:
	cmpq	$0, 48(%rbx)
	jne	.L367
	movq	16(%rsp), %rax
	movl	$_ZTISt19_Sp_make_shared_tag, %esi
	movq	%rbx, %rdi
	movq	%rax, 48(%rbx)
	movq	(%rbx), %rax
	call	*32(%rax)
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L305
.L319:
	movl	$_ZL28__gthrw___pthread_key_createPjPFvPvE, %r13d
	testq	%r13, %r13
	je	.L298
	lock addl	$1, 8(%rbx)
.L299:
	testq	%r12, %r12
	je	.L368
	movl	$1, %eax
	xchgb	20(%r12), %al
	testb	%al, %al
	jne	.L369
	movq	%rbx, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	movq	(%r12), %rax
	movq	%r12, %rdi
.LEHB21:
	call	*16(%rax)
	movl	16(%r12), %edx
	leaq	16(%r12), %rbp
	andl	$2147483647, %edx
	cmpl	$1, %edx
	je	.L308
	.p2align 4,,10
	.p2align 3
.L309:
	lock orl	$-2147483648, 0(%rbp)
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	orl	$-2147483648, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_wait_untilEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE
.LEHE21:
	movl	0(%rbp), %edx
	andl	$2147483647, %edx
	cmpl	$1, %edx
	sete	%cl
	xorl	$1, %eax
	orb	%al, %cl
	je	.L309
.L308:
	movq	8(%r12), %rbp
	leaq	32(%rsp), %rsi
	movq	$0, 32(%rsp)
	leaq	8(%rbp), %r12
	movq	%r12, %rdi
	call	_ZNSt15__exception_ptreqERKNS_13exception_ptrES2_
	leaq	32(%rsp), %rdi
	movl	%eax, %r14d
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	testb	%r14b, %r14b
	je	.L370
	testq	%r13, %r13
	movl	16(%rbp), %eax
	je	.L371
	lock subl	$1, 8(%rbx)
	je	.L372
.L285:
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L298:
	.cfi_restore_state
	addl	$1, 8(%rbx)
	jmp	.L299
.L331:
	movq	%rax, %rdi
.L292:
	subq	$1, %rdx
	jne	.L366
	call	__cxa_begin_catch
	movq	%rax, %rbx
	call	_ZNSt3_V216generic_categoryEv
	movl	$11, 32(%rsp)
	movq	%rax, 40(%rsp)
	leaq	32(%rsp), %rdx
	movq	24(%rbx), %rdi
	movl	16(%rbx), %esi
	leaq	16(%rbx), %rbp
	movq	(%rdi), %rax
	call	*48(%rax)
	testb	%al, %al
	je	.L373
.L304:
	xorl	%ebx, %ebx
	call	__cxa_end_catch
.L305:
	movl	$64, %edi
.LEHB22:
	call	_Znwm
.LEHE22:
	movq	%rax, %rbp
	movabsq	$4294967297, %rax
	movl	$24, %edi
	movq	%rax, 8(%rbp)
	movq	$_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE+16, 0(%rbp)
	movq	$0, 24(%rbp)
	movl	$0, 32(%rbp)
	movb	$0, 36(%rbp)
	movl	$0, 40(%rbp)
	movq	$_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE+16, 16(%rbp)
.LEHB23:
	call	_Znwm
.LEHE23:
	movq	%rax, %rdi
	movq	%rax, %r12
	call	_ZNSt13__future_base12_Result_baseC2Ev
	movq	0(%rbp), %rax
	movq	$_ZTVNSt13__future_base7_ResultIiEE+16, (%r12)
	movl	$_ZTISt19_Sp_make_shared_tag, %esi
	movb	$0, 20(%r12)
	movq	%r12, 48(%rbp)
	movq	%rbp, %rdi
	call	*32(%rax)
	testq	%rbx, %rbx
	movq	%rax, %r12
	je	.L294
	movq	%rbx, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L294:
	movq	%rbp, %rbx
	jmp	.L319
.L371:
	movl	8(%rbx), %edx
	leal	-1(%rdx), %ecx
	subl	$1, %edx
	movl	%ecx, 8(%rbx)
	jne	.L285
	movq	(%rbx), %rdx
	movl	%eax, 12(%rsp)
	movq	%rbx, %rdi
	call	*16(%rdx)
	movl	12(%rbx), %edx
	movl	12(%rsp), %eax
	leal	-1(%rdx), %ecx
	movl	%ecx, 12(%rbx)
.L320:
	subl	$1, %edx
	jne	.L285
	movq	(%rbx), %rdx
	movl	%eax, 12(%rsp)
	movq	%rbx, %rdi
	call	*24(%rdx)
	movl	12(%rsp), %eax
	jmp	.L285
.L372:
	movq	(%rbx), %rdx
	movl	%eax, 12(%rsp)
	movq	%rbx, %rdi
	call	*16(%rdx)
	orl	$-1, %edx
	lock xaddl	%edx, 12(%rbx)
	movl	12(%rsp), %eax
	jmp	.L320
.L368:
	movl	$3, %edi
.LEHB24:
	call	_ZSt20__throw_future_errori
.LEHE24:
.L336:
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L324:
	movq	%rbx, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.L307:
	movq	%rbp, %rdi
.LEHB25:
	call	_Unwind_Resume
.LEHE25:
.L370:
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	call	_ZNSt15__exception_ptr13exception_ptrC1ERKS0_
	leaq	32(%rsp), %rdi
.LEHB26:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE
.LEHE26:
.L337:
	leaq	32(%rsp), %rdi
	movq	%rax, %rbp
	call	_ZNSt15__exception_ptr13exception_ptrD1Ev
	jmp	.L324
.L369:
	movl	$1, %edi
.LEHB27:
	call	_ZSt20__throw_future_errori
.LEHE27:
.L333:
	movq	%rax, %rbp
	movq	%rdx, %r13
.L289:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L291
	movq	(%rdi), %rax
	call	*(%rax)
.L291:
	movq	%r12, %rdi
	call	_ZNSt13__future_base21_Async_state_commonV2D2Ev
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%rbp, %rdi
	movq	%r13, %rdx
	jmp	.L292
.L373:
	movq	40(%rsp), %rdi
	movl	32(%rsp), %edx
	movq	%rbp, %rsi
	movq	(%rdi), %rax
	call	*56(%rax)
	testb	%al, %al
	jne	.L304
.LEHB28:
	call	__cxa_rethrow
.LEHE28:
.L330:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.L366:
.LEHB29:
	call	_Unwind_Resume
.LEHE29:
.L334:
	movq	24(%rsp), %rdi
	movq	%rax, %rbp
	movq	%rdx, %r13
	testq	%rdi, %rdi
	je	.L289
	movq	(%rdi), %rax
	call	*8(%rax)
	jmp	.L289
.L335:
	movq	24(%rbp), %rdi
	movq	%rax, %r12
	movq	$_ZTVNSt13__future_base13_State_baseV2E+16, 16(%rbp)
	testq	%rdi, %rdi
	je	.L296
	movq	(%rdi), %rax
	call	*(%rax)
.L296:
	movq	%rbp, %rdi
	movq	%r12, %rbp
	call	_ZdlPv
.L297:
	testq	%rbx, %rbx
	jne	.L324
	jmp	.L307
.L332:
	movq	%rax, %rbp
	movq	%rdx, %r13
	jmp	.L291
.L367:
	call	_ZSt9terminatev
.L329:
	movq	%rax, %rbp
	jmp	.L324
.L338:
	movq	%rax, %rbp
	jmp	.L297
	.cfi_endproc
.LFE3025:
	.section	.gcc_except_table
	.align 4
.LLSDA3025:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT3025-.LLSDATTD3025
.LLSDATTD3025:
	.byte	0x1
	.uleb128 .LLSDACSE3025-.LLSDACSB3025
.LLSDACSB3025:
	.uleb128 .LEHB17-.LFB3025
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L331-.LFB3025
	.uleb128 0x3
	.uleb128 .LEHB18-.LFB3025
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L332-.LFB3025
	.uleb128 0x3
	.uleb128 .LEHB19-.LFB3025
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L333-.LFB3025
	.uleb128 0x3
	.uleb128 .LEHB20-.LFB3025
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L334-.LFB3025
	.uleb128 0x3
	.uleb128 .LEHB21-.LFB3025
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L329-.LFB3025
	.uleb128 0
	.uleb128 .LEHB22-.LFB3025
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L338-.LFB3025
	.uleb128 0
	.uleb128 .LEHB23-.LFB3025
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L335-.LFB3025
	.uleb128 0
	.uleb128 .LEHB24-.LFB3025
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L336-.LFB3025
	.uleb128 0
	.uleb128 .LEHB25-.LFB3025
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB3025
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L337-.LFB3025
	.uleb128 0
	.uleb128 .LEHB27-.LFB3025
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L336-.LFB3025
	.uleb128 0
	.uleb128 .LEHB28-.LFB3025
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L330-.LFB3025
	.uleb128 0
	.uleb128 .LEHB29-.LFB3025
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE3025:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	_ZTISt12system_error
.LLSDATT3025:
	.section	.text.startup
	.size	main, .-main
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt19_Sp_make_shared_tag
	.section	.rodata._ZTSSt19_Sp_make_shared_tag,"aG",@progbits,_ZTSSt19_Sp_make_shared_tag,comdat
	.align 16
	.type	_ZTSSt19_Sp_make_shared_tag, @object
	.size	_ZTSSt19_Sp_make_shared_tag, 24
_ZTSSt19_Sp_make_shared_tag:
	.string	"St19_Sp_make_shared_tag"
	.weak	_ZTISt19_Sp_make_shared_tag
	.section	.rodata._ZTISt19_Sp_make_shared_tag,"aG",@progbits,_ZTISt19_Sp_make_shared_tag,comdat
	.align 8
	.type	_ZTISt19_Sp_make_shared_tag, @object
	.size	_ZTISt19_Sp_make_shared_tag, 16
_ZTISt19_Sp_make_shared_tag:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt19_Sp_make_shared_tag
	.weak	_ZTSNSt13__future_base13_State_baseV2E
	.section	.rodata._ZTSNSt13__future_base13_State_baseV2E,"aG",@progbits,_ZTSNSt13__future_base13_State_baseV2E,comdat
	.align 32
	.type	_ZTSNSt13__future_base13_State_baseV2E, @object
	.size	_ZTSNSt13__future_base13_State_baseV2E, 35
_ZTSNSt13__future_base13_State_baseV2E:
	.string	"NSt13__future_base13_State_baseV2E"
	.weak	_ZTINSt13__future_base13_State_baseV2E
	.section	.rodata._ZTINSt13__future_base13_State_baseV2E,"aG",@progbits,_ZTINSt13__future_base13_State_baseV2E,comdat
	.align 8
	.type	_ZTINSt13__future_base13_State_baseV2E, @object
	.size	_ZTINSt13__future_base13_State_baseV2E, 16
_ZTINSt13__future_base13_State_baseV2E:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt13__future_base13_State_baseV2E
	.weak	_ZTSNSt13__future_base21_Async_state_commonV2E
	.section	.rodata._ZTSNSt13__future_base21_Async_state_commonV2E,"aG",@progbits,_ZTSNSt13__future_base21_Async_state_commonV2E,comdat
	.align 32
	.type	_ZTSNSt13__future_base21_Async_state_commonV2E, @object
	.size	_ZTSNSt13__future_base21_Async_state_commonV2E, 43
_ZTSNSt13__future_base21_Async_state_commonV2E:
	.string	"NSt13__future_base21_Async_state_commonV2E"
	.weak	_ZTINSt13__future_base21_Async_state_commonV2E
	.section	.rodata._ZTINSt13__future_base21_Async_state_commonV2E,"aG",@progbits,_ZTINSt13__future_base21_Async_state_commonV2E,comdat
	.align 8
	.type	_ZTINSt13__future_base21_Async_state_commonV2E, @object
	.size	_ZTINSt13__future_base21_Async_state_commonV2E, 24
_ZTINSt13__future_base21_Async_state_commonV2E:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt13__future_base21_Async_state_commonV2E
	.quad	_ZTINSt13__future_base13_State_baseV2E
	.weak	_ZTSNSt13__future_base7_ResultIiEE
	.section	.rodata._ZTSNSt13__future_base7_ResultIiEE,"aG",@progbits,_ZTSNSt13__future_base7_ResultIiEE,comdat
	.align 16
	.type	_ZTSNSt13__future_base7_ResultIiEE, @object
	.size	_ZTSNSt13__future_base7_ResultIiEE, 31
_ZTSNSt13__future_base7_ResultIiEE:
	.string	"NSt13__future_base7_ResultIiEE"
	.weak	_ZTINSt13__future_base7_ResultIiEE
	.section	.rodata._ZTINSt13__future_base7_ResultIiEE,"aG",@progbits,_ZTINSt13__future_base7_ResultIiEE,comdat
	.align 8
	.type	_ZTINSt13__future_base7_ResultIiEE, @object
	.size	_ZTINSt13__future_base7_ResultIiEE, 24
_ZTINSt13__future_base7_ResultIiEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt13__future_base7_ResultIiEE
	.quad	_ZTINSt13__future_base12_Result_baseE
	.section	.rodata
	.align 8
	.type	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, @object
	.size	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, 24
_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE
	.quad	_ZTINSt13__future_base21_Async_state_commonV2E
	.align 32
	.type	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, @object
	.size	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, 174
_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE:
	.string	"*NSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE"
	.align 8
	.type	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, @object
	.size	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, 24
_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE
	.quad	_ZTINSt13__future_base13_State_baseV2E
	.align 32
	.type	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, @object
	.size	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, 172
_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE:
	.string	"*NSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE"
	.align 8
	.type	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.align 32
	.type	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, 239
_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"*St23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE"
	.align 8
	.type	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.align 32
	.type	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, 237
_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"*St23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE"
	.align 8
	.type	_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE, @object
	.size	_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE, 16
_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE
	.align 32
	.type	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE, @object
	.size	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE, 227
_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE:
	.string	"*NSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIiEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJ4nodeIZNSA_IZNSA_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSG_EUlvE_EEEEEiEE"
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE, 220
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE:
	.string	"*NSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE"
	.weak	_ZTVNSt13__future_base13_State_baseV2E
	.section	.rodata._ZTVNSt13__future_base13_State_baseV2E,"aG",@progbits,_ZTVNSt13__future_base13_State_baseV2E,comdat
	.align 8
	.type	_ZTVNSt13__future_base13_State_baseV2E, @object
	.size	_ZTVNSt13__future_base13_State_baseV2E, 48
_ZTVNSt13__future_base13_State_baseV2E:
	.quad	0
	.quad	_ZTINSt13__future_base13_State_baseV2E
	.quad	_ZNSt13__future_base13_State_baseV2D1Ev
	.quad	_ZNSt13__future_base13_State_baseV2D0Ev
	.quad	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv
	.quad	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.weak	_ZTVNSt13__future_base21_Async_state_commonV2E
	.section	.rodata._ZTVNSt13__future_base21_Async_state_commonV2E,"aG",@progbits,_ZTVNSt13__future_base21_Async_state_commonV2E,comdat
	.align 8
	.type	_ZTVNSt13__future_base21_Async_state_commonV2E, @object
	.size	_ZTVNSt13__future_base21_Async_state_commonV2E, 48
_ZTVNSt13__future_base21_Async_state_commonV2E:
	.quad	0
	.quad	_ZTINSt13__future_base21_Async_state_commonV2E
	.quad	_ZNSt13__future_base21_Async_state_commonV2D1Ev
	.quad	_ZNSt13__future_base21_Async_state_commonV2D0Ev
	.quad	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.quad	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.weak	_ZTVNSt13__future_base7_ResultIiEE
	.section	.rodata._ZTVNSt13__future_base7_ResultIiEE,"aG",@progbits,_ZTVNSt13__future_base7_ResultIiEE,comdat
	.align 8
	.type	_ZTVNSt13__future_base7_ResultIiEE, @object
	.size	_ZTVNSt13__future_base7_ResultIiEE, 40
_ZTVNSt13__future_base7_ResultIiEE:
	.quad	0
	.quad	_ZTINSt13__future_base7_ResultIiEE
	.quad	_ZNSt13__future_base7_ResultIiE10_M_destroyEv
	.quad	_ZNSt13__future_base7_ResultIiED1Ev
	.quad	_ZNSt13__future_base7_ResultIiED0Ev
	.section	.rodata
	.align 8
	.type	_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, @object
	.size	_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, 48
_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE:
	.quad	0
	.quad	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE
	.quad	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED1Ev
	.quad	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev
	.quad	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.quad	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.align 8
	.type	_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, @object
	.size	_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE, 48
_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE:
	.quad	0
	.quad	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiEE
	.quad	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED1Ev
	.quad	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiED0Ev
	.quad	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE17_M_complete_asyncEv
	.quad	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS4_IZNS4_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSA_EUlvE_EEEEEiE21_M_is_deferred_futureEv
	.align 8
	.type	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.align 8
	.type	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEESaISK_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNSt13__future_base17_Async_state_implINS1_IS2_IJ4nodeIZNS5_IZNS5_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSB_EUlvE_EEEEEiEC4EOSJ_EUlvE_EEEEE6_M_runEv
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.quad	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIiEES3_ENSt6thread8_InvokerISt5tupleIJ4nodeIZNSD_IZNSD_IZ4mainEUlvE_E4thenIZ4mainEUliE0_EEDaOT_EUlvE_E4thenIZ4mainEUliE1_EEDaSJ_EUlvE_EEEEEiEEE9_M_invokeERKSt9_Any_data
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC4:
	.quad	8391725880948585587
	.quad	8030606865272762997
	.ident	"GCC: (GNU) 8.0.0 20170514 (experimental)"
	.section	.note.GNU-stack,"",@progbits
