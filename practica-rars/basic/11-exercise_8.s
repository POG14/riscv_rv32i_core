 #-- Exercise 8
 #-- Replicamos el contador infinito (03) pero le añadimos otro contador adicional... 
 #-- Es el contador que ya teniamos y otro que cuente en numero pares

 .text              #-- sirve para situar lo que viene a continuación en el segmento de código/texto

 li x5, 0
 li x6, 0

 bucle:
 addi x5, x5, 1
 addi x6, x6, 2
 b bucle            #-- repetir indefinidamente

 #-- ¿Cuantos bytes ocupan? Si tengo estas 5 instrucciones? Cada instruccion vale 4 bytes, con lo que 5x4 = 20 bytes


