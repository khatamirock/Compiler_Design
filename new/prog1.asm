
;start -1
.686
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2:Ptr Byte, inputlist:VARARG

.data
output_integer_msg_format byte "%d", 0Ah, 0
output_string_msg_format byte "%s", 0Ah, 0
input_integer_format byte "%d",0

number sdword ?

.code

main proc
	push ebp
	mov ebp, esp
	sub ebp, 100
	mov ebx, ebp
	add ebx, 4

;ld_int_value 10

;store 0
	mov dword ptr [ebp-0], eax

;ld_int_value 100

;store 1
	mov dword ptr [ebp-4], eax

;ld_var 0
	mov eax, [ebp-0]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 1
	mov eax, [ebp-4]
	mov dword ptr [ebx], eax
	add ebx, 4


;add -1

;ld_int 10
	mov eax, 10
	mov dword ptr [ebx], eax
	add ebx, 4


;add -1

;ld_int 0
	mov eax, 0
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 3
	mov eax, [ebp-12]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_int 10
	mov eax, 10
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 3
	mov eax, [ebp-12]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 2
	mov eax, [ebp-8]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_int 10
	mov eax, 10
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 1
	mov eax, [ebp-4]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_int 400
	mov eax, 400
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 1
	mov eax, [ebp-4]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_int 10
	mov eax, 10
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_var 1
	mov eax, [ebp-4]
	mov dword ptr [ebx], eax
	add ebx, 4


;ld_int 100
	mov eax, 100
	mov dword ptr [ebx], eax
	add ebx, 4


;add -1

;halt -1
	add ebp, 100
	mov esp, ebp
	pop ebp
	ret
main endp
end
