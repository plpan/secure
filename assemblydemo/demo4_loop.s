.section .text
while_stmt:
	xorl %ebx, %ebx
l1:
	addl $2, %ebx
	loop l1
	ret

.globl _start
_start:
	movl $5, %ecx
	call while_stmt
	pushl %ebx
	call exit
