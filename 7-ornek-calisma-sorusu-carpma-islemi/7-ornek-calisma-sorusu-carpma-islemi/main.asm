;int a = 2;
;int b = 5;
;int c = 3;
;int result = (a * b) + c;

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

 sayi1 DWORD 2
 sayi2 DWORD 5
 sayi3 DWORD 3
 result DWORD ?

.code

main proc
	MOV eax, sayi1
	MOV ebx, sayi2
	MOV ecx, sayi3

	IMUL eax, ebx ; Carpma islemi

	ADD eax, ecx ; toplama islemi

	MOV result, eax



	invoke ExitProcess, 0

main endp
end main