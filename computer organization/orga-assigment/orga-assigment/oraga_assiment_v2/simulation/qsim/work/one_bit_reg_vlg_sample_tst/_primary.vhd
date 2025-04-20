library verilog;
use verilog.vl_types.all;
entity one_bit_reg_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic;
        reset           : in     vl_logic;
        \select\        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end one_bit_reg_vlg_sample_tst;
