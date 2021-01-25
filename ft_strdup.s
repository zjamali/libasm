			global	_ft_strdup
			extern	_ft_strlen
			extern	_ft_strcpy
			extern	_malloc

			section .text
_ft_strdup: ; rax	ft_strdup(rdi);
			push rdi ; save str 
			call _ft_strlen ; already rdi
			mov rdi,rax ; mov rax to rdi now the rdi is argument of malloc 
			inc rdi ; incre lenght
			mov rdi , rax
			call _malloc ; rax get the pointer char *
			mov rdi, rax
			pop rsi
			call _ft_strcpy
			ret
