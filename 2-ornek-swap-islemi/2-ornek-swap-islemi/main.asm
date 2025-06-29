.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi1 DWORD 5
sayi2 DWORD 3

.code

main proc
	MOV eax, sayi1
	MOV ebx, sayi2
	XCHG eax, sayi2

	invoke ExitProcess, 0

main endp
end main