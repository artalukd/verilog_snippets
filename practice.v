 module REG1(clk, EN, numin, numout);
    input clk, EN;
    input [3:0] numin ;
    output [3:0] numout ;
    reg [3:0] numout ;
 
 always @ (posedge clk)
 begin
  if (EN)
  begin
    numout = numin;
  end
 end
 
 endmodule
 
module  ROTATOR(clock, EN, NumOr, NumRot);
  input [3:0] NumOr;
  input clock, EN;
  output  [3:0] NumRot;
  reg [3:0] NumRot;
  always  @ (posedge clock) begin
    if(EN)
      {NumRot}  <=  {NumOr[0], NumOr[3:1]};
  end
endmodule

module DECODER(in,out);
input [3:0] in;
output [15:0] out;

always@(in)
begin
    case(in)
      4'h0: out = 16'h8000;
      4'h1: out = 16'h4000;
      4'h2: out = 16'h2000;
      4'h3: out = 16'h1000;
      4'h4: out = 16'h0800;
      4'h5: out = 16'h0400;
      4'h6: out = 16'h0200;
      4'h7: out = 16'h0100;
      4'h8: out = 16'h0080;
      4'h9: out = 16'h0040;
      4'hA: out = 16'h0020;
      4'hB: out = 16'h0010;
      4'hC: out = 16'h0008;
      4'hD: out = 16'h0004;
      4'hE: out = 16'h0002;
      4'hF: out = 16'h0001;
    endcase
  end
endmodule


module

endmodule
