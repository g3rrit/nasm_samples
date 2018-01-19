
extern printf
extern _printf

global print.start
global print.rax
global print.error
global print.stack

section .text

print:
print.start:
            mov     rdi, str_print_start
            xor     rax, rax
            call    printf   
            ret

print.rax:
            mov     rdi, str_print_rax
            mov     rsi, rax
            xor     rax, rax
            call    printf
            ret

print.stack:
            ; qword [rsp+8] holds repetition values
            ; qword [rsp+8*i] holds byte*
    
            cmp     qword [rsp+8], 1
            jl      print.stack.end 

            print.stack.label1:
            sub     qword [rsp+8], 1
            mov     rdi, str_stack_s
            mov     rsi, qword [rsp+8]
            mov     rax, qword [rsp+8]
            mov     rdx, qword [rsp+8*rax]
            xor     rax, rax
            call    printf
            cmp     qword [rsp+8], 0
            jg      print.stack.label1
            
            print.stack.end:
   
            ret

print.error:
            mov     rdi, str_print_error
            xor     rax, rax
            call    printf
            ret

section .data

str_stack_s:        db "[rsp + %i*8]: %#8x", 10, 0

str_print_error:    db "error", 10, 0

str_print_rax:      db "rax: %#8x", 10, 0

str_print_start:    db "Starting!", 10, 0

section .bss
