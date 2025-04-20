library verilog;
use verilog.vl_types.all;
entity logic_circuit is
    port(
        E               : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic_vector(1 downto 0)
    );
end logic_circuit;
