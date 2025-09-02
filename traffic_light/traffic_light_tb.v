module traffic_light_tb;
  reg clk, reset;
  wire [1:0] light;

  traffic_light uut (.clk(clk), .reset(reset), .light(light));

  initial begin
    $dumpfile("traffic.vcd"); $dumpvars(0, traffic_light_tb);
    clk = 0; reset = 1; #5;
    reset = 0;

    repeat (10) begin
      #5 clk = ~clk;
    end

    $finish;
  end
endmodule
