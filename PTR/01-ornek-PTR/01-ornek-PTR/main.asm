.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

var BYTE 10h, 20h, 30h;
varW WORD 1234h, 5678h;
varDW DWORD 12345678h;

.code

main proc

	MOV ax, WORD PTR var;
	MOV eax, DWORD PTR varW;
	MOV al, BYTE PTR varDW;


	invoke ExitProcess, 0

main endp
end main