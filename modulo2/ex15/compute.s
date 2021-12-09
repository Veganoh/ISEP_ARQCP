.section .data
.global A
.global B
.global C
.global D

.section .text
.global compute					# int compute(void)


compute:

	movl A(%rip),%eax			# Coloca A num endereço de 32bits, 'EAX'
	imull B(%rip),%eax			# Faz a multiplicação com sinal de B por A, o resultado fica em 'EAX'
	addl C(%rip),%eax			# Soma C ao valor que está em 'EAX'
	
	cdq							# Prepara a divisão
	movl D(%rip),%ecx			# Coloca D num endereço de 32bits, 'ECX'
	cmpl $0,%ecx 				# Verifica se D é 0
	je jmp_div0
		
	idivl %ecx					# Faz a divisão com sinal do que está em 'EAX' por 'ECX', o quociente fica em 'EAX'
	jmp end

jmp_div0:
	movl $0,%eax
	jmp end
	
	
end:
	ret

