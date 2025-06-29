.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi1 DWORD 3
sayi2 DWORD 5
sonuc DWORD ?

.code

main proc
	MOV eax, sayi1
	MOV ebx, sayi2

	SUB eax, ebx

	MOV sonuc, eax


	invoke ExitProcess, 0

main endp
end main