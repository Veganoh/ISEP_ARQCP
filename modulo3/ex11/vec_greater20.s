.section .data
.global ptrvec
.global num

.section .text
.global vec_greater20

vec_greater20:
	
	movq ptrvec(%rip),%rsi					# Coloca o endereço em '%RSI'
	movslq  num(%rip),%rcx					# Número de iterações
	movl $0,%eax							# counter = 0

	cmpq $0,%rcx							# Se o size for 0 o programa vai de sopa
	jz end									# Salta para o end e acaba porque o 0 já está em '%EAX'
	
arr_loop:
	
	cmpq $20,(%rsi)							# O número é maior que 20?
	jg greater
	
	jmp continuation						# Se não for vai para a continuação
	
greater:
	incl %eax								# Aumenta o counter
	jmp continuation						# Vai para a continuação
	
continuation:
		
	addq $8,%rsi							# Próximo número do array
	loop arr_loop							

end:	
	ret
