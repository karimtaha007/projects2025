library verilog;
use verilog.vl_types.all;
entity PC_vlg_sample_tst is
    port(
        count           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PC_vlg_sample_tst;
