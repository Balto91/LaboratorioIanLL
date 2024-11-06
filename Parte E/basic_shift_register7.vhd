-- Quartus II VHDL Template
-- Basic Shift Register with Vector Output

library ieee;
use ieee.std_logic_1164.all;

entity basic_shift_register7 is

	generic
	(
		NUM_STAGES : natural := 7
	);

	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		sr_in	    : in std_logic;
		sr_out	: out std_logic_vector(NUM_STAGES-1 downto 0)
	);

end entity;

architecture rtl of basic_shift_register7 is

	-- Declare the shift register signal as a std_logic_vector
	signal sr: std_logic_vector(NUM_STAGES-1 downto 0);

begin

	process (clk)
	begin
		if (rising_edge(clk)) then

			if (enable = '1') then

				-- Shift data by one stage; data from last stage is lost
				sr((NUM_STAGES-1) downto 1) <= sr((NUM_STAGES-2) downto 0);

				-- Load new data into the first stage
				sr(0) <= sr_in;

			end if;
		end if;
	end process;

	-- Assign the entire shift register to the vector output
	sr_out <= sr;

end rtl;