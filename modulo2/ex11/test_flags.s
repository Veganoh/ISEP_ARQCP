.section .data
.global op1
.global op2

.section .text
.global test_flags				# char test_flags(void)


test_flags:

	movl op1(%rip),%ecx			# Move op1 para um endereço de 32bits, 'ECX'
	addl op2(%rip),%ecx			# Soma-se op2 a op1, o valor fica no endereço 'ECX'

	jc flag_detected			# Salta para flag_detected se 'CF=1'
	jo flag_detected			# Salta para flag_detected se 'OF=1'
	
	movq $0, %rax				# Se o programa chegar aqui significa que não detectou nenhuma flag e por isso coloca 0 em 'RAX' e salta para o final
	jmp end						# Salta pra 'end'
	
flag_detected:
	movq $1, %rax				# Se o programa chegar aqui significa que detectou uma flag e por isso coloca 1 em 'RAX' e salta para o final
	
	
end:	
	ret

