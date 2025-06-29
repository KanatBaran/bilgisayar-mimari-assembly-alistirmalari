.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	sayi1 BYTE ?;
	sayi2 WORD ?;
	sayi3 DWORD ?;
	sayi4 DWORD ?;

.code

main proc

	MOV esi, OFFSET sayi1;
	MOV esi, OFFSET sayi2;
	MOV esi, OFFSET sayi3;
	MOV esi, OFFSET sayi4;


	invoke ExitProcess, 0

main endp
end main