#include <stdio.h>
#include "rotate_right.h"
#include "rotate_left.h"

int main(){
	
	
	int num = 1;
	int nbits = 2;
	
	int resultLeft = rotate_left(num,nbits);
	int resultRight = rotate_right(num,nbits);
	printf("Left Rotation: %x - Right Rotation %x \n",resultLeft,resultRight);
	
	return 0;
}
