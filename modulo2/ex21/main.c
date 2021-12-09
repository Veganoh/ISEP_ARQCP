#include <stdio.h>
#include "new_salary.h"

int code=0,currentSalary=0,res;

int main(void) {
	
	
	printf("Valor de code:");
	scanf("%d",&code);
	
	
	printf("Valor de current salary:");
	scanf("%d",&currentSalary);
	

	res = new_salary();
	printf("(%d)\n", res);
	
	return 0;
}
