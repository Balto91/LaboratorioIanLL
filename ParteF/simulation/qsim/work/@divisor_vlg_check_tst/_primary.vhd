library verilog;
use verilog.vl_types.all;
entity Divisor_vlg_check_tst is
    port(
        c               : in     vl_logic_vector(8 downto 0);
        sampler_rx      : in     vl_logic
    );
end Divisor_vlg_check_tst;
