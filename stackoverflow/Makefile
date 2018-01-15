
var:
	gcc -m32 -S alloc_var.c

seq:
	gcc -m32 -fno-stack-protector -S alloc_seq.c

over:
	gcc -m32 -fno-stack-protector -S alloc_overflow.c

# 一定要加 -fno-stack-protector 选项，gcc默认开启堆栈保护技术，会防止返回地址被改写
write:
	gcc -m32 -fno-stack-protector -S alloc_overwrite.c

run_write:
	gcc -g -fno-stack-protector -o write alloc_overwrite.c

