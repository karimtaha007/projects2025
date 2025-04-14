library verilog;
use verilog.vl_types.all;
entity orag_v2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        R_DATA_IN       : in     vl_logic_vector(9 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end orag_v2_vlg_sample_tst;
