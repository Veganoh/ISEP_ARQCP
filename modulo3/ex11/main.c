#include <stdio.h>
#include "vec_greater20.h"


long array[] = {21};
long* ptrvec = array;
int num = sizeof(array)/sizeof(array[0]);
int result;

int main(void) {
	
	
	
	result = vec_greater20();
	
	printf("The result is %d \n",result);
	
	
	return 0;
}
