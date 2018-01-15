#include <stdio.h>
#include <string.h>

// 注意是64位系统！32位系统本程序运行会Segmentation Fault
void function(int a, int b, int c) {
	int *ret;
	char buffer1[5] = {'0'};
	char buffer2[10] = {'0'};
	// 需要考虑对齐，所以buffer1偏移了8个字节，然后int *指针8个字节，最后是rbp8个字节，总共24个字节
	ret = buffer1 + 24;
	// objdump -S obj 查看发现i=1指令共5个字节，所以通过偏移5个字节跳过该指令的执行
	*(ret) += 5;
}

void main() {
	int i = 10;
	function(1, 2, 3);
	i = 1;
	// 猜猜我输出多少
	printf("%d\n", i);
}
