.intel_syntax noprefix
.global _start
_start:
jmp . + 0x53 # 0x53 por conta das diretivas .rept e .endr
.rept 0x51
nop
.endr
mov rax, 0x1
