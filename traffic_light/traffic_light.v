module traffic_light (
  input clk,
  input reset,
  output reg [3:0] light
);

  reg [1:0] state;

  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= 2'b00;
    else
      state <= state + 1;
  end

  always @(*) begin
    case (state)
      2'b00: light = 2'b00; // Red
      2'b01: light = 2'b01; // Yellow
      2'b10: light = 2'b10; // Green
      default: light = 2'b11; // Off or undefined
    endcase
  end

endmodule
