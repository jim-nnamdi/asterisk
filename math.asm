.global _start
_start:
  mov r0, #5
  mov r1, #7
  sub r2, r0, r1 

  add r3, r0, r1 // r0 + r1
  adc r4, r0, r1 // if theres a remainder, the c signifies carry Operation

  // if the result of a value is negative
  // there's actually no way to know that
  // which is the reason we use the CPSR register (nzcvi)
  // and how to do that is to add an extra s to the 
  // operand command for example from sub to subs
  // the cpsr would return a value starting from 8
  // which signifies a negative number