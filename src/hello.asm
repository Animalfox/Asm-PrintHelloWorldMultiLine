section .data
  hw:     db  'Hello',10,'World' ; Define 'Hello World' with newline (LF)
  hw_len: equ $ - hw             ; Calculate the length of the string

section .text
  global _start

_start:
  ; Call the kernel: int 80h (0x80)
  ; Arguments:
  ; eax = 4 (The system call for write - sys_write)
  ; ebx = 1 (File descriptor 1 - standard output)
  ; ecx = msg (Address of the string to be printed)
  ; edx = len (Length of the string)

  mov eax, 4     ; System call number for 'write'
  mov ebx, 1     ; File descriptor - stdout
  lea ecx, [hw]  ; Load the address of the string into ecx
  mov edx, hwLen ; Length of the string

  int 80h ; Make the kernel call to print the string and exit

  mov eax, 1   ; System call number for 'exit'
  xor ebx, ebx ; Return code 0
  int 80h      ; Make the kernel call to exit the program
