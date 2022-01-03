#include <stdio.h>
#include "inc_and_square.h"

int main(){
	int x = 4;
	int* v1 = &x;
	int v2 = 5;
	
	int result;
	
	result = inc_and_square(v1,v2);
	
	printf("The value %d was increased by one, now its value is %d. The square of %d is %d \n",x-1,x,v2,result);




	return 0;
}
