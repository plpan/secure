.section .text
.globl _start
_start:
	movl $1, %eax # syscall number存储在eax中, linux kernel syscall number. Exit the program
	movl $2, %ebx # argument (2), Exit Code
	int  $0x80    # 软中断(中断号0x80是系统调用)，syscall这里是寄存器传递参数，然后系统调用。
				  # 系统调用前六个参数用寄存器，剩余的通过栈
