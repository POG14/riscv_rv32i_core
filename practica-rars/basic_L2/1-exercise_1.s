#-- Exercise 3
#-- Escribe un programa poniendo un Breakpoint para que se pare en cada iteración de bucle. Obten el valor del termino f(10) de fibonacci.
#-- ¿Cuantas instrucciones tiene el código maquina?
#-- ¿Cuantos bytes de memoria ocupa el programa?

.text

li x5, 1
li x6, 1

add x8, x5, x6
add x9, x6, x8
add x10, x8, x9
add x11, x9, x10

ecall

