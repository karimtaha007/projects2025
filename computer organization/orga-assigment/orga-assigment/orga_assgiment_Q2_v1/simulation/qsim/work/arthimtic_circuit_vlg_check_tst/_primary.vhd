library verilog;
use verilog.vl_types.all;
entity arthimtic_circuit_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        cout            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end arthimtic_circuit_vlg_check_tst;
