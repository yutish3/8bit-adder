module adder_8bit (
  input [7:0] A,
  input [7:0] B,
  input carryin,
  output [7:0] sum,
  output carryout
);

  wire c1, c2, c3, c4, c5, c6, c7;

  full_adder fa0 (A[0], B[0], carryin, sum[0], c1);
  full_adder fa1 (A[1], B[1], c1, sum[1], c2);
  full_adder fa2 (A[2], B[2], c2, sum[2], c3);
  full_adder fa3 (A[3], B[3], c3, sum[3], c4);
  full_adder fa4 (A[4], B[4], c4, sum[4], c5);
  full_adder fa5 (A[5], B[5], c5, sum[5], c6);
  full_adder fa6 (A[6], B[6], c6, sum[6], c7);
  full_adder fa7 (A[7], B[7], c7, sum[7], carryout);

endmodule