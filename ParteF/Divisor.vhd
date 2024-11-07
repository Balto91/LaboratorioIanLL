library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Divisor is
port(a : in std_logic_vector(5 downto 0);--a(4,2)
b:  in std_logic_vector(5 downto 0);-- b(3,3)
c: out std_logic_vector(8 downto 0));--c(7,2) 
end Divisor;

architecture behavioral of Divisor is

signal aint: integer;
signal bint: integer;
signal cint: integer;

begin 
aritmetica: process (a,b) is 
begin 
aint <= to_integer(unsigned(a))*1000;
bint <= to_integer(unsigned(b));

       if bint /= 0 then
            cint <= aint / bint;                 -- División segura(evitar el error en caso de que b es 0)
        else
            cint <= 0;                           -- Valor predeterminado para b = 0
        end if;
		  
c <= std_logic_vector(to_unsigned(cint, c'length));  
end process aritmetica;
    
end Behavioral;