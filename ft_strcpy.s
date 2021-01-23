		global _ft_strcpy

        section   .text
_ft_strlen:   ;rax ft_strcp(rdi,rsi)
			mov rbx , 0
loop:
			cmp [rdi + rbx] ,byte 0
			je ret
			mov [rsi + rbx], [rdi + rbx]
			inc rbx
			jmp loop
ret:
	mov rax , rsi
	ret