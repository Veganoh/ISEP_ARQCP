#include <stdio.h>
#include "proc.h"
#include "call_proc.h"



int main(){
	
	
	int result;
	
	result = call_proc();
	
	printf("Result: %d \n",result);
	
	
	return 0;
}
