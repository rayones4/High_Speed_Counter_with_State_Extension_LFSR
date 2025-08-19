module Edge_DFlipFlop (D,Clk,Rst,En,Q);
  input D; // Data input 
  input Clk; // clock input 
  input Rst,En; //synchronous reset 
  output reg Q; // output Q 
  always @(negedge Clk) 
  begin
    if(Rst==1'b1)
       Q <= 1'b1; 
    else if(En)
       Q <= D; 
  end 
endmodule