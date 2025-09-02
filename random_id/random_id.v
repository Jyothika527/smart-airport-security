module id_generator (
  input clk,
  input reset,
  output reg [7:0] id
);
  always @(posedge clk or posedge reset) begin
    if (reset)
      id <= 8'b00000001;
    else
      id <= {id[6:0], id[7] ^ id[5]}; // Simple LFSR tap
  end
endmodule
