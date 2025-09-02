module priority_checker (
  input [1:0] sel,         // 2-bit selector: 00=Regular, 01=Business, 10=VIP
  input [2:0] priority_in, // Inputs: [Regular, Business, VIP]
  output reg priority_out
);
  always @(*) begin
    case (sel)
      2'b00: priority_out = priority_in[0];
      2'b01: priority_out = priority_in[1];
      2'b10: priority_out = priority_in[2];
      default: priority_out = 0;
    endcase
  end
endmodule
