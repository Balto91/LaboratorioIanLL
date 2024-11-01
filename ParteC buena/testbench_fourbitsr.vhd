library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_fourbitsr is
end testbench_fourbitsr;

architecture behavior of testbench_fourbitsr is
 
signal q, w, e, r : std_logic;--seria mi a 
signal z, x, n, v : std_logic;--seira mi b
signal y, u, i, o, boutf : std_logic;-- son mis salidas

component fourbitsr port(q, w, e, r, z, x, n, v : in std_logic;
y, u, i, o, boutf : out std_logic);
end component;
 
begin 
 uut: fourbitsr port map (q => q, w => w, e => e, r => r,z => z, x => x, n => n, v => v,y => y, u => u, i => i, o => o, boutf => boutf);
 
 
 
 estimulos: process
 begin  
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '0'; x <= '0'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '0'; x <= '0'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '0'; x <= '1'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '0'; x <= '1'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '1'; x <= '0'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '1'; x <= '0'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '1'; x <= '1'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '0'; z <= '1'; x <= '1'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '0'; x <= '0'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '0'; x <= '0'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '0'; x <= '1'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '0'; x <= '1'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '1'; x <= '0'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '1'; x <= '0'; n <= '0'; v <= '1'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '1'; x <= '1'; n <= '0'; v <= '0'; wait for 10ns; 
        q <= '0'; w <= '0'; e <= '0'; r <= '1'; z <= '1'; x <= '1'; n <= '0'; v <= '1'; wait for 10ns; 
end process;        

end behavior;