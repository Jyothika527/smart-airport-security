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

  // Priority Checker
  priority_checker pc (
    .sel(passenger_type),
    .sensor_input(sensor_pulse),
    .priority_out(priority)
  );

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
    .parity_bit(parity)
  );

  // Traffic Light Controller
  traffic_light tlc (
    .clk(clk),
    .reset(reset),
    .light_out(light)
  );

  // Random ID Generator
  id_generator idgen (
    .clk(clk),
    .reset(reset),
    .id_out(security_token)
  );

endmodule
