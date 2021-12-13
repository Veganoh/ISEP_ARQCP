#include <stdio.h>
#include "zero_count.h"

char vec[] = "01000001 01010010 01010001 01000011 01010000 00100000 01101001 01110011 00100000 01100011 01101111 01101111 01101100";
int res;
char* ptr1 = vec;

int main(void) {
	

	res = zero_count();
	printf("Esta string contêm %d zeros \n", res);
	
	return 0;
}
