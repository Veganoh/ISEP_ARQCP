int count_bits_zero(int x){


	int counter = 0;
	int i;
	int mask = 1;
	
	for(i = 0; i < 32; i++){
		
		if((x & mask) == 0) counter++;
		
		x = x >> 1;
		
	}
	
	return counter;
}
