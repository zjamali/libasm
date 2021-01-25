		global	_ft_write
		extern  ___error

		section .text

_ft_write: ;ft_write(rdi,rsi,rdx)
			mov rax , 0x02000004
			syscall
			jc _ret
			ret

_ret:
		push rax
		call ___error
		pop r8
		mov [rax],r8
		;pop qword [rax]
		mov rax, -1
		ret

