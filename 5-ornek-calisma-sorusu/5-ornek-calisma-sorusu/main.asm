;int x = 10;
;int y = 3;
;int z = -x + (2 * y);


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	sayi1 DWORD 10
	sayi2 DWORD 3
	sayi3 DWORD ?

.code

main proc
	MOV eax, sayi1
	MOV ebx, sayi2
	NEG eax
	ADD ebx, ebx
	ADD eax, ebx
	MOV sayi3, eax

	invoke ExitProcess, 0

main endp
end main