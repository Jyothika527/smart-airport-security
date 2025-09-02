module object_counter_tb;
  reg clk, reset;
  wire [3:0] count;

  object_counter uut (.clk(clk), .reset(reset), .count(count));

  initial begin
    $dumpfile("counter.vcd"); $dumpvars(0, tb_object_counter);
    clk = 0; reset = 1; #5;
    reset = 0;

    repeat (10) begin
      #5 clk = ~clk;
    end

    $finish;
  end
endmodule
