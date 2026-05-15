`timescale 1ns / 1ps

module tb_adder_8bit;
  reg [7:0] A;
  reg [7:0] B;
  reg carryin;

  wire [7:0] sum;
  wire carryout;

  adder_8bit uut (
    .A(A),
    .B(B),
    .carryin(carryin),
    .carryout(carryout),
    .sum(sum) );

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_adder_8bit);

    A = 8'd10; B = 8'd5; carryin = 0; #10;
    A = 8'd100; B = 8'd50; carryin = 0; #10;
    A = 8'd255; B = 8'd1; carryin = 0; #10;
    A = 8'd20; B = 8'd20; carryin = 1; #10;

    $finish;
  end

endmodule
