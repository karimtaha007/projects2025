library verilog;
use verilog.vl_types.all;
entity full_adder_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end full_adder_vlg_check_tst;
