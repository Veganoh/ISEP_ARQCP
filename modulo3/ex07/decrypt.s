.section .data
.global ptr1

.section .text
.global decrypt

decrypt:

	movq ptr1(%rip),%rsi
	movl $0,%eax					# counter = 0
	
	
str_loop:

	cmpb $0,(%rsi)				# String end?
	jz end						# Salta pra o final
	
	cmpb $'a',(%rsi)			# Verifica se é a
	je exception				# Salta pra exceção
	
	cmpb $' ',(%rsi)			# Verifica se é espaço
	je exception				# Salta pra exceção
	
	subq $2,(%rsi)
	incq %rsi
	incl %eax
	jmp str_loop
	

exception:
	incq %rsi
	jmp str_loop
	
	
end:
	ret
	
		
