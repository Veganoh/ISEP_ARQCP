int activate_bit(int *ptr, int pos){

	
	int num = *ptr;
	int mask = 1;
	
	mask = mask << pos;
	*ptr |= mask;
	
	if (*ptr == num) return 0;
	
	else return 1;

}
