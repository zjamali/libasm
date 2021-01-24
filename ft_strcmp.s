		global _ft_strcmp
		
        section   .text
_ft_strcmp:   ;rax ft_strcmp(rdi,rsi)
			mov r8, 0

_loop:
		mov bl , [rdi + r8]
		cmp bl , [rsi + r8]
		jne _ret
		inc r8
		jmp _loop

_ret:
		mov rax, 0 ; set all the rax to zeros
		mov rax ,  [rdi + r8] ; space
		sub rax ,  [rsi + r8] ;
		ret


