; compile:      nasm -felf64 main.asm
; link:         gcc main.o -o programm

extern print.start

global main

section .text

main:  
            push    rbp
            mov     rbp, rsp

            call    print.start
    
            pop     rbp
            ret

section .data

section .bss
