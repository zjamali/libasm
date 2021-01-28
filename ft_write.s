		global	_ft_write
		extern  ___error

		section .text

_ft_write: mov rax , 0x02000004
			syscall
			jc _ret
			ret

_ret: 	push rax
		call ___error
		pop rcx
		mov [rax],rcx
		mov rax, -1
		ret

