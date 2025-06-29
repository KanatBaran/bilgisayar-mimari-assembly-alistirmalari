; a = -b+c iþlemi yapildi.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi1 WORD 5
sayi2 WORD 3
sayi3 WORD 0

.code

main proc
	MOV ax, sayi1
	MOV bx, sayi2
	NEG ax
	ADD sayi3, bx
	ADD sayi3, ax

	invoke ExitProcess, 0

main endp
end main