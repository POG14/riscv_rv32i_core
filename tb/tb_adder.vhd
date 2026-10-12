library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_adder is
end entity tb_adder;

architecture sim of tb_adder is
    signal in0_i, in1_i, c_i, c_o, f : std_logic;     
    --tipos y constantes
    type adder_test is record
        a, b, cin                    : std_logic;    
        f_esp, cout_esp              : std_logic;   --"esp" -> "esperado"
    end record;
    --
    type lista_adder is array (natural range <>) of adder_test;
    --
    constant casos: lista_adder := (
        ('0','0','0','0','0'),
        ('0','0','1','1','0'),
        ('0','1','0','1','0'),
        ('0','1','1','0','1'),
        ('1','0','0','1','0'),
        ('1','0','1','0','1'),
        ('1','1','0','0','1'),
        ('1','1','1','1','1')
    );
begin
    dut: entity work.adder
    port map (
        in0_i => in0_i,
        in1_i => in1_i,
        c_i => c_i,
        c_o => c_o,
        f => f);

    stim_process: process
        variable errores : natural := 0;        --vive solo aquí, memoria de trabajo
    begin
        --El bucle sustituye a "caso 0/caso1/..." escritos a mano
        for i in casos'range loop
            in0_i <= casos(i).a;
            in1_i <= casos(i).b;
            c_i   <= casos(i).cin;
            wait for 10 ns;
            
            --Ponemos error y no failure para que no detenga la simulacion
            if f /= casos(i).f_esp then
                errores := errores +1;
                report "FALLO en caso" & integer'image(i) & ": f incorrecto"
                severity error;
            end if;
            if c_o /= casos(i).cout_esp then
                errores := errores +1;
                report "FALLO en caso" & integer'image(i) & ": c_o incorrecto"
                severity error;
            end if;
        end loop;
        --Bug de compilación
        assert errores = 0
            report integer'image(errores) & "fallo(s) detectado(s) en el adder"
            severity failure;

        report "Todos los test del adder han pasado correctamente";

        wait;
    end process;

end architecture sim;