module Modified_Design (clk, rst,out,Next);

  output reg [5:0] out;
  output Next;
  input clk, rst;

  wire feedback;
  
  assign Next=feedback;
  assign feedback = ~(out[3] ^ out[2] ^ out[5]);

always @(posedge clk, posedge rst)
  begin
    if (rst)
      out = 6'b111111;
    else
      out = {out[2:0],feedback};
  end
endmodule