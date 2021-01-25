global _main

		extern _printf
        section   .text

_main:

		push r8
		mov rdx , digit
		mov	rdi, fmt
		mov	rsi, [rdx]
        call    _printf		; Call C function
		pop r8
		;mov rbx , digit
		;mov	rdi,fmt
		;mov	rsi, [rbx]
        ;call    _printf		; Call C function


_exit:
	 	mov       rax, 0x02000001         ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall                           ; invoke operating system to exit



section .data

digit:		 dq 733785
fmt:    	db "%d", 10, 0          ; The printf format, "\n",'0'



printf:
fsgs
gdgdrg
ret