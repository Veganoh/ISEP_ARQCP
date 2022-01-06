.section .text
.global greater_date

greater_date:

	# date1 está em '%EDI'
	# date2 está em '%ESI'
	
	
	
	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	movl %edi,%ecx				# Coloca-se date1 em '%ECX'
	movl %esi,%edx				# Coloca-se date2 em '%EDX'
	
	shrl $8,%ecx				# Dá se um shift para a direita de 1 byte
	shrl $8,%edx				# Dá se um shift para a direita de 1 byte
	
	cmpw %dx,%cx				# Verifica se o ano1 é maior que o ano2
	jg date1Bigger				
	
	cmpw %cx,%dx				# Verifica se o ano2 é maior que o ano1
	jg date2Bigger
	
	movl %edi,%ecx				# Coloca-se date1 em '%ECX'
	movl %esi,%edx				# Coloca-se date2 em '%EDX'
	
	shrl $24,%ecx				# Dá se um shift para a direita de 3 bytes
	shrl $24,%edx				# Dá se um shift para a direita de 3 bytes
	
	cmpb %dl,%cl				# Verifica se o mês1 é maior que o mês2
	jg date1Bigger
	
	cmpb %cl,%dl				# Verifica se o mês2 é maior que o mês1
	jg date2Bigger
	
	movl %edi,%ecx				# Coloca-se date1 em '%ECX'
	movl %esi,%edx				# Coloca-se date2 em '%EDX'
	
	cmpb %dl,%cl				# Verfica se o dia1 é maior que o dia2
	jg date1Bigger
	
	cmpb %cl,%dl				# Verifica se o dia2 é maior que o dia1
	jg date2Bigger
	
		
date1Bigger:
	movl %edi,%eax
	jmp end
	
date2Bigger:
	movl %esi,%eax
	jmp end
	
	
	
	
end:
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret
