.intel_syntax noprefix
.global _start

_start:
 
most_common_byte:
mov rbp, rsp
sub rsp, 0x1fffe
xor rbx, rbx
xor rdx, rdx
xor r8,r8
mov rcx, rsi
sub rcx, 1

loop:
cmp rbx, rcx
jg continue
mov dl, BYTE PTR [rdi + rbx]
mov rax, rbp
mov r8, 2
imul r8, rdx
sub rax, r8
inc WORD PTR [rax]
inc bx
jmp loop

continue:
xor rbx, rbx
xor rcx, rcx
xor rdx, rdx
xor r8, r8
mov rbx, 1

loop2:
cmp bx, 0x00ff
jg return
mov rax, rbp
mov r8, 2
imul r8, rbx
sub rax, r8
cmp WORD PTR [rax], cx
jle increment
mov cx, WORD PTR [rax]
mov dl, bl

increment:
inc bx
jmp loop2

return:
xor rax, rax
mov al, dl
mov rsp, rbp
ret
