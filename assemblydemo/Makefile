TARGET=demo1 demo2 demo3 demo4

# wildcard使通配符生效，诸如'*'等
TARGETS := $(foreach obj, ${TARGET}, $(wildcard ${obj}))
OBJECTS := $(foreach obj, ${TARGET}, $(wildcard ${obj}.o))

#define assembly_and_link = 
#
#	gcc -m32 -gstabs -c -o $(1).o $(1)_exit.s
#	gcc -m32 -nostdlib -lc -o $(1) $(1).o
#
#endef

#all:
#	$(foreach obj, ${TARGET}, $(call assembly_and_link, $(obj)))

.PHONY: all

all: ${TARGET}

demo1:
	gcc -m32 -gstabs -c -o demo1.o demo1_exit.s
	gcc -m32 -nostdlib -lc -o demo1 demo1.o

demo2:
	gcc -m32 -gstabs -c -o demo2.o demo2_syscall.s
	gcc -m32 -nostdlib -lc -o demo2 demo2.o

demo3:
	gcc -m32 -gstabs -c -o demo3.o demo3_jmp.s
	gcc -m32 -nostdlib -lc -o demo3 demo3.o

demo4:
	gcc -m32 -gstabs -c -o demo4.o demo4_loop.s
	gcc -m32 -nostdlib -lc -o demo4 demo4.o

clean:
	-rm ${OBJECTS} ${TARGETS}
