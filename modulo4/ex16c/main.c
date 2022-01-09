#include <stdio.h>
#include "join_bits.h"
#include "mixed_sum.h"

int main(){

	int a = -1;
	int b = 15;
	int n = 31;
	
	int result = mixed_sum(a,b,n);
	
	printf("Result is %x \n",result);




	return 0;
}
