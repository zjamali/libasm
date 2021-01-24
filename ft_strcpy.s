		global _ft_strcpy
		extern _malloc
        section   .text
_ft_strcpy:   ;rax ft_strcp(rdi,rsi)
			;push rdi
			mov r8, 0
_omay:
			mov bl, [rsi + r8]
			cmp bl , byte 0 
			je ret
			mov [rdi + r8], bl
			inc r8
			jmp _omay
ret:
	;pop rdi
	mov rax , rdi
	ret