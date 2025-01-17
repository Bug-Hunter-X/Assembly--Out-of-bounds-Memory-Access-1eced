mov esi, array ; Load array base address
mov edi, array_size ; Load array size
cmp ebx, edi ; Check if index is within bounds
jge error_handler ; Handle out-of-bounds access
mov eax, [esi+ebx*4] ; Access memory safely
mov ecx, [eax] ; Continue execution

error_handler:
; Handle the out-of-bounds error appropriately
; e.g., display an error message or exit the program
mov eax, 1 ; sys_exit system call
mov ebx, 1 ; Exit code 1
int 0x80