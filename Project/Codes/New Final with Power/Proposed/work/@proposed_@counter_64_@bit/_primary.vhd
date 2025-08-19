library verilog;
use verilog.vl_types.all;
entity Proposed_Counter_64_Bit is
    port(
        Clk             : in     vl_logic;
        nRst            : in     vl_logic;
        CNT             : in     vl_logic;
        \Out\           : out    vl_logic_vector(63 downto 0)
    );
end Proposed_Counter_64_Bit;
