#include <stdio.h>
#include "swapBytes.h"

short s=0,res;

int main(void) {
	
	printf("Valor s:");
	scanf("%hd",&s);
	
	res = swapBytes();
	printf("(%hd)\n", res);
	
	return 0;
}
