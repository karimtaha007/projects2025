library verilog;
use verilog.vl_types.all;
entity reg_8_bit_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        \select\        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg_8_bit_vlg_sample_tst;
