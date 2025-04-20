library verilog;
use verilog.vl_types.all;
entity orag_v2_vlg_check_tst is
    port(
        A_OUT           : in     vl_logic_vector(9 downto 0);
        Mem_out         : in     vl_logic_vector(9 downto 0);
        opcode          : in     vl_logic_vector(1 downto 0);
        tt              : in     vl_logic_vector(7 downto 0);
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        x3              : in     vl_logic;
        x4              : in     vl_logic;
        x5              : in     vl_logic;
        x6              : in     vl_logic;
        x7              : in     vl_logic;
        x8              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end orag_v2_vlg_check_tst;
