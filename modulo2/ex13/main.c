#include <stdio.h>
#include "getArea.h"

int base=0,height=0,res;

int main(void) {
	
	printf("Valor base:");
	scanf("%d",&base);
	
	printf("Valor height:");
	scanf("%d",&height);
	

	
	res = getArea();
	printf("(%d)\n", res);
	
	return 0;
}

