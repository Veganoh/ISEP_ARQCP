#include <stdio.h>
#include "join_bits.h"


int main(){

	int a = -1;
	int b = 0;
	int n = 15;
	
	int result = join_bits(a,b,n);
	
	printf("Result is %x \n",result);




	return 0;
}
