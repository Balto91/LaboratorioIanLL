library ieee;
use ieee.std_logic_1164.all;

entity tb_tirasled2 is
end entity;

architecture behavior of tb_tirasled2 is


	component tirasled2
		port(
			clk    : in  std_logic;
			input  : in  std_logic;
			reset  : in  std_logic;
			output : out std_logic_vector(3 downto 0)
		);
	end component;

	
	signal clk_tb    : std_logic := '0';
	signal input_tb  : std_logic := '0';
	signal reset_tb  : std_logic := '0';
	signal output_tb : std_logic_vector(3 downto 0);

	
	constant clk_period : time := 10 ns;

begin

	UUT: tirasled2
		port map (
			clk    => clk_tb,
			input  => input_tb,
			reset  => reset_tb,
			output => output_tb
		);


	clk_process : process
	begin
		clk_tb <= '0';
		wait for clk_period / 2;
		clk_tb <= '1';
		wait for clk_period / 2;
	end process;

	
	stim_proc: process
	begin
		-- Reset 
		reset_tb <= '1';
		wait for clk_period;
		reset_tb <= '0';
		
		
		
		wait for clk_period;
		input_tb <= '0';
		wait for clk_period;
		
		
		input_tb <= '1';
		wait for clk_period;
		
		
		input_tb <= '1';
		wait for clk_period;

		
		input_tb <= '0';
		wait for clk_period;
		
		
		input_tb <= '0';
		wait for clk_period;
		
		
		input_tb <= '1';
		wait for clk_period;
		
		
		input_tb <= '0';
		wait for clk_period;
		input_tb <= '1';
		wait for clk_period;
		
		
		wait;
	end process;

end architecture;