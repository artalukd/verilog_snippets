module testbench05;
  reg [3:0]A, B;
  reg Select;
  wire [3:0]Sum;
  wire Carry, Overflow;
  _4bit_Adder_Sub_gate mod(Sum, Carry, Overflow, A, B, Select);
  initial
    begin
      $monitor($time, " A=%4b, B=%4b, Select=%b, Carry=%b, Sum=%4b, Overflow=%b.", A, B, Select, Carry, Sum, Overflow);
      #0  A=4'b0000; B=4'b0000; Select=1'b0;
      #10 A=4'b1000; B=4'b0101; Select=1'b1;
      #10 A=4'b1111; B=4'b1000; Select=1'b1;
      #10 $finish;
    end
endmodule