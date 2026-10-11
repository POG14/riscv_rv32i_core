library ieee;
use ieee.std_logic_1164.all;

entity mux is
port (
in0, in1, sel : in std_logic;
y             : out std_logic
);
end entity mux;

architecture rtl of mux is
begin
y <= in0 when sel = '0' else in1;
end architecture rtl;