library verilog;
use verilog.vl_types.all;
entity T_reg_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        count           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end T_reg_vlg_sample_tst;
