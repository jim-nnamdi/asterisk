.include "write.asm"

.global _start

_start:
  ldr r0, =hello
  mov r1, r0
  1:
    ldrb r2, [r1]
    cmp r2, #0
    beq 2f
    add r1, #1
    b 1b

  2: 
    sub r3, r1, r0
    mov r7, #4
    mov r0, #1
    ldr r1, =hello
    mov r2, r3
    svc 0

  mov r7, #1      // sys exit
  mov r0, #0      // no error 
  svc 0

.data 
hello: .asciz      "Hello world!\n" // asciz adds the \0 to terminate string