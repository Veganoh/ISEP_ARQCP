#include <stdio.h>
#include "greatest.h"

int main(){
	int a = 4;
	int b = 3;
	int c = 2;
	
	int result;
	
	result = greatest(a,b,c);
	
	printf("The greatest between %d, %d and %d is %d \n",a,b,c,result);




	return 0;
}
