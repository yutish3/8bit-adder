module full_adder (
    input wire a,
    input wire b,
    input wire carryin,
    output wire sum,
    output wire carryout);

    assign sum = a ^ b ^ carryin;
    assign carryout = (a & b) | (b & carryin) | (a & carryin);

endmodule