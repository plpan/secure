OBJECT=demo1 demo2

all: ${OBJECT}

demo1:
	gcc -m32 -gstabs -c -o demo1.o demo1_exit.s
	gcc -m32 -nostdlib -lc -o demo1 demo1.o

demo2:
	gcc -m32 -gstabs -c -o demo2.o demo2_syscall.s
	gcc -m32 -nostdlib -lc -o demo2 demo2.o

clean:
	-rm ${OBJECT} *.o

.PHONY: all
