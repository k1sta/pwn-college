.intel_syntax noprefix
.global _start

_start:
xor rax, rax
mov rcx, 0

loop:
mov rdx, [rdi + rcx*0x8]
add rax, rdx
inc rcx
cmp rcx, rsi
jle loop

division:
div rsi
