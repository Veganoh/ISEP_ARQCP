#include <stdio.h>
#include "vec_search.h"


short array[] = {-1,-1,-1,-3};
short* ptrvec = array;
int num = sizeof(array)/sizeof(array[0]);
short* result;
short x = -3;

int main(void) {
	
	
	
	result = vec_search();
	
	printf("The result is %hn \n",result);
	
	
	return 0;
}
