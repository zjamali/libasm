		global _ft_strcpy
        section   .text
_ft_strcpy:   ;rax ft_strcp(rdi,rsi)
			;push rdi
			mov r8, 0
loop:
			mov bl, [rsi + r8]
			cmp bl , byte 0
			je ret
			mov [rdi + r8], bl
			inc r8
			jmp loop
ret:
	mov [rax + r8] , byte 0
	mov rax , rdi
	ret