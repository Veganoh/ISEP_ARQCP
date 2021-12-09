.section .data
.global s


.section .text
.global swapBytes				# short swapBytes(void)

swapBytes:

	movw s(%rip),%ax			# Move s para um endereço de 16bits, 'AX'
	movb %al, %dl				# Guarda o byte menos significativo em DL
	movb %ah, %al				# Move o byte mais significativo para o byte menos significativo
	movb %dl, %ah				# Coloca o byte menos significativo guardado em AH
	
	ret
