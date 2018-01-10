	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_func
	.p2align	4, 0x90
_func:                                  ## @func
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	xorl	%edi, %edi
	movl	%esi, -12(%ebp)
	movl	%edx, -16(%ebp)
	movl	%ecx, -20(%ebp)
	movl	l_func.d-L0$pb(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movl	(l_func.d-L0$pb)+4(%eax), %ecx
	movl	%ecx, -24(%ebp)
	movl	l_func.e-L0$pb(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	(l_func.e-L0$pb)+4(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	(l_func.e-L0$pb)+8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%edi, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	retl

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$1, %eax
	movl	$2, %ecx
	movl	$3, %edx
	movl	$0, -4(%ebp)
	movl	$1, (%esp)
	movl	$2, 4(%esp)
	movl	$3, 8(%esp)
	movl	%eax, -8(%ebp)          ## 4-byte Spill
	movl	%ecx, -12(%ebp)         ## 4-byte Spill
	movl	%edx, -16(%ebp)         ## 4-byte Spill
	calll	_func
	xorl	%ecx, %ecx
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	%ecx, %eax
	addl	$40, %esp
	popl	%ebp
	retl

	.section	__TEXT,__const
	.p2align	2               ## @func.d
l_func.d:
	.long	1                       ## 0x1
	.long	0                       ## 0x0

	.p2align	2               ## @func.e
l_func.e:
	.long	2                       ## 0x2
	.long	0                       ## 0x0
	.long	0                       ## 0x0


.subsections_via_symbols
