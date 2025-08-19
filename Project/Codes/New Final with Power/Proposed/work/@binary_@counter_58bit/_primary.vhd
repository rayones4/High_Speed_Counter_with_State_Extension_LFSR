library verilog;
use verilog.vl_types.all;
entity Binary_Counter_58bit is
    port(
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        En              : in     vl_logic;
        Count_Out       : out    vl_logic_vector(57 downto 0)
    );
end Binary_Counter_58bit;
