module id_generator_tb;
  reg clk, reset;
  wire [7:0] id;

  id_generator uut (.clk(clk), .reset(reset), .id(id));

  initial begin
    $dumpfile("id.vcd"); $dumpvars(0, id_generator_tb);
    clk = 0; reset = 1; #5;
    reset = 0;

    repeat (10) begin
      #5 clk = ~clk;
    end

    $finish;
  end
endmodule
