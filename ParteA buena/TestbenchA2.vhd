library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity TestbenchA2 is 
end TestbenchA2;
architecture behavior of TestbenchA2 is
component combinacional
port( sw1,sw2,sw3 : in std_logic;
led :out std_logic);
end component;
signal sw3 : std_logic :='0';
signal sw1 : std_logic :='0';
signal sw2 : std_logic :='0';
signal led : std_logic;
begin 
uut: combinacional port map (sw1 => sw1,
sw2  => sw2,
sw3  => sw3,
led => led);
estimulos:process 
begin 
sw1 <= '0' ; sw2 <= '0'; wait for 10ns;
sw1 <= '0' ; sw2 <= '1'; wait for 10ns;
sw1 <= '1' ; sw2 <= '0'; wait for 10ns;
sw1 <= '1' ; sw2 <= '1'; wait for 10ns;
wait;
end process;
END;