#-- Exercise 7
#-- El siguiente código NO se ensabla correctamente porque tiene errores. Introducelo en el simulador y soluciona los problemas para que ensamble.
#-- ¿Que es lo que hace este programa?

#-- .text

#-- addi x17, x0, 10
#-- addi x12, x0, 8
#-- addii x7, x0, 0

#-- a:

#-- beq x17,x0,fin  ;-- Comprueba terminacion
#-- add x7, xx7, x12
#-- addi x17, x17, -1

#-- ;--

#-- j hola

#-- fin:
#-- li a7, 10
#-- ecall


        .text

	li x17, 10
	li x12, 8
	li x7, 0
a:                       #-- una etiqueta.
	beq x17, x0, fin     #-- comprueba terminación. "Salta a fin, si x17 = 0"
	add x7, x7, x12      #-- x7 = x7 (0) + x12 (8) = 8 + 8 ...... siempre va sumando 8 al nuevo resultado de x7
	addi x17, x17, -1    #-- x17 (10) - 1 = 9..... así has6ta llegar a 0.
	j a                  #-- finaliza a 

fin:
	li a7, 10

#-- El resultado de esta suma es 80. Es básicamente como en el ejercicio anterior.