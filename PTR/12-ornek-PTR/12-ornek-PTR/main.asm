.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

	myDouble DWORD 12345678h; 4 bytes


.code

main proc
	
	;MOV ax, myDouble : Burada hata var. Boyut uyuþmazlýðý var.

	MOV ax, WORD PTR myDouble; Doðru kullaným. 2 byte'lýk bir veri alýyoruz.

	invoke ExitProcess, 0

main endp
end main