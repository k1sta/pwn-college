.intel_syntax noprefix
.global _start
_start:
jmp . + 0x53
.rept 0x51
nop
.endr
mov rdi, [rsp]
mov rax, 0x403000
jmp rax
