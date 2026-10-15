library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity immediate_generator_tb is
end entity immediate_generator_tb;

architecture bench of immediate_generator_tb is
  -- Clock period
  constant clk_period : time := 5 ns;
  -- Generics
  -- Ports
  signal ins_raw_i : std_logic_vector (31 downto 0);
  signal sel_i     : std_logic_vector (1 downto 0);
  signal ins_o     : std_logic_vector (31 downto 0);
begin

  dut : entity work.immediate_generator
  port map (
    ins_raw_i => ins_raw_i,
    sel_i     => sel_i,
    ins_o     => ins_o);

  stim_proc: process
  begin
    --Generador de inmediatos tipo I
    --              SEÑAL NEGATIVA
    ins_raw_I <= x"FD3A0A93"; sel_i <= "00";
    wait for 10 ns;
    assert ins_o = x"FFFFFFD3"
        report "FALLO: la solución debe ser -> addi x21, x20, -45"
        severity failure;
    --              SEÑAL POSITIVA
    ins_raw_I <= x"00700293"; sel_i <= "00";
    wait for 10 ns;
    assert ins_o = x"00000007"
        report "FALLO: la solución debe ser -> addi x5, x0, 7"
        severity failure;
    
    report "Todos los test del Generador de Inmediatos han pasado correctamente";
    wait;
  end process;  
end;