library verilog;
use verilog.vl_types.all;
entity Memory16X10_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Memory16X10_vlg_check_tst;
