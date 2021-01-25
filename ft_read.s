			global	_ft_read
			extern	___error

			section		.text
_ft_read:   ; rax	ft_read(rdi,rsi,rdx);
			mov rax , 0x02000003
			syscall
			jc _ret
			ret

_ret:
			push rax
			call ___error
			pop r8
			mov [rax],r8
			mov rax, -1
			ret