library ieee;
use ieee.std_logic_1164.all;

entity circuiteria1 is 
    port( 
        Hab_Dir, clock : in std_logic;
        fin_dato       : out std_logic
    );
end circuiteria1;

architecture behavioral of circuiteria1 is 

    component binary_counter		
        port (
            clk    : in std_logic;
            reset  : in std_logic;
            enable : in std_logic;
            q      : out std_logic
        );	
    end component;

    component basic_shift_register
        port (
            clk    : in std_logic;
            enable : in std_logic;
            sr_in  : in std_logic;
            sr_out : out std_logic 
        );
    end component;

    signal X       : std_logic;  --Señal de salida de la and 
    signal sr_out  : std_logic;  -- Señal para la salida del registro de desplazamiento

begin

    -- Generación de la señal X
    X <= Hab_Dir and clock;

    -- Instancia del contador binario
    BC: binary_counter 
        port map (
            clk    => X,
            reset  => '0',
            enable => '1',
            q      => fin_dato
        );

    -- Instancia del registro de desplazamiento
    R: basic_shift_register 
        port map (
            clk    => X,
            enable => '1',
            sr_in  => '0',  -- Cambia '0' según el valor de entrada deseado
            sr_out => sr_out
        );

end behavioral;
