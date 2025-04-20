library verilog;
use verilog.vl_types.all;
entity reg_8_bit is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        data            : in     vl_logic_vector(7 downto 0);
        \select\        : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end reg_8_bit;
