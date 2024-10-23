library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity combinacional is 
port( sw1 : in std_logic;
sw2 : in std_logic;
sw3 : in std_logic;
led : out std_logic);
end combinacional;
architecture comb of combinacional is
signal a : std_logic;
begin
a <= not((not sw2)xor sw1);
led <= a or (sw3 and (not sw2));
end comb; 