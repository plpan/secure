	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -4(%ebp)
	movl	$0, -16(%ebp)
	movl	L_main.b-L0$pb(%eax), %ecx
	movl	%ecx, -12(%ebp)
	movl	(L_main.b-L0$pb)+4(%eax), %ecx
	movl	%ecx, -8(%ebp)
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %eax
	movl	(%eax), %eax
	movl	-4(%ebp), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_2
## BB#1:
	xorl	%eax, %eax
	addl	$24, %esp
	popl	%ebp
	retl
LBB0_2:
	calll	___stack_chk_fail

	.section	__DATA,__data
	.p2align	2               ## @main.a
_main.a:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4

	.section	__TEXT,__literal8,8byte_literals
	.p2align	2               ## @main.b
L_main.b:
	.long	5                       ## 0x5
	.long	6                       ## 0x6


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
