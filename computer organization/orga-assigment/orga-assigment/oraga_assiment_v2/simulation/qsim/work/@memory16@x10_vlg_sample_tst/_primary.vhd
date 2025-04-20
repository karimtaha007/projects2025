library verilog;
use verilog.vl_types.all;
entity Memory16X10_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(9 downto 0);
        rw              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Memory16X10_vlg_sample_tst;
