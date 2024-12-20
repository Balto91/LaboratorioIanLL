library ieee;
use ieee. std_logic_1164.all;

entity testbenchB is 
end testbenchB;

architecture behavior of testbenchB is 

component Restador
port(a,b,bin: in std_logic;
c,bout: out std_logic;
clk: in std_logic);
end component; 

signal a :std_logic :='0';
signal b :std_logic :='0';
signal bin :std_logic :='0';
signal c :std_logic :='0';
signal bout :std_logic :='0';
signal clk :std_logic :='0';

constant clock_period : time := 20ns;
begin
uut: Restador port map (a => a,b => b,bin => bin,bout => bout,c => c,clk => clk);

clock_process:process 
begin 
clk<='0';
wait for clock_period/2;
clk<='1';
wait for clock_period/2;
end process;

estimulos: process
begin
a<='0';b<='0';bin<='0'; wait for 30ns;
a<='0';b<='0';bin<='1'; wait for 30ns;
a<='0';b<='1';bin<='0'; wait for 30ns;
a<='0';b<='1';bin<='1'; wait for 30ns;
a<='1';b<='0';bin<='0'; wait for 30ns;
a<='1';b<='0';bin<='1'; wait for 30ns;
a<='1';b<='1';bin<='0'; wait for 30ns;
a<='1';b<='1';bin<='1'; wait for 30ns;
wait;
end process;
end;