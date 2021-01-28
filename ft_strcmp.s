		global _ft_strcmp
		
        section   .text
_ft_strcmp:   ;rax ft_strcmp(rdi,rsi)
		mov r12,0
		mov r14,0
		mov r12b, [rdi]
		mov r14b , [rsi]
		cmp r12b , 0
		je _ret
		cmp r14b,0
		je _ret 
		cmp  r12b, r14b
		jne _ret
		inc rdi
		inc rsi
		jmp _ft_strcmp

_ret:
		mov rax, 0
		sub r12,r14
		mov rax,r12
		ret