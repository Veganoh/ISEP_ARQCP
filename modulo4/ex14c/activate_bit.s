.section .text
.global activate_bit

activate_bit:

	# ptr está em '%RDI'
	# pos está em '%ESI'


	pushq %rbp				# Prologue
	movq %rsp, %rbp
	

	
	movl (%rdi),%edx		# Guarda uma cópia do valor em '%EDX'
	movb %sil,%cl			# Número de shifts para '%CL'
	movl $1,%esi		 	# Máscara a ser construida em '%ESI'
	shll %cl,%esi			# Aplica se as shifts necessárias para pegar o bits da posição 'pos'
	orl %esi,(%rdi)			# Aplica se a mascara ao número
	
	cmpl (%rdi),%edx
	je equal
	
	jmp different

	
equal:
	movl $0,%eax
	jmp end
	
different:
	movl $1,%eax
	jmp end
	
	
end:
	movq %rbp,%rsp			# Epilogue
	popq %rbp

	ret
