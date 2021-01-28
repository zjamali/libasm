			global	_ft_read
			extern	___error

			section		.text
_ft_read:	mov rax , 0x02000003
			syscall
			jc _ret
			ret

_ret:
			push rax
			call ___error
			pop rcx
			mov [rax],rcx
			mov rax, -1
			ret