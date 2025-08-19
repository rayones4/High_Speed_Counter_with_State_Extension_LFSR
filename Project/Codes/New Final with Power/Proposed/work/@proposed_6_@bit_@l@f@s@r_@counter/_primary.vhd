library verilog;
use verilog.vl_types.all;
entity Proposed_6_Bit_LFSR_Counter is
    port(
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        CNT             : in     vl_logic;
        Q_Out           : out    vl_logic_vector(5 downto 0);
        S               : out    vl_logic_vector(5 downto 0);
        \Next\          : out    vl_logic
    );
end Proposed_6_Bit_LFSR_Counter;
