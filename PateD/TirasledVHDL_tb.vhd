LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

entity TirasledVHDL_tb is
end TirasledVHDL_tb;

architecture behavior of TirasledVHDL_tb is

   
component TirasledVHDL
port(reset : in  std_logic;
clock : in  std_logic;
 x : in  std_logic;
 l1,l2,l3,l4 : out  std_logic);
end component;
   
    
signal reset : std_logic := '0';
signal clock : std_logic := '0';
signal x : std_logic := '0';
signal l1 : std_logic;
signal l2 : std_logic;
signal l3 : std_logic;
signal l4 : std_logic;

    
constant clock_period : time := 20ns;

begin

uut: TirasledVHDL port map (reset => reset,clock => clock, x => x,l1 => l1,l2 => l2,l3 => l3,l4 => l4);

clock_process: process
begin 
clock<='0';
wait for clock_period/2;
clock<='1';
wait for clock_period/2;
end process;


stim_proc: process
begin
			-- Initialize inputs
        reset <= '1';
        wait for clock_period;
        reset <= '0';

        -- Test case 1: Initial state with x = 0
        x <= '0';
        wait for 3*clock_period;

        -- Test case 2: Transition with x = 1
        x <= '1';
        wait for 3*clock_period;

        -- Test case 3: Reset and observe
        reset <= '1';
        wait for clock_period;
        reset <= '0';
        wait for 3*clock_period;
wait;
end process;
end behavior;
		  