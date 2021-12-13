.section .data
.global ptr1

.section .text
.global zero_count

zero_count:
	movq ptr1(%rip),%rdx				# Obtêm o endereço da string
	movl $0,%eax						# counter = 0

str_loop:
	movb (%rdx),%cl						# Obtêm o caracter apontado por 'RDX'
	cmpb $0,%cl						    # Verifica se chegou ao final da string
	je end
	
	cmpb $48,%cl						# Verifica se encontrou um 0
	je counter_inc
	
	incq %rdx							# Se chegar aqui significa que não achou 0 mas vai para o proximo byte
	jmp str_loop


counter_inc:
	incl %eax							# counter = counter + 1;
	incq %rdx							# Vai para o próximo caracter
	jmp str_loop

end:
	ret
