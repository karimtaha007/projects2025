library verilog;
use verilog.vl_types.all;
entity arthimtic_circuit_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end arthimtic_circuit_vlg_sample_tst;
