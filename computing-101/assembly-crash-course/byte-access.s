.intel_syntax noprefix
.global _start
_start:
xor rax, rax
mov al, byte ptr [0x404000]
