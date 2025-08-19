module Binary_Counter_58bit (Clk,Rst,En,Count_Out);
    input Clk;       // Clock input
    input Rst,En;     // Reset input
    output reg [57:0] Count_Out;
    
    always @(posedge Clk)
    begin
    if (Rst) // Reset condition
        Count_Out <= 58'b0;
    else if (En)
        Count_Out <= Count_Out + 1; // Increment counter
    end

endmodule