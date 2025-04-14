library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        address         : out    vl_logic_vector(7 downto 0);
        count           : in     vl_logic;
        reset           : in     vl_logic
    );
end PC;
