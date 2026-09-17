#-- Exercise 5
#-- Esta vez vamos a presentar pseucódigos. Algunos de ellos ya los conociamos pero los pongo igualmente. 

#-- Inicialización del registro (es decir, cuando sea x0) | addi -> li 
#-- Ej: Antes: addi x6, x0, 5 -> Ahora: li x6, 5

#-- Transferencia de de registros
#-- Antes: add x6, x5, x0 -> Ahora: mv x6, x5

#-- El objetivo es conseguir el menor número de instrucciones (registros) en el núcleo. 
#-- Cuanto menor sea los registros, menos circuitos habrá que meter dentro del Risc-V y menos area de silicio nos va a ocupar el Risc-V.
#-- Esto se traduce, en que la olea de sicilio (sitio donde se fabrican todos los procesadores a la vez), te caben mas procesadores, y eso se traduce en un procesador más barato.

#-- Por otro lado, el nucleo del RISC-V que tenemos, es el RV32I, al ser de 32 bits, es un nucle mínimo que solo admite numeros enteros.
#-- Y tampoco admite operaciones avanzadas como multi, divi, etc.. SOLO LO MÍNIMO