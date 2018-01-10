### assembly examples for x86 in AT&T style

1. run it
	- as -gstabs -o demo.o demo.s (assembly)
		- -gstabs: enable debugging symbols in object-file (to debug in GDB)
	- gcc -nostdlib -lc -o demo demo.o (link)
		- -nostdlib: do not link with the standard libraries (if not, _start will be already defined)
		- -lc: link with libc ( get exit symbol defined)
	- ./demo (run it)

2. Reference
	- http://www.bth.se/people/ska/ia32_examples.html
