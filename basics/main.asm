section .data
    msg db 'Hello, World!', 0xA  ; Mensagem a ser exibida
    len equ $ - msg              ; Tamanho da mensagem

section .text
    global _start

_start:
    ; Escrever a mensagem na tela
    mov eax, 4          ; syscall para sys_write
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, msg        ; endereço da mensagem
    mov edx, len        ; tamanho da mensagem
    int 0x80            ; chamada ao kernel

    ; Sair do programa
    mov eax, 1          ; syscall para sys_exit
    xor ebx, ebx        ; código de saída 0
    int 0x80            ; chamada ao kernel