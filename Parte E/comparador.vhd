library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador is
    Port (
        A : in STD_LOGIC_VECTOR(6 downto 0);  -- Primer vector de entrada
        B : in STD_LOGIC_VECTOR(6 downto 0);  -- Segundo vector de entrada
        salida : out STD_LOGIC               -- Salida: 1 si A = B, 0 en caso contrario
    );
end comparador;

architecture Behavioral of comparador is
begin
    process(A, B)
    begin
        if (A = B) then
            salida <= '1';
        else
            salida <= '0';
        end if;
    end process;
end Behavioral;