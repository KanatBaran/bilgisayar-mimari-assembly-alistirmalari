.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi1 DWORD 40
sayi2 DWORD 6

.code

main proc
	MOV eax, sayi1
	INC eax
	MOV ebx, sayi2
	DEC ebx

	; Altta ki kodlarda bayrak biti �al��maz. ��nk� bayrak biti sadece CMP, TEST, SUB, ADD komutlar�nda �al���r.
	;MOV al, 255
	;INC al

	invoke ExitProcess, 0

main endp
end main