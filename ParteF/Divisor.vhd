library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Divisor is
port(a : in std_logic_vector(6 downto 0);--este vector debe tener siempre como bit menos significativo un 0 a(4,2)
b:  in std_logic_vector(5 downto 0);-- b(3,3)
c: out std_logic_vector(6 downto 0));--c(7,0) descarto la parte decimal 
end Divisor;

architecture behavioral of Divisor is

signal aint: integer;
signal bint: integer;
signal cint: integer;

begin 
aritmetica: process (a,b) is 
begin 
aint <= to_integer(unsigned(a));
bint <= to_integer(unsigned(b));
cint <= aint/bint;
c <= std_logic_vector(to_unsigned(cint, c'length));  
end process aritmetica;
    
end Behavioral;