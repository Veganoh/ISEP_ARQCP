.section .data
.global ptrvec
.global num

.section .text
.global sum_first_byte


sum_first_byte:

	pushq %rbx
		
	movq ptrvec(%rip),%rsi						# Endereço em '%RSI'
	movl $0,%eax								# result = 0
	movslq num(%rip),%rcx						# Iterações em '%RCX'

	cmpq $0,%rcx								# size = 0?
	jz end
	
	
	

arr_loop:
	
	movl (%rsi),%ebx							# Apontado para '%EBX'
	movsbl %bl,%edx								# Primeiro byte para '%EDX'
	addl %edx,%eax								# Somar ao result
	addq $4,%rsi								# Próximo número
	

	loop arr_loop
	
	
	
end: 
	popq %rbx
	ret
