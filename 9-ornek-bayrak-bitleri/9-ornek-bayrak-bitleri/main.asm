.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi1 DWORD 1;
sayi2 DWORD -1;
result DWORD ?;

.code

main proc
	MOV eax, sayi1
	MOV ebx, sayi2

	ADD eax, ebx
	MOV result, eax
	

	invoke ExitProcess, 0

main endp
end main