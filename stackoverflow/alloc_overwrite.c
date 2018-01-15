#include <stdio.h>
#include <string.h>

void function(int a, int b, int c) {
	int *ret;
	char buffer1[5] = {'0'};
	char buffer2[10] = {'0'};
	ret = buffer1 + 24;
	*(ret) += 5;
}

void main() {
	int i = 10;
	function(1, 2, 3);
	i = 1;
	printf("%d\n", i);
}
