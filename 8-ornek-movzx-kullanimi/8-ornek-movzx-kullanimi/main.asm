.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi1 WORD 5;
sayi2 WORD 10;
sayi3 WORD -10;

.code

main proc
	MOV ax, sayi1
	MOVZX ebx, sayi2
	MOVZX ecx, sayi3
	
	invoke ExitProcess, 0

main endp
end main