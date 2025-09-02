module tb_parity_checker;
  reg [7:0] data;
  wire parity;

  parity_checker uut (.data(data), .parity(parity));

  initial begin
    $dumpfile("parity.vcd"); $dumpvars(0, parity_checker_tb);
    data = 8'b10101010; #10;
    data = 8'b11110000; #10;
    data = 8'b00000000; #10;
    $finish;
  end
endmodule
