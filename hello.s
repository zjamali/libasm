          ;global    _print
		  ;global	_getinput
		  ;global	_putnbr
		  global _main
		extern _printf
          section   .text
;_print: mov       rax, 0x02000004         ; system call for write (ID)
;        syscall                           ; invoke operating system to do the write
;		ret
;
;
;_getinput:
;		mov rax, 0x02000003 ; system call for read ID
;		mov rdi, 0 ; argument stdin (#fd)
;		mov rsi,input ; $buffer 
;		mov rdx ,20 ; #count 
;		syscall
;		;mov rax, input  ; assining rsi to rax  
;		ret ; reteurn rax

_main:
	;call _getinput
_putnbr:
		;mov rbx ,zero
		;push 48
		
		;mov rax , 0x02000004
		;mov rdi , 1
		;mov rsi , digit
		mov rbx , digit
		mov	rdi , fmt
		mov	rsi, [rbx]
		;mov	rax,0		; or can be  xor  rax,rax
        call    _printf		; Call C function
		;add rsi , 4
		
		;add [rsi + 4] , byte 48
		;mov rdx , 8
		;syscall
		
		;pop rdx
_exit :
	 	mov       rax, 0x02000001         ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall                           ; invoke operating system to exit
;		ret
;	call _exit 
		;ret 

			section   .bss
input: 		resb			7 
			section .data
message:	db "2202",0	
digit:		dd 1337
zero : 		db 50
msg:		db "Hello world", 0		; C string needs 0
fmt:    	db "%d", 10, 0          ; The printf format, "\n",'0'