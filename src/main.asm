; compile:      nasm -felf64 main.asm
; link:         gcc main.o -o programm

extern print.start
extern print.error
extern print.rax
extern print.stack

global main

section .text

main:  
            push    rbp
            mov     rbp, rsp

            call    print.start

            mov     rax, 0
            sub     rax, 1
            call    print.rax

            push    qword 6
            push    qword 6
            push    qword 6
            push    qword 6
            push    qword 26
            call    print.stack
            add     rsp , 4
    
            call    print.error
    
            pop     rbp
            ret

section .data

section .bss
