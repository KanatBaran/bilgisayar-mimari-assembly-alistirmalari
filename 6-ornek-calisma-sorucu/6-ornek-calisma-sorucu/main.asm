;int x = 7;
;int y = 4;
;int result = -(x + y);



.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	x DWORD 7
	y DWORD 4
	result DWORD ?

.code

main proc
	MOV eax, x
	MOV ebx, y
	ADD eax, ebx
	NEG eax
	MOV result, eax

	invoke ExitProcess, 0

main endp
end main