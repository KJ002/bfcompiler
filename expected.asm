section .bss
    arr resb 1024
    num_buff resb 16

section .text
    global _start

print:
    cqo
    mov rbx, 10
    div rbx
    add dl, 48
    mov [num_buff+2], dl

    cqo
    div rbx
    add dl, 48
    mov [num_buff+1], dl

    cqo
    div rbx
    add dl, 48
    mov [num_buff], dl

    mov bl, 0xA
    mov [num_buff+3], bl

    mov rax, 1
    mov rdi, 1
    mov rsi, num_buff
    mov rdx, 4
    syscall
    ret

_start:
    mov r8, arr

    inc BYTE [r8]
    movzx rax, BYTE [r8]

    call print

    mov rax, 60
    mov rdi, 0
    syscall
