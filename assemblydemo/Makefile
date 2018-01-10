OBJECT=demo1 demo2

all: demo1

demo1:
	gcc -m32 -gstabs -c -o demo1.o demo1_exit.s
	gcc -m32 -nostdlib -lc -o demo1 demo1.o

clean:
	-rm ${OBJECT} ${OBJECT}.o

.PHONY: all
