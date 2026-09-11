#-- My first program
#-- Assign the value 30 to x3 register
#-- and finish it

.text

#-- x3 = 30
addi x3, x0, 30

#-- Terminar
li a7, 10
ecall