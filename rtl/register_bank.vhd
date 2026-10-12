library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_bank is
    port (
        clk_i   : in std_logic;                             --reloj
        d1_i    : in std_logic_vector (31 downto 0);        --dato de entrada
        a1_i    : in std_logic_vector (4 downto 0);         --direccion de registro (address)
        a2_i    : in std_logic_vector (4 downto 0);         --direccion de registro (address)
        ad_i    : in std_logic_vector (4 downto 0);         --direccion de destino
        we_i    : in std_logic;         --'enable' que nos permite la escritura
        d1_o    : out std_logic_vector (31 downto 0);       --data output
        d2_o    : out std_logic_vector (31 downto 0));
end entity register_bank;

architecture rtl of register_bank is
    type memoria_type is array (0 to 31) of std_logic_vector (31 downto 0); --cada entrada es un array de 32 bits

    signal memoria : memoria_type := (others => (others => '0'));           --inicializamos nuestro banco de registro en 0.

begin
    --Nos aseguramos de que el registro 0, no sea modificable
    regi_write: process (clk_i)
    begin
        if rising_edge (clk_i) then
            if we_i = '1' and ad_i /= "00000" then              --si el enable está habilitado (we = 1), la direccion de registros sea distinta a 0 =
                memoria(to_integer(unsigned(ad_i))) <= d1_i;    --podemos modificar/meter un dato a nuestro banco de registros
            end if;
        end if;
    end process;

    d1_o <= memoria(to_integer(unsigned(a1_i)));    --obtenemos/leemos la posición de a1 en dataoutput 1
    d2_o <= memoria (to_integer(unsigned(a2_i)));   --obtenemos/leemos la posición de a2 en dataoutput 2

end architecture rtl;