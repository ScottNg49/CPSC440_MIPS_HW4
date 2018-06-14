#Scott Ng
#CPSC 440-04
#Assignment 4
#Due Date: 02/21/18

.data	
A: .byte  12
B: .byte  97
C: .byte  133
D: .byte  82
E: .byte  236
F: .byte  5

.text
.globl main

main: 
      lbu $t0, A             #loads byte unsigned into registers t0 to t6
      lbu $t1, B
      lbu $t2, C
      lbu $t3, D
      lbu $t4, E
      lb  $t6, F             #loads number of variables used

      add $t5, $t5, $t0
      add $t5, $t5, $t1
      add $t5, $t5, $t2
      add $t5, $t5, $t3
      add $t5, $t5, $t4
      div $t5, $t6           #quotient is placed in LO 
                             #remainder is placed in HI
       
      li $v0, 10             #loads exit statement
      syscall
