.section .text
.globl _start  # export _start
_start:
	pushl $2   # argument (2) for exit, Exit Code
	call exit  # 这里是函数调用，通过压栈的方式传递参数
