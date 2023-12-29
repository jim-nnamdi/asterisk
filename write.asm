.macro essexwrite outstr
  ldr r0, =\outstr
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
  ldr r1, =\outstr
  mov r2, r3
  svc 0
.endm