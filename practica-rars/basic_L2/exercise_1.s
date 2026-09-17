#-- Exercise 3
#-- Escribe un programa poniendo un Breakpoint para que se pare en cada iteración de bucle. Obten el valor del termino f(10) de fibonacci.
#-- ¿Cuantas instrucciones tiene el código maquina?
#-- ¿Cuantos bytes de memoria ocupa el programa?

.text
#-- valores inciales
li x5, 0
li x6, 1

bucle:
#-- calcular siguiente término en t2
add x7, x5, x6                      #-- x7 = x5+x6 = 0+1 = 1
#-- actualizas registros
add x5, x0, x6                      #-- x5 pasa a x6 -> 0 = 1
add x6, x0, x7                      #-- x6 pasa a x7 -> 1 = 1
j bucle



