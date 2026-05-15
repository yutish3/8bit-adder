module tb_full_adder;
  reg test_a;
  reg test_b;
  reg test_carryin;

  wire test_sum;
  wire test_carryout;

  full_adder uut (
    .a(test_a),
    .b(test_b),
    .sum(test_sum),
    .carryout(test_carryout)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_full_adder);

    test_a = 0; test_b = 0; test_carryin=0; #10
    test_a = 0; test_b = 1; test_carryin=0; #10
    test_a = 1; test_b = 0; test_carryin=0; #10
    test_a = 1; test_b = 1; test_carryin=0; #10
    test_a = 0; test_b = 0; test_carryin=1; #10
    test_a = 0; test_b = 1; test_carryin=1; #10
    test_a = 1; test_b = 0; test_carryin=1; #10
    test_a = 1; test_b = 1; test_carryin=1; #10

    $display("simulation completed");
    $finish;
  end

endmodule
