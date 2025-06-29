.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	
.code
main proc

	MOV ecx, 5;
	MOV ax, 0;



	invoke ExitProcess, 0

main endp
end main