
extern printf

global print.start

section .text

print:
print.start:
            mov     rdi, str_print_start
            xor     rax, rax
            call    printf   
            ret

print.eax:

section .data

str_print_rax:      db "rax: %#8x", 10, 0

str_print_start:    db "Starting!", 10, 0

section .bss
