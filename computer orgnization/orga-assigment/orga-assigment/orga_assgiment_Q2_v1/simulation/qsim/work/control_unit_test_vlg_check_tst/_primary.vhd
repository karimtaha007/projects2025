library verilog;
use verilog.vl_types.all;
entity control_unit_test_vlg_check_tst is
    port(
        C               : in     vl_logic;
        L               : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        W               : in     vl_logic;
        X               : in     vl_logic;
        Y               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end control_unit_test_vlg_check_tst;
