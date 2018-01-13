### assembly examples for x86 in AT&T style

1. run it
	- gcc -m32 -gstabs -c -o demo.o demo.s (assembly)
		- -gstabs: enable debugging symbols in object-file (to debug in GDB)
		- if you are using as, then [ as --32 -o demo demo.s ]
	- gcc -m32 -nostdlib -lc -o demo demo.o (link)
		- -nostdlib: do not link with the standard libraries (if not, _start will be already defined)
		- -lc: link with libc ( get exit symbol defined)
			- -lc is enabled by gcc for default
	- ./demo (run it)

2. Reference
	- http://www.bth.se/people/ska/ia32_examples.html
