.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	myDouble DWORD 12345678h; 4 bytes


.code

main proc
	
	;MOV ax, myDouble : Burada hata var. Boyut uyu�mazl��� var.

	MOV ax, WORD PTR myDouble; Do�ru kullan�m. 2 byte'l�k bir veri al�yoruz.

	invoke ExitProcess, 0

main endp
end main