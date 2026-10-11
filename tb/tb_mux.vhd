library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end entity tb_mux;

architecture sim of tb_mux is
    signal in0, in1, sel, y : std_logic;
begin
    dut: entity work.mux
    port map (
        in0 => in0,
        in1 => in1,
        sel => sel,
        y => y
    );

    stim_process: process
    begin
        -- caso 1
        in0 <= '0'; in1 <= '1'; sel <='0';
        wait for 10 ns;
        assert y = in0
            report "FALLO: con sel=0 deberia salir in0"
            severity failure;
        -- caso 2
        in0 <= '0'; in1 <= '1'; sel <='1';
        wait for 10 ns;
        assert y = in1
            report "FALLO: con sel=1 deberia salir in1"
            severity failure;
        -- caso 3
        in0 <= '0'; in1 <= '1'; sel <='X';              -- X = Valor desconocido
        wait for 10 ns;
        assert y = in1
        report "FALLO: con sel=X debería salir in1"
        severity failure;

        report "Todos los tests del mux han pasado correctamente";
        wait;
    end process;
end architecture sim;