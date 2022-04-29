section .bss
    arr resb 1024

section .text
    global _start

_increment:
    mov rax, [r8]
    inc rax
    mov [r8], rax
    ret

_start:
    mov r8, arr

    call _increment

    mov rax, 60
    mov rdi, 0
    syscall
