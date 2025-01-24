.intel_syntax noprefix
.global _start
_start:
xor rax, rax
and rdi, 1
xor rdi, 1
or rax, rdi
