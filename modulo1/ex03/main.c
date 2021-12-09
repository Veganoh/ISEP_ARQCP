#include <stdio.h>
#include "sum_even.h"

int main(void)
{

	int vec[] = {1,2,3,4,5,6,7,8,9,10};
	int *p = vec;
	int sum;
	
	sum = sum_even(p,10);
	
	printf("The sum is: %d \n ",sum);


 return 0;
}
