.intel_syntax noprefix
.global _start
_start:
mov rax, [0x404000]
mov rdi, rax
add rdi, 0x1337
mov [0x404000], rdi
