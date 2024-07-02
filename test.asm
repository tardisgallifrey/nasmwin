; ml64 ex1.asm /link /entry:Example1 /SUBSYSTEM:CONSOLE
_text SEGMENT
Example1 PROC FRAME
   mov	rax, 1
   mov 	rbx, 1
   .endprolog
   ret
Example1 ENDP
_text ENDS
END
