library verilog;
use verilog.vl_types.all;
entity control_unit_vlg_sample_tst is
    port(
        E               : in     vl_logic;
        S               : in     vl_logic;
        clk             : in     vl_logic;
        qa              : in     vl_logic;
        qs              : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_unit_vlg_sample_tst;
