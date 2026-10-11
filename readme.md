# riscv_rv32i_core
Nucleo RISC-V RV32I (subconjunto base -> ISA completo -> pipeline de 5 etapas) disenado y verificado en VHDL, con testbenches autoverificables (sin depender de inspeccion visual de formas de onda) y ejecucion final en una FPGA Digilent Arty A7-35T.

## Estado actual
En desarrollo. Primer bloque completo: multiplexor 2 a 1 (rtl/mux.vhd) con su testbench autoverificable (tb/tb_mux.vhd). Siguiente bloque: sumador.

## Herramientas
- Sintesis/implementacion/bitstream: Vivado (WebPACK)
- Simulacion de desarrollo diario: GHDL (VHDL-2008), via linea de comandos
- Placa objetivo: Digilent Arty A7-35T (Artix-7)
- Lenguaje: VHDL

## Estructura del repositorio
- rtl/ — VHDL sintetizable (datapath, control, memorias, perifericos)
- tb/ — Testbenches VHDL, autoverificables (assert/report/severity)
- sim/ — Scripts y Makefile de simulacion con GHDL
- sw/ — Programas de prueba (ensamblador/hex) para la memoria de instrucciones
- constraints/ — Ficheros .xdc de constraints para la Arty A7
- vivado/ — Script Tcl para regenerar el proyecto de Vivado (no se versiona el .xpr)
- docs/ — Diagramas de microarquitectura, notas de diseno, log de bugs

## Hoja de ruta (resumen)
1. Bloques sueltos del datapath, cada uno con testbench propio
2. Monociclo, subconjunto minimo de instrucciones
3. RV32I completo, sigue en monociclo
4. Pipeline de 5 etapas (forwarding, hazards)
5. Coverificacion contra un ISS en C++
6. Bring-up en la Arty A7 real

## Proyectos relacionados
- Ensamblador en C (genera los programas de sw/)
- ISS en C++ (modelo de referencia para coverificacion, Fase 4)
EOF