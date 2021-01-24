section .text
global _main
extern _printf
_main:

mov rdi,mm
_ft_strlen:   ;rax ft_strlen(rdi)
			mov rax , 0
_loop:
			cmp [rdi] ,byte 0
			je _exit
			inc rax
			inc rdi	
			jmp _loop
_exit:
	mov rsi, rax
	mov rdi, ll
	push rdi
	call _printf
	pop rdi
	;ret
	

section .data 

mm: db "yassine",0
ll: db "%d ",0