library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    port (
        in0_i, in1_i, c_i : in std_logic;       --c_i = acarreo de entrada
        c_o, f            : out std_logic);     --c_o = acarreo de salida
end entity adder;

architecture rtl of adder is
begin
    --Calcular suma
    f <= in0_i xor in1_i xor c_i;
    --Calcular acarreo
    c_o <= (in0_i and in1_i) or (in0_i and c_i) or (in1_i and c_i);
end architecture rtl;