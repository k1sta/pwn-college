.intel_syntax noprefix
.global str_lower

str_lower:
xor rbx, rbx # i = 0
mov rcx, rdi
cmp rdi, 0
je return

loop:
cmp BYTE PTR [rcx], 0
je return
cmp BYTE PTR [rcx], 0x5a
jg increment
mov rdi, [rcx]
mov rdx, 0x403000
call rdx
mov [rcx], rax
inc rbx

increment:
inc rcx
jmp loop

return:
mov rax, rbx
ret
