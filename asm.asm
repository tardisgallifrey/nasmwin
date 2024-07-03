; ml64 asm.asm /link /entry:main /SUBSYSTEM:CONSOLE
;
; Minimalist MASM code
;
; Use first line to compile and link on x64 Windows
; Use "echo $LastExitCode" on Powershell command line
; to display 123

.code				; begin code section
main proc			; begin main procedure
	mov	rax, 123	; move 123 into register rax
	ret			; return from procedure
main endp			; end procedure main
end				; end program
