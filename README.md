# Microsoft Windows Assembler Examples

I have learned how to use NASM to write assembler on Linux, which is fairly straightforward.  However, not quite so on Microsoft Windows.

This repository contains examples of how to write NASM assembler in a Windows 11 x64 environment.  Sorry, things are just too far along for me to contemplate doing this with 32-bit or less.  

I have tested the "exe" files output from MSBUILD (what this uses) on both a Microsoft Surface running Windows 11 and a Dell AMD Ryzen5 with Windows 11.

One does need to go and find MSBUILD and install the MSBUILDtools package.  This essentially contains everything needed to build assembler into an "exe".  MSBUILD will install MASM, which can be used, but I prefer NASM.  So, you need to install NASM for Windows.

A feature of the MSBUILD package is the installation of a Powershell developers terminal.  If you utilize this terminal, it will use regular Linux shell commands (ls, mv, cp, rm) and you won't have to be configuring paths or environment variables.

There are two batch files for builds.  They are not complex.  One will compile and link a NASM program to operate in a Windows environment (makenasm.bat) and the other will compile and link a MASM program (makewin.bat).  One of these will be needed in your assembler project folder.

To use these batch files, three variables in each one must be set:
filename=name of file to assemble and link.
entry=entry point of program you are compiling and linking.
system=for the subsystem, either console or windows.

As always, you may use these, but do so at your own risk.  Assembler can cause major system damage if not used wisely.

