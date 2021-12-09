#include <stdio.h>
#include "sum_and_subtract.h"

char A=0;
short B=0;
int C=0,D=0;
long res;

int main(void) {
	
	printf("Valor A:");
	scanf("%hhd",&A);
	
	printf("Valor B:");
	scanf("%hd",&B);
	
	printf("Valor C:");
	scanf("%d",&C);
	
	printf("Valor D:");
	scanf("%d",&D);
	
	
	res = sum_and_subtract();
	printf("(%ld)\n", res);
	
	return 0;
}

