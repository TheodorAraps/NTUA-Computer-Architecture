.data
    
.text
     main:
          addi $a1, $zero, -570
          
          jal absolute
          
          li $v0, 1
          addi $a0, $v1, 0
          syscall
     
     li $v0, 10
     syscall
     
     absolute:
         add $v1, $a1, $zero
         slt $t0, $a1, $zero
         beq $t0, 1, opposite       
         jr $ra
     opposite: 
         sub $v1, $zero, $v1
         jr $ra
 