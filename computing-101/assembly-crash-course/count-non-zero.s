.intel_syntax noprefix
.global _start

_start:
xor rax, rax
cmp rdi, 0
je end


loop:
mov dl, BYTE PTR [rdi + rax]
cmp dl, 0x00
jz end
inc rax
jmp loop

end:
nop
