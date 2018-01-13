.section .text
while_stmt:
	xorl %ebx, %ebx
l1: 
	cmpl $0, %eax
	je 1
	addl $2, %ebx
	decl %eax
	jmp l1
1:  
	ret

.globl _start
_start:
	mov $5, %eax
	call while_stmt
	pushl %ebx
	call exit
