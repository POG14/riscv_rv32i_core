#-- Exercise 4
#-- Write an assambly program to calculate the expression: 
#-- "f = (a + b + c) - [(d - a) + (e + 3) - 30]"
#-- Implement the expression as is, without applying simplifications or prior calculations.
#-- Check the result for variable values: a=2, B=4, c=6, d=8

#-- ESTA MAL, MIRA EL PRIMER EJERCICIO, HAY VARIAS FORMAS DE HACERLO. CON BUCLES, SPILLING... HAZLO DE VARIAS FORMAS Y ASÍ PRÁCTICAS.
.text

li x5, 2            #-- a=2 
li x6, 4            #-- b=4
li x7, 6            #-- c=6
li x28, 8           #-- d=8
li x8, 1            #-- e=1 

add x29, x5, x6         #-- a + b
add x30, x7, x29        #-- (a + b + c)
sub x31, x28, x5        #-- (d - a)
addi x9, x8, 3          #-- (e + 3)
sub 

