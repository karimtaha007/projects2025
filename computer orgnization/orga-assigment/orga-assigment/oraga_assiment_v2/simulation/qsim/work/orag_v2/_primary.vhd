library verilog;
use verilog.vl_types.all;
entity orag_v2 is
    port(
        x8              : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        x7              : out    vl_logic;
        x6              : out    vl_logic;
        x5              : out    vl_logic;
        x4              : out    vl_logic;
        x3              : out    vl_logic;
        x2              : out    vl_logic;
        x1              : out    vl_logic;
        A_OUT           : out    vl_logic_vector(9 downto 0);
        R_DATA_IN       : in     vl_logic_vector(9 downto 0);
        Mem_out         : out    vl_logic_vector(9 downto 0);
        opcode          : out    vl_logic_vector(1 downto 0);
        tt              : out    vl_logic_vector(7 downto 0)
    );
end orag_v2;
