.global _start
_start:
  mov r0, #1
  mov r1, #2

  cmp r0, r1 

  bgt greater // branch greater than (bgt)
  bal default // branch always

greater:
  mov r2, #1

default:
  mov r2, #2


// gt, lt , le, ge, ne conditional tags