library verilog;
use verilog.vl_types.all;
entity logic_circuit_vlg_check_tst is
    port(
        E               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end logic_circuit_vlg_check_tst;
