library ieee;
use ieee. std_logic_1164.all;

entity fourbitsr is 
port(q,w,e,r,z,x,n,v,clk: in std_logic;
y,u,i,o,boutf: out std_logic);
end fourbitsr;
architecture behavioral of fourbitsr is 


component FFD  
port(d,clk: in std_logic;
q: out std_logic);
end component;

component restador 
port(a,b,bin: in std_logic;
c,bout: out std_logic);
end component;

    signal reg_q, reg_w, reg_e, reg_r, reg_z, reg_x, reg_n, reg_v : std_logic;
    signal y_reg, u_reg, i_reg, o_reg : std_logic;
    signal bout1, bout2, bout3, bout4 : std_logic;
    
begin
    
    ff_q: FFD port map(d => q, clk => clk, q => reg_q);
    ff_w: FFD port map(d => w, clk => clk, q => reg_w);
    ff_e: FFD port map(d => e, clk => clk, q => reg_e);
    ff_r: FFD port map(d => r, clk => clk, q => reg_r);
    ff_z: FFD port map(d => z, clk => clk, q => reg_z);
    ff_x: FFD port map(d => x, clk => clk, q => reg_x);
    ff_n: FFD port map(d => n, clk => clk, q => reg_n);
    ff_v: FFD port map(d => v, clk => clk, q => reg_v);

   
    c1: restador port map(a => reg_q, b => reg_z, bin => '0', bout => bout1, c => y_reg);
    c2: restador port map(a => reg_w, b => reg_x, bin => bout1, bout => bout2, c => u_reg);
    c3: restador port map(a => reg_e, b => reg_n, bin => bout2, bout => bout3, c => i_reg);
    c4: restador port map(a => reg_r, b => reg_v, bin => bout3, bout => bout4, c => o_reg);

    
    ff_y: FFD port map(d => y_reg, clk => clk, q => y);
    ff_u: FFD port map(d => u_reg, clk => clk, q => u);
    ff_i: FFD port map(d => i_reg, clk => clk, q => i);
    ff_o: FFD port map(d => o_reg, clk => clk, q => o);
	 ff_bout: FFD port map(d=>bout4, clk => clk, q=>boutf);
end behavioral;