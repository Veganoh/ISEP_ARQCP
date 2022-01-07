.section .text
.global pontuacao

pontuacao:
	
	# exame encontra-se em '%EDI'
	
	pushq %rbp					# Prologue
	movq %rsp, %rbp
	
	pushq %rbx					# Guarda o registo 
	subq $8,%rsp				# Alocar 8 bytes para 1 variável local de 8 bytes 		
	movl $0,%eax				# notaFinal = 0
	
	
	movq $3,%rcx 				# Loop para 3 grupos de escolha multipla
	movl %edi,%esi 				# Guarda as notas em '%ESI'
	


loopGroup:

	movq $0,-8(%rbp)			# notaTemp = 0
	movq $0,%r8					# i = 0;
	
	

loopGrades:
	cmpq $8,%r8					# Verifica se os 8 bits foram vistos
	je loopGroupContinuation
	
	shrl %esi					# Dá shift para direita da nota
	jc inc_nota					# Se 1 estiver na carry flag vai dar increase
	
	incq %r8				    # i++
	jmp loopGrades
	
	
inc_nota:
	addl $2,-8(%rbp)			   # notaTemp ++
	incq %r8 				   # i++
	jmp loopGrades


loopGroupContinuation:
	cmpl $3,-8(%rbp)		   # Verifica se a soma das notas é inferior a 3
	jl nullGroup				
	
	addl -8(%rbp),%eax		   # notaFinal += notaTemp

    loop loopGroup
 
## 'Quando chegar aqui as notas do grupo 4 e 5 devem estar em %SIL' ##

	movb $0xF,%bl 			 # Máscara para pegar nos 4 bits menos significativos
	andb %sil,%bl			 # Os 4 bits ficam guardados em BL
	
	cmpb $3,%bl				 # Verifica se os 4 bits menos significativos são menores que 3
	jl nullGroup
	
	addb %bl,%al			 # Adiciona os 4 bits à nota final
	
	movb $0xF0,%bl		     # Máscara para pegar nos 4 bits mais significativos
	andb %sil,%bl			 # Os 4 bits ficam guardados em BL
	shrb $4,%bl				 # Coloca os 4 bits à direita
	
	cmpb $3,%bl				 # Verifica se os 4 bits mais significativos são menores que 3
	jl nullGroup
	
	addb %bl,%al			 # Adiciona os 4 bits à nota final
	
	jmp end
	
 nullGroup:
	movl $0,%eax			# Coloca 0 em '%EAX'
	jmp end					
	
end:
	popq %rbx
	movq %rbp,%rsp			# Epilogue
	popq %rbp
	ret
	
	
	
	
