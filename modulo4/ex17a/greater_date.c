unsigned int greater_date(unsigned int date1, unsigned int date2){


	short year1 = (short)(date1 >> 8);			// Coloca o ano1 nos primeiros dois bytes 
	short year2 = (short)(date2 >> 8);			// Coloca o ano2 nos primeiros dois bytes

	if (year1 > year2) return date1;
	
	if (year2 > year1) return date2;
	
	char month1 = (char)(date1 >> 24);			// Coloca o mês1 no primeiro byte
	char month2 = (char)(date2 >> 24);			// Coloca o mês2 no segundo byte
	
	if (month1 > month2) return date1;
	
	if (month2 > month1) return date2;
	
	
	char day1 = (char)date1;				   // Coloca o dia1 no primeiro byte
	char day2 = (char)date2;				   // Coloca o dia2 no primeiro byte
	
	if (day1 > day2) return date1;
	
	if (day2 > day1) return date2;
	
	return date1;
}
