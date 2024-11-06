-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_counter7 is

	generic
	(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 6
	);

	port
	(
		clk		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		q		  : out std_logic
	);

end entity;

architecture rtl of binary_counter7 is

signal cnt : integer range MIN_COUNT to MAX_COUNT := 0;

begin
	process (clk)
	begin
		if (rising_edge(clk)) then

			if reset = '1' then
				-- Reset the counter to 0
				cnt <= 0;

			elsif enable = '1' then
				-- Increment the counter if counting is enabled			   
				cnt <= cnt + 1;

			end if;
			end if;
	end process;
q <= '1' when cnt = 6 else '0';	

end rtl;