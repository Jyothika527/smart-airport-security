module airport_security (
  input clk,
  input reset,
  input [1:0] passenger_type,     // 00: Regular, 01: Business, 10: VIP
  input [3:0] sensor_pulse,       // Simulated person entry
  input [7:0] baggage_data,       // Binary baggage data
  output [1:0] priority,          // Priority output
  output [3:0] count,             // People counter
  output parity,                  // Parity check result
  output [3:0] light,             // Traffic light signal
  output [7:0] security_token     // Random ID
);

  wire priority_out;
  wire [2:0] priority_in = 3'b101; // Example: VIP=1, Business=0, Regular=1
  wire [7:0] id;

  // Priority Checker
  priority_checker pc (
    .sel(passenger_type),
    .priority_in(priority_in),
    .priority_out(priority_out)
  );
  assign priority = {1'b0, priority_out}; // Pad to 2 bits

  // Object Counter
  object_counter oc (
    .clk(clk),
    .reset(reset),
    .sensor_pulse(sensor_pulse),
    .count(count)
  );

  // Parity Checker
  parity_checker pchk (
    .data(baggage_data),
    .parity(parity)
  );

  // Traffic Light Controller
  traffic_light tlc (
    .clk(clk),
    .reset(reset),
    .light(light)
  );

  // Random ID Generator
  id_generator idgen (
    .clk(clk),
    .reset(reset),
    .id(id)
  );
  assign security_token = id;

endmodule
