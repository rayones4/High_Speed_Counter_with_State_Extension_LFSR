library verilog;
use verilog.vl_types.all;
entity Edge_DFlipFlop_R is
    port(
        D               : in     vl_logic;
        Clk             : in     vl_logic;
        Rst             : in     vl_logic;
        En              : in     vl_logic;
        Q               : out    vl_logic
    );
end Edge_DFlipFlop_R;
