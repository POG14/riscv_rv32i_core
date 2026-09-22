#-- Exercise 8
#-- Ejemplo de suma de dos variables, el resultado se deposita en memoria
#-- v3 = v1+v2

.data

v1: .word 1
v2: .word 2
v3: .word 0

.text
#-- Metemos las direcciones en variables (Punteros de acceso a las variables)
la x5, v1
la x6, v2
la x7, v3
#-- La cargamos en cualquier registro (la leemos)
lw x8, 0(x5)    #-- En x7, cargamos (leemos) v1
lw x9, 0(x6)    #-- En x8, cargamos (leemos) v2

#-- Sumamos de v1+v2
add x10, x8, x9

#-- Almacenamos la variable en x7 -> v3
sw x10, 0(x7)       #-- La suma x10, la llevas al puntero V3 -> x7

li a7, 10
ecall


#-- Hay una variante, mejor y es que no hace falta escribir todas las direcciones.
#-- Se puede hacer de la siguiente forma:

# .data
# v1: .word 1
#     .word 2
#     .word 3

#-- Puntero de acceso a la variable
# la x5, v1

#-- Lectura de las variables
# lw x8, 0(x5)
# lw x9, 4(x5)      -- Le ponemos +4 y significa que tendrá la dirección de x5 +4, es decir, en este caso sería v2

#-- Suma de v1 + v2
# add x10, x8, x9

#-- Almacenar el resultado en v3
# sw x10, 8(x5)