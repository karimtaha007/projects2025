library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        F               : out    vl_logic_vector(7 downto 0);
        cout            : out    vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0)
    );
end ALU;
