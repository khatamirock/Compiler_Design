.686
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2:Ptr Byte, inputlist:VARARG

.data
output_integer_msg_format byte "%d", 0Ah, 0
number sdword 10

.code
main proc

    mov ecx, number
LOOP_:
    cmp ecx, 0
    jle EXIT_

    mov number, ecx
    push eax
    push ebx
    push ecx
    push edx
    push ebp
    INVOKE printf, ADDR output_integer_msg_format, number
    pop ebp
    pop edx
    pop ecx
    pop ebx
    pop eax

    sub ecx, 1
    sub ecx, 1
    jmp LOOP_

EXIT_:
    ret
main endp
end