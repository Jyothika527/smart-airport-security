module parity_checker (
  input [7:0] data,
  output parity
);
  assign parity = ^data; // XOR all bits for even parity
endmodule
