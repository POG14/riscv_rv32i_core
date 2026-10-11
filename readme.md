cat > ~/riscv_rv32i_core/README.md << 'EOF'
# riscv_rv32i_core

Nucleo RISC-V RV32I (subconjunto base -> ISA completo -> pipeline de 5 etapas) disenado y verificado en VHDL, con testbenches autoverificables (sin depender de inspeccion visual de formas de onda) y ejecucion final en una FPGA Digilent Arty A7-35T.

## Estado actual
En desarrollo. Primer bloque completo: multiplexor 2 a 1 (`rtl/mux.vhd`) con su testbench autoverificable (`tb/tb_mux.vhd`). Siguiente bloque: sumador.

## Herramientas
- Sintesis/implementacion/bitstream: Vivado (WebPACK)
- Simulacion de desarrollo diario: GHDL (VHDL-2008), via linea de comandos
- Placa objetivo: Digilent Arty A7-35T (Artix-7)
- Lenguaje: VHDL

## Estructura del repositorio