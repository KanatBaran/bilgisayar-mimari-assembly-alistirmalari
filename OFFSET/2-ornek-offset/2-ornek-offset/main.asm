.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	val1 BYTE 10h, 20h, 30h;


.code

main proc

	MOV esi, OFFSET val1;
	MOV al, [esi];

	MOV al, [esi+1];

	MOV al, [esi];

	INC esi;
	MOV al, [esi];

	invoke ExitProcess, 0

main endp
end main