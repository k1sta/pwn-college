.intel_syntax noprefix
.global _start
_start:
mov eax, [rdi + 4]
mov ebx, [rdi + 8]
mov ecx, [rdi + 12]
mov rdx, 0x7f454c46
cmp [rdi], edx 
jnz else_if
add ebx, ecx
add eax, ebx
jmp exit

else_if:
mov rdx, 0x00005a4d 
cmp [rdi], edx 
jnz else
sub eax, ebx
sub eax, ecx
jmp exit

else:
imul eax, ebx
imul eax, ecx

exit:
nop
