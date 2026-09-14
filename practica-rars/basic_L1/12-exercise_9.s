#-- Exercise 9
#-- Practicar la función "add"

#-- Ejercicio: sumar x3 y x4 en x5
.text 
li x3, 3
li x4, 4
add x5, x3, x4 #-- x5 = x3 + x4
#-- Transfiere el valor de x5 a x6
add x6, x5, x0                      #-- como x0 vale 0 siempre.. el valor será el de x5
#-- x7, sea el resultado de multiplicar x6 x 2 = x6 + x6
add x7. x6. x6

