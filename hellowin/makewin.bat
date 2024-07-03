REM compile and link a 64 bit MASM written Windows file
REM
REM ml64 can call link.exe directly after compilation
REM
REM use /link switch -- everything after /link must be link commands
REM /subsystem: -- which system?  console or windows?
REM /defaultlib: one entry for each, kernel32.lib and user32.lib are minimum
REM 
set filename=hello
set entry=main
set system=windows

ml64.exe %filename%.asm /link /subsystem:%system% /defaultlib:kernel32.lib /defaultlib:user32.lib /entry:%entry%
