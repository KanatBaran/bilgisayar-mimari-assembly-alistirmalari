; ALIGN Komudundan sonraki komutun adresi �ift ise ALIGN komutu
;	�al��mayabilir.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data

sayi DWORD 12345678h;   ; 4 byte
ALIGN 4	                ; sayi2'yi 2 byte hizal� konuma yerle�tir
sayi1 BYTE 10h;         ; 1 byte

sayi2 WORD 0020h;       ; 2 byte

.code

main proc
	mov eax, 7
	mov ebx, 3

	invoke ExitProcess, 0

main endp
end main