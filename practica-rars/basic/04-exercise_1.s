#-- Exercise 1
#-- Escribe un programa para RISC-V y que asigne los siguientes valores a los registros indicados:
#-- x3=3. x4=4. x5=5,x6=6,x7=7 y x8=8

.text
#-- x3=3
addi x3, x0, 3
#-- x4=4
addi x4, x0, 4
#-- x5=5
addi x5, x0, 5
#-- x6=6
addi x6, x0, 6
#-- x7=7
addi x7, x0, 7
#-- x8=8
addi x8, x0, 8

#-- finalizar
li a7, 10
ecall
