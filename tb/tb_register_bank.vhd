library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.all; 

entity tb_register_bank is
end entity tb_register_bank;

architecture sim of tb_register_bank is
  -- Clock period
  constant clk_period : time := 5 ns;
  -- Ports
  signal clk_i : std_logic := '0';
  signal d1_i : std_logic_vector (31 downto 0) := (others => '0');
  signal a1_i : std_logic_vector (4 downto 0) := (others => '0');
  signal a2_i : std_logic_vector (4 downto 0) := (others => '0');
  signal ad_i : std_logic_vector (4 downto 0) := (others => '0');
  signal we_i : std_logic := '0';
  signal d1_o : std_logic_vector (31 downto 0);
  signal d2_o : std_logic_vector (31 downto 0);

begin

  dut: entity work.register_bank
  port map (
    clk_i => clk_i,
    d1_i => d1_i,
    a1_i => a1_i,   -- PUERTO DE LECTURA 1: Dirección de registro (desde donde lees)
    a2_i => a2_i,   -- PUERTO DE LECTURA 2: Dirección de registro (desde donde lees)
    ad_i => ad_i,   -- DIRECCION DE ESCRITURA (UNICA)
    we_i => we_i,
    d1_o => d1_o,   -- PUERTO DE LECTURA 1
    d2_o => d2_o);  -- PUERTO DE LECTURA 2

    tb_reg_proc: process
    begin
        wait until falling_edge(clk_i);
        we_i <= '1';
        d1_i <= x"00000001";
        a1_i <= "00100";        --registro 4
        a2_i <= "00000";        --registro 0 -> leer en paralelo a a2_i
        ad_i <= "00100";        --registro 4


        Wait until falling_edge(clk_i); --entre medias ha pasado el flanco que captura el dato
        assert d1_o = x"00000001"
            report "FALLO: la carga no se propago"
            severity error;
        assert d2_o = x"00000000"
            report "FALLO: la carga no se propago"
            severity error;
        
            report "Test completado"
        severity note;

        std.env.stop;
        wait;
    end process;

clk_i <= not clk_i after clk_period/2;

end architecture sim;
