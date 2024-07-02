; ml64 ex1.asm /link /entry:Example1 /SUBSYSTEM:CONSOLE
.code
main proc
	mov	rax, 123
	ret
main endp
end
