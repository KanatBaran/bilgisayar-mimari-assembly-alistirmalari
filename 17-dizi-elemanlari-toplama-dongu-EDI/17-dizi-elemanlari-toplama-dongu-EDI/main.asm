.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	intarray WORD 100h,200h,300h,400h
	val DWORD 00000000h

.code
main proc
	
	
	mov val,OFFSET intarray       
	mov ecx,LENGTHOF intarray     
	mov ax,0

	L1:
		add eax,[val]
		add val,TYPE intarray
	loop L1

	invoke ExitProcess, 0

main endp
end main