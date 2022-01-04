int rotate_left(int num,int nbits){


	int shifted = num  << nbits;
	
	int rot_bits = num >> (32-nbits);
	
	int combined = shifted | rot_bits;
	
	return combined;
}
