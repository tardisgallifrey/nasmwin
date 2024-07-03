REM method to compile and link NASM assembler
REM into Windows 64 bit console program

nasm -f win64 hellow.asm -o hello.obj
link /subsystem:console /entry:start hello.obj kernel32.lib user32.lib

