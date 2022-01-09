#include <stdio.h>
#include "activate_bit.h"


int main(){

	int i = 4;
	
	printf("Number before: %x\n",i);
	int result = activate_bit(&i,1);

	printf("Number after: %x\n",i);
	printf("Result: %d \n",result);


return 0;
}
