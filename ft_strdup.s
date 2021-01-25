			global	_ft_strdup
			extern	_ft_strlen
			extern	_malloc

			section .text

_ft_strdup: ; rax	ft_strdup(rdi);
			push rdi ; save str               ------
			call _ft_strlen ; allready rdi
			push rax ; push the lengh to stack : saving   ------
			add rax ,byte 1 ; for '\0'
			mov rdi,rax ; mov rax to rdi now the rdi is argument of malloc 
			call _malloc ; rax get the pointer char *
			cmp rax , 0
			je _ret

_putstr:
			mov rax,[rax]
			mov r8, 0
			pop rcx ; ft_strlen(str)   
			pop rdx ;  str
_loop:
			cmp rdx, 0
			je _ret
			mov [rax + r8],rdx
			inc r8
			inc rdx
			jmp _loop
_ret:
		ret ; return rax == NULL
			


			


			