
var:
	gcc -m32 -S alloc_var.c

seq:
	gcc -m32 -fno-stack-protector -S alloc_seq.c

over:
	gcc -m32 -fno-stack-protector -S alloc_overflow.c

write:
	gcc -m32 -fno-stack-protector -S alloc_overwrite.c

run_write:
	gcc -g -fno-stack-protector -o write alloc_overwrite.c

