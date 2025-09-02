module priority_checker_tb;
  reg [1:0] sel;
  reg [2:0] priority_in;
  wire priority_out;

  priority_checker uut (.sel(sel), .priority_in(priority_in), .priority_out(priority_out));

  initial begin
    $dumpfile("priority.vcd"); $dumpvars(0, priority_checker_tb);
    priority_in = 3'b101; // VIP=1, Business=0, Regular=1

    sel = 2'b00; #10; // Regular
    sel = 2'b01; #10; // Business
    sel = 2'b10; #10; // VIP

    $finish;
  end
endmodule
