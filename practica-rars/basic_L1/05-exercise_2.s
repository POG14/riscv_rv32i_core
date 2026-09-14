#-- Exercise 2
#-- Modifica el contador infinito para que se incremente el registro 5 en dos unidades, en vez de en una.
#-- Haz que el contador empiece en 0. Se debe ver que para x5 los valores son pares, empezando por el 0: 0,2,4,6....
#-- ¿Cual es la dirección de la primera instrucción?

.text

#-- x5 empieza en 0
addi x5, x0, 0

#-- metemos el bucle
bucle:
addi x5, x5, 2

#-- repetimos bucle
j bucle
