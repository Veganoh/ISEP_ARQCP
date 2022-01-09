.section .text
.global sum_multiples_x

sum_multiples_x:

	# vec em '%RDI'
	# x em '%ESI'

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	shrl $8,%esi			# Dá shift para a direita 8 bits e deixa o segundo byte em '%SIL'
	movl $0,%ecx			# Result = 0
	
loop:

	cmpb $0,(%rdi)			# Verifica se acabou o ciclo
	je end
	
	movw (%rdi),%ax			# Coloca o valor do vetor em '%AX'
	cbw						# Conversion instruction
	idiv %sil				# Faz a divisão, o divisor é '%SIL' o dividendo é '%AX' e o resto fica em '%AH'
	
	cmpb $0,%ah				# Verifica se o resto é 0
	je inc					
	
	incq %rdi				# Próximo valor do vetor
	jmp loop
	
	
inc:
	addb (%rdi),%cl		   # Result += vec[i]
	incq %rdi			   # Próximo valor do vetor
	jmp loop
	
end:

	movl %ecx,%eax
	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
ret
