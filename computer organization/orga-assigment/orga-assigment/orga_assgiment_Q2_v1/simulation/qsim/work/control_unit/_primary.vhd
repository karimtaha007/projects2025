library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        T0              : out    vl_logic;
        T1              : out    vl_logic;
        T2              : out    vl_logic;
        T3              : out    vl_logic;
        T4              : out    vl_logic;
        T5              : out    vl_logic;
        T6              : out    vl_logic;
        T7              : out    vl_logic;
        qa              : in     vl_logic;
        qs              : in     vl_logic;
        S               : in     vl_logic;
        E               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end control_unit;
