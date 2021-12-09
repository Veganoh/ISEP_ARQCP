#include <stdio.h>
#include "crossSumBytes.h"

short s1=0,s2=0,res;


int main(void) {
	
	printf("Valor s1:");
	scanf("%hd",&s1);
	
	printf("Valor s2:");
	scanf("%hd",&s2);
	
	res = crossSumBytes();
	printf("(%hd)\n", res);
	
	return 0;
}

