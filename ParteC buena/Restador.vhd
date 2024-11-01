library ieee;
use ieee. std_logic_1164.all;

entity Restador is 
port(a,b,bin: in std_logic;
c,bout: out std_logic);
end Restador;

architecture behavioral of Restador is 
begin 
c <= a xor b xor bin;
bout <= (b and (not a)) or (bin and (b or (not a)));
	 
end behavioral;