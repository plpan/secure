.section .text
.globl _start
_start:
	movl $1, %eax # argument 1, Exit
	movl $2, %ebx # argument 2, Exit Code
	int $0x80     # syscall (soft interrupt) 这里是寄存器传递参数，然后系统调用。
				  # 系统调用前六个参数用寄存器，剩余的通过栈
