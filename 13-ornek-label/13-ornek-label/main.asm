.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

wordDizisi LABEL WORD
dwordDizisi LABEL DWORD
byteDizisi BYTE 00h, 10h, 00h, 20h;

.code

main proc

	MOV ax, WordDizisi;
	MOV ebx, dwordDizisi;


	invoke ExitProcess, 0

main endp
end main