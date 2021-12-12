.section .data
.global ptrvec
.global num
.global x

.section .text
.global vec_search

vec_search:
	
	movq ptrvec(%rip),%rsi					# Coloca o endereço em '%RSI'
	movq $0,%rax							# Coloca 0 em '%EAX' para retornar 0 caso não encontrar x 
	movslq  num(%rip),%rcx					# Número de iterações
	movw x(%rip),%dx						# Coloca X em '%EDX'
	
	cmpq $0,%rcx
	jz size_null
	
str_loop:
	
	cmpw %dx,(%rsi)						# Verifica se o número apontado por '%RSI' é igual a x
	je found					
		
	addq $2,%rsi						# Próximo número
	
	loop str_loop	
							
	jmp end
	
size_null:
	movq $0,%rax
	jmp end

found:
	leaq (%rsi),%rax						
	
	
end:
	ret

	
