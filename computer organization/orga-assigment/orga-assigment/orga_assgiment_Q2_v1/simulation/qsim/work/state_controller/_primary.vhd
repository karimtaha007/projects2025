library verilog;
use verilog.vl_types.all;
entity state_controller is
    port(
        y               : out    vl_logic_vector(7 downto 0);
        S               : in     vl_logic;
        E               : in     vl_logic;
        qa              : in     vl_logic;
        qs              : in     vl_logic;
        clk             : in     vl_logic;
        resest          : in     vl_logic
    );
end state_controller;
