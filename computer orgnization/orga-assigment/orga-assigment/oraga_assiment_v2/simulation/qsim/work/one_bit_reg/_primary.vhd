library verilog;
use verilog.vl_types.all;
entity one_bit_reg is
    port(
        Q               : out    vl_logic;
        data            : in     vl_logic;
        \select\        : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end one_bit_reg;
