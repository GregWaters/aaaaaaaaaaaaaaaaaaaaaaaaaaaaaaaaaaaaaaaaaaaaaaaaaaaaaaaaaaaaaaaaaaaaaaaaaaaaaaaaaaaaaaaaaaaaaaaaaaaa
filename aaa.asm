; nasm -f elf64 -o aaa.o aaa.asm && ld -o aaa aaa.o && ./aaa

SECTION .data
A: DB 'a'

SECTION .text
GLOBAL _start

_start:
        MOV RAX, 1
        MOV RDI, RAX
        MOV RDX, RAX
        MOV RSI, A

LOOP:
        SYSCALL
        JMP LOOP
