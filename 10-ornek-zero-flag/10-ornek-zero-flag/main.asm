.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

.code

main proc

	mov cx,0
	sub cx,1        ; CX = -1, SF = 1
	add cx,2

	invoke ExitProcess, 0

main endp
end main