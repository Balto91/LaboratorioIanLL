library ieee;
use ieee.std_logic_1164.all;

entity circuiteria2 is 
    port( 
        Hab_Dir, clock,SDA : in std_logic;
        fin_dir,soy : out std_logic
    );
end circuiteria2;

architecture behavioral of circuiteria2 is 
	component comparador is
    Port (
        A : in STD_LOGIC_VECTOR(6 downto 0);  -- Primer vector de entrada
        B : in STD_LOGIC_VECTOR(6 downto 0);  -- Segundo vector de entrada
        salida : out STD_LOGIC               -- Salida: 1 si A = B, 0 en caso contrario
    );
end component;
    
	 component binary_counter7		
        port (
            clk    : in std_logic;
            reset  : in std_logic;
            enable : in std_logic;
            q      : out std_logic
        );	
    end component;

    component basic_shift_register7
        port (
            clk    : in std_logic;
            enable : in std_logic;
            sr_in  : in std_logic;
            sr_out : out std_logic_vector(7 downto 0) 
        );
    end component;

    signal X       : std_logic;  --Señal de salida de la and 
    signal sr_out  : std_logic_vector(7 downto 0 );  -- Señal para la salida del registro de desplazamiento

begin

    -- Generación de la señal X
    X <= Hab_Dir and clock;

    -- Instancia del contador binario
    BC: binary_counter7 
        port map (
            clk    => X,
            reset  => '0',
            enable => '1',
            q      => fin_dir
        );

    -- Instancia del registro de desplazamiento
    R: basic_shift_register7 
        port map (
            clk    => X,
            enable => '1',
            sr_in  => SDA,  -- Cambia '0' según el valor de entrada deseado
            sr_out => sr_out
        );
	    -- Instancia del comparador
    c: comparador
        port map (
            A => sr_out,
            B => "0000000",  --B es un vector que debe ser asignado por el usuario para la direccion
            salida => soy   -- Compara con la dirección deseada
        );
end behavioral;