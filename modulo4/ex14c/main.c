#include <stdio.h>
#include "activate_bit.h"
#include "activate_2bits.h"

int main(){

	int i = 4;
	
	printf("Number before: %x\n",i);
	activate_2bits(&i,1);

	printf("Number after: %x\n",i);


return 0;
}
