library verilog;
use verilog.vl_types.all;
entity Divisor is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(5 downto 0);
        c               : out    vl_logic_vector(8 downto 0)
    );
end Divisor;
