library ieee;
use ieee. std_logic_1164.all;

entity Restador is 
port(a,b,bin: in std_logic;
c,bout: out std_logic;
clk: in std_logic);
end Restador;

architecture behavioral of Restador is 

component FFD
port(d,clk: in std_logic;
q: out std_logic);
end component;

signal a_aux, b_aux, bin_aux, c_aux, bout_aux : std_logic;

begin 
c_aux <= a_aux xor b_aux xor bin_aux;
bout_aux <= (b_aux and (not a_aux)) or (bin_aux and (b_aux or (not a_aux)));
	 
 d1: FFD port map (d => a, clk => clk, q => a_aux);
 d2: FFD port map (d => b, clk => clk, q => b_aux);
 d3: FFD port map (d => c_aux, clk => clk, q => c);
 d4: FFD port map (d => bin, clk => clk, q => bin_aux);
 d5: FFD port map (d => bout_aux, clk => clk, q => bout);
end behavioral;