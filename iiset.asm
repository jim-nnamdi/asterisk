.data 
var1: .word 3
var2: .word 4

.text
.global _start
_start:
  ldr r0, adr_var1 @ load the mem addr of var1 to r0
  ldr r1, adr_var2 @ load the mem addr of var2 to r1
  ldr r2, [r0]     @ load the value at the mem addr of r0 to r2 
  str r2, [r1]     @ store the value of r2 at the memory loc of r1
  bx lr 

adr_var1: .word var1
adr_var2: .word var2