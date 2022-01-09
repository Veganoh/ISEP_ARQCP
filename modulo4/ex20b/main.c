#include <stdio.h>
#include "sum_multiples_x.h"

int main(){

	char nums[] = {3,5,11,12,7,4,0};
	int num = 0xf0301;
	
	int result = sum_multiples_x(nums,num);
	
	printf("The result is %d \n",result);



	return 0;
}
