#include <stdio.h>
#include "test_flags.h"

int op1=0,op2=0;
char res;

int main(void) {
	
	printf("Valor op1:");
	scanf("%d",&op1);
	
	printf("Valor op2:");
	scanf("%d",&op2);
	

	
	res = test_flags();
	printf("(%d)\n", res);
	
	return 0;
}

