section .data
    ; ... your data

section .text
    global _start

_start:
    ; ... other code

    ;Check for potential overflow before memory access
    mov eax, ebx ;store ebx for comparison
    add eax, ecx ;add ecx
    cmp eax, ebx ;check if any overflow occurred
    jg overflow_error ;jump to error handling if overflow
    mov eax, ebx ;restore ebx if no overflow
    add eax, ecx ;add ecx if no overflow
    add eax, 0x10 ; add constant
    mov edx, [eax] ;access memory after checks
    jmp end_prog ;jump to end if no error

overflow_error:
    ;handle overflow error
    ;example: exit with error code
    mov eax, 1 ;sys_exit
    mov ebx, 1 ;error code
    int 0x80

end_prog:
    ;... more code
    ;exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80