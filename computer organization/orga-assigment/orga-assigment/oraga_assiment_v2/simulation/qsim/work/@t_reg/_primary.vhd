library verilog;
use verilog.vl_types.all;
entity T_reg is
    port(
        Q               : out    vl_logic_vector(2 downto 0);
        count           : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end T_reg;
