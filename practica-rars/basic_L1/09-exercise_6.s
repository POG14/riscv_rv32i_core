#-- Exercise 6
#-- ¿Que es lo que hace este ejercicio?

.text

addi x5, x0, 5
addi x6, x0, 6
addi x7, x0, 0
a:
beq x5, x0, fin         #-- "Salta a fin, si x5 = 0"
add x7, x7, x6
addi x5, x5, -1
j a

fin:
li a7, 10

#-- Incrementa la multiplicación de dos registros usando la suma. En los registros x5 y x6 se introducen los dos números a multiplicar. El resultado se devuelve en x7
#-- La operación realizada por tanto es: x7 = x5 * x6. Al ejecutar el programa obtenemos que x7 = 5 * 6 = 30