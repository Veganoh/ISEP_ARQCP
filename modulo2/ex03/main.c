#include <stdio.h>
#include "sum_v2.h"

int op1=0, op2=0,res;

int main(void) {
	
	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);
	
	res = sum_v2();
	printf("(15-op1) - (15-op2) = %d)\n", res);
	return 0;
}
