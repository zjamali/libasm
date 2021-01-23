		global _ft_strlen
	
        section   .text
_ft_strlen:   ;rax ft_strlen(rdi)
			mov rax , 0
loop:
			cmp [rdi] ,byte 0
			je ret
			inc rax
			inc rdi	
			jmp loop
ret:
	ret