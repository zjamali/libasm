		global _ft_write
		extern  ___error

		section .text

_ft_write: ;ft_write(rdi,rsi,rdx)
			cmp rdx , 0
			jl _end
			mov rax , 0x02000004
			syscall
			ret
_end:
			call ___error
			
