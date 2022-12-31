.data
     prompt: .asciiz "Count the 1s in the binary representaion of: "
     message: .asciiz "The answer is "
.text
     main:
          li $v0, 4
          la $a0, prompt
          syscall
          
          li $v0, 5
          syscall
          
          addi $a1, $v0, 0
          addi $v1, $zero, 0
          
          jal count
          
          li $v0, 4
          la $a0, message
          syscall
          
          li $v0, 1
          addi $a0, $v1, 0
          syscall
          
          li $v0, 10
          syscall
     count:
          addi $sp, $sp, -8
          sw $ra, 4($sp)
          sw $a1, 0($sp)         
          bne $a1, 0, siftright
          
          addi $sp, $sp, 8
          jr $ra        
     siftright:
          andi $t0, $a1, 1
          add $v1, $v1, $t0
          srl $a1, $a1, 1
          jal count
          
          lw $a1, 0($sp)
          lw $ra, 4($sp)
          addi $sp, $sp, 8                  
          jr $ra
          