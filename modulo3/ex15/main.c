#include <stdio.h>
#include "sum_first_byte.h"


int array[] = {-1,255,-1};
int* ptrvec = array;
int num = sizeof(array)/sizeof(array[0]);

int main(void) {
	
	
	
	int result =sum_first_byte();
	
	
		
	printf("The result is %d \n",result);
	
	
	
	return 0;
}
