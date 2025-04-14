library verilog;
use verilog.vl_types.all;
entity mux4x1_vlg_sample_tst is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux4x1_vlg_sample_tst;
