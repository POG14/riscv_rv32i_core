#-- Exercise 4
#-- Write an assambly program to calculate the expression: 
#-- "f = (a + b + c) - [(d - a) + (e + 3) - 30]"
#-- Implement the expression as is, without applying simplifications or prior calculations.
#-- Check the result for variable values: a=2, B=4, c=6, d=8, e=10 | Resultado final f = 23

.text

#-- valores
li x5, 2            #-- a=2
li x6, 4            #-- b=4
li x10, 10           #-- e=10

#-- operacion (a + b + c)
add x7, x5, x6      #-- a + b
addi x7, x7, 6      #-- a + b + c

#-- actualizamos registro x6 = b -> d
addi x6, x6, 4
#-- operación (d - a)
sub x8, x6, x5

#-- operacion (e + 3)
addi x11, x10, 3

#-- operacion (d - a) + (e + 3) 
add x12, x8, x11
#-- oepracion [(d - a) + (e + 3) - 30]
addi x13, x12, -30

#-- operacion f
sub x14, x7, x13

#-- terminar programa
li a7, 10
ecall

