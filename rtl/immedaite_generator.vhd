library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity immediate_generator is
    port (
        ins_raw_i : in std_logic_vector (31 downto 0);   --instrucción cruda
        sel_i     : in std_logic_vector (1 downto 0);
        ins_o     : out std_logic_vector (31 downto 0)); --el inmediato reconstruido
end entity immediate_generator;

architecture rtl of immediate_generator is
    signal s_ins_I, s_ins_S, s_ins_B, s_ins_J : std_logic_vector (31 downto 0);
begin
    s_ins_I <= std_logic_vector(resize(signed(ins_raw_i(31 downto 20)), 32));
    s_ins_S <= std_logic_vector(resize(signed(ins_raw_i(31 downto 25) & ins_raw_i(11 downto 7)), 32));
    s_ins_B <= std_logic_vector(resize(signed(ins_raw_i(31) & ins_raw_i(7) & ins_raw_i(30 downto 25) & ins_raw_i(11 downto 8) & '0'), 32));
    s_ins_J <= std_logic_vector(resize(signed(ins_raw_i(31) & ins_raw_i(19 downto 12) & ins_raw_i(20) & ins_raw_i(30 downto 21) & '0'), 32));

    with sel_i select
        ins_o <= s_ins_I when "00",
                 s_ins_S when "01",
                 s_ins_B when "10",
                 s_ins_J when others;
end architecture rtl;