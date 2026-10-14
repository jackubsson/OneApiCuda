	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"main.cpp"
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@4080000040400000400000003f800000
	.section	.rdata,"dr",discard,__xmm@4080000040400000400000003f800000
	.p2align	4, 0x0
__xmm@4080000040400000400000003f800000:
	.long	0x3f800000
	.long	0x40000000
	.long	0x40400000
	.long	0x40800000
	.globl	__xmm@4220000041f0000041a0000041200000
	.section	.rdata,"dr",discard,__xmm@4220000041f0000041a0000041200000
	.p2align	4, 0x0
__xmm@4220000041f0000041a0000041200000:
	.long	0x41200000
	.long	0x41a00000
	.long	0x41f00000
	.long	0x42200000
	.globl	__xmm@4100000040e0000040c0000040a00000
	.section	.rdata,"dr",discard,__xmm@4100000040e0000040c0000040a00000
	.p2align	4, 0x0
__xmm@4100000040e0000040c0000040a00000:
	.long	0x40a00000
	.long	0x40c00000
	.long	0x40e00000
	.long	0x41000000
	.globl	__xmm@42a00000428c00004270000042480000
	.section	.rdata,"dr",discard,__xmm@42a00000428c00004270000042480000
	.p2align	4, 0x0
__xmm@42a00000428c00004270000042480000:
	.long	0x42480000
	.long	0x42700000
	.long	0x428c0000
	.long	0x42a00000
	.globl	__real@3f800000
	.section	.rdata,"dr",discard,__real@3f800000
	.p2align	2, 0x0
__real@3f800000:
	.long	0x3f800000
	.globl	__real@40000000
	.section	.rdata,"dr",discard,__real@40000000
	.p2align	2, 0x0
__real@40000000:
	.long	0x40000000
	.globl	__xmm@7fffffff7fffffff7fffffff7fffffff
	.section	.rdata,"dr",discard,__xmm@7fffffff7fffffff7fffffff7fffffff
	.p2align	4, 0x0
__xmm@7fffffff7fffffff7fffffff7fffffff:
	.long	0x7fffffff
	.long	0x7fffffff
	.long	0x7fffffff
	.long	0x7fffffff
	.globl	__real@3727c5ac
	.section	.rdata,"dr",discard,__real@3727c5ac
	.p2align	2, 0x0
__real@3727c5ac:
	.long	0x3727c5ac
	.section	.text,"xr",one_only,main,unique,0
	.globl	main
	.p2align	4
main:
.seh_proc main
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$184, %rsp
	.seh_stackalloc 184
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm %xmm7, 160
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm %xmm6, 144
	.seh_endprologue
	stmxcsr	88(%rsp)
	orl	$32832, 88(%rsp)
	ldmxcsr	88(%rsp)
	movl	$32, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rsi
	movl	$32, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rdi
	movl	$32, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movl	$32, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r14
	movaps	__xmm@4080000040400000400000003f800000(%rip), %xmm0
	movups	%xmm0, (%rsi)
	movaps	__xmm@4220000041f0000041a0000041200000(%rip), %xmm0
	movups	%xmm0, (%rdi)
	movaps	__xmm@4100000040e0000040c0000040a00000(%rip), %xmm0
	movups	%xmm0, 16(%rsi)
	movaps	__xmm@42a00000428c00004270000042480000(%rip), %xmm0
	movups	%xmm0, 16(%rdi)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	%rax, 32(%rsp)
	movl	$1, 40(%rsp)
	movss	__real@3f800000(%rip), %xmm1
	movl	$8, %ecx
	movq	%rdi, %r8
	movl	$1, %r9d
	callq	cblas_saxpy
	movss	__real@40000000(%rip), %xmm1
	movl	$8, %ecx
	movq	%r14, 64(%rsp)
	movq	%r14, %r8
	movl	$1, %r9d
	callq	cblas_sscal
	movq	%rsi, 56(%rsp)
	movq	%rsi, %rcx
	movq	%rdi, 48(%rsp)
	movq	%rdi, %rdx
	movq	%rbx, %r8
	movl	$8, %r9d
	callq	"?cuda_vector_add@@YAXPEBM0PEAMH@Z"
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %r15
	leaq	"??_C@_0BL@LLDEGODL@oneMKL?5?$CL?5CUDA?5C?$CL?$CL?5results?6?$AA@"(%rip), %rdx
	movq	%r15, %rcx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	xorl	%r13d, %r13d
	leaq	128(%rsp), %r12
	movaps	__xmm@7fffffff7fffffff7fffffff7fffffff(%rip), %xmm6
	movss	__real@3727c5ac(%rip), %xmm7
	leaq	88(%rsp), %r14
	.p2align	4
.LBB0_1:
	movq	%r12, %rcx
	movq	%r15, %rdx
	callq	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	cmpb	$0, 136(%rsp)
	movl	$0, %ecx
	je	.LBB0_6
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rax
	movq	64(%rax,%r15), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	%r14, %rcx
	callq	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	movq	%rax, %rbp
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_5
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB0_5
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB0_5:
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rax
	leaq	(%r15,%rax), %r9
	movzbl	88(%rax,%r15), %ecx
	movq	72(%rax,%r15), %rax
	movb	$0, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	(%rbp), %rax
	movl	%r13d, 40(%rsp)
	movb	%cl, 32(%rsp)
	movq	%rbp, %rcx
	leaq	72(%rsp), %rdx
	movq	%r14, %r8
	callq	*72(%rax)
	movzbl	72(%rsp), %ecx
	shll	$2, %ecx
.LBB0_6:
	movq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rax
	movslq	4(%rax), %rdx
	movl	16(%rdx,%r15), %eax
	xorl	%r8d, %r8d
	cmpq	$0, 72(%rdx,%r15)
	sete	%r8b
	shll	$2, %r8d
	andl	$23, %eax
	orl	%ecx, %eax
	orl	%r8d, %eax
	movl	%eax, 16(%rdx,%r15)
	andl	20(%rdx,%r15), %eax
	jne	.LBB0_40
	movq	%r12, %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%r15, %rcx
	leaq	"??_C@_07DHJEAOOF@?3?5CUDA?$DN?$AA@"(%rip), %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movss	(%rbx,%r13,4), %xmm1
	movq	%rax, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z"
	movq	%rax, %rcx
	leaq	"??_C@_09LOIAJCOM@?0?5oneMKL?$DN?$AA@"(%rip), %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	movq	64(%rsp), %rcx
	movss	(%rcx,%r13,4), %xmm1
	movq	%rax, %rcx
	callq	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z"
	movq	%rax, %rbp
	movq	%r12, %rcx
	movq	%rax, %rdx
	callq	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	cmpb	$0, 136(%rsp)
	je	.LBB0_18
	movq	(%rbp), %rax
	movslq	4(%rax), %rax
	movq	40(%rbp,%rax), %rcx
	cmpq	$2, %rcx
	movl	$1, %edi
	cmovgeq	%rcx, %rdi
	decq	%rdi
	movl	24(%rbp,%rax), %edx
	movl	$448, %r8d
	andl	%r8d, %edx
	cmpl	$64, %edx
	je	.LBB0_20
	cmpq	$2, %rcx
	jl	.LBB0_20
	.p2align	4
.LBB0_10:
	movq	(%rbp), %rax
	movslq	4(%rax), %rax
	movq	72(%rbp,%rax), %rcx
	movzbl	88(%rbp,%rax), %edx
	movzbl	%dl, %eax
	movq	64(%rcx), %r8
	movq	(%r8), %r9
	testq	%r9, %r9
	je	.LBB0_13
	movq	88(%rcx), %r10
	movl	(%r10), %r11d
	testl	%r11d, %r11d
	jle	.LBB0_13
	decl	%r11d
	movl	%r11d, (%r10)
	leaq	1(%r9), %rcx
	movq	%rcx, (%r8)
	movb	%dl, (%r9)
	jmp	.LBB0_14
	.p2align	4
.LBB0_13:
	movq	(%rcx), %r8
	movl	%eax, %edx
	callq	*24(%r8)
.LBB0_14:
	leaq	-1(%rdi), %rsi
	cmpl	$-1, %eax
	je	.LBB0_16
	cmpq	$1, %rdi
	movq	%rsi, %rdi
	jg	.LBB0_10
.LBB0_16:
	cmpl	$-1, %eax
	je	.LBB0_32
	movq	(%rbp), %rax
	movslq	4(%rax), %rax
	jmp	.LBB0_21
	.p2align	4
.LBB0_18:
	xorl	%ecx, %ecx
	jmp	.LBB0_33
	.p2align	4
.LBB0_20:
	movq	%rdi, %rsi
.LBB0_21:
	movq	72(%rbp,%rax), %rcx
	movq	64(%rcx), %rax
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB0_24
	movq	88(%rcx), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB0_24
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %rcx
	movq	%rcx, (%rax)
	movb	$10, (%rdx)
	xorl	%ecx, %ecx
	testl	%ecx, %ecx
	je	.LBB0_25
	jmp	.LBB0_33
	.p2align	4
.LBB0_24:
	movq	(%rcx), %rax
	movl	$10, %edx
	callq	*24(%rax)
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	shll	$2, %ecx
	testl	%ecx, %ecx
	jne	.LBB0_33
.LBB0_25:
	testq	%rsi, %rsi
	jg	.LBB0_26
	jmp	.LBB0_33
	.p2align	4
.LBB0_29:
	movq	(%rcx), %r8
	movl	%eax, %edx
	callq	*24(%r8)
	cmpl	$-1, %eax
	je	.LBB0_31
.LBB0_30:
	cmpq	$1, %rsi
	leaq	-1(%rsi), %rsi
	jle	.LBB0_31
.LBB0_26:
	movq	(%rbp), %rax
	movslq	4(%rax), %rax
	movq	72(%rbp,%rax), %rcx
	movzbl	88(%rbp,%rax), %edx
	movzbl	%dl, %eax
	movq	64(%rcx), %r8
	movq	(%r8), %r9
	testq	%r9, %r9
	je	.LBB0_29
	movq	88(%rcx), %r10
	movl	(%r10), %r11d
	testl	%r11d, %r11d
	jle	.LBB0_29
	decl	%r11d
	movl	%r11d, (%r10)
	leaq	1(%r9), %rcx
	movq	%rcx, (%r8)
	movb	%dl, (%r9)
	cmpl	$-1, %eax
	jne	.LBB0_30
	.p2align	4
.LBB0_31:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	shll	$2, %ecx
	jmp	.LBB0_33
.LBB0_32:
	movl	$4, %ecx
	.p2align	4
.LBB0_33:
	movq	(%rbp), %rax
	movslq	4(%rax), %rax
	movq	$0, 40(%rbp,%rax)
	movq	(%rbp), %rax
	movslq	4(%rax), %rax
	orl	16(%rbp,%rax), %ecx
	xorl	%edx, %edx
	cmpq	$0, 72(%rbp,%rax)
	sete	%dl
	shll	$2, %edx
	andl	$23, %ecx
	orl	%edx, %ecx
	movl	%ecx, 16(%rbp,%rax)
	andl	20(%rbp,%rax), %ecx
	jne	.LBB0_39
	movq	%r12, %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movss	(%rbx,%r13,4), %xmm0
	movq	56(%rsp), %rax
	movss	(%rax,%r13,4), %xmm1
	movq	48(%rsp), %rax
	addss	(%rax,%r13,4), %xmm1
	subss	%xmm1, %xmm0
	andps	%xmm6, %xmm0
	ucomiss	%xmm7, %xmm0
	ja	.LBB0_37
	incq	%r13
	cmpq	$8, %r13
	jne	.LBB0_1
	leaq	"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A"(%rip), %rcx
	leaq	"??_C@_0CE@FLGCIJCC@CUDA?5vector?9add?5validation?5passe@"(%rip), %rdx
	callq	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	xorl	%ebp, %ebp
	jmp	.LBB0_38
.LBB0_37:
	movl	$2, %ebp
.LBB0_38:
	movl	$32, %edx
	movq	64(%rsp), %rcx
	callq	"??3@YAXPEAX_K@Z"
	movl	$32, %edx
	movq	%rbx, %rcx
	callq	"??3@YAXPEAX_K@Z"
	movl	$32, %edx
	movq	48(%rsp), %rcx
	callq	"??3@YAXPEAX_K@Z"
	movl	$32, %edx
	movq	56(%rsp), %rcx
	callq	"??3@YAXPEAX_K@Z"
	movl	%ebp, %eax
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	.seh_startepilogue
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB0_39:
	testb	$2, %cl
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rax, %rdx
	testb	$4, %cl
	jmp	.LBB0_41
.LBB0_40:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rcx
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rcx, %rdx
	testb	$4, %al
.LBB0_41:
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rsi
	cmoveq	%rdx, %rsi
	leaq	72(%rsp), %rdi
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	leaq	88(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rbx, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z",unique,1
	.globl	"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	.p2align	4
"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z":
.seh_proc "??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	callq	strlen
	movq	%rax, %rbx
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	40(%rsi,%rax), %r12
	leaq	32(%rsp), %rcx
	movq	%rsi, %rdx
	callq	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	cmpb	$0, 40(%rsp)
	je	.LBB1_1
	xorl	%eax, %eax
	movq	%r12, %r15
	subq	%rbx, %r15
	movl	$0, %r14d
	cmovgq	%r15, %r14
	testq	%r12, %r12
	cmovleq	%rax, %r14
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movl	$448, %ecx
	andl	24(%rsi,%rax), %ecx
	cmpl	$64, %ecx
	je	.LBB1_10
	testq	%r14, %r14
	jle	.LBB1_10
	incq	%r15
	jmp	.LBB1_5
	.p2align	4
.LBB1_16:
	movzbl	%al, %edx
	movq	(%rcx), %rax
	callq	*24(%rax)
	cmpl	$-1, %eax
	je	.LBB1_17
.LBB1_8:
	decq	%r15
	cmpq	$1, %r15
	jle	.LBB1_9
.LBB1_5:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	72(%rsi,%rax), %rcx
	movzbl	88(%rsi,%rax), %eax
	movq	64(%rcx), %rdx
	movq	(%rdx), %r8
	testq	%r8, %r8
	je	.LBB1_16
	movq	88(%rcx), %r9
	movl	(%r9), %r10d
	testl	%r10d, %r10d
	jle	.LBB1_16
	decl	%r10d
	movl	%r10d, (%r9)
	leaq	1(%r8), %rcx
	movq	%rcx, (%rdx)
	movb	%al, (%r8)
	jmp	.LBB1_8
.LBB1_1:
	movl	$4, %edi
	jmp	.LBB1_22
.LBB1_9:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	xorl	%r14d, %r14d
.LBB1_10:
	movq	72(%rsi,%rax), %rcx
	movq	(%rcx), %rax
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	*72(%rax)
	movl	$4, %edi
	cmpq	%rbx, %rax
	jne	.LBB1_21
	testq	%r14, %r14
	jle	.LBB1_20
	incq	%r14
	jmp	.LBB1_13
	.p2align	4
.LBB1_18:
	movzbl	%al, %edx
	movq	(%rcx), %rax
	callq	*24(%rax)
	cmpl	$-1, %eax
	je	.LBB1_21
.LBB1_19:
	decq	%r14
	cmpq	$1, %r14
	jle	.LBB1_20
.LBB1_13:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	72(%rsi,%rax), %rcx
	movzbl	88(%rsi,%rax), %eax
	movq	64(%rcx), %rdx
	movq	(%rdx), %r8
	testq	%r8, %r8
	je	.LBB1_18
	movq	88(%rcx), %r9
	movl	(%r9), %r10d
	testl	%r10d, %r10d
	jle	.LBB1_18
	decl	%r10d
	movl	%r10d, (%r9)
	leaq	1(%r8), %rcx
	movq	%rcx, (%rdx)
	movb	%al, (%r8)
	jmp	.LBB1_19
.LBB1_20:
	xorl	%edi, %edi
	jmp	.LBB1_21
.LBB1_17:
	movl	$4, %edi
.LBB1_21:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	$0, 40(%rsi,%rax)
.LBB1_22:
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	orl	16(%rsi,%rax), %edi
	xorl	%ecx, %ecx
	cmpq	$0, 72(%rsi,%rax)
	sete	%cl
	shll	$2, %ecx
	andl	$23, %edi
	orl	%ecx, %edi
	movl	%edi, 16(%rsi,%rax)
	andl	20(%rsi,%rax), %edi
	jne	.LBB1_24
	leaq	32(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$104, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB1_24:
	testb	$2, %dil
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rcx
	cmoveq	%rax, %rcx
	testb	$4, %dil
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rsi
	cmoveq	%rcx, %rsi
	leaq	48(%rsp), %rdi
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	leaq	64(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rbx, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z",unique,2
	.globl	"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z"
	.p2align	4
"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z":
.seh_proc "??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@M@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$144, %rsp
	.seh_stackalloc 144
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	movaps	%xmm1, %xmm6
	movq	%rcx, %rsi
	leaq	56(%rsp), %rcx
	movq	%rsi, %rdx
	callq	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	cmpb	$0, 64(%rsp)
	je	.LBB2_1
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	movq	64(%rsi,%rax), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	88(%rsp), %rcx
	callq	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	movq	%rax, %rdi
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB2_5
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB2_5
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB2_5:
	cvtss2sd	%xmm6, %xmm0
	movq	(%rsi), %rax
	movslq	4(%rax), %rax
	leaq	(%rsi,%rax), %r9
	movzbl	88(%rsi,%rax), %ecx
	movq	72(%rsi,%rax), %rax
	movb	$0, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	(%rdi), %rax
	movsd	%xmm0, 40(%rsp)
	movb	%cl, 32(%rsp)
	leaq	72(%rsp), %rdx
	leaq	88(%rsp), %r8
	movq	%rdi, %rcx
	callq	*40(%rax)
	movzbl	72(%rsp), %ecx
	shll	$2, %ecx
	jmp	.LBB2_6
.LBB2_1:
	xorl	%ecx, %ecx
.LBB2_6:
	movq	(%rsi), %rax
	movslq	4(%rax), %rdx
	movl	16(%rsi,%rdx), %eax
	xorl	%r8d, %r8d
	cmpq	$0, 72(%rsi,%rdx)
	sete	%r8b
	shll	$2, %r8d
	andl	$23, %eax
	orl	%ecx, %eax
	orl	%r8d, %eax
	movl	%eax, 16(%rsi,%rdx)
	andl	20(%rsi,%rdx), %eax
	jne	.LBB2_8
	leaq	56(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	%rsi, %rax
	movaps	128(%rsp), %xmm6
	.seh_startepilogue
	addq	$144, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB2_8:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rcx
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rcx, %rdx
	testb	$4, %al
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rsi
	cmoveq	%rdx, %rsi
	leaq	72(%rsp), %rdi
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	leaq	88(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rbx, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ",unique,3
	.globl	"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ"
	.p2align	4
"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ":
	movq	$0, "?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip)
	retq

	.def	"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ",unique,4
	.globl	"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ"
	.p2align	4
"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ":
	movq	$0, "?id@?$numpunct@D@std@@2V0locale@2@A"(%rip)
	retq

	.def	"?_Throw_bad_array_new_length@std@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Throw_bad_array_new_length@std@@YAXXZ",unique,5
	.globl	"?_Throw_bad_array_new_length@std@@YAXXZ"
	.p2align	4
"?_Throw_bad_array_new_length@std@@YAXXZ":
.seh_proc "?_Throw_bad_array_new_length@std@@YAXXZ"
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	$0, 48(%rsp)
	leaq	"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"(%rip), %rax
	movq	%rax, 40(%rsp)
	leaq	"??_7bad_array_new_length@std@@6B@"(%rip), %rax
	movq	%rax, 32(%rsp)
	leaq	"_TI3?AVbad_array_new_length@std@@"(%rip), %rdx
	leaq	32(%rsp), %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_array_new_length@std@@QEAA@AEBV01@@Z",unique,6
	.globl	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
	.p2align	4
"??0bad_array_new_length@std@@QEAA@AEBV01@@Z":
.seh_proc "??0bad_array_new_length@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	leaq	"??_7bad_array_new_length@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0bad_alloc@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0bad_alloc@std@@QEAA@AEBV01@@Z",unique,7
	.globl	"??0bad_alloc@std@@QEAA@AEBV01@@Z"
	.p2align	4
"??0bad_alloc@std@@QEAA@AEBV01@@Z":
.seh_proc "??0bad_alloc@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	leaq	"??_7bad_alloc@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0exception@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0exception@std@@QEAA@AEBV01@@Z",unique,8
	.globl	"??0exception@std@@QEAA@AEBV01@@Z"
	.p2align	4
"??0exception@std@@QEAA@AEBV01@@Z":
.seh_proc "??0exception@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?what@exception@std@@UEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?what@exception@std@@UEBAPEBDXZ",unique,9
	.globl	"?what@exception@std@@UEBAPEBDXZ"
	.p2align	4
"?what@exception@std@@UEBAPEBDXZ":
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	leaq	"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"(%rip), %rax
	cmovneq	%rcx, %rax
	retq

	.def	"??_Gexception@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gexception@std@@UEAAPEAXI@Z",unique,10
	.globl	"??_Gexception@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gexception@std@@UEAAPEAXI@Z":
.seh_proc "??_Gexception@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB10_2
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB10_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_Gbad_alloc@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_alloc@std@@UEAAPEAXI@Z",unique,11
	.globl	"??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gbad_alloc@std@@UEAAPEAXI@Z":
.seh_proc "??_Gbad_alloc@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB11_2
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB11_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_Gbad_array_new_length@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_array_new_length@std@@UEAAPEAXI@Z",unique,12
	.globl	"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gbad_array_new_length@std@@UEAAPEAXI@Z":
.seh_proc "??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB12_2
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB12_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z",unique,13
	.globl	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	.p2align	4
"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z":
.seh_proc "??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, (%rcx)
	movq	(%rdx), %rax
	movslq	4(%rax), %rax
	movq	72(%rdx,%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB13_2
	movq	(%rcx), %rax
	callq	*8(%rax)
	movq	(%rdi), %rax
	movslq	4(%rax), %rax
.LBB13_2:
	cmpl	$0, 16(%rdi,%rax)
	je	.LBB13_4
	xorl	%eax, %eax
.LBB13_10:
	movb	%al, 8(%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$104, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB13_4:
	movq	80(%rdi,%rax), %rbx
	movb	$1, %al
	testq	%rbx, %rbx
	je	.LBB13_10
	cmpq	%rdi, %rbx
	je	.LBB13_10
	movq	(%rbx), %rcx
	movslq	4(%rcx), %rcx
	movq	72(%rbx,%rcx), %r14
	testq	%r14, %r14
	je	.LBB13_10
	leaq	32(%rsp), %rcx
	movq	%rbx, %rdx
	callq	"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"
	cmpb	$0, 40(%rsp)
	je	.LBB13_9
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*104(%rax)
	cmpl	$-1, %eax
	sete	%al
	movq	(%rbx), %rcx
	movslq	4(%rcx), %rcx
	movl	16(%rbx,%rcx), %edx
	cmpq	$0, 72(%rbx,%rcx)
	sete	%r8b
	andl	$23, %edx
	orb	%al, %r8b
	movzbl	%r8b, %eax
	shll	$2, %eax
	orl	%edx, %eax
	movl	%eax, 16(%rbx,%rcx)
	andl	20(%rbx,%rcx), %eax
	jne	.LBB13_11
.LBB13_9:
	leaq	32(%rsp), %rcx
	callq	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	movq	(%rdi), %rax
	movslq	4(%rax), %rax
	cmpl	$0, 16(%rdi,%rax)
	sete	%al
	jmp	.LBB13_10
.LBB13_11:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rcx
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rcx, %rdx
	testb	$4, %al
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rsi
	cmoveq	%rdx, %rsi
	leaq	48(%rsp), %rdi
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	leaq	64(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rbx, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ",unique,14
	.globl	"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	.p2align	4
"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ":
.seh_proc "??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$96, %rsp
	.seh_stackalloc 96
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?uncaught_exception@std@@YA_NXZ"
	testb	%al, %al
	jne	.LBB14_5
	movq	(%rsi), %rdi
	movq	(%rdi), %rax
	movslq	4(%rax), %rax
	cmpl	$0, 16(%rdi,%rax)
	jne	.LBB14_5
	testb	$2, 24(%rdi,%rax)
	je	.LBB14_5
	movq	72(%rdi,%rax), %rcx
	movq	(%rcx), %rax
	callq	*104(%rax)
	cmpl	$-1, %eax
	jne	.LBB14_5
	movq	(%rdi), %rax
	movslq	4(%rax), %rcx
	movl	16(%rdi,%rcx), %eax
	andl	$19, %eax
	orl	$4, %eax
	movl	%eax, 16(%rdi,%rcx)
	movl	20(%rdi,%rcx), %ecx
	andl	%ecx, %eax
	jne	.LBB14_7
.LBB14_5:
	movq	(%rsi), %rax
	movq	(%rax), %rcx
	movslq	4(%rcx), %rcx
	movq	72(%rax,%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB14_6
	movq	(%rcx), %rax
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	rex64 jmpq	*16(%rax)
.LBB14_6:
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB14_7:
	testb	$2, %al
	leaq	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"(%rip), %rax
	leaq	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"(%rip), %rdx
	cmoveq	%rax, %rdx
	testb	$4, %cl
	leaq	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"(%rip), %rsi
	cmoveq	%rdx, %rsi
	leaq	40(%rsp), %rdi
	movq	%rdi, %rcx
	movl	$1, %edx
	callq	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	leaq	56(%rsp), %rbx
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	leaq	"_TI5?AVfailure@ios_base@std@@"(%rip), %rdx
	movq	%rbx, %rcx
	callq	_CxxThrowException
	int3
	.seh_endproc

	.def	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z",unique,15
	.globl	"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	.p2align	4
"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z":
.seh_proc "?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rax
	movl	"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA"(%rip), %ecx
	movl	_tls_index(%rip), %r8d
	movq	%gs:88, %r9
	movq	(%r9,%r8,8), %r8
	cmpl	_Init_thread_epoch@SECREL32(%r8), %ecx
	jg	.LBB15_1
.LBB15_3:
	movl	%edx, (%rax)
	leaq	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A"(%rip), %rcx
	movq	%rcx, 8(%rax)
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB15_1:
	leaq	"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA"(%rip), %rcx
	movq	%rax, %rsi
	movl	%edx, %edi
	callq	_Init_thread_header
	movl	%edi, %edx
	movq	%rsi, %rax
	cmpl	$-1, "?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA"(%rip)
	jne	.LBB15_3
	leaq	"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA"(%rip), %rcx
	callq	_Init_thread_footer
	movl	%edi, %edx
	movq	%rsi, %rax
	jmp	.LBB15_3
	.seh_endproc

	.def	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z",unique,16
	.globl	"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	.p2align	4
"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z":
.seh_proc "??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movl	(%r8), %ecx
	movl	%ecx, 32(%rsp)
	movq	8(%r8), %rcx
	movq	%rcx, 40(%rsp)
	leaq	32(%rsp), %rdx
	movq	%rsi, %rcx
	movq	%rax, %r8
	callq	"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"
	leaq	"??_7failure@ios_base@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0failure@ios_base@std@@QEAA@AEBV012@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0failure@ios_base@std@@QEAA@AEBV012@@Z",unique,17
	.globl	"??0failure@ios_base@std@@QEAA@AEBV012@@Z"
	.p2align	4
"??0failure@ios_base@std@@QEAA@AEBV012@@Z":
.seh_proc "??0failure@ios_base@std@@QEAA@AEBV012@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rdx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rsi), %rcx
	callq	__std_exception_copy
	movl	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	leaq	"??_7failure@ios_base@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0system_error@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0system_error@std@@QEAA@AEBV01@@Z",unique,18
	.globl	"??0system_error@std@@QEAA@AEBV01@@Z"
	.p2align	4
"??0system_error@std@@QEAA@AEBV01@@Z":
.seh_proc "??0system_error@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rdx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rsi), %rcx
	callq	__std_exception_copy
	movl	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	leaq	"??_7system_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0_System_error@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0_System_error@std@@QEAA@AEBV01@@Z",unique,19
	.globl	"??0_System_error@std@@QEAA@AEBV01@@Z"
	.p2align	4
"??0_System_error@std@@QEAA@AEBV01@@Z":
.seh_proc "??0_System_error@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%rcx, %rdi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rdx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rsi), %rcx
	callq	__std_exception_copy
	leaq	"??_7_System_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movl	24(%rsi), %eax
	movl	%eax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??0runtime_error@std@@QEAA@AEBV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0runtime_error@std@@QEAA@AEBV01@@Z",unique,20
	.globl	"??0runtime_error@std@@QEAA@AEBV01@@Z"
	.p2align	4
"??0runtime_error@std@@QEAA@AEBV01@@Z":
.seh_proc "??0runtime_error@std@@QEAA@AEBV01@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	leaq	8(%rcx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	callq	__std_exception_copy
	leaq	"??_7runtime_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?name@_Iostream_error_category2@std@@UEBAPEBDXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?name@_Iostream_error_category2@std@@UEBAPEBDXZ",unique,21
	.globl	"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"
	.p2align	4
"?name@_Iostream_error_category2@std@@UEBAPEBDXZ":
	leaq	"??_C@_08LLGCOLLL@iostream?$AA@"(%rip), %rax
	retq

	.def	"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z",unique,22
	.globl	"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	.p2align	4
"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z":
.seh_proc "?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rsi
	cmpl	$1, %r8d
	jne	.LBB22_2
	movq	$0, 8(%rsi)
	movl	$32, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, (%rsi)
	movq	$21, 16(%rsi)
	movq	$31, 24(%rsi)
	movaps	"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB"(%rip), %xmm0
	movups	%xmm0, (%rax)
	movabsq	$8245935278387129697, %rcx
	movq	%rcx, 13(%rax)
	movb	$0, 21(%rax)
	jmp	.LBB22_9
.LBB22_2:
	movl	%r8d, %ecx
	callq	"?_Syserror_map@std@@YAPEBDH@Z"
	movq	%rax, %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	movups	%xmm0, 16(%rsi)
	movq	%rax, %rcx
	callq	strlen
	testq	%rax, %rax
	js	.LBB22_10
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.LBB22_5
	movq	%rbx, 16(%rsi)
	movq	$15, 24(%rsi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rsi,%rbx)
	jmp	.LBB22_9
.LBB22_5:
	movq	%rbx, %rax
	orq	$15, %rax
	cmpq	$23, %rax
	movl	$22, %r15d
	cmovaeq	%rax, %r15
	cmpq	$4095, %rax
	jb	.LBB22_7
	leaq	40(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r14
	andq	$-32, %r14
	movq	%rax, -8(%r14)
	jmp	.LBB22_8
.LBB22_7:
	leaq	1(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r14
.LBB22_8:
	movq	%r14, (%rsi)
	movq	%rbx, 16(%rsi)
	movq	%r15, 24(%rsi)
	movq	%r14, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%r14,%rbx)
.LBB22_9:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB22_10:
	callq	"?_Xlen_string@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z",unique,23
	.globl	"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"
	.p2align	4
"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z":
	movq	%rdx, %rax
	movl	%r8d, (%rdx)
	movq	%rcx, 8(%rdx)
	retq

	.def	"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z",unique,24
	.globl	"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"
	.p2align	4
"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z":
	movq	8(%rdx), %rax
	movq	8(%rcx), %rcx
	cmpq	8(%rax), %rcx
	sete	%cl
	cmpl	%r8d, (%rdx)
	sete	%al
	andb	%cl, %al
	retq

	.def	"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z",unique,25
	.globl	"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"
	.p2align	4
"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z":
.seh_proc "?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%r8, %rsi
	movl	%edx, %r8d
	movq	(%rcx), %rax
	leaq	32(%rsp), %rdx
	callq	*24(%rax)
	movq	40(%rsp), %rax
	movq	8(%rsi), %rcx
	movq	8(%rax), %rax
	cmpq	8(%rcx), %rax
	sete	%cl
	movl	32(%rsp), %eax
	cmpl	(%rsi), %eax
	sete	%al
	andb	%cl, %al
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z",unique,26
	.globl	"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.p2align	4
"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z":
.seh_proc "??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testb	$1, %dl
	je	.LBB26_2
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB26_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?_Xlen_string@std@@YAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xlen_string@std@@YAXXZ",unique,27
	.globl	"?_Xlen_string@std@@YAXXZ"
	.p2align	4
"?_Xlen_string@std@@YAXXZ":
.seh_proc "?_Xlen_string@std@@YAXXZ"
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"(%rip), %rcx
	callq	"?_Xlength_error@std@@YAXPEBD@Z"
	int3
	.seh_endproc

	.def	"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z",unique,28
	.globl	"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"
	.p2align	4
"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z":
.seh_proc "??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$176, %rsp
	.seh_stackalloc 176
	.seh_endprologue
	movq	%r8, %rdi
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	%r8, %rcx
	callq	strlen
	testq	%rax, %rax
	js	.LBB28_39
	movq	%rax, %r14
	cmpq	$16, %rax
	jae	.LBB28_2
	movq	%r14, 64(%rsp)
	movq	$15, 72(%rsp)
	leaq	48(%rsp), %r15
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%r14, %r8
	callq	_intel_fast_memcpy
	movb	$0, 48(%rsp,%r14)
	movq	64(%rsp), %r14
	cmpq	$16, 72(%rsp)
	jb	.LBB28_8
	movq	48(%rsp), %r15
.LBB28_8:
	movl	(%rbx), %edi
	movq	8(%rbx), %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 96(%rsp)
	testq	%r14, %r14
	js	.LBB28_39
	cmpq	$16, %r14
	jae	.LBB28_10
	movq	%r14, 96(%rsp)
	movq	$15, 104(%rsp)
	movups	(%r15), %xmm0
	movaps	%xmm0, 80(%rsp)
	testq	%r14, %r14
	jne	.LBB28_15
	leaq	48(%rsp), %r15
	jmp	.LBB28_18
.LBB28_2:
	movq	%r14, %r13
	orq	$15, %r13
	cmpq	$23, %r13
	movl	$22, %r12d
	cmovaeq	%r13, %r12
	cmpq	$4095, %r13
	jb	.LBB28_4
	leaq	40(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r15
	andq	$-32, %r15
	movq	%rax, -8(%r15)
	jmp	.LBB28_5
.LBB28_4:
	leaq	1(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r15
.LBB28_5:
	movq	%r15, 48(%rsp)
	movq	%r14, 64(%rsp)
	movq	%r12, 72(%rsp)
	movq	%r15, %rcx
	movq	%rdi, %rdx
	movq	%r14, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%r15,%r14)
	movl	(%rbx), %edi
	movq	8(%rbx), %rbx
	movq	$0, 88(%rsp)
	cmpq	$4095, %r13
	jb	.LBB28_13
.LBB28_12:
	leaq	40(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rcx
	andq	$-32, %rcx
	movq	%rax, -8(%rcx)
	jmp	.LBB28_14
.LBB28_10:
	movq	%r14, %r13
	orq	$15, %r13
	cmpq	$23, %r13
	movl	$22, %r12d
	cmovaeq	%r13, %r12
	cmpq	$4095, %r13
	jae	.LBB28_12
.LBB28_13:
	leaq	1(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
.LBB28_14:
	movq	%rcx, 80(%rsp)
	movq	%r14, 96(%rsp)
	movq	%r12, 104(%rsp)
	incq	%r14
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	_intel_fast_memcpy
.LBB28_15:
	leaq	48(%rsp), %r15
	leaq	"??_C@_02LMMGGCAJ@?3?5?$AA@"(%rip), %rdx
	leaq	80(%rsp), %rcx
	movl	$2, %r8d
	callq	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
.LBB28_18:
	movq	(%rbx), %rax
	leaq	112(%rsp), %r14
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movl	%edi, %r8d
	callq	*16(%rax)
	movq	128(%rsp), %r8
	cmpq	$16, 136(%rsp)
	jb	.LBB28_20
	movq	112(%rsp), %r14
.LBB28_20:
	leaq	80(%rsp), %rcx
	movq	%r14, %rdx
	callq	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	movq	136(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB28_25
	movq	112(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB28_24
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB28_40
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB28_24:
	callq	"??3@YAXPEAX_K@Z"
.LBB28_25:
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	cmpq	$16, 168(%rsp)
	jb	.LBB28_26
	movq	144(%rsp), %rax
	jmp	.LBB28_28
.LBB28_26:
	leaq	144(%rsp), %rax
.LBB28_28:
	leaq	"??_7exception@std@@6B@"(%rip), %rcx
	movq	%rcx, (%rsi)
	leaq	8(%rsi), %rdx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rsi)
	movq	%rax, 112(%rsp)
	movb	$1, 120(%rsp)
	leaq	112(%rsp), %rcx
	callq	__std_exception_copy
	leaq	"??_7runtime_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	168(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB28_33
	movq	144(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB28_32
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB28_40
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB28_32:
	callq	"??3@YAXPEAX_K@Z"
.LBB28_33:
	leaq	"??_7_System_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movl	%edi, 24(%rsi)
	movq	%rbx, 32(%rsi)
	movq	72(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB28_38
	movq	(%r15), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB28_37
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB28_40
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB28_37:
	callq	"??3@YAXPEAX_K@Z"
.LBB28_38:
	leaq	"??_7system_error@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$176, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB28_39:
	callq	"?_Xlen_string@std@@YAXXZ"
.LBB28_40:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
	int3
	.seh_endproc

	.def	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z",unique,29
	.globl	"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	.p2align	4
"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z":
.seh_proc "?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rcx, %rsi
	movq	16(%rcx), %rdi
	movq	24(%rcx), %r14
	movq	%r14, %rax
	subq	%rdi, %rax
	cmpq	%rax, %r8
	jbe	.LBB29_1
	movabsq	$9223372036854775807, %r12
	movq	%r12, %rax
	subq	%rdi, %rax
	cmpq	%r8, %rax
	jb	.LBB29_21
	movq	%rdi, %rbp
	addq	%r8, %rbp
	movq	%r8, 48(%rsp)
	js	.LBB29_6
	movq	%rbp, %rax
	orq	$15, %rax
	movq	%r14, %r13
	shrq	%r13
	movq	%r13, %rcx
	xorq	%r12, %rcx
	addq	%r14, %r13
	cmpq	%r13, %rax
	cmovaq	%rax, %r13
	cmpq	%rcx, %r14
	cmovbeq	%r13, %r12
	movq	%r12, %rcx
	movq	%rdx, %r15
	incq	%rcx
	jne	.LBB29_9
	xorl	%ebx, %ebx
	movq	$-1, %r13
	jmp	.LBB29_13
.LBB29_1:
	leaq	(%rdi,%r8), %rbx
	movq	%rbx, 16(%rsi)
	movq	%rsi, %r15
	cmpq	$16, %r14
	jb	.LBB29_3
	movq	(%rsi), %r15
.LBB29_3:
	addq	%r15, %rdi
	movq	%rdi, %rcx
	callq	memmove
	movb	$0, (%r15,%rbx)
	jmp	.LBB29_20
.LBB29_6:
	movq	%rdx, %r15
	jmp	.LBB29_11
.LBB29_9:
	cmpq	$4096, %rcx
	jb	.LBB29_12
	cmpq	$-39, %rcx
	jae	.LBB29_22
.LBB29_11:
	leaq	40(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rbx
	andq	$-32, %rbx
	movq	%rax, -8(%rbx)
	movq	%r12, %r13
	jmp	.LBB29_13
.LBB29_12:
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rbx
.LBB29_13:
	movq	%rbp, 16(%rsi)
	movq	%r13, 24(%rsi)
	cmpq	$16, %r14
	jb	.LBB29_18
	movq	(%rsi), %r12
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%rdi, %r8
	callq	_intel_fast_memcpy
	addq	%rbx, %rdi
	movq	%rdi, %rcx
	movq	%r15, %rdx
	movq	48(%rsp), %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rbx,%rbp)
	leaq	1(%r14), %rdx
	cmpq	$4096, %rdx
	jb	.LBB29_17
	movq	-8(%r12), %rax
	addq	$-8, %r12
	subq	%rax, %r12
	cmpq	$32, %r12
	jae	.LBB29_23
	addq	$40, %r14
	movq	%r14, %rdx
	movq	%rax, %r12
.LBB29_17:
	movq	%r12, %rcx
	callq	"??3@YAXPEAX_K@Z"
	jmp	.LBB29_19
.LBB29_18:
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r8
	callq	_intel_fast_memcpy
	addq	%rbx, %rdi
	movq	%rdi, %rcx
	movq	%r15, %rdx
	movq	48(%rsp), %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rbx,%rbp)
.LBB29_19:
	movq	%rbx, (%rsi)
.LBB29_20:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB29_21:
	callq	"?_Xlen_string@std@@YAXXZ"
.LBB29_23:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
.LBB29_22:
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"??_Gruntime_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gruntime_error@std@@UEAAPEAXI@Z",unique,30
	.globl	"??_Gruntime_error@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gruntime_error@std@@UEAAPEAXI@Z":
.seh_proc "??_Gruntime_error@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB30_2
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB30_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_G_System_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G_System_error@std@@UEAAPEAXI@Z",unique,31
	.globl	"??_G_System_error@std@@UEAAPEAXI@Z"
	.p2align	4
"??_G_System_error@std@@UEAAPEAXI@Z":
.seh_proc "??_G_System_error@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB31_2
	movl	$40, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB31_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_Gsystem_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gsystem_error@std@@UEAAPEAXI@Z",unique,32
	.globl	"??_Gsystem_error@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gsystem_error@std@@UEAAPEAXI@Z":
.seh_proc "??_Gsystem_error@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB32_2
	movl	$40, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB32_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_Gfailure@ios_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gfailure@ios_base@std@@UEAAPEAXI@Z",unique,33
	.globl	"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gfailure@ios_base@std@@UEAAPEAXI@Z":
.seh_proc "??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB33_2
	movl	$40, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB33_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z",unique,34
	.globl	"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	.p2align	4
"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z":
.seh_proc "??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	44(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"(%rip), %rbx
	movq	"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip), %r14
	testq	%r14, %r14
	jne	.LBB34_4
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	cmpq	$0, "?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip)
	jne	.LBB34_3
	movslq	"?_Id_cnt@id@locale@std@@0HA"(%rip), %rax
	incq	%rax
	movl	%eax, "?_Id_cnt@id@locale@std@@0HA"(%rip)
	movq	%rax, "?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip)
.LBB34_3:
	leaq	48(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"(%rip), %r14
.LBB34_4:
	movq	8(%rsi), %rax
	cmpq	24(%rax), %r14
	jae	.LBB34_6
	movq	16(%rax), %rcx
	movq	(%rcx,%r14,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB34_14
.LBB34_6:
	cmpb	$0, 36(%rax)
	je	.LBB34_9
	callq	"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"
	cmpq	24(%rax), %r14
	jae	.LBB34_9
	movq	16(%rax), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB34_14
.LBB34_9:
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	jne	.LBB34_14
	movl	$16, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rdi
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB34_11
	movq	40(%rsi), %rax
	addq	$48, %rsi
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	jmp	.LBB34_13
.LBB34_11:
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rsi
.LBB34_13:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movw	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	callq	"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"
	movl	$0, 8(%rdi)
	leaq	"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rbx, %rcx
	callq	"??1_Locinfo@std@@QEAA@XZ"
	movq	%rdi, %rcx
	callq	"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"
	movq	(%rdi), %rax
	movq	%rdi, %rcx
	callq	*8(%rax)
	movq	%rdi, "?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"(%rip)
.LBB34_14:
	leaq	44(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??1_Locinfo@std@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1_Locinfo@std@@QEAA@XZ",unique,35
	.globl	"??1_Locinfo@std@@QEAA@XZ"
	.p2align	4
"??1_Locinfo@std@@QEAA@XZ":
.seh_proc "??1_Locinfo@std@@QEAA@XZ"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	"?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z"
	movq	88(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB35_2
	callq	free
.LBB35_2:
	movq	$0, 88(%rsi)
	movq	72(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB35_4
	callq	free
.LBB35_4:
	movq	$0, 72(%rsi)
	movq	56(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB35_6
	callq	free
.LBB35_6:
	movq	$0, 56(%rsi)
	movq	40(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB35_8
	callq	free
.LBB35_8:
	movq	$0, 40(%rsi)
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB35_10
	callq	free
.LBB35_10:
	movq	$0, 24(%rsi)
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB35_12
	callq	free
.LBB35_12:
	movq	$0, 8(%rsi)
	movq	%rsi, %rcx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	"??1_Lockit@std@@QEAA@XZ"
	.seh_endproc

	.def	"?_Incref@facet@locale@std@@UEAAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Incref@facet@locale@std@@UEAAXXZ",unique,36
	.globl	"?_Incref@facet@locale@std@@UEAAXXZ"
	.p2align	4
"?_Incref@facet@locale@std@@UEAAXXZ":
	lock		incl	8(%rcx)
	retq

	.def	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ",unique,37
	.globl	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.p2align	4
"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ":
	xorl	%eax, %eax
	lock		decl	8(%rcx)
	cmoveq	%rcx, %rax
	retq

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z",unique,38
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %rsi
	movq	%rcx, %r14
	movzbl	240(%rsp), %ebp
	movq	248(%rsp), %r9
	leaq	"??_C@_02BBAHNLBA@?$CFp?$AA@"(%rip), %r8
	leaq	80(%rsp), %r15
	movl	$64, %edx
	movq	%r15, %rcx
	callq	sprintf_s
	cltq
	movzbl	(%rbx), %ecx
	movb	%cl, 64(%rsp)
	movq	8(%rbx), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r15, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@7fffffffffffffff7fffffffffffffff
	.section	.rdata,"dr",discard,__xmm@7fffffffffffffff7fffffffffffffff
	.p2align	4, 0x0
__xmm@7fffffffffffffff7fffffffffffffff:
	.quad	0x7fffffffffffffff
	.quad	0x7fffffffffffffff
	.globl	__real@4202a05f20000000
	.section	.rdata,"dr",discard,__real@4202a05f20000000
	.p2align	3, 0x0
__real@4202a05f20000000:
	.quad	0x4202a05f20000000
	.globl	__real@7ff0000000000000
	.section	.rdata,"dr",discard,__real@7ff0000000000000
	.p2align	3, 0x0
__real@7ff0000000000000:
	.quad	0x7ff0000000000000
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z",unique,39
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$160, %rsp
	.seh_stackalloc 160
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm %xmm7, 144
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movsd	264(%rsp), %xmm6
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 80(%rsp)
	movq	$0, 96(%rsp)
	movq	$15, 104(%rsp)
	movl	$12288, %eax
	andl	24(%r9), %eax
	cmpl	$12288, %eax
	jne	.LBB39_2
	movapd	__xmm@7fffffffffffffff7fffffffffffffff(%rip), %xmm7
	andpd	%xmm6, %xmm7
	movl	$13, %edx
	movq	$-1, %r15
	jmp	.LBB39_5
.LBB39_2:
	movq	32(%rdi), %r15
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	testq	%r15, %r15
	movl	$6, %edx
	cmoveq	%rcx, %rdx
	cmovgq	%r15, %rdx
	movslq	%edx, %rdx
	movapd	__xmm@7fffffffffffffff7fffffffffffffff(%rip), %xmm7
	andpd	%xmm6, %xmm7
	cmpl	$8192, %eax
	jne	.LBB39_5
	ucomisd	__real@4202a05f20000000(%rip), %xmm7
	jbe	.LBB39_5
	leaq	72(%rsp), %rax
	movapd	%xmm6, %xmm0
	movq	%rdx, %r12
	movq	%rax, %rdx
	callq	frexp
	movq	%r12, %rdx
	movl	72(%rsp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	imull	$30103, %ecx, %eax
	shrl	$5, %eax
	imulq	$175921861, %rax, %rax
	shrq	$39, %rax
	addq	%rax, %rdx
.LBB39_5:
	addq	$50, %rdx
	leaq	80(%rsp), %r12
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	callq	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	movl	24(%rdi), %eax
	movl	%eax, %ecx
	andl	$-17, %ecx
	ucomisd	__real@7ff0000000000000(%rip), %xmm7
	cmovnel	%eax, %ecx
	movb	$37, 72(%rsp)
	testb	$32, %cl
	jne	.LBB39_7
	leaq	73(%rsp), %rax
	testb	$16, %cl
	jne	.LBB39_9
	jmp	.LBB39_10
.LBB39_7:
	leaq	74(%rsp), %rax
	movb	$43, 73(%rsp)
	testb	$16, %cl
	je	.LBB39_10
.LBB39_9:
	movb	$35, (%rax)
	incq	%rax
.LBB39_10:
	testb	$4, %cl
	movl	$1634100583, %edx
	movl	$1095124295, %r8d
	cmovel	%edx, %r8d
	shrl	$9, %ecx
	andb	$24, %cl
	shrl	%cl, %r8d
	movw	$10798, (%rax)
	movb	$76, 2(%rax)
	movb	%r8b, 3(%rax)
	movb	$0, 4(%rax)
	movq	96(%rsp), %rdx
	cmpq	$16, 104(%rsp)
	movq	%r12, %rcx
	jb	.LBB39_12
	movq	80(%rsp), %rcx
.LBB39_12:
	movzbl	256(%rsp), %ebp
	movsd	%xmm6, 32(%rsp)
	leaq	72(%rsp), %r8
	movl	%r15d, %r9d
	callq	sprintf_s
	cmpq	$16, 104(%rsp)
	jb	.LBB39_14
	movq	80(%rsp), %r12
.LBB39_14:
	movzbl	(%r14), %ecx
	movb	%cl, 112(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 120(%rsp)
	ucomisd	__real@7ff0000000000000(%rip), %xmm7
	cltq
	setne	56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r12, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	112(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z"
	movq	104(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB39_19
	movq	80(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB39_18
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB39_20
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB39_18:
	callq	"??3@YAXPEAX_K@Z"
.LBB39_19:
	movq	%rsi, %rax
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	.seh_startepilogue
	addq	$160, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB39_20:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
	int3
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z",unique,40
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$160, %rsp
	.seh_stackalloc 160
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm %xmm7, 144
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movsd	264(%rsp), %xmm6
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 80(%rsp)
	movq	$0, 96(%rsp)
	movq	$15, 104(%rsp)
	movl	$12288, %eax
	andl	24(%r9), %eax
	cmpl	$12288, %eax
	jne	.LBB40_2
	movapd	__xmm@7fffffffffffffff7fffffffffffffff(%rip), %xmm7
	andpd	%xmm6, %xmm7
	movl	$13, %edx
	movq	$-1, %r15
	jmp	.LBB40_5
.LBB40_2:
	movq	32(%rdi), %r15
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	testq	%r15, %r15
	movl	$6, %edx
	cmoveq	%rcx, %rdx
	cmovgq	%r15, %rdx
	movslq	%edx, %rdx
	movapd	__xmm@7fffffffffffffff7fffffffffffffff(%rip), %xmm7
	andpd	%xmm6, %xmm7
	cmpl	$8192, %eax
	jne	.LBB40_5
	ucomisd	__real@4202a05f20000000(%rip), %xmm7
	jbe	.LBB40_5
	leaq	72(%rsp), %rax
	movapd	%xmm6, %xmm0
	movq	%rdx, %r12
	movq	%rax, %rdx
	callq	frexp
	movq	%r12, %rdx
	movl	72(%rsp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	imull	$30103, %ecx, %eax
	shrl	$5, %eax
	imulq	$175921861, %rax, %rax
	shrq	$39, %rax
	addq	%rax, %rdx
.LBB40_5:
	addq	$50, %rdx
	leaq	80(%rsp), %r12
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	callq	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	movl	24(%rdi), %eax
	movl	%eax, %ecx
	andl	$-17, %ecx
	ucomisd	__real@7ff0000000000000(%rip), %xmm7
	cmovnel	%eax, %ecx
	movb	$37, 72(%rsp)
	testb	$32, %cl
	jne	.LBB40_7
	leaq	73(%rsp), %rax
	testb	$16, %cl
	jne	.LBB40_9
	jmp	.LBB40_10
.LBB40_7:
	leaq	74(%rsp), %rax
	movb	$43, 73(%rsp)
	testb	$16, %cl
	je	.LBB40_10
.LBB40_9:
	movb	$35, (%rax)
	incq	%rax
.LBB40_10:
	testb	$4, %cl
	movl	$1634100583, %edx
	movl	$1095124295, %r8d
	cmovel	%edx, %r8d
	shrl	$9, %ecx
	andb	$24, %cl
	shrl	%cl, %r8d
	movw	$10798, (%rax)
	movb	%r8b, 2(%rax)
	movb	$0, 3(%rax)
	movq	96(%rsp), %rdx
	cmpq	$16, 104(%rsp)
	movq	%r12, %rcx
	jb	.LBB40_12
	movq	80(%rsp), %rcx
.LBB40_12:
	movzbl	256(%rsp), %ebp
	movsd	%xmm6, 32(%rsp)
	leaq	72(%rsp), %r8
	movl	%r15d, %r9d
	callq	sprintf_s
	cmpq	$16, 104(%rsp)
	jb	.LBB40_14
	movq	80(%rsp), %r12
.LBB40_14:
	movzbl	(%r14), %ecx
	movb	%cl, 112(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 120(%rsp)
	ucomisd	__real@7ff0000000000000(%rip), %xmm7
	cltq
	setne	56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r12, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	112(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z"
	movq	104(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB40_19
	movq	80(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB40_18
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB40_20
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB40_18:
	callq	"??3@YAXPEAX_K@Z"
.LBB40_19:
	movq	%rsi, %rax
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	.seh_startepilogue
	addq	$160, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB40_20:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
	int3
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z",unique,41
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movl	24(%r9), %ecx
	movb	$37, 56(%rsp)
	testb	$32, %cl
	jne	.LBB41_2
	leaq	57(%rsp), %rax
	testb	$8, %cl
	jne	.LBB41_4
	jmp	.LBB41_5
.LBB41_2:
	leaq	58(%rsp), %rax
	movb	$43, 57(%rsp)
	testb	$8, %cl
	je	.LBB41_5
.LBB41_4:
	movb	$35, (%rax)
	incq	%rax
.LBB41_5:
	movq	248(%rsp), %r9
	movzbl	240(%rsp), %ebp
	movb	$52, 2(%rax)
	movw	$13897, (%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB41_9
	cmpl	$2048, %edx
	jne	.LBB41_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB41_10
.LBB41_9:
	movb	$111, %cl
	jmp	.LBB41_10
.LBB41_7:
	movb	$117, %cl
.LBB41_10:
	movb	%cl, 3(%rax)
	movb	$0, 4(%rax)
	leaq	80(%rsp), %r15
	leaq	56(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	callq	sprintf_s
	cltq
	movzbl	(%r14), %ecx
	movb	%cl, 64(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r15, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z",unique,42
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movl	24(%r9), %ecx
	movb	$37, 56(%rsp)
	testb	$32, %cl
	jne	.LBB42_2
	leaq	57(%rsp), %rax
	testb	$8, %cl
	jne	.LBB42_4
	jmp	.LBB42_5
.LBB42_2:
	leaq	58(%rsp), %rax
	movb	$43, 57(%rsp)
	testb	$8, %cl
	je	.LBB42_5
.LBB42_4:
	movb	$35, (%rax)
	incq	%rax
.LBB42_5:
	movq	248(%rsp), %r9
	movzbl	240(%rsp), %ebp
	movb	$52, 2(%rax)
	movw	$13897, (%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB42_9
	cmpl	$2048, %edx
	jne	.LBB42_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB42_10
.LBB42_9:
	movb	$111, %cl
	jmp	.LBB42_10
.LBB42_7:
	movb	$100, %cl
.LBB42_10:
	movb	%cl, 3(%rax)
	movb	$0, 4(%rax)
	leaq	80(%rsp), %r15
	leaq	56(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	callq	sprintf_s
	cltq
	movzbl	(%r14), %ecx
	movb	%cl, 64(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r15, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z",unique,43
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movl	24(%r9), %ecx
	movb	$37, 58(%rsp)
	testb	$32, %cl
	jne	.LBB43_2
	leaq	59(%rsp), %rax
	testb	$8, %cl
	jne	.LBB43_4
	jmp	.LBB43_5
.LBB43_2:
	leaq	60(%rsp), %rax
	movb	$43, 59(%rsp)
	testb	$8, %cl
	je	.LBB43_5
.LBB43_4:
	movb	$35, (%rax)
	incq	%rax
.LBB43_5:
	movl	248(%rsp), %r9d
	movzbl	240(%rsp), %ebp
	movb	$108, (%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB43_9
	cmpl	$2048, %edx
	jne	.LBB43_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB43_10
.LBB43_9:
	movb	$111, %cl
	jmp	.LBB43_10
.LBB43_7:
	movb	$117, %cl
.LBB43_10:
	movb	%cl, 1(%rax)
	movb	$0, 2(%rax)
	leaq	80(%rsp), %r15
	leaq	58(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	callq	sprintf_s
	cltq
	movzbl	(%r14), %ecx
	movb	%cl, 64(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r15, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z",unique,44
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %r14
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	movl	24(%r9), %ecx
	movb	$37, 58(%rsp)
	testb	$32, %cl
	jne	.LBB44_2
	leaq	59(%rsp), %rax
	testb	$8, %cl
	jne	.LBB44_4
	jmp	.LBB44_5
.LBB44_2:
	leaq	60(%rsp), %rax
	movb	$43, 59(%rsp)
	testb	$8, %cl
	je	.LBB44_5
.LBB44_4:
	movb	$35, (%rax)
	incq	%rax
.LBB44_5:
	movl	248(%rsp), %r9d
	movzbl	240(%rsp), %ebp
	movb	$108, (%rax)
	movl	%ecx, %edx
	andl	$3584, %edx
	cmpl	$1024, %edx
	je	.LBB44_9
	cmpl	$2048, %edx
	jne	.LBB44_7
	testb	$4, %cl
	sete	%cl
	shlb	$5, %cl
	orb	$88, %cl
	jmp	.LBB44_10
.LBB44_9:
	movb	$111, %cl
	jmp	.LBB44_10
.LBB44_7:
	movb	$100, %cl
.LBB44_10:
	movb	%cl, 1(%rax)
	movb	$0, 2(%rax)
	leaq	80(%rsp), %r15
	leaq	58(%rsp), %r8
	movl	$64, %edx
	movq	%r15, %rcx
	callq	sprintf_s
	cltq
	movzbl	(%r14), %ecx
	movb	%cl, 64(%rsp)
	movq	8(%r14), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r15, 40(%rsp)
	movb	%bpl, 32(%rsp)
	leaq	64(%rsp), %r8
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %r9
	callq	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z",unique,45
	.globl	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"
	.p2align	4
"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z":
.seh_proc "?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %r14
	movzbl	280(%rsp), %esi
	movzbl	272(%rsp), %r12d
	testb	$64, 25(%r9)
	jne	.LBB45_2
	movzbl	%sil, %eax
	movzbl	(%rbx), %edx
	movb	%dl, 152(%rsp)
	movq	8(%rbx), %rdx
	movq	%rdx, 160(%rsp)
	movq	(%rcx), %r10
	movl	%eax, 40(%rsp)
	movb	%r12b, 32(%rsp)
	leaq	152(%rsp), %r8
	movq	%r14, %rdx
	movq	%rdi, %r9
	callq	*72(%r10)
	jmp	.LBB45_45
.LBB45_2:
	movq	%r14, 72(%rsp)
	movq	64(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 88(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	80(%rsp), %r14
	movq	%r14, %rcx
	callq	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	movq	%rax, %r15
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB45_5
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB45_5
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB45_5:
	testb	%sil, %sil
	je	.LBB45_7
	movq	(%r15), %rax
	leaq	120(%rsp), %rdx
	movq	%r15, %rcx
	callq	*56(%rax)
	jmp	.LBB45_8
.LBB45_7:
	movq	(%r15), %rax
	leaq	120(%rsp), %rdx
	movq	%r15, %rcx
	callq	*48(%rax)
.LBB45_8:
	movups	120(%rsp), %xmm0
	movups	136(%rsp), %xmm1
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	40(%rdi), %rax
	movq	96(%rsp), %rsi
	xorl	%ebp, %ebp
	testq	%rax, %rax
	jle	.LBB45_10
	movq	%rax, %rcx
	subq	%rsi, %rcx
	cmovaeq	%rcx, %rbp
.LBB45_10:
	movl	$448, %ecx
	andl	24(%rdi), %ecx
	movzbl	(%rbx), %r13d
	movq	8(%rbx), %r15
	cmpl	$64, %ecx
	je	.LBB45_21
	testq	%rbp, %rbp
	je	.LBB45_20
	movzbl	%r12b, %ebp
	cmpq	%rax, %rsi
	movq	%rax, %r12
	cmovbq	%rsi, %r12
	subq	%rax, %r12
	jmp	.LBB45_13
	.p2align	4
.LBB45_18:
	movb	$1, %r13b
.LBB45_19:
	incq	%r12
	je	.LBB45_20
.LBB45_13:
	testq	%r15, %r15
	je	.LBB45_18
	movq	64(%r15), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB45_17
	movq	88(%r15), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB45_17
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	272(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.LBB45_19
	.p2align	4
.LBB45_17:
	movq	(%r15), %rax
	movq	%r15, %rcx
	movl	%ebp, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB45_19
	jmp	.LBB45_18
.LBB45_20:
	movb	%r13b, (%rbx)
	movq	%r15, 8(%rbx)
	xorl	%ebp, %ebp
.LBB45_21:
	movq	80(%rsp), %rax
	movq	104(%rsp), %rcx
	testq	%rsi, %rsi
	movq	%rax, 64(%rsp)
	movq	%rcx, 56(%rsp)
	je	.LBB45_30
	cmpq	$16, %rcx
	cmovaeq	%rax, %r14
	xorl	%r12d, %r12d
	jmp	.LBB45_23
	.p2align	4
.LBB45_28:
	movb	$1, %r13b
.LBB45_29:
	incq	%r12
	cmpq	%r12, %rsi
	je	.LBB45_30
.LBB45_23:
	testq	%r15, %r15
	je	.LBB45_28
	movzbl	(%r14,%r12), %eax
	movq	64(%r15), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB45_27
	movq	88(%r15), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB45_27
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB45_29
	.p2align	4
.LBB45_27:
	movzbl	%al, %edx
	movq	(%r15), %rax
	movq	%r15, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB45_29
	jmp	.LBB45_28
.LBB45_30:
	movb	%r13b, (%rbx)
	movq	%r15, 8(%rbx)
	movq	$0, 40(%rdi)
	testq	%rbp, %rbp
	je	.LBB45_31
	movzbl	272(%rsp), %ebx
	movzbl	%bl, %edi
	movq	72(%rsp), %r14
	movq	64(%rsp), %rsi
	movq	56(%rsp), %r12
	jmp	.LBB45_33
	.p2align	4
.LBB45_38:
	movb	$1, %r13b
.LBB45_39:
	decq	%rbp
	je	.LBB45_40
.LBB45_33:
	testq	%r15, %r15
	je	.LBB45_38
	movq	64(%r15), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB45_37
	movq	88(%r15), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB45_37
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	jmp	.LBB45_39
	.p2align	4
.LBB45_37:
	movq	(%r15), %rax
	movq	%r15, %rcx
	movl	%edi, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB45_39
	jmp	.LBB45_38
.LBB45_31:
	movq	72(%rsp), %r14
	movq	64(%rsp), %rsi
	movq	56(%rsp), %r12
.LBB45_40:
	movb	%r13b, (%r14)
	movq	%r15, 8(%r14)
	cmpq	$16, %r12
	jb	.LBB45_45
	leaq	1(%r12), %rdx
	cmpq	$4096, %rdx
	jb	.LBB45_44
	movq	-8(%rsi), %rax
	addq	$-8, %rsi
	subq	%rax, %rsi
	cmpq	$32, %rsi
	jae	.LBB45_46
	addq	$40, %r12
	movq	%r12, %rdx
	movq	%rax, %rsi
.LBB45_44:
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB45_45:
	movq	%r14, %rax
	.seh_startepilogue
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB45_46:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
	int3
	.seh_endproc

	.def	"??_G_Facet_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G_Facet_base@std@@UEAAPEAXI@Z",unique,46
	.globl	"??_G_Facet_base@std@@UEAAPEAXI@Z"
	.p2align	4
"??_G_Facet_base@std@@UEAAPEAXI@Z":
	ud2

	.def	"??_Gfacet@locale@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gfacet@locale@std@@MEAAPEAXI@Z",unique,47
	.globl	"??_Gfacet@locale@std@@MEAAPEAXI@Z"
	.p2align	4
"??_Gfacet@locale@std@@MEAAPEAXI@Z":
.seh_proc "??_Gfacet@locale@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testb	$1, %dl
	je	.LBB47_2
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB47_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z",unique,48
	.globl	"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.p2align	4
"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z":
.seh_proc "??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testb	$1, %dl
	je	.LBB48_2
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB48_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z",unique,49
	.globl	"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	.p2align	4
"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z":
.seh_proc "?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rbx
	movq	%rdx, %rbp
	movq	256(%rsp), %r14
	movq	248(%rsp), %r15
	testq	%r14, %r14
	je	.LBB49_1
	movzbl	(%r15), %ecx
	addb	$-43, %cl
	xorl	%eax, %eax
	testb	$-3, %cl
	sete	%al
	jmp	.LBB49_3
.LBB49_1:
	xorl	%eax, %eax
.LBB49_3:
	movl	$3584, %ecx
	andl	24(%rdi), %ecx
	cmpl	$2048, %ecx
	jne	.LBB49_7
	leaq	2(%rax), %rsi
	cmpq	%r14, %rsi
	ja	.LBB49_7
	cmpb	$48, (%r15,%rax)
	jne	.LBB49_7
	movzbl	1(%rax,%r15), %ecx
	orl	$32, %ecx
	cmpl	$120, %ecx
	je	.LBB49_8
.LBB49_7:
	movq	%rax, %rsi
.LBB49_8:
	movq	64(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	48(%rsp), %r12
	movq	%r12, %rcx
	callq	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	movq	%rax, %r13
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB49_11
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB49_11
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB49_11:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	testq	%r14, %r14
	js	.LBB49_120
	cmpq	$15, %r14
	movq	%rbx, 80(%rsp)
	movq	%rbp, 88(%rsp)
	ja	.LBB49_14
	movq	%r14, 64(%rsp)
	movq	$15, 72(%rsp)
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	_intel_fast_memset
	movb	$0, 48(%rsp,%r14)
	cmpq	$16, 72(%rsp)
	jae	.LBB49_19
	jmp	.LBB49_20
.LBB49_14:
	movq	%rdi, %rbx
	movq	%r14, %rax
	orq	$15, %rax
	cmpq	$23, %rax
	movl	$22, %edi
	cmovaeq	%rax, %rdi
	cmpq	$4095, %rax
	jb	.LBB49_16
	leaq	40(%rdi), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rbp
	andq	$-32, %rbp
	movq	%rax, -8(%rbp)
	jmp	.LBB49_17
.LBB49_16:
	leaq	1(%rdi), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rbp
.LBB49_17:
	movq	%rbp, 48(%rsp)
	movq	%r14, 64(%rsp)
	movq	%rdi, 72(%rsp)
	movq	%rbp, %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	_intel_fast_memset
	movb	$0, (%rbp,%r14)
	movq	%rbx, %rdi
	movq	80(%rsp), %rbx
	cmpq	$16, 72(%rsp)
	jb	.LBB49_20
.LBB49_19:
	movq	48(%rsp), %r12
.LBB49_20:
	leaq	(%r15,%r14), %r8
	movq	(%r13), %rax
	movq	%r13, %rcx
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	*56(%rax)
	movq	64(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 112(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	104(%rsp), %r15
	movq	%r15, %rcx
	callq	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	movq	%rax, %r12
	movq	112(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB49_23
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB49_23
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB49_23:
	movq	(%r12), %rax
	movq	%r12, %rcx
	movq	%r15, %rdx
	callq	*40(%rax)
	cmpq	$16, 128(%rsp)
	jb	.LBB49_25
	movq	104(%rsp), %r15
.LBB49_25:
	movzbl	(%r15), %eax
	decb	%al
	cmpb	$125, %al
	ja	.LBB49_30
	movq	(%r12), %rax
	movq	%r12, %rcx
	callq	*32(%rax)
	movl	%eax, %ebp
	movzbl	(%r15), %eax
	leal	-1(%rax), %ecx
	cmpb	$125, %cl
	ja	.LBB49_30
	leaq	48(%rsp), %r12
	.p2align	4
.LBB49_28:
	movzbl	%al, %eax
	movq	%r14, %rcx
	subq	%rsi, %rcx
	cmpq	%rax, %rcx
	jbe	.LBB49_30
	subq	%rax, %r14
	movl	$1, %r8d
	movq	%r12, %rcx
	movq	%r14, %rdx
	movl	%ebp, %r9d
	callq	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	leaq	1(%r15), %rax
	cmpb	$0, 1(%r15)
	cmovgq	%rax, %r15
	movzbl	(%r15), %eax
	leal	-1(%rax), %ecx
	cmpb	$126, %cl
	jb	.LBB49_28
.LBB49_30:
	movq	64(%rsp), %r13
	movq	%rdi, %rcx
	movq	40(%rdi), %rdi
	xorl	%eax, %eax
	movq	%rdi, %r15
	subq	%r13, %r15
	cmovbeq	%rax, %r15
	testq	%rdi, %rdi
	cmovleq	%rax, %r15
	movl	$448, %eax
	movq	%rcx, 96(%rsp)
	andl	24(%rcx), %eax
	movzbl	(%rbx), %r12d
	movq	8(%rbx), %r14
	cmpl	$64, %eax
	je	.LBB49_76
	cmpl	$256, %eax
	jne	.LBB49_32
	testq	%rsi, %rsi
	je	.LBB49_67
	cmpq	$16, 72(%rsp)
	jb	.LBB49_57
	movq	48(%rsp), %rbp
	jmp	.LBB49_59
.LBB49_76:
	testq	%rsi, %rsi
	movq	88(%rsp), %rbp
	je	.LBB49_89
	cmpq	$16, 72(%rsp)
	jb	.LBB49_78
	movq	48(%rsp), %rdi
	jmp	.LBB49_80
.LBB49_32:
	testq	%r15, %r15
	je	.LBB49_41
	movzbl	240(%rsp), %ebp
	movq	%r13, %rbx
	subq	%rdi, %rbx
	jmp	.LBB49_34
	.p2align	4
.LBB49_39:
	movb	$1, %r12b
.LBB49_40:
	incq	%rbx
	je	.LBB49_41
.LBB49_34:
	testq	%r14, %r14
	je	.LBB49_39
	movq	64(%r14), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB49_38
	movq	88(%r14), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB49_38
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	240(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.LBB49_40
	.p2align	4
.LBB49_38:
	movq	(%r14), %rax
	movq	%r14, %rcx
	movl	%ebp, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_40
	jmp	.LBB49_39
.LBB49_41:
	movq	80(%rsp), %rbx
	movb	%r12b, (%rbx)
	movq	%r14, 8(%rbx)
	testq	%rsi, %rsi
	je	.LBB49_42
	cmpq	$16, 72(%rsp)
	jb	.LBB49_44
	movq	48(%rsp), %rdi
	jmp	.LBB49_46
.LBB49_57:
	leaq	48(%rsp), %rbp
.LBB49_59:
	xorl	%ebx, %ebx
	jmp	.LBB49_60
	.p2align	4
.LBB49_65:
	movb	$1, %r12b
.LBB49_66:
	incq	%rbx
	cmpq	%rbx, %rsi
	je	.LBB49_67
.LBB49_60:
	testq	%r14, %r14
	je	.LBB49_65
	movzbl	(%rbp,%rbx), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB49_64
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB49_64
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB49_66
	.p2align	4
.LBB49_64:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_66
	jmp	.LBB49_65
.LBB49_67:
	movq	80(%rsp), %rbx
	movb	%r12b, (%rbx)
	movq	%r14, 8(%rbx)
	testq	%r15, %r15
	je	.LBB49_42
	movzbl	240(%rsp), %ebp
	movq	%r13, %rbx
	subq	%rdi, %rbx
	xorl	%r15d, %r15d
	jmp	.LBB49_69
	.p2align	4
.LBB49_74:
	movb	$1, %r12b
.LBB49_75:
	incq	%rbx
	je	.LBB49_54
.LBB49_69:
	testq	%r14, %r14
	je	.LBB49_74
	movq	64(%r14), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB49_73
	movq	88(%r14), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB49_73
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	240(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.LBB49_75
	.p2align	4
.LBB49_73:
	movq	(%r14), %rax
	movq	%r14, %rcx
	movl	%ebp, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_75
	jmp	.LBB49_74
.LBB49_42:
	xorl	%r15d, %r15d
	movq	88(%rsp), %rbp
	jmp	.LBB49_89
.LBB49_78:
	leaq	48(%rsp), %rdi
.LBB49_80:
	xorl	%ebx, %ebx
	jmp	.LBB49_81
	.p2align	4
.LBB49_86:
	movb	$1, %r12b
.LBB49_87:
	incq	%rbx
	cmpq	%rbx, %rsi
	je	.LBB49_88
.LBB49_81:
	testq	%r14, %r14
	je	.LBB49_86
	movzbl	(%rdi,%rbx), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB49_85
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB49_85
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB49_87
	.p2align	4
.LBB49_85:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_87
	jmp	.LBB49_86
.LBB49_44:
	leaq	48(%rsp), %rdi
.LBB49_46:
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB49_47
	.p2align	4
.LBB49_52:
	movb	$1, %r12b
.LBB49_53:
	incq	%rbx
	cmpq	%rbx, %rsi
	je	.LBB49_54
.LBB49_47:
	testq	%r14, %r14
	je	.LBB49_52
	movzbl	(%rdi,%rbx), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB49_51
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB49_51
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB49_53
	.p2align	4
.LBB49_51:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_53
	jmp	.LBB49_52
.LBB49_54:
	movq	88(%rsp), %rbp
.LBB49_88:
	movq	80(%rsp), %rbx
.LBB49_89:
	movb	%r12b, (%rbx)
	movq	%r14, 8(%rbx)
	cmpq	%rsi, %r13
	je	.LBB49_100
	cmpq	$16, 72(%rsp)
	jb	.LBB49_91
	movq	48(%rsp), %rdi
	jmp	.LBB49_93
.LBB49_91:
	leaq	48(%rsp), %rdi
	jmp	.LBB49_93
	.p2align	4
.LBB49_98:
	movb	$1, %r12b
.LBB49_99:
	incq	%rsi
	cmpq	%rsi, %r13
	je	.LBB49_100
.LBB49_93:
	testq	%r14, %r14
	je	.LBB49_98
	movzbl	(%rdi,%rsi), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB49_97
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB49_97
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB49_99
	.p2align	4
.LBB49_97:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_99
	jmp	.LBB49_98
.LBB49_100:
	movb	%r12b, (%rbx)
	movq	%r14, 8(%rbx)
	movq	96(%rsp), %rax
	movq	$0, 40(%rax)
	testq	%r15, %r15
	je	.LBB49_109
	movzbl	240(%rsp), %ebx
	movzbl	%bl, %edi
	jmp	.LBB49_102
	.p2align	4
.LBB49_107:
	movb	$1, %r12b
.LBB49_108:
	decq	%r15
	je	.LBB49_109
.LBB49_102:
	testq	%r14, %r14
	je	.LBB49_107
	movq	64(%r14), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB49_106
	movq	88(%r14), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB49_106
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	jmp	.LBB49_108
	.p2align	4
.LBB49_106:
	movq	(%r14), %rax
	movq	%r14, %rcx
	movl	%edi, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB49_108
	jmp	.LBB49_107
.LBB49_109:
	movb	%r12b, (%rbp)
	movq	%r14, 8(%rbp)
	movq	128(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB49_114
	movq	104(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB49_113
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB49_121
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB49_113:
	callq	"??3@YAXPEAX_K@Z"
.LBB49_114:
	movq	72(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB49_119
	movq	48(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB49_118
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB49_121
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB49_118:
	callq	"??3@YAXPEAX_K@Z"
.LBB49_119:
	movq	%rbp, %rax
	.seh_startepilogue
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB49_120:
	callq	"?_Xlen_string@std@@YAXXZ"
.LBB49_121:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
	int3
	.seh_endproc

	.def	sprintf_s;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf_s,unique,50
	.globl	sprintf_s
	.p2align	4
sprintf_s:
.seh_proc sprintf_s
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	movq	%r9, 120(%rsp)
	leaq	120(%rsp), %r14
	movq	%r14, 48(%rsp)
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%r14, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	%rbx, %rdx
	movq	%rdi, %r8
	movq	%rsi, %r9
	callq	__stdio_common_vsprintf_s
	testl	%eax, %eax
	movl	$-1, %ecx
	cmovsl	%ecx, %eax
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z",unique,51
	.globl	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	.p2align	4
"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z":
.seh_proc "??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%rcx, %rdi
	leaq	44(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip), %rbx
	movq	"?id@?$ctype@D@std@@2V0locale@2@A"(%rip), %r14
	testq	%r14, %r14
	jne	.LBB51_4
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	cmpq	$0, "?id@?$ctype@D@std@@2V0locale@2@A"(%rip)
	jne	.LBB51_3
	movslq	"?_Id_cnt@id@locale@std@@0HA"(%rip), %rax
	incq	%rax
	movl	%eax, "?_Id_cnt@id@locale@std@@0HA"(%rip)
	movq	%rax, "?id@?$ctype@D@std@@2V0locale@2@A"(%rip)
.LBB51_3:
	leaq	48(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	"?id@?$ctype@D@std@@2V0locale@2@A"(%rip), %r14
.LBB51_4:
	movq	8(%rdi), %rax
	cmpq	24(%rax), %r14
	jae	.LBB51_6
	movq	16(%rax), %rcx
	movq	(%rcx,%r14,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB51_14
.LBB51_6:
	cmpb	$0, 36(%rax)
	je	.LBB51_9
	callq	"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"
	cmpq	24(%rax), %r14
	jae	.LBB51_9
	movq	16(%rax), %rax
	movq	(%rax,%r14,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB51_14
.LBB51_9:
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB51_14
	movl	$48, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rsi
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB51_11
	movq	40(%rdi), %rax
	addq	$48, %rdi
	testq	%rax, %rax
	cmovneq	%rax, %rdi
	jmp	.LBB51_13
.LBB51_11:
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rdi
.LBB51_13:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movw	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"
	movl	$0, 8(%rsi)
	leaq	"??_7?$ctype@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	movq	%rsi, %rcx
	addq	$16, %rcx
	callq	_Getctype
	movq	%rbx, %rcx
	callq	"??1_Locinfo@std@@QEAA@XZ"
	movq	%rsi, %rcx
	callq	"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*8(%rax)
	movq	%rsi, "?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip)
.LBB51_14:
	leaq	44(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z",unique,52
	.globl	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	.p2align	4
"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z":
.seh_proc "??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$200, %rsp
	.seh_stackalloc 200
	.seh_endprologue
	movq	%rcx, %rdi
	leaq	44(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip), %rbx
	movq	"?id@?$numpunct@D@std@@2V0locale@2@A"(%rip), %r14
	testq	%r14, %r14
	jne	.LBB52_4
	leaq	48(%rsp), %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	cmpq	$0, "?id@?$numpunct@D@std@@2V0locale@2@A"(%rip)
	jne	.LBB52_3
	movslq	"?_Id_cnt@id@locale@std@@0HA"(%rip), %rax
	incq	%rax
	movl	%eax, "?_Id_cnt@id@locale@std@@0HA"(%rip)
	movq	%rax, "?id@?$numpunct@D@std@@2V0locale@2@A"(%rip)
.LBB52_3:
	leaq	48(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	"?id@?$numpunct@D@std@@2V0locale@2@A"(%rip), %r14
.LBB52_4:
	movq	8(%rdi), %rax
	cmpq	24(%rax), %r14
	jae	.LBB52_6
	movq	16(%rax), %rcx
	movq	(%rcx,%r14,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB52_17
.LBB52_6:
	cmpb	$0, 36(%rax)
	je	.LBB52_9
	callq	"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"
	cmpq	24(%rax), %r14
	jae	.LBB52_9
	movq	16(%rax), %rax
	movq	(%rax,%r14,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB52_17
.LBB52_9:
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB52_17
	movl	$48, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rsi
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB52_11
	movq	40(%rdi), %rax
	addq	$48, %rdi
	testq	%rax, %rax
	cmovneq	%rax, %rdi
	jmp	.LBB52_13
.LBB52_11:
	leaq	"??_C@_00CNPNBAHC@?$AA@"(%rip), %rdi
.LBB52_13:
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	xorl	%edx, %edx
	callq	"??0_Lockit@std@@QEAA@H@Z"
	movq	$0, 56(%rsp)
	movb	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 80(%rsp)
	movq	$0, 88(%rsp)
	movw	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movw	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, 144(%rsp)
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"
	movl	$0, 8(%rsi)
	leaq	"??_7?$numpunct@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rsi)
	callq	localeconv
	leaq	156(%rsp), %rcx
	callq	_Getcvt
	movl	$1, %ecx
	movl	$1, %edx
	callq	calloc
	testq	%rax, %rax
	je	.LBB52_18
	movq	%rax, 16(%rsi)
	movl	$6, %ecx
	movl	$1, %edx
	callq	calloc
	testq	%rax, %rax
	je	.LBB52_18
	movw	$101, 4(%rax)
	movl	$1936482662, (%rax)
	movq	%rax, 32(%rsi)
	movl	$5, %ecx
	movl	$1, %edx
	callq	calloc
	testq	%rax, %rax
	je	.LBB52_18
	movb	$0, 4(%rax)
	movl	$1702195828, (%rax)
	movq	%rax, 40(%rsi)
	movw	$11310, 24(%rsi)
	leaq	48(%rsp), %rcx
	callq	"??1_Locinfo@std@@QEAA@XZ"
	movq	%rsi, %rcx
	callq	"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	callq	*8(%rax)
	movq	%rsi, "?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"(%rip)
.LBB52_17:
	leaq	44(%rsp), %rcx
	callq	"??1_Lockit@std@@QEAA@XZ"
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$200, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB52_18:
	callq	"?_Xbad_alloc@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z",unique,53
	.globl	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	.p2align	4
"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z":
.seh_proc "?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	16(%rcx), %r15
	movq	%r15, %rbx
	subq	%rdx, %rbx
	jb	.LBB53_22
	movl	%r9d, %ebp
	movq	%r8, %rdi
	movq	%rcx, %rsi
	movq	24(%rcx), %r8
	movq	%r8, %rax
	subq	%r15, %rax
	cmpq	%rax, %rdi
	jbe	.LBB53_2
	movabsq	$9223372036854775807, %r13
	movq	%r13, %rax
	subq	%r15, %rax
	cmpq	%rdi, %rax
	jb	.LBB53_23
	addq	%rdi, %r15
	movb	%bpl, 47(%rsp)
	js	.LBB53_7
	movq	%r15, %rax
	orq	$15, %rax
	movq	%r8, %rbp
	shrq	%rbp
	movq	%rbp, %rcx
	xorq	%r13, %rcx
	addq	%r8, %rbp
	cmpq	%rbp, %rax
	cmovaq	%rax, %rbp
	cmpq	%rcx, %r8
	cmovbeq	%rbp, %r13
	movq	%r13, %rcx
	incq	%rcx
	jne	.LBB53_10
	movq	%rdx, %r12
	xorl	%r14d, %r14d
	movq	$-1, %rbp
	jmp	.LBB53_14
.LBB53_2:
	addq	%rdi, %r15
	movq	%r15, 16(%rsi)
	movq	%rsi, %r14
	cmpq	$16, %r8
	jb	.LBB53_4
	movq	(%rsi), %r14
.LBB53_4:
	addq	%rdx, %r14
	incq	%rbx
	leaq	(%r14,%rdi), %rcx
	movq	%r14, %rdx
	movq	%rbx, %r8
	callq	memmove
	movq	%r14, %rcx
	movl	%ebp, %edx
	movq	%rdi, %r8
	callq	_intel_fast_memset
	jmp	.LBB53_21
.LBB53_7:
	movq	%r8, 48(%rsp)
	movq	%rdx, %r12
	jmp	.LBB53_12
.LBB53_10:
	cmpq	$4096, %rcx
	jb	.LBB53_13
	movq	%r8, 48(%rsp)
	movq	%rdx, %r12
	cmpq	$-39, %rcx
	jae	.LBB53_24
.LBB53_12:
	leaq	40(%r13), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r14
	andq	$-32, %r14
	movq	%rax, -8(%r14)
	movq	%r13, %rbp
	movq	48(%rsp), %r8
	jmp	.LBB53_14
.LBB53_13:
	movq	%rdx, %r12
	movq	%r8, %r14
	callq	"??2@YAPEAX_K@Z"
	movq	%r14, %r8
	movq	%rax, %r14
.LBB53_14:
	movq	%r15, 16(%rsi)
	movq	%rbp, 24(%rsi)
	cmpq	$16, %r8
	jb	.LBB53_19
	movq	(%rsi), %r15
	movq	%r14, %rcx
	movq	%r15, %rdx
	movq	%r8, %rbp
	movq	%r12, %r8
	callq	_intel_fast_memcpy
	leaq	(%r14,%r12), %r13
	movq	%r13, %rcx
	movzbl	47(%rsp), %edx
	movq	%rdi, %r8
	callq	_intel_fast_memset
	incq	%rbx
	addq	%r15, %r12
	addq	%rdi, %r13
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	leaq	1(%rbp), %rdx
	cmpq	$4096, %rdx
	jb	.LBB53_18
	movq	-8(%r15), %rax
	addq	$-8, %r15
	subq	%rax, %r15
	cmpq	$32, %r15
	jae	.LBB53_25
	addq	$40, %rbp
	movq	%rbp, %rdx
	movq	%rax, %r15
.LBB53_18:
	movq	%r15, %rcx
	callq	"??3@YAXPEAX_K@Z"
	jmp	.LBB53_20
.LBB53_19:
	movq	%r14, %rcx
	movq	%rsi, %rdx
	movq	%r12, %r15
	movq	%r12, %r8
	callq	_intel_fast_memcpy
	addq	%r14, %r12
	movq	%r12, %rcx
	movzbl	47(%rsp), %edx
	movq	%rdi, %r8
	callq	_intel_fast_memset
	incq	%rbx
	addq	%rsi, %r15
	addq	%rdi, %r12
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
.LBB53_20:
	movq	%r14, (%rsi)
.LBB53_21:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB53_22:
	callq	"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
.LBB53_23:
	callq	"?_Xlen_string@std@@YAXXZ"
.LBB53_25:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
.LBB53_24:
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z",unique,54
	.globl	"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.p2align	4
"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z":
.seh_proc "?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%r8, %rsi
	cmpq	%r8, %rdx
	je	.LBB54_7
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	addq	$16, %rbx
	subq	%rdx, %rsi
	movq	%rsi, %r14
	shrq	$3, %r14
	je	.LBB54_4
	xorl	%r15d, %r15d
	.p2align	4
.LBB54_3:
	leaq	(%rdi,%r15,8), %r12
	movzbl	(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, (%r12)
	movzbl	1(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 1(%r12)
	movzbl	2(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 2(%r12)
	movzbl	3(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 3(%r12)
	movzbl	4(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 4(%r12)
	movzbl	5(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 5(%r12)
	movzbl	6(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 6(%r12)
	movzbl	7(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, 7(%r12)
	incq	%r15
	cmpq	%r15, %r14
	jne	.LBB54_3
.LBB54_4:
	movq	%rsi, %r14
	andq	$-8, %r14
	cmpq	%rsi, %r14
	je	.LBB54_6
	.p2align	4
.LBB54_5:
	movzbl	(%rdi,%r14), %ecx
	movq	%rbx, %rdx
	callq	_Tolower
	movb	%al, (%rdi,%r14)
	incq	%r14
	cmpq	%r14, %rsi
	jne	.LBB54_5
.LBB54_6:
	addq	%rdi, %rsi
.LBB54_7:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_tolower@?$ctype@D@std@@MEBADD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_tolower@?$ctype@D@std@@MEBADD@Z",unique,55
	.globl	"?do_tolower@?$ctype@D@std@@MEBADD@Z"
	.p2align	4
"?do_tolower@?$ctype@D@std@@MEBADD@Z":
	leaq	16(%rcx), %rax
	movzbl	%dl, %ecx
	movq	%rax, %rdx
	jmp	_Tolower

	.def	"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z",unique,56
	.globl	"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.p2align	4
"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z":
.seh_proc "?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%r8, %rsi
	cmpq	%r8, %rdx
	je	.LBB56_7
	movq	%rdx, %rdi
	movq	%rcx, %rbx
	addq	$16, %rbx
	subq	%rdx, %rsi
	movq	%rsi, %r14
	shrq	$3, %r14
	je	.LBB56_4
	xorl	%r15d, %r15d
	.p2align	4
.LBB56_3:
	leaq	(%rdi,%r15,8), %r12
	movzbl	(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, (%r12)
	movzbl	1(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 1(%r12)
	movzbl	2(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 2(%r12)
	movzbl	3(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 3(%r12)
	movzbl	4(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 4(%r12)
	movzbl	5(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 5(%r12)
	movzbl	6(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 6(%r12)
	movzbl	7(%r12), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, 7(%r12)
	incq	%r15
	cmpq	%r15, %r14
	jne	.LBB56_3
.LBB56_4:
	movq	%rsi, %r14
	andq	$-8, %r14
	cmpq	%rsi, %r14
	je	.LBB56_6
	.p2align	4
.LBB56_5:
	movzbl	(%rdi,%r14), %ecx
	movq	%rbx, %rdx
	callq	_Toupper
	movb	%al, (%rdi,%r14)
	incq	%r14
	cmpq	%r14, %rsi
	jne	.LBB56_5
.LBB56_6:
	addq	%rdi, %rsi
.LBB56_7:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_toupper@?$ctype@D@std@@MEBADD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_toupper@?$ctype@D@std@@MEBADD@Z",unique,57
	.globl	"?do_toupper@?$ctype@D@std@@MEBADD@Z"
	.p2align	4
"?do_toupper@?$ctype@D@std@@MEBADD@Z":
	leaq	16(%rcx), %rax
	movzbl	%dl, %ecx
	movq	%rax, %rdx
	jmp	_Toupper

	.def	"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z",unique,58
	.globl	"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	.p2align	4
"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z":
.seh_proc "?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r9, %rcx
	movq	%r8, %rsi
	subq	%rdx, %r8
	callq	_intel_fast_memcpy
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_widen@?$ctype@D@std@@MEBADD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_widen@?$ctype@D@std@@MEBADD@Z",unique,59
	.globl	"?do_widen@?$ctype@D@std@@MEBADD@Z"
	.p2align	4
"?do_widen@?$ctype@D@std@@MEBADD@Z":
	movl	%edx, %eax
	retq

	.def	"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z",unique,60
	.globl	"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	.p2align	4
"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z":
.seh_proc "?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %rsi
	movq	80(%rsp), %rcx
	subq	%rdx, %r8
	callq	_intel_fast_memcpy
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_narrow@?$ctype@D@std@@MEBADDD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_narrow@?$ctype@D@std@@MEBADDD@Z",unique,61
	.globl	"?do_narrow@?$ctype@D@std@@MEBADDD@Z"
	.p2align	4
"?do_narrow@?$ctype@D@std@@MEBADDD@Z":
	movl	%edx, %eax
	retq

	.def	"??_Gctype_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gctype_base@std@@UEAAPEAXI@Z",unique,62
	.globl	"??_Gctype_base@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gctype_base@std@@UEAAPEAXI@Z":
.seh_proc "??_Gctype_base@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	testb	$1, %dl
	je	.LBB62_2
	movl	$16, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB62_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"??_G?$ctype@D@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$ctype@D@std@@MEAAPEAXI@Z",unique,63
	.globl	"??_G?$ctype@D@std@@MEAAPEAXI@Z"
	.p2align	4
"??_G?$ctype@D@std@@MEAAPEAXI@Z":
.seh_proc "??_G?$ctype@D@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7?$ctype@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	cmpl	$0, 32(%rcx)
	jle	.LBB63_2
	movq	24(%rsi), %rcx
	callq	free
	jmp	.LBB63_5
.LBB63_2:
	jns	.LBB63_5
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB63_5
	callq	"??_V@YAXPEAX@Z"
.LBB63_5:
	movq	40(%rsi), %rcx
	callq	free
	testb	$1, %dil
	je	.LBB63_7
	movl	$48, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB63_7:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?do_decimal_point@?$numpunct@D@std@@MEBADXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_decimal_point@?$numpunct@D@std@@MEBADXZ",unique,64
	.globl	"?do_decimal_point@?$numpunct@D@std@@MEBADXZ"
	.p2align	4
"?do_decimal_point@?$numpunct@D@std@@MEBADXZ":
	movzbl	24(%rcx), %eax
	retq

	.def	"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ",unique,65
	.globl	"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ"
	.p2align	4
"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ":
	movzbl	25(%rcx), %eax
	retq

	.def	"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ",unique,66
	.globl	"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.p2align	4
"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ":
.seh_proc "?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	16(%rcx), %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	%rdi, %rcx
	callq	strlen
	testq	%rax, %rax
	js	.LBB66_8
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.LBB66_3
	movq	%rbx, 16(%rsi)
	movq	$15, 24(%rsi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rsi,%rbx)
	jmp	.LBB66_7
.LBB66_3:
	movq	%rbx, %rax
	orq	$15, %rax
	cmpq	$23, %rax
	movl	$22, %r15d
	cmovaeq	%rax, %r15
	cmpq	$4095, %rax
	jb	.LBB66_5
	leaq	40(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r14
	andq	$-32, %r14
	movq	%rax, -8(%r14)
	jmp	.LBB66_6
.LBB66_5:
	leaq	1(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r14
.LBB66_6:
	movq	%r14, (%rsi)
	movq	%rbx, 16(%rsi)
	movq	%r15, 24(%rsi)
	movq	%r14, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%r14,%rbx)
.LBB66_7:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB66_8:
	callq	"?_Xlen_string@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ",unique,67
	.globl	"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.p2align	4
"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ":
.seh_proc "?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	32(%rcx), %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	%rdi, %rcx
	callq	strlen
	testq	%rax, %rax
	js	.LBB67_8
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.LBB67_3
	movq	%rbx, 16(%rsi)
	movq	$15, 24(%rsi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rsi,%rbx)
	jmp	.LBB67_7
.LBB67_3:
	movq	%rbx, %rax
	orq	$15, %rax
	cmpq	$23, %rax
	movl	$22, %r15d
	cmovaeq	%rax, %r15
	cmpq	$4095, %rax
	jb	.LBB67_5
	leaq	40(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r14
	andq	$-32, %r14
	movq	%rax, -8(%r14)
	jmp	.LBB67_6
.LBB67_5:
	leaq	1(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r14
.LBB67_6:
	movq	%r14, (%rsi)
	movq	%rbx, 16(%rsi)
	movq	%r15, 24(%rsi)
	movq	%r14, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%r14,%rbx)
.LBB67_7:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB67_8:
	callq	"?_Xlen_string@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ",unique,68
	.globl	"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.p2align	4
"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ":
.seh_proc "?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	40(%rcx), %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	%rdi, %rcx
	callq	strlen
	testq	%rax, %rax
	js	.LBB68_8
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.LBB68_3
	movq	%rbx, 16(%rsi)
	movq	$15, 24(%rsi)
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%rsi,%rbx)
	jmp	.LBB68_7
.LBB68_3:
	movq	%rbx, %rax
	orq	$15, %rax
	cmpq	$23, %rax
	movl	$22, %r15d
	cmovaeq	%rax, %r15
	cmpq	$4095, %rax
	jb	.LBB68_5
	leaq	40(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r14
	andq	$-32, %r14
	movq	%rax, -8(%r14)
	jmp	.LBB68_6
.LBB68_5:
	leaq	1(%r15), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r14
.LBB68_6:
	movq	%r14, (%rsi)
	movq	%rbx, 16(%rsi)
	movq	%r15, 24(%rsi)
	movq	%r14, %rcx
	movq	%rdi, %rdx
	movq	%rbx, %r8
	callq	_intel_fast_memcpy
	movb	$0, (%r14,%rbx)
.LBB68_7:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB68_8:
	callq	"?_Xlen_string@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"??_G?$numpunct@D@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_G?$numpunct@D@std@@MEAAPEAXI@Z",unique,69
	.globl	"??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	.p2align	4
"??_G?$numpunct@D@std@@MEAAPEAXI@Z":
.seh_proc "??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7?$numpunct@D@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	movq	16(%rcx), %rcx
	callq	free
	movq	32(%rsi), %rcx
	callq	free
	movq	40(%rsi), %rcx
	callq	free
	testb	$1, %dil
	je	.LBB69_2
	movl	$48, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB69_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.def	"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ",unique,70
	.globl	"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
	.p2align	4
"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ":
.seh_proc "?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@"(%rip), %rcx
	callq	"?_Xout_of_range@std@@YAXPEBD@Z"
	int3
	.seh_endproc

	.def	__local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options,unique,71
	.globl	__local_stdio_printf_options
	.p2align	4
__local_stdio_printf_options:
	leaq	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"(%rip), %rax
	retq

	.def	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z",unique,72
	.globl	"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	.p2align	4
"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z":
.seh_proc "?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	16(%rcx), %r14
	movq	%rdx, %rbx
	subq	%r14, %rbx
	jbe	.LBB72_1
	movq	24(%rsi), %rbp
	movq	%rbp, %rax
	subq	%r14, %rax
	cmpq	%rax, %rbx
	jbe	.LBB72_5
	movabsq	$9223372036854775807, %r12
	movq	%r12, %rax
	subq	%r14, %rax
	cmpq	%rbx, %rax
	jb	.LBB72_24
	testq	%rdi, %rdi
	movb	%r8b, 55(%rsp)
	js	.LBB72_14
	movq	%rdi, %rax
	orq	$15, %rax
	movq	%rbp, %r13
	shrq	%r13
	movq	%r13, %rcx
	xorq	%r12, %rcx
	addq	%rbp, %r13
	cmpq	%r13, %rax
	cmovaq	%rax, %r13
	cmpq	%rcx, %rbp
	cmovbeq	%r13, %r12
	movq	%r12, %rcx
	incq	%rcx
	jne	.LBB72_12
	xorl	%r15d, %r15d
	movq	$-1, %r13
	jmp	.LBB72_16
.LBB72_1:
	movq	%rdi, 16(%rsi)
	cmpq	$16, 24(%rsi)
	jb	.LBB72_3
	movq	(%rsi), %rsi
.LBB72_3:
	movb	$0, (%rsi,%rdi)
	jmp	.LBB72_23
.LBB72_5:
	movq	%rdi, 16(%rsi)
	cmpq	$16, %rbp
	jb	.LBB72_7
	movq	(%rsi), %rsi
.LBB72_7:
	addq	%rsi, %r14
	movq	%r14, %rcx
	movl	%r8d, %edx
	movq	%rbx, %r8
	callq	_intel_fast_memset
	movb	$0, (%rsi,%rdi)
	jmp	.LBB72_23
.LBB72_12:
	cmpq	$4096, %rcx
	jb	.LBB72_15
	cmpq	$-39, %rcx
	jae	.LBB72_25
.LBB72_14:
	leaq	40(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %r15
	andq	$-32, %r15
	movq	%rax, -8(%r15)
	movq	%r12, %r13
	jmp	.LBB72_16
.LBB72_15:
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %r15
.LBB72_16:
	movq	%rdi, 16(%rsi)
	movq	%r13, 24(%rsi)
	cmpq	$16, %rbp
	jb	.LBB72_21
	movq	(%rsi), %r12
	movq	%r15, %rcx
	movq	%r12, %rdx
	movq	%r14, %r8
	callq	_intel_fast_memcpy
	addq	%r15, %r14
	movq	%r14, %rcx
	movzbl	55(%rsp), %edx
	movq	%rbx, %r8
	callq	_intel_fast_memset
	movb	$0, (%r15,%rdi)
	leaq	1(%rbp), %rdx
	cmpq	$4096, %rdx
	jb	.LBB72_20
	movq	-8(%r12), %rax
	addq	$-8, %r12
	subq	%rax, %r12
	cmpq	$32, %r12
	jae	.LBB72_26
	addq	$40, %rbp
	movq	%rbp, %rdx
	movq	%rax, %r12
.LBB72_20:
	movq	%r12, %rcx
	callq	"??3@YAXPEAX_K@Z"
	jmp	.LBB72_22
.LBB72_21:
	movq	%r15, %rcx
	movq	%rsi, %rdx
	movq	%r14, %r8
	callq	_intel_fast_memcpy
	addq	%r15, %r14
	movq	%r14, %rcx
	movzbl	55(%rsp), %edx
	movq	%rbx, %r8
	callq	_intel_fast_memset
	movb	$0, (%r15,%rdi)
.LBB72_22:
	movq	%r15, (%rsi)
.LBB72_23:
	.seh_startepilogue
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB72_24:
	callq	"?_Xlen_string@std@@YAXXZ"
.LBB72_26:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
.LBB72_25:
	callq	"?_Throw_bad_array_new_length@std@@YAXXZ"
	int3
	.seh_endproc

	.def	"??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z",unique,73
	.globl	"??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z"
	.p2align	4
"??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z":
.seh_proc "??$_Fput_v3@$0A@@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@1@V21@AEAVios_base@1@DPEBD_K_N@Z"
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r9, %r12
	movq	%r8, %rdi
	movq	%rdx, %r8
	movq	272(%rsp), %r14
	movq	264(%rsp), %r13
	testq	%r14, %r14
	je	.LBB73_1
	movzbl	(%r13), %eax
	addb	$-43, %al
	xorl	%ebx, %ebx
	testb	$-3, %al
	sete	%bl
	jmp	.LBB73_3
.LBB73_1:
	xorl	%ebx, %ebx
.LBB73_3:
	movl	24(%r12), %eax
	notl	%eax
	testl	$12288, %eax
	movq	%r8, 112(%rsp)
	jne	.LBB73_4
	leaq	2(%rbx), %rax
	leaq	"??_C@_02OOPEBDOJ@pP?$AA@"(%rip), %rdx
	cmpq	%r14, %rax
	ja	.LBB73_9
	cmpb	$48, (%r13,%rbx)
	jne	.LBB73_9
	movzbl	1(%rbx,%r13), %ecx
	orl	$32, %ecx
	cmpl	$120, %ecx
	jne	.LBB73_9
	movq	%rax, %rbx
	jmp	.LBB73_9
.LBB73_4:
	leaq	"??_C@_02MDKMJEGG@eE?$AA@"(%rip), %rdx
.LBB73_9:
	movq	%r13, %rcx
	callq	strcspn
	movq	%rax, %r15
	movw	$46, 54(%rsp)
	callq	localeconv
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, 54(%rsp)
	leaq	54(%rsp), %rdx
	movq	%r13, %rcx
	callq	strcspn
	movq	%rax, 104(%rsp)
	movq	64(%r12), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 72(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	64(%rsp), %rbp
	movq	%rbp, %rcx
	callq	"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"
	movq	%rax, %rsi
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB73_12
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB73_12
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB73_12:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	testq	%r14, %r14
	js	.LBB73_128
	cmpq	$15, %r14
	movq	%rdi, 56(%rsp)
	ja	.LBB73_15
	movq	%r14, 80(%rsp)
	movq	$15, 88(%rsp)
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	_intel_fast_memset
	movb	$0, 64(%rsp,%r14)
	cmpq	$16, 88(%rsp)
	jae	.LBB73_20
	jmp	.LBB73_21
.LBB73_15:
	movq	%r12, %r13
	movq	%r14, %rax
	orq	$15, %rax
	cmpq	$23, %rax
	movl	$22, %r12d
	cmovaeq	%rax, %r12
	cmpq	$4095, %rax
	jb	.LBB73_17
	leaq	40(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	leaq	39(%rax), %rdi
	andq	$-32, %rdi
	movq	%rax, -8(%rdi)
	jmp	.LBB73_18
.LBB73_17:
	leaq	1(%r12), %rcx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rdi
.LBB73_18:
	movq	%rdi, 64(%rsp)
	movq	%r14, 80(%rsp)
	movq	%r12, 88(%rsp)
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	_intel_fast_memset
	movb	$0, (%rdi,%r14)
	movq	%r13, %r12
	movq	264(%rsp), %r13
	cmpq	$16, 88(%rsp)
	jb	.LBB73_21
.LBB73_20:
	movq	64(%rsp), %rbp
.LBB73_21:
	leaq	(%r14,%r13), %r8
	movq	(%rsi), %rax
	movq	%rsi, %rcx
	movq	%r13, %rdx
	movq	%rbp, %r9
	callq	*56(%rax)
	movq	64(%r12), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 128(%rsp)
	movq	(%rcx), %rax
	callq	*8(%rax)
	leaq	120(%rsp), %rcx
	callq	"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"
	movq	%rax, %r13
	movq	128(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB73_24
	movq	(%rcx), %rax
	callq	*16(%rax)
	testq	%rax, %rax
	je	.LBB73_24
	movq	(%rax), %r8
	movq	%rax, %rcx
	movl	$1, %edx
	callq	*(%r8)
.LBB73_24:
	movzbl	280(%rsp), %edi
	movq	(%r13), %rax
	leaq	120(%rsp), %rsi
	movq	%r13, %rcx
	movq	%rsi, %rdx
	callq	*40(%rax)
	movq	(%r13), %rax
	movq	%r13, %rcx
	callq	*32(%rax)
	movl	%eax, %ebp
	cmpq	%r14, 104(%rsp)
	je	.LBB73_29
	movq	(%r13), %rax
	movq	%r13, %rcx
	callq	*24(%rax)
	cmpq	$16, 88(%rsp)
	jb	.LBB73_26
	movq	64(%rsp), %rcx
	jmp	.LBB73_28
.LBB73_26:
	leaq	64(%rsp), %rcx
.LBB73_28:
	movq	104(%rsp), %rdx
	movb	%al, (%rcx,%rdx)
.LBB73_29:
	testb	%dil, %dil
	je	.LBB73_36
	cmpq	$16, 144(%rsp)
	jb	.LBB73_32
	movq	120(%rsp), %rsi
.LBB73_32:
	movzbl	(%rsi), %eax
	leal	-1(%rax), %ecx
	cmpb	$125, %cl
	ja	.LBB73_36
	movq	104(%rsp), %rcx
	cmpq	%r14, %rcx
	cmovneq	%rcx, %r15
	leaq	64(%rsp), %r14
	.p2align	4
.LBB73_34:
	movzbl	%al, %eax
	movq	%r15, %rcx
	subq	%rbx, %rcx
	cmpq	%rax, %rcx
	jbe	.LBB73_36
	subq	%rax, %r15
	movl	$1, %r8d
	movq	%r14, %rcx
	movq	%r15, %rdx
	movl	%ebp, %r9d
	callq	"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"
	leaq	1(%rsi), %rax
	cmpb	$0, 1(%rsi)
	cmovgq	%rax, %rsi
	movzbl	(%rsi), %eax
	leal	-1(%rax), %ecx
	cmpb	$126, %cl
	jb	.LBB73_34
.LBB73_36:
	movq	80(%rsp), %r15
	movq	40(%r12), %r13
	xorl	%eax, %eax
	movq	%r12, %rcx
	movq	%r13, %r12
	subq	%r15, %r12
	cmovbeq	%rax, %r12
	testq	%r13, %r13
	cmovleq	%rax, %r12
	movl	$448, %eax
	movq	%rcx, 104(%rsp)
	andl	24(%rcx), %eax
	movzbl	256(%rsp), %edi
	movq	56(%rsp), %rcx
	movzbl	(%rcx), %ebp
	movq	8(%rcx), %r14
	cmpl	$64, %eax
	je	.LBB73_83
	cmpl	$256, %eax
	jne	.LBB73_38
	testq	%rbx, %rbx
	je	.LBB73_73
	cmpq	$16, 88(%rsp)
	jb	.LBB73_63
	movq	64(%rsp), %rsi
	jmp	.LBB73_65
.LBB73_83:
	testq	%rbx, %rbx
	je	.LBB73_84
	cmpq	$16, 88(%rsp)
	movq	56(%rsp), %r13
	jb	.LBB73_86
	movq	64(%rsp), %rsi
	jmp	.LBB73_88
.LBB73_38:
	testq	%r12, %r12
	je	.LBB73_39
	movzbl	%dil, %esi
	movq	%r15, %rdi
	subq	%r13, %rdi
	movq	56(%rsp), %r13
	jmp	.LBB73_41
	.p2align	4
.LBB73_46:
	movb	$1, %bpl
.LBB73_47:
	incq	%rdi
	je	.LBB73_48
.LBB73_41:
	testq	%r14, %r14
	je	.LBB73_46
	movq	64(%r14), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB73_45
	movq	88(%r14), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB73_45
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	256(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.LBB73_47
	.p2align	4
.LBB73_45:
	movq	(%r14), %rax
	movq	%r14, %rcx
	movl	%esi, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_47
	jmp	.LBB73_46
.LBB73_84:
	movq	56(%rsp), %r13
	jmp	.LBB73_97
.LBB73_39:
	movq	56(%rsp), %r13
.LBB73_48:
	movb	%bpl, (%r13)
	movq	%r14, 8(%r13)
	testq	%rbx, %rbx
	je	.LBB73_49
	cmpq	$16, 88(%rsp)
	jb	.LBB73_51
	movq	64(%rsp), %rsi
	jmp	.LBB73_53
.LBB73_49:
	xorl	%r12d, %r12d
	jmp	.LBB73_96
.LBB73_63:
	leaq	64(%rsp), %rsi
.LBB73_65:
	xorl	%edi, %edi
	jmp	.LBB73_66
	.p2align	4
.LBB73_71:
	movb	$1, %bpl
.LBB73_72:
	incq	%rdi
	cmpq	%rdi, %rbx
	je	.LBB73_73
.LBB73_66:
	testq	%r14, %r14
	je	.LBB73_71
	movzbl	(%rsi,%rdi), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB73_70
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB73_70
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB73_72
	.p2align	4
.LBB73_70:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_72
	jmp	.LBB73_71
.LBB73_73:
	movq	56(%rsp), %rax
	movb	%bpl, (%rax)
	movq	%r14, 8(%rax)
	testq	%r12, %r12
	je	.LBB73_74
	movzbl	256(%rsp), %esi
	movq	%r15, %rdi
	subq	%r13, %rdi
	xorl	%r12d, %r12d
	movq	56(%rsp), %r13
	jmp	.LBB73_76
	.p2align	4
.LBB73_81:
	movb	$1, %bpl
.LBB73_82:
	incq	%rdi
	je	.LBB73_96
.LBB73_76:
	testq	%r14, %r14
	je	.LBB73_81
	movq	64(%r14), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB73_80
	movq	88(%r14), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB73_80
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	256(%rsp), %eax
	movb	%al, (%rcx)
	jmp	.LBB73_82
	.p2align	4
.LBB73_80:
	movq	(%r14), %rax
	movq	%r14, %rcx
	movl	%esi, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_82
	jmp	.LBB73_81
.LBB73_74:
	xorl	%r12d, %r12d
	movq	56(%rsp), %r13
.LBB73_96:
	movzbl	256(%rsp), %edi
.LBB73_97:
	movb	%bpl, (%r13)
	movq	%r14, 8(%r13)
	cmpq	%rbx, %r15
	je	.LBB73_108
	cmpq	$16, 88(%rsp)
	jb	.LBB73_99
	movq	64(%rsp), %rsi
	jmp	.LBB73_101
.LBB73_99:
	leaq	64(%rsp), %rsi
	jmp	.LBB73_101
	.p2align	4
.LBB73_106:
	movb	$1, %bpl
.LBB73_107:
	incq	%rbx
	cmpq	%rbx, %r15
	je	.LBB73_108
.LBB73_101:
	testq	%r14, %r14
	je	.LBB73_106
	movzbl	(%rsi,%rbx), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB73_105
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB73_105
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB73_107
	.p2align	4
.LBB73_105:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_107
	jmp	.LBB73_106
.LBB73_108:
	movb	%bpl, (%r13)
	movq	%r14, 8(%r13)
	movq	104(%rsp), %rax
	movq	$0, 40(%rax)
	testq	%r12, %r12
	je	.LBB73_117
	movzbl	%dil, %esi
	jmp	.LBB73_110
	.p2align	4
.LBB73_115:
	movb	$1, %bpl
.LBB73_116:
	decq	%r12
	je	.LBB73_117
.LBB73_110:
	testq	%r14, %r14
	je	.LBB73_115
	movq	64(%r14), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB73_114
	movq	88(%r14), %rdx
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	jle	.LBB73_114
	decl	%r8d
	movl	%r8d, (%rdx)
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%dil, (%rcx)
	jmp	.LBB73_116
	.p2align	4
.LBB73_114:
	movq	(%r14), %rax
	movq	%r14, %rcx
	movl	%esi, %edx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_116
	jmp	.LBB73_115
.LBB73_117:
	movq	112(%rsp), %rsi
	movb	%bpl, (%rsi)
	movq	%r14, 8(%rsi)
	movq	144(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB73_122
	movq	120(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB73_121
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB73_129
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB73_121:
	callq	"??3@YAXPEAX_K@Z"
.LBB73_122:
	movq	88(%rsp), %rax
	cmpq	$16, %rax
	jb	.LBB73_127
	movq	64(%rsp), %rcx
	leaq	1(%rax), %rdx
	cmpq	$4096, %rdx
	jb	.LBB73_126
	movq	-8(%rcx), %r8
	addq	$-8, %rcx
	subq	%r8, %rcx
	cmpq	$32, %rcx
	jae	.LBB73_129
	addq	$40, %rax
	movq	%rax, %rdx
	movq	%r8, %rcx
.LBB73_126:
	callq	"??3@YAXPEAX_K@Z"
.LBB73_127:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB73_86:
	leaq	64(%rsp), %rsi
.LBB73_88:
	xorl	%edi, %edi
	jmp	.LBB73_89
	.p2align	4
.LBB73_94:
	movb	$1, %bpl
.LBB73_95:
	incq	%rdi
	cmpq	%rdi, %rbx
	je	.LBB73_96
.LBB73_89:
	testq	%r14, %r14
	je	.LBB73_94
	movzbl	(%rsi,%rdi), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB73_93
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB73_93
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB73_95
	.p2align	4
.LBB73_93:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_95
	jmp	.LBB73_94
.LBB73_51:
	leaq	64(%rsp), %rsi
.LBB73_53:
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	jmp	.LBB73_54
	.p2align	4
.LBB73_59:
	movb	$1, %bpl
.LBB73_60:
	incq	%rdi
	cmpq	%rdi, %rbx
	je	.LBB73_96
.LBB73_54:
	testq	%r14, %r14
	je	.LBB73_59
	movzbl	(%rsi,%rdi), %eax
	movq	64(%r14), %rcx
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB73_58
	movq	88(%r14), %r8
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jle	.LBB73_58
	decl	%r9d
	movl	%r9d, (%r8)
	leaq	1(%rdx), %r8
	movq	%r8, (%rcx)
	movb	%al, (%rdx)
	jmp	.LBB73_60
	.p2align	4
.LBB73_58:
	movzbl	%al, %edx
	movq	(%r14), %rax
	movq	%r14, %rcx
	callq	*24(%rax)
	cmpl	$-1, %eax
	jne	.LBB73_60
	jmp	.LBB73_59
.LBB73_128:
	callq	"?_Xlen_string@std@@YAXXZ"
.LBB73_129:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_invoke_watson
	int3
	.seh_endproc

	.def	"??1exception@std@@UEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??1exception@std@@UEAA@XZ",unique,74
	.globl	"??1exception@std@@UEAA@XZ"
	.p2align	4
"??1exception@std@@UEAA@XZ":
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	jmp	__std_exception_destroy

	.def	"??_Gbad_cast@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??_Gbad_cast@std@@UEAAPEAXI@Z",unique,75
	.globl	"??_Gbad_cast@std@@UEAAPEAXI@Z"
	.p2align	4
"??_Gbad_cast@std@@UEAAPEAXI@Z":
.seh_proc "??_Gbad_cast@std@@UEAAPEAXI@Z"
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	leaq	"??_7exception@std@@6B@"(%rip), %rax
	movq	%rax, (%rcx)
	addq	$8, %rcx
	callq	__std_exception_destroy
	testb	$1, %dil
	je	.LBB75_2
	movl	$24, %edx
	movq	%rsi, %rcx
	callq	"??3@YAXPEAX_K@Z"
.LBB75_2:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc

	.section	.bss,"bw",discard,_Avx2WmemEnabledWeakValue
	.globl	_Avx2WmemEnabledWeakValue
	.p2align	2, 0x0
_Avx2WmemEnabledWeakValue:
	.long	0

	.section	.rdata,"dr",discard,"??_C@_0BL@LLDEGODL@oneMKL?5?$CL?5CUDA?5C?$CL?$CL?5results?6?$AA@"
	.globl	"??_C@_0BL@LLDEGODL@oneMKL?5?$CL?5CUDA?5C?$CL?$CL?5results?6?$AA@"
"??_C@_0BL@LLDEGODL@oneMKL?5?$CL?5CUDA?5C?$CL?$CL?5results?6?$AA@":
	.asciz	"oneMKL + CUDA C++ results\n"

	.section	.rdata,"dr",discard,"??_C@_07DHJEAOOF@?3?5CUDA?$DN?$AA@"
	.globl	"??_C@_07DHJEAOOF@?3?5CUDA?$DN?$AA@"
"??_C@_07DHJEAOOF@?3?5CUDA?$DN?$AA@":
	.asciz	": CUDA="

	.section	.rdata,"dr",discard,"??_C@_09LOIAJCOM@?0?5oneMKL?$DN?$AA@"
	.globl	"??_C@_09LOIAJCOM@?0?5oneMKL?$DN?$AA@"
"??_C@_09LOIAJCOM@?0?5oneMKL?$DN?$AA@":
	.asciz	", oneMKL="

	.section	.rdata,"dr",discard,"??_C@_0CE@FLGCIJCC@CUDA?5vector?9add?5validation?5passe@"
	.globl	"??_C@_0CE@FLGCIJCC@CUDA?5vector?9add?5validation?5passe@"
"??_C@_0CE@FLGCIJCC@CUDA?5vector?9add?5validation?5passe@":
	.asciz	"CUDA vector-add validation passed.\n"

	.section	.bss,"bw",discard,"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"
	.globl	"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A"
	.p2align	3, 0x0
"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A":
	.zero	8

	.section	.bss,"bw",discard,"?id@?$numpunct@D@std@@2V0locale@2@A"
	.globl	"?id@?$numpunct@D@std@@2V0locale@2@A"
	.p2align	3, 0x0
"?id@?$numpunct@D@std@@2V0locale@2@A":
	.zero	8

	.section	.data,"dw",discard,"??_R0?AVbad_array_new_length@std@@@8"
	.globl	"??_R0?AVbad_array_new_length@std@@@8"
	.p2align	4, 0x0
"??_R0?AVbad_array_new_length@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_array_new_length@std@@"
	.zero	1

	.section	.xdata,"dr",discard,"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24":
	.long	0
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVbad_alloc@std@@@8"
	.globl	"??_R0?AVbad_alloc@std@@@8"
	.p2align	4, 0x0
"??_R0?AVbad_alloc@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_alloc@std@@"
	.zero	4

	.section	.xdata,"dr",discard,"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24":
	.long	16
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0bad_alloc@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVexception@std@@@8"
	.globl	"??_R0?AVexception@std@@@8"
	.p2align	4, 0x0
"??_R0?AVexception@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVexception@std@@"
	.zero	4

	.section	.xdata,"dr",discard,"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24":
	.long	0
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0exception@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.xdata,"dr",discard,"_CTA3?AVbad_array_new_length@std@@"
	.globl	"_CTA3?AVbad_array_new_length@std@@"
	.p2align	3, 0x0
"_CTA3?AVbad_array_new_length@std@@":
	.long	3
	.long	"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"@IMGREL

	.section	.xdata,"dr",discard,"_TI3?AVbad_array_new_length@std@@"
	.globl	"_TI3?AVbad_array_new_length@std@@"
	.p2align	3, 0x0
"_TI3?AVbad_array_new_length@std@@":
	.long	0
	.long	"??1exception@std@@UEAA@XZ"@IMGREL
	.long	0
	.long	"_CTA3?AVbad_array_new_length@std@@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"
	.globl	"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@"
"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@":
	.asciz	"bad array new length"

	.section	.rdata,"dr",largest,"??_7bad_array_new_length@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_1:
	.quad	"??_R4bad_array_new_length@std@@6B@"
	.quad	"??_Ebad_array_new_length@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_array_new_length@std@@6B@"
	.globl	"??_R4bad_array_new_length@std@@6B@"
	.p2align	4, 0x0
"??_R4bad_array_new_length@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	"??_R3bad_array_new_length@std@@8"@IMGREL
	.long	"??_R4bad_array_new_length@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_array_new_length@std@@8"
	.globl	"??_R3bad_array_new_length@std@@8"
	.p2align	3, 0x0
"??_R3bad_array_new_length@std@@8":
	.long	0
	.long	0
	.long	3
	.long	"??_R2bad_array_new_length@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_array_new_length@std@@8"
	.globl	"??_R2bad_array_new_length@std@@8"
	.p2align	2, 0x0
"??_R2bad_array_new_length@std@@8":
	.long	"??_R1A@?0A@EA@bad_array_new_length@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@bad_alloc@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_array_new_length@std@@8"
	.globl	"??_R1A@?0A@EA@bad_array_new_length@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@bad_array_new_length@std@@8":
	.long	"??_R0?AVbad_array_new_length@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3bad_array_new_length@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_alloc@std@@8"
	.globl	"??_R1A@?0A@EA@bad_alloc@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@bad_alloc@std@@8":
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3bad_alloc@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_alloc@std@@8"
	.globl	"??_R3bad_alloc@std@@8"
	.p2align	3, 0x0
"??_R3bad_alloc@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2bad_alloc@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_alloc@std@@8"
	.globl	"??_R2bad_alloc@std@@8"
	.p2align	2, 0x0
"??_R2bad_alloc@std@@8":
	.long	"??_R1A@?0A@EA@bad_alloc@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@exception@std@@8"
	.globl	"??_R1A@?0A@EA@exception@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@exception@std@@8":
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3exception@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3exception@std@@8"
	.globl	"??_R3exception@std@@8"
	.p2align	3, 0x0
"??_R3exception@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2exception@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2exception@std@@8"
	.globl	"??_R2exception@std@@8"
	.p2align	2, 0x0
"??_R2exception@std@@8":
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",largest,"??_7bad_alloc@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_2:
	.quad	"??_R4bad_alloc@std@@6B@"
	.quad	"??_Ebad_alloc@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_alloc@std@@6B@"
	.globl	"??_R4bad_alloc@std@@6B@"
	.p2align	4, 0x0
"??_R4bad_alloc@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVbad_alloc@std@@@8"@IMGREL
	.long	"??_R3bad_alloc@std@@8"@IMGREL
	.long	"??_R4bad_alloc@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7exception@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_3:
	.quad	"??_R4exception@std@@6B@"
	.quad	"??_Eexception@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4exception@std@@6B@"
	.globl	"??_R4exception@std@@6B@"
	.p2align	4, 0x0
"??_R4exception@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVexception@std@@@8"@IMGREL
	.long	"??_R3exception@std@@8"@IMGREL
	.long	"??_R4exception@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"
	.globl	"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@"
"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@":
	.asciz	"Unknown exception"

	.section	.rdata,"dr",discard,"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"
	.globl	"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@"
"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@":
	.asciz	"ios_base::badbit set"

	.section	.rdata,"dr",discard,"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"
	.globl	"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@"
"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@":
	.asciz	"ios_base::failbit set"

	.section	.rdata,"dr",discard,"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"
	.globl	"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@"
"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@":
	.asciz	"ios_base::eofbit set"

	.section	.data,"dw",discard,"??_R0?AVfailure@ios_base@std@@@8"
	.globl	"??_R0?AVfailure@ios_base@std@@@8"
	.p2align	4, 0x0
"??_R0?AVfailure@ios_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVfailure@ios_base@std@@"
	.zero	5

	.section	.xdata,"dr",discard,"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40"
	.globl	"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40"
	.p2align	4, 0x0
"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40":
	.long	0
	.long	"??_R0?AVfailure@ios_base@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	40
	.long	"??0failure@ios_base@std@@QEAA@AEBV012@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVsystem_error@std@@@8"
	.globl	"??_R0?AVsystem_error@std@@@8"
	.p2align	4, 0x0
"??_R0?AVsystem_error@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVsystem_error@std@@"
	.zero	1

	.section	.xdata,"dr",discard,"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40"
	.globl	"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40"
	.p2align	4, 0x0
"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40":
	.long	0
	.long	"??_R0?AVsystem_error@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	40
	.long	"??0system_error@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV_System_error@std@@@8"
	.globl	"??_R0?AV_System_error@std@@@8"
	.p2align	4, 0x0
"??_R0?AV_System_error@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV_System_error@std@@"

	.section	.xdata,"dr",discard,"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40"
	.globl	"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40"
	.p2align	4, 0x0
"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40":
	.long	0
	.long	"??_R0?AV_System_error@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	40
	.long	"??0_System_error@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVruntime_error@std@@@8"
	.globl	"??_R0?AVruntime_error@std@@@8"
	.p2align	4, 0x0
"??_R0?AVruntime_error@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVruntime_error@std@@"

	.section	.xdata,"dr",discard,"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24"
	.globl	"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24"
	.p2align	4, 0x0
"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24":
	.long	0
	.long	"??_R0?AVruntime_error@std@@@8"@IMGREL
	.long	0
	.long	4294967295
	.long	0
	.long	24
	.long	"??0runtime_error@std@@QEAA@AEBV01@@Z"@IMGREL

	.section	.xdata,"dr",discard,"_CTA5?AVfailure@ios_base@std@@"
	.globl	"_CTA5?AVfailure@ios_base@std@@"
	.p2align	4, 0x0
"_CTA5?AVfailure@ios_base@std@@":
	.long	5
	.long	"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40"@IMGREL
	.long	"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40"@IMGREL
	.long	"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40"@IMGREL
	.long	"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24"@IMGREL
	.long	"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24"@IMGREL

	.section	.xdata,"dr",discard,"_TI5?AVfailure@ios_base@std@@"
	.globl	"_TI5?AVfailure@ios_base@std@@"
	.p2align	3, 0x0
"_TI5?AVfailure@ios_base@std@@":
	.long	0
	.long	"??1exception@std@@UEAA@XZ"@IMGREL
	.long	0
	.long	"_CTA5?AVfailure@ios_base@std@@"@IMGREL

	.section	.data,"dw",discard,"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A"
	.globl	"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A"
	.p2align	3, 0x0
"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A":
	.quad	"??_7_Iostream_error_category2@std@@6B@"
	.quad	5

	.section	.rdata,"dr",largest,"??_7_Iostream_error_category2@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_4:
	.quad	"??_R4_Iostream_error_category2@std@@6B@"
	.quad	"??_E_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.quad	"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"
	.quad	"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"
	.quad	"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"
	.quad	"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"
	.quad	"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"

	.section	.bss,"bw",discard,"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA"
	.globl	"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA"
	.p2align	2, 0x0
"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4HA":
	.long	0

	.section	.rdata,"dr",discard,"??_R4_Iostream_error_category2@std@@6B@"
	.globl	"??_R4_Iostream_error_category2@std@@6B@"
	.p2align	4, 0x0
"??_R4_Iostream_error_category2@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV_Iostream_error_category2@std@@@8"@IMGREL
	.long	"??_R3_Iostream_error_category2@std@@8"@IMGREL
	.long	"??_R4_Iostream_error_category2@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV_Iostream_error_category2@std@@@8"
	.globl	"??_R0?AV_Iostream_error_category2@std@@@8"
	.p2align	4, 0x0
"??_R0?AV_Iostream_error_category2@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV_Iostream_error_category2@std@@"
	.zero	4

	.section	.rdata,"dr",discard,"??_R3_Iostream_error_category2@std@@8"
	.globl	"??_R3_Iostream_error_category2@std@@8"
	.p2align	3, 0x0
"??_R3_Iostream_error_category2@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2_Iostream_error_category2@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_Iostream_error_category2@std@@8"
	.globl	"??_R2_Iostream_error_category2@std@@8"
	.p2align	2, 0x0
"??_R2_Iostream_error_category2@std@@8":
	.long	"??_R1A@?0A@EA@_Iostream_error_category2@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@error_category@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_Iostream_error_category2@std@@8"
	.globl	"??_R1A@?0A@EA@_Iostream_error_category2@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@_Iostream_error_category2@std@@8":
	.long	"??_R0?AV_Iostream_error_category2@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Iostream_error_category2@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@error_category@std@@8"
	.globl	"??_R1A@?0A@EA@error_category@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@error_category@std@@8":
	.long	"??_R0?AVerror_category@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3error_category@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVerror_category@std@@@8"
	.globl	"??_R0?AVerror_category@std@@@8"
	.p2align	4, 0x0
"??_R0?AVerror_category@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVerror_category@std@@"
	.zero	7

	.section	.rdata,"dr",discard,"??_R3error_category@std@@8"
	.globl	"??_R3error_category@std@@8"
	.p2align	3, 0x0
"??_R3error_category@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2error_category@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2error_category@std@@8"
	.globl	"??_R2error_category@std@@8"
	.p2align	2, 0x0
"??_R2error_category@std@@8":
	.long	"??_R1A@?0A@EA@error_category@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_C@_08LLGCOLLL@iostream?$AA@"
	.globl	"??_C@_08LLGCOLLL@iostream?$AA@"
"??_C@_08LLGCOLLL@iostream?$AA@":
	.asciz	"iostream"

	.section	.rdata,"dr",discard,"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB"
	.globl	"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB"
	.p2align	4, 0x0
"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB":
	.asciz	"iostream stream error"

	.section	.rdata,"dr",discard,"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"
	.globl	"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@"
"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@":
	.asciz	"string too long"

	.section	.rdata,"dr",largest,"??_7failure@ios_base@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_5:
	.quad	"??_R4failure@ios_base@std@@6B@"
	.quad	"??_Efailure@ios_base@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4failure@ios_base@std@@6B@"
	.globl	"??_R4failure@ios_base@std@@6B@"
	.p2align	4, 0x0
"??_R4failure@ios_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVfailure@ios_base@std@@@8"@IMGREL
	.long	"??_R3failure@ios_base@std@@8"@IMGREL
	.long	"??_R4failure@ios_base@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3failure@ios_base@std@@8"
	.globl	"??_R3failure@ios_base@std@@8"
	.p2align	3, 0x0
"??_R3failure@ios_base@std@@8":
	.long	0
	.long	0
	.long	5
	.long	"??_R2failure@ios_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2failure@ios_base@std@@8"
	.globl	"??_R2failure@ios_base@std@@8"
	.p2align	4, 0x0
"??_R2failure@ios_base@std@@8":
	.long	"??_R1A@?0A@EA@failure@ios_base@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@system_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_System_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@failure@ios_base@std@@8"
	.globl	"??_R1A@?0A@EA@failure@ios_base@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@failure@ios_base@std@@8":
	.long	"??_R0?AVfailure@ios_base@std@@@8"@IMGREL
	.long	4
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3failure@ios_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@system_error@std@@8"
	.globl	"??_R1A@?0A@EA@system_error@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@system_error@std@@8":
	.long	"??_R0?AVsystem_error@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3system_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3system_error@std@@8"
	.globl	"??_R3system_error@std@@8"
	.p2align	3, 0x0
"??_R3system_error@std@@8":
	.long	0
	.long	0
	.long	4
	.long	"??_R2system_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2system_error@std@@8"
	.globl	"??_R2system_error@std@@8"
	.p2align	4, 0x0
"??_R2system_error@std@@8":
	.long	"??_R1A@?0A@EA@system_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_System_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_System_error@std@@8"
	.globl	"??_R1A@?0A@EA@_System_error@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@_System_error@std@@8":
	.long	"??_R0?AV_System_error@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_System_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3_System_error@std@@8"
	.globl	"??_R3_System_error@std@@8"
	.p2align	3, 0x0
"??_R3_System_error@std@@8":
	.long	0
	.long	0
	.long	3
	.long	"??_R2_System_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_System_error@std@@8"
	.globl	"??_R2_System_error@std@@8"
	.p2align	2, 0x0
"??_R2_System_error@std@@8":
	.long	"??_R1A@?0A@EA@_System_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@runtime_error@std@@8"
	.globl	"??_R1A@?0A@EA@runtime_error@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@runtime_error@std@@8":
	.long	"??_R0?AVruntime_error@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3runtime_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R3runtime_error@std@@8"
	.globl	"??_R3runtime_error@std@@8"
	.p2align	3, 0x0
"??_R3runtime_error@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2runtime_error@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2runtime_error@std@@8"
	.globl	"??_R2runtime_error@std@@8"
	.p2align	2, 0x0
"??_R2runtime_error@std@@8":
	.long	"??_R1A@?0A@EA@runtime_error@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",largest,"??_7system_error@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_6:
	.quad	"??_R4system_error@std@@6B@"
	.quad	"??_Esystem_error@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4system_error@std@@6B@"
	.globl	"??_R4system_error@std@@6B@"
	.p2align	4, 0x0
"??_R4system_error@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVsystem_error@std@@@8"@IMGREL
	.long	"??_R3system_error@std@@8"@IMGREL
	.long	"??_R4system_error@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7_System_error@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_7:
	.quad	"??_R4_System_error@std@@6B@"
	.quad	"??_E_System_error@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4_System_error@std@@6B@"
	.globl	"??_R4_System_error@std@@6B@"
	.p2align	4, 0x0
"??_R4_System_error@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV_System_error@std@@@8"@IMGREL
	.long	"??_R3_System_error@std@@8"@IMGREL
	.long	"??_R4_System_error@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_02LMMGGCAJ@?3?5?$AA@"
	.globl	"??_C@_02LMMGGCAJ@?3?5?$AA@"
"??_C@_02LMMGGCAJ@?3?5?$AA@":
	.asciz	": "

	.section	.rdata,"dr",largest,"??_7runtime_error@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_8:
	.quad	"??_R4runtime_error@std@@6B@"
	.quad	"??_Eruntime_error@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4runtime_error@std@@6B@"
	.globl	"??_R4runtime_error@std@@6B@"
	.p2align	4, 0x0
"??_R4runtime_error@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVruntime_error@std@@@8"@IMGREL
	.long	"??_R3runtime_error@std@@8"@IMGREL
	.long	"??_R4runtime_error@std@@6B@"@IMGREL

	.section	.bss,"bw",discard,"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"
	.globl	"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB"
	.p2align	3, 0x0
"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB":
	.quad	0

	.section	.rdata,"dr",discard,"??_C@_00CNPNBAHC@?$AA@"
	.globl	"??_C@_00CNPNBAHC@?$AA@"
"??_C@_00CNPNBAHC@?$AA@":
	.zero	1

	.section	.rdata,"dr",largest,"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_9:
	.quad	"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.quad	"??_E?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"
	.quad	"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"

	.section	.rdata,"dr",discard,"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.globl	"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
	.p2align	4, 0x0
"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"@IMGREL
	.long	"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL
	.long	"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"
	.globl	"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"
	.p2align	4, 0x0
"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@"
	.zero	6

	.section	.rdata,"dr",discard,"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.globl	"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.p2align	3, 0x0
"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8":
	.long	0
	.long	1
	.long	4
	.long	"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.globl	"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.p2align	4, 0x0
"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8":
	.long	"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.globl	"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8":
	.long	"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@facet@locale@std@@8"
	.globl	"??_R1A@?0A@EA@facet@locale@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@facet@locale@std@@8":
	.long	"??_R0?AVfacet@locale@std@@@8"@IMGREL
	.long	2
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3facet@locale@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AVfacet@locale@std@@@8"
	.globl	"??_R0?AVfacet@locale@std@@@8"
	.p2align	4, 0x0
"??_R0?AVfacet@locale@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVfacet@locale@std@@"
	.zero	1

	.section	.rdata,"dr",discard,"??_R3facet@locale@std@@8"
	.globl	"??_R3facet@locale@std@@8"
	.p2align	3, 0x0
"??_R3facet@locale@std@@8":
	.long	0
	.long	1
	.long	3
	.long	"??_R2facet@locale@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2facet@locale@std@@8"
	.globl	"??_R2facet@locale@std@@8"
	.p2align	2, 0x0
"??_R2facet@locale@std@@8":
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_Facet_base@std@@8"
	.globl	"??_R1A@?0A@EA@_Facet_base@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@_Facet_base@std@@8":
	.long	"??_R0?AV_Facet_base@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Facet_base@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV_Facet_base@std@@@8"
	.globl	"??_R0?AV_Facet_base@std@@@8"
	.p2align	4, 0x0
"??_R0?AV_Facet_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV_Facet_base@std@@"
	.zero	2

	.section	.rdata,"dr",discard,"??_R3_Facet_base@std@@8"
	.globl	"??_R3_Facet_base@std@@8"
	.p2align	3, 0x0
"??_R3_Facet_base@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2_Facet_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_Facet_base@std@@8"
	.globl	"??_R2_Facet_base@std@@8"
	.p2align	2, 0x0
"??_R2_Facet_base@std@@8":
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R17?0A@EA@_Crt_new_delete@std@@8"
	.globl	"??_R17?0A@EA@_Crt_new_delete@std@@8"
	.p2align	4, 0x0
"??_R17?0A@EA@_Crt_new_delete@std@@8":
	.long	"??_R0?AU_Crt_new_delete@std@@@8"@IMGREL
	.long	0
	.long	8
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Crt_new_delete@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AU_Crt_new_delete@std@@@8"
	.globl	"??_R0?AU_Crt_new_delete@std@@@8"
	.p2align	4, 0x0
"??_R0?AU_Crt_new_delete@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AU_Crt_new_delete@std@@"
	.zero	6

	.section	.rdata,"dr",discard,"??_R3_Crt_new_delete@std@@8"
	.globl	"??_R3_Crt_new_delete@std@@8"
	.p2align	3, 0x0
"??_R3_Crt_new_delete@std@@8":
	.long	0
	.long	0
	.long	1
	.long	"??_R2_Crt_new_delete@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2_Crt_new_delete@std@@8"
	.globl	"??_R2_Crt_new_delete@std@@8"
	.p2align	2, 0x0
"??_R2_Crt_new_delete@std@@8":
	.long	"??_R1A@?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@_Crt_new_delete@std@@8"
	.globl	"??_R1A@?0A@EA@_Crt_new_delete@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@_Crt_new_delete@std@@8":
	.long	"??_R0?AU_Crt_new_delete@std@@@8"@IMGREL
	.long	0
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3_Crt_new_delete@std@@8"@IMGREL

	.section	.rdata,"dr",largest,"??_7facet@locale@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_10:
	.quad	"??_R4facet@locale@std@@6B@"
	.quad	"??_Efacet@locale@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"

	.section	.rdata,"dr",discard,"??_R4facet@locale@std@@6B@"
	.globl	"??_R4facet@locale@std@@6B@"
	.p2align	4, 0x0
"??_R4facet@locale@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVfacet@locale@std@@@8"@IMGREL
	.long	"??_R3facet@locale@std@@8"@IMGREL
	.long	"??_R4facet@locale@std@@6B@"@IMGREL

	.section	.rdata,"dr",largest,"??_7_Facet_base@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_11:
	.quad	"??_R4_Facet_base@std@@6B@"
	.quad	"??_E_Facet_base@std@@UEAAPEAXI@Z"
	.quad	_purecall
	.quad	_purecall

	.section	.rdata,"dr",discard,"??_R4_Facet_base@std@@6B@"
	.globl	"??_R4_Facet_base@std@@6B@"
	.p2align	4, 0x0
"??_R4_Facet_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV_Facet_base@std@@@8"@IMGREL
	.long	"??_R3_Facet_base@std@@8"@IMGREL
	.long	"??_R4_Facet_base@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_02BBAHNLBA@?$CFp?$AA@"
	.globl	"??_C@_02BBAHNLBA@?$CFp?$AA@"
"??_C@_02BBAHNLBA@?$CFp?$AA@":
	.asciz	"%p"

	.section	.bss,"bw",discard,"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.globl	"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.p2align	3, 0x0
"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB":
	.quad	0

	.section	.rdata,"dr",largest,"??_7?$ctype@D@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_12:
	.quad	"??_R4?$ctype@D@std@@6B@"
	.quad	"??_E?$ctype@D@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.quad	"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.quad	"?do_tolower@?$ctype@D@std@@MEBADD@Z"
	.quad	"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"
	.quad	"?do_toupper@?$ctype@D@std@@MEBADD@Z"
	.quad	"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"
	.quad	"?do_widen@?$ctype@D@std@@MEBADD@Z"
	.quad	"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"
	.quad	"?do_narrow@?$ctype@D@std@@MEBADDD@Z"

	.section	.rdata,"dr",discard,"??_R4?$ctype@D@std@@6B@"
	.globl	"??_R4?$ctype@D@std@@6B@"
	.p2align	4, 0x0
"??_R4?$ctype@D@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$ctype@D@std@@@8"@IMGREL
	.long	"??_R3?$ctype@D@std@@8"@IMGREL
	.long	"??_R4?$ctype@D@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$ctype@D@std@@@8"
	.globl	"??_R0?AV?$ctype@D@std@@@8"
	.p2align	4, 0x0
"??_R0?AV?$ctype@D@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$ctype@D@std@@"
	.zero	4

	.section	.rdata,"dr",discard,"??_R3?$ctype@D@std@@8"
	.globl	"??_R3?$ctype@D@std@@8"
	.p2align	3, 0x0
"??_R3?$ctype@D@std@@8":
	.long	0
	.long	1
	.long	5
	.long	"??_R2?$ctype@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$ctype@D@std@@8"
	.globl	"??_R2?$ctype@D@std@@8"
	.p2align	4, 0x0
"??_R2?$ctype@D@std@@8":
	.long	"??_R1A@?0A@EA@?$ctype@D@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@ctype_base@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$ctype@D@std@@8"
	.globl	"??_R1A@?0A@EA@?$ctype@D@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@?$ctype@D@std@@8":
	.long	"??_R0?AV?$ctype@D@std@@@8"@IMGREL
	.long	4
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$ctype@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@ctype_base@std@@8"
	.globl	"??_R1A@?0A@EA@ctype_base@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@ctype_base@std@@8":
	.long	"??_R0?AUctype_base@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3ctype_base@std@@8"@IMGREL

	.section	.data,"dw",discard,"??_R0?AUctype_base@std@@@8"
	.globl	"??_R0?AUctype_base@std@@@8"
	.p2align	4, 0x0
"??_R0?AUctype_base@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AUctype_base@std@@"
	.zero	3

	.section	.rdata,"dr",discard,"??_R3ctype_base@std@@8"
	.globl	"??_R3ctype_base@std@@8"
	.p2align	3, 0x0
"??_R3ctype_base@std@@8":
	.long	0
	.long	1
	.long	4
	.long	"??_R2ctype_base@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2ctype_base@std@@8"
	.globl	"??_R2ctype_base@std@@8"
	.p2align	4, 0x0
"??_R2ctype_base@std@@8":
	.long	"??_R1A@?0A@EA@ctype_base@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",largest,"??_7ctype_base@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_13:
	.quad	"??_R4ctype_base@std@@6B@"
	.quad	"??_Ectype_base@std@@UEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"

	.section	.rdata,"dr",discard,"??_R4ctype_base@std@@6B@"
	.globl	"??_R4ctype_base@std@@6B@"
	.p2align	4, 0x0
"??_R4ctype_base@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AUctype_base@std@@@8"@IMGREL
	.long	"??_R3ctype_base@std@@8"@IMGREL
	.long	"??_R4ctype_base@std@@6B@"@IMGREL

	.section	.bss,"bw",discard,"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.globl	"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB"
	.p2align	3, 0x0
"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB":
	.quad	0

	.section	.rdata,"dr",largest,"??_7?$numpunct@D@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_14:
	.quad	"??_R4?$numpunct@D@std@@6B@"
	.quad	"??_E?$numpunct@D@std@@MEAAPEAXI@Z"
	.quad	"?_Incref@facet@locale@std@@UEAAXXZ"
	.quad	"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"
	.quad	"?do_decimal_point@?$numpunct@D@std@@MEBADXZ"
	.quad	"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ"
	.quad	"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.quad	"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"
	.quad	"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"

	.section	.rdata,"dr",discard,"??_R4?$numpunct@D@std@@6B@"
	.globl	"??_R4?$numpunct@D@std@@6B@"
	.p2align	4, 0x0
"??_R4?$numpunct@D@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AV?$numpunct@D@std@@@8"@IMGREL
	.long	"??_R3?$numpunct@D@std@@8"@IMGREL
	.long	"??_R4?$numpunct@D@std@@6B@"@IMGREL

	.section	.data,"dw",discard,"??_R0?AV?$numpunct@D@std@@@8"
	.globl	"??_R0?AV?$numpunct@D@std@@@8"
	.p2align	4, 0x0
"??_R0?AV?$numpunct@D@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AV?$numpunct@D@std@@"
	.zero	1

	.section	.rdata,"dr",discard,"??_R3?$numpunct@D@std@@8"
	.globl	"??_R3?$numpunct@D@std@@8"
	.p2align	3, 0x0
"??_R3?$numpunct@D@std@@8":
	.long	0
	.long	1
	.long	4
	.long	"??_R2?$numpunct@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2?$numpunct@D@std@@8"
	.globl	"??_R2?$numpunct@D@std@@8"
	.p2align	4, 0x0
"??_R2?$numpunct@D@std@@8":
	.long	"??_R1A@?0A@EA@?$numpunct@D@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@facet@locale@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@_Facet_base@std@@8"@IMGREL
	.long	"??_R17?0A@EA@_Crt_new_delete@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@?$numpunct@D@std@@8"
	.globl	"??_R1A@?0A@EA@?$numpunct@D@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@?$numpunct@D@std@@8":
	.long	"??_R0?AV?$numpunct@D@std@@@8"@IMGREL
	.long	3
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3?$numpunct@D@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_C@_05LAPONLG@false?$AA@"
	.globl	"??_C@_05LAPONLG@false?$AA@"
"??_C@_05LAPONLG@false?$AA@":
	.asciz	"false"

	.section	.rdata,"dr",discard,"??_C@_04LOAJBDKD@true?$AA@"
	.globl	"??_C@_04LOAJBDKD@true?$AA@"
"??_C@_04LOAJBDKD@true?$AA@":
	.asciz	"true"

	.section	.rdata,"dr",discard,"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@"
	.globl	"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@"
"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@":
	.asciz	"invalid string position"

	.section	.bss,"bw",discard,"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.globl	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.p2align	3, 0x0
"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA":
	.quad	0

	.section	.rdata,"dr",discard,"??_C@_02MDKMJEGG@eE?$AA@"
	.globl	"??_C@_02MDKMJEGG@eE?$AA@"
"??_C@_02MDKMJEGG@eE?$AA@":
	.asciz	"eE"

	.section	.rdata,"dr",discard,"??_C@_02OOPEBDOJ@pP?$AA@"
	.globl	"??_C@_02OOPEBDOJ@pP?$AA@"
"??_C@_02OOPEBDOJ@pP?$AA@":
	.asciz	"pP"

	.section	.data,"dw",discard,"??_R0?AVbad_cast@std@@@8"
	.globl	"??_R0?AVbad_cast@std@@@8"
	.p2align	4, 0x0
"??_R0?AVbad_cast@std@@@8":
	.quad	"??_7type_info@@6B@"
	.quad	0
	.asciz	".?AVbad_cast@std@@"
	.zero	5

	.section	.rdata,"dr",largest,"??_7bad_cast@std@@6B@"
	.p2align	4, 0x0
.L__unnamed_15:
	.quad	"??_R4bad_cast@std@@6B@"
	.quad	"??_Ebad_cast@std@@UEAAPEAXI@Z"
	.quad	"?what@exception@std@@UEBAPEBDXZ"

	.section	.rdata,"dr",discard,"??_R4bad_cast@std@@6B@"
	.globl	"??_R4bad_cast@std@@6B@"
	.p2align	4, 0x0
"??_R4bad_cast@std@@6B@":
	.long	1
	.long	0
	.long	0
	.long	"??_R0?AVbad_cast@std@@@8"@IMGREL
	.long	"??_R3bad_cast@std@@8"@IMGREL
	.long	"??_R4bad_cast@std@@6B@"@IMGREL

	.section	.rdata,"dr",discard,"??_R3bad_cast@std@@8"
	.globl	"??_R3bad_cast@std@@8"
	.p2align	3, 0x0
"??_R3bad_cast@std@@8":
	.long	0
	.long	0
	.long	2
	.long	"??_R2bad_cast@std@@8"@IMGREL

	.section	.rdata,"dr",discard,"??_R2bad_cast@std@@8"
	.globl	"??_R2bad_cast@std@@8"
	.p2align	2, 0x0
"??_R2bad_cast@std@@8":
	.long	"??_R1A@?0A@EA@bad_cast@std@@8"@IMGREL
	.long	"??_R1A@?0A@EA@exception@std@@8"@IMGREL
	.long	0

	.section	.rdata,"dr",discard,"??_R1A@?0A@EA@bad_cast@std@@8"
	.globl	"??_R1A@?0A@EA@bad_cast@std@@8"
	.p2align	4, 0x0
"??_R1A@?0A@EA@bad_cast@std@@8":
	.long	"??_R0?AVbad_cast@std@@@8"@IMGREL
	.long	1
	.long	0
	.long	4294967295
	.long	0
	.long	64
	.long	"??_R3bad_cast@std@@8"@IMGREL

	.section	.CRT$XCU,"dr",associative,"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A",unique,0
	.p2align	3, 0x0
	.quad	"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ"
	.section	.CRT$XCU,"dr",associative,"?id@?$numpunct@D@std@@2V0locale@2@A",unique,0
	.p2align	3, 0x0
	.quad	"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ"
	.section	.drectve,"yni"
	.ascii	" /DEFAULTLIB:libcpmt.lib"
	.ascii	" /DEFAULTLIB:libcmt.lib"
	.ascii	" /DEFAULTLIB:libircmt.lib"
	.ascii	" /DEFAULTLIB:svml_dispmt.lib"
	.ascii	" /DEFAULTLIB:libmmt.lib"
	.ascii	" /DEFAULTLIB:oldnames.lib"
	.ascii	" /FAILIFMISMATCH:\"_MSC_VER=1900\""
	.ascii	" /FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=0\""
	.ascii	" /FAILIFMISMATCH:\"RuntimeLibrary=MT_StaticRelease\""
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
	.ascii	" /alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"
	.ascii	" /FAILIFMISMATCH:\"annotate_string=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_vector=0\""
	.ascii	" /INCLUDE:\"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A\""
	.ascii	" /INCLUDE:\"?id@?$numpunct@D@std@@2V0locale@2@A\""
	.globl	"??_7bad_array_new_length@std@@6B@"
"??_7bad_array_new_length@std@@6B@" = .L__unnamed_1+8
	.globl	"??_7bad_alloc@std@@6B@"
"??_7bad_alloc@std@@6B@" = .L__unnamed_2+8
	.globl	"??_7exception@std@@6B@"
"??_7exception@std@@6B@" = .L__unnamed_3+8
	.weak	"??_Eexception@std@@UEAAPEAXI@Z"
	.def	"??_Eexception@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Eexception@std@@UEAAPEAXI@Z" = "??_Gexception@std@@UEAAPEAXI@Z"
	.weak	"??_Ebad_alloc@std@@UEAAPEAXI@Z"
	.def	"??_Ebad_alloc@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Ebad_alloc@std@@UEAAPEAXI@Z" = "??_Gbad_alloc@std@@UEAAPEAXI@Z"
	.weak	"??_Ebad_array_new_length@std@@UEAAPEAXI@Z"
	.def	"??_Ebad_array_new_length@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Ebad_array_new_length@std@@UEAAPEAXI@Z" = "??_Gbad_array_new_length@std@@UEAAPEAXI@Z"
	.globl	"??_7_Iostream_error_category2@std@@6B@"
"??_7_Iostream_error_category2@std@@6B@" = .L__unnamed_4+8
	.weak	"??_E_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.def	"??_E_Iostream_error_category2@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_E_Iostream_error_category2@std@@UEAAPEAXI@Z" = "??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"
	.globl	"??_7failure@ios_base@std@@6B@"
"??_7failure@ios_base@std@@6B@" = .L__unnamed_5+8
	.globl	"??_7system_error@std@@6B@"
"??_7system_error@std@@6B@" = .L__unnamed_6+8
	.globl	"??_7_System_error@std@@6B@"
"??_7_System_error@std@@6B@" = .L__unnamed_7+8
	.globl	"??_7runtime_error@std@@6B@"
"??_7runtime_error@std@@6B@" = .L__unnamed_8+8
	.weak	"??_Eruntime_error@std@@UEAAPEAXI@Z"
	.def	"??_Eruntime_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Eruntime_error@std@@UEAAPEAXI@Z" = "??_Gruntime_error@std@@UEAAPEAXI@Z"
	.weak	"??_E_System_error@std@@UEAAPEAXI@Z"
	.def	"??_E_System_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_E_System_error@std@@UEAAPEAXI@Z" = "??_G_System_error@std@@UEAAPEAXI@Z"
	.weak	"??_Esystem_error@std@@UEAAPEAXI@Z"
	.def	"??_Esystem_error@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Esystem_error@std@@UEAAPEAXI@Z" = "??_Gsystem_error@std@@UEAAPEAXI@Z"
	.weak	"??_Efailure@ios_base@std@@UEAAPEAXI@Z"
	.def	"??_Efailure@ios_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Efailure@ios_base@std@@UEAAPEAXI@Z" = "??_Gfailure@ios_base@std@@UEAAPEAXI@Z"
	.globl	"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@"
"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@" = .L__unnamed_9+8
	.globl	"??_7facet@locale@std@@6B@"
"??_7facet@locale@std@@6B@" = .L__unnamed_10+8
	.globl	"??_7_Facet_base@std@@6B@"
"??_7_Facet_base@std@@6B@" = .L__unnamed_11+8
	.weak	"??_E_Facet_base@std@@UEAAPEAXI@Z"
	.def	"??_E_Facet_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_E_Facet_base@std@@UEAAPEAXI@Z" = "??_G_Facet_base@std@@UEAAPEAXI@Z"
	.weak	"??_Efacet@locale@std@@MEAAPEAXI@Z"
	.def	"??_Efacet@locale@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Efacet@locale@std@@MEAAPEAXI@Z" = "??_Gfacet@locale@std@@MEAAPEAXI@Z"
	.weak	"??_E?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.def	"??_E?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_E?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z" = "??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"
	.globl	"??_7?$ctype@D@std@@6B@"
"??_7?$ctype@D@std@@6B@" = .L__unnamed_12+8
	.globl	"??_7ctype_base@std@@6B@"
"??_7ctype_base@std@@6B@" = .L__unnamed_13+8
	.weak	"??_Ectype_base@std@@UEAAPEAXI@Z"
	.def	"??_Ectype_base@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Ectype_base@std@@UEAAPEAXI@Z" = "??_Gctype_base@std@@UEAAPEAXI@Z"
	.weak	"??_E?$ctype@D@std@@MEAAPEAXI@Z"
	.def	"??_E?$ctype@D@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_E?$ctype@D@std@@MEAAPEAXI@Z" = "??_G?$ctype@D@std@@MEAAPEAXI@Z"
	.globl	"??_7?$numpunct@D@std@@6B@"
"??_7?$numpunct@D@std@@6B@" = .L__unnamed_14+8
	.weak	"??_E?$numpunct@D@std@@MEAAPEAXI@Z"
	.def	"??_E?$numpunct@D@std@@MEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_E?$numpunct@D@std@@MEAAPEAXI@Z" = "??_G?$numpunct@D@std@@MEAAPEAXI@Z"
	.globl	"??_7bad_cast@std@@6B@"
"??_7bad_cast@std@@6B@" = .L__unnamed_15+8
	.weak	"??_Ebad_cast@std@@UEAAPEAXI@Z"
	.def	"??_Ebad_cast@std@@UEAAPEAXI@Z";
	.scl	2;
	.type	32;
	.endef
"??_Ebad_cast@std@@UEAAPEAXI@Z" = "??_Gbad_cast@std@@UEAAPEAXI@Z"
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4
	.long	241
	.long	.Ltmp1-.Ltmp0
.Ltmp0:
	.short	.Ltmp3-.Ltmp2
.Ltmp2:
	.short	4353
	.long	0
	.byte	0
	.p2align	2, 0x0
.Ltmp3:
	.short	.Ltmp5-.Ltmp4
.Ltmp4:
	.short	4412
	.long	1
	.short	208
	.short	2026
	.short	1
	.short	1
	.short	0
	.short	22010
	.short	0
	.short	0
	.short	0
	.asciz	"clang based Intel(R) oneAPI DPC++/C++ Compiler 2026.1.1 (2026.1.1.20260724)"
	.p2align	2, 0x0
.Ltmp5:
.Ltmp1:
	.p2align	2, 0x0
	.globl	_fltused
