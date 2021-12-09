#include <stdio.h>
#include "compute.h"

int A=0,B=0,C=0,D=0,res;

int main(void) {
	
	printf("Valor de A:");
	scanf("%d",&A);
	
	printf("Valor de B:");
	scanf("%d",&B);
	
	printf("Valor de C:");
	scanf("%d",&C);

	printf("Valor de D:");
	scanf("%d",&D);
	
	res = compute();
	printf("(%d)\n", res);
	
	return 0;
}

