.section .data
.global code
.global currentSalary

.section .text
.global new_salary

new_salary:

	movl currentSalary(%rip),%eax				# Armazena o salário atual
	movl code(%rip),%ecx						# Armazena o código
	
	cmpl $10,%ecx								# Verifica se o código corresponde ao Manager
	je jmp_Manager			
	
	cmpl $11,%ecx								# Verifica se o código corresponde ao Engineer
	je jmp_Engineer
	
	cmpl $12,%ecx								# Verfica se o código corresponde ao Technician
	je jmp_Technician
	
	jmp jmp_otherPosition
	
jmp_Manager:
	addl $300,%eax
	jmp end
	
jmp_Engineer:
	addl $250,%eax
	jmp end
	
jmp_Technician:
	addl $150,%eax
	jmp end
	
jmp_otherPosition:
	addl $100,%eax
	jmp end
	
end:
	ret
