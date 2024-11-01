library ieee;
use ieee. std_logic_1164.all;

entity fourbitsr is 
port(q,w,e,r,z,x,n,v: in std_logic;
y,u,i,o,boutf: out std_logic);
end fourbitsr;
architecture behavioral of fourbitsr is 

component restador 
port(a,b,bin: in std_logic;
c,bout: out std_logic);
end component;

signal bout1,bout2,bout3,bout4 : std_logic;
begin
 c1: restador port map (a=> q,b=> z, bin => '0',bout => bout1,c =>y);
 c2: restador port map (a=> w,b=> x, bin => bout1,bout => bout2,c =>u);
c3: restador port map (a=> e,b=> n, bin => bout2,bout => bout3,c =>i);
c4: restador port map (a=> r,b=> v, bin => bout3,bout => bout4,c =>o);
boutf <= bout4;
end behavioral;