#include <stdio.h>
#include "activate_bits.h"
#include "activate_invert_bits.h"

int main(){
	
	int result = activate_invert_bits(0,7,24);
	
	printf("Result: %x \n",result);
	

	return 0;
}
