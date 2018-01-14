#include <stdio.h>
#include <string.h>

void function(char *str) {
	char buffer[16];
	strcpy(buffer, str);
}

void main() {
	char large_string[256];
	int i = 0;
	for(; i < 256; i++) {
		large_string[i] = 'a';
	}
	function(large_string);
}
