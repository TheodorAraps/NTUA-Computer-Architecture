.data
     A: .space 16
.text
     main:
          la $s3, A
          addi $t1, $zero, 6
          addi $t0, $zero, 12
          sw $t1, 12($s3)
                    
          addi $s0, $zero, 3
          addi $s1, $zero, 0
          addi $s1, $s0, 1
          lw $a1, 12($s3)
          jal absolute
          add $s2, $s1, $v1
                  
          li $v0, 1
          addi $a0, $s2, 0
          syscall
     
     li $v0, 10
     syscall
     
     absolute:
         add $v1, $a1, $zero
         slt $t0, $a1, $zero
         beq $t0, 1, opposite       
         jr $ra
     opposite: 
         mul $v1, $v1, -1
         jr $ra
