.global _start
_start:
  ldr r0, =list // load the list and get the addr of first value 
  ldr r1, [r0] // get the value inside the mem addr of r0
  ldr r2, [r0, #4] // add 4 to the index of r0


.data // data section to hold variables
list:
  .word 4,5,-9,-1,2,0,3 // initialize a list of 32 bits data