.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	dizi BYTE "123456", 0

.code

main proc

	MOV eax, LENGTHOF dizi;

	invoke ExitProcess, 0

main endp
end main