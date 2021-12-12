#include <stdio.h>
#include "vec_avg.h"


int array[] = {};
int* ptrvec = array;
short num = sizeof(array)/sizeof(array[0]);
int result;

int main(void) {
	
	
	
	result = vec_avg();
	
	printf("The result is %d \n",result);
	
	
	return 0;
}
