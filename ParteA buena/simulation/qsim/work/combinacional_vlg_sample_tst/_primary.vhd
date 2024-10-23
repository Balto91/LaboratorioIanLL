library verilog;
use verilog.vl_types.all;
entity combinacional_vlg_sample_tst is
    port(
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sw3             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end combinacional_vlg_sample_tst;
