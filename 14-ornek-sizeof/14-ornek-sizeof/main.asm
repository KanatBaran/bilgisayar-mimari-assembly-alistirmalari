.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	wvar WORD 1234h, 5678h, 4321h, 8765h;

.code

main proc

	MOV eax, SIZEOF wvar;

	invoke ExitProcess, 0

main endp
end main