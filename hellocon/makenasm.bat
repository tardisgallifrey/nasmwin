REM method to compile and link NASM assembler
REM into Windows 64 bit console program
REM change filename below before running

set filename=hellow
set entry=start
set system=console

nasm -f win64 %filename%.asm -o %filename%.obj
link /subsystem:%system% /entry:%entry% %filename%.obj kernel32.lib user32.lib

