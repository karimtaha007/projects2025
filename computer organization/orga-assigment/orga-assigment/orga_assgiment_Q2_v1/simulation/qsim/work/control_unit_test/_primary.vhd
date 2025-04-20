library verilog;
use verilog.vl_types.all;
entity control_unit_test is
    port(
        X               : out    vl_logic;
        S2              : out    vl_logic;
        S1              : out    vl_logic;
        C               : out    vl_logic;
        L               : out    vl_logic;
        Y               : out    vl_logic;
        Z               : out    vl_logic;
        W               : out    vl_logic;
        qa              : in     vl_logic;
        qs              : in     vl_logic;
        S               : in     vl_logic;
        E               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end control_unit_test;
