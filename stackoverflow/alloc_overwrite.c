#include <stdio.h>
#include <string.h>

void function(int a, int b, int c) {
	int *ret;
	char buffer1[5];
	char buffer2[10];
	ret = buffer1 + 13;
	*(ret) += 8;
}

void main() {
	int i = 0;
	function(1, 2, 3);
	i = 1;
	printf("%d\n", i);
}
