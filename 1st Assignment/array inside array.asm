.data
     M: .space 16
     N: .space 16
.text
     main:
         la $s2, M
         la $s3, N
         #M[3] = 8, N[4] = 3 and g = 18
         addi $t1, $zero, 8
         sw $t1, 12($s2)
         addi $t1, $zero, 3
         sw $t1, 16($s3)
         addi $s1, $zero, 18
     
         lw $t1, 16($s3)
         sll $t1, $t1, 2
         add $t1, $s2, $t1
         lw $t0, 0($t1)
         sub $s0, $s1, $t0
         
         li $v0, 1
         addi $a0, $s0, 0
         syscall
         
     li $v0, 10
     syscall
     