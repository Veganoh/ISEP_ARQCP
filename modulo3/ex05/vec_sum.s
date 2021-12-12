.section .data
.global ptrvec
.global num

.section .text
.global vec_sum

vec_sum: 


	movq ptrvec(%rip),%rdi				# Coloca o endereço em '%RDI'
	movl $0,%eax						# result = 0 em '%EAX'
	movzwq num(%rip),%rcx				# Número de iterações
	
	cmpq $0,%rcx
	je zero
	
	
sum_loop:
	
	addl (%rdi),%eax					# Adiciona o número apontado a '%EAX'	
	addq $4,%rdi						# Vai para o próximo número
	
	loop sum_loop
	jmp end
	
	
zero:
	movl $0,%eax
	
end:
	ret
