#include <stdio.h>
#include "count_even.h"

int main(){
	short x[] = {1,2,3,4,5,6,7,8,9,10};
	short* vec = x;
	int num = sizeof(x)/sizeof(x[0]);
	
	int result;
	
	result = count_even(vec,num);
	
	printf("There are %d even numbers on the array \n",result);




	return 0;
}
