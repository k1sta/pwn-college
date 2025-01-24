.intel_syntax noprefix
.global _start

_start:
cmp rdi, 3
jle default
mov rax, [rsi + 0x20]
jmp rax

default:
mov rax, [rsi + rdi * 0x8]
jmp rax
