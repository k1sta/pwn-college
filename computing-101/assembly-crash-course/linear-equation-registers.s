.intel_syntax noprefix
.global _start

_start:
sub rax, rax
imul rdi, rsi
add rax, rdi
add rax, rdx
