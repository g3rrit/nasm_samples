
extern printf

global print.start

section .text

print:
print.start:
            mov     rdi, str_print_start
            xor     rax, rax
            call    printf   
            ret

section .data

str_print_start:    db "Starting!", 10, 0

section .bss
