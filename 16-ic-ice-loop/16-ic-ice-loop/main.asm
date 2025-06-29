.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	count DWORD ?
	sayac DWORD 0

.code
main proc

	mov ecx,2

	L1:
	MOV count,ecx    
	MOV ecx,20       

	L2:
		INC sayac
		loop L2
		mov ecx,count 
		
loop L1

	invoke ExitProcess, 0

main endp
end main