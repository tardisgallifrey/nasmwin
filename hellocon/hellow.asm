; Build:
;
; nasm -f win64 hello.asm
; link /entry:start /subsystem:console hello.obj kernel32.lib
;
;
; Requires nasm, Visual Studio build tools, e.g.
; nasm, visualstudio2017buildtools, visualstudio2017-workload-vctools Chocolatey packages

extern GetStdHandle				; Windows API call for stdout use
extern WriteFile				; Windows API call for write to file "stdout" here
extern ExitProcess				; Windows API call for exit program

section .rodata					; read only data section

	msg 		db "Hello World!", 0x0d, 0x0a	; assign var msg with "hello world"
	msg_len 	equ $-msg		; get length of msg and place in msg_len
	stdout_query 	equ -11			; set stdout_query to -11

section .data					; declared vars, but not initialized?

	stdout 		dw 0
	bytes_written 	dw 0

section .text					; code section

	global 	start				; declare start label to linker
start:	mov 	rcx, stdout_query		; start block begins, move -11 to rcx
    	call 	GetStdHandle			; call function to set stdout
    	mov 	[rel stdout], rax		; mov rax value to stdout	

    	mov  	rcx, [rel stdout]		; move value of stdout to rcx
    	mov  	rdx, msg			; move begin address of msg to rdx
    	mov  	r8, msg_len			; move length to r8
    	mov  	r9, bytes_written		; move bytes_written to r9
    	push 	qword 0				; push quad word 0 to top of stack
    	call 	WriteFile			; call function

    	xor 	rcx, rcx			; set exit code 0 in rcx
    	call 	ExitProcess			; call exit
