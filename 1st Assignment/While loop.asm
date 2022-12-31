.data
     F: .space 40
     comma: .asciiz  ", "
.text
     main:
          addi $s0, $zero, 0
          addi $s1, $zero, 0
          la $s2, F
          addi $a1, $s2, 0
     while: 
          slti $t0, $s0, 10
          beq $t0, $zero, exit
          add $t1, $s0, $s1
          sw $t1, 0($a1)
          addi $s0, $s0, 1
          lw $t0, 0($a1)
          addi $a1, $a1, 4
          jal Print
          
          j while
          
     exit:
          li $v0, 10
          syscall
          
     Print:
          li $v0, 1
          add $a0, $t0, $zero
          syscall
          
          li $v0, 4
          la $a0, comma
          syscall
          
          jr $ra
     
