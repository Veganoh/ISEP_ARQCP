#include <stdio.h>
#include "join_bits.h"


int main(){

	int a = 0;
	int b = -1;
	int n = 31;
	
	int result = join_bits(a,b,n);
	
	printf("Result is %x \n",result);




	return 0;
}
