module tb_airport_security;
  reg clk, reset;
  reg [1:0] passenger_type;
  reg [3:0] sensor_pulse;
  reg [7:0] baggage_data;

  wire [1:0] priority;
  wire [3:0] count;
  wire parity;
  wire [3:0] light;
  wire [7:0] security_token;

  airport_security uut (
    .clk(clk),
    .reset(reset),
    .passenger_type(passenger_type),
    .sensor_pulse(sensor_pulse),
    .baggage_data(baggage_data),
    .priority(priority),
    .count(count),
    .parity(parity),
    .light(light),
    .security_token(security_token)
  );

  initial begin
    $dumpfile("airport_security.vcd");
    $dumpvars(0, tb_airport_security);

    clk = 0; reset = 1;
    passenger_type = 2'b10; // VIP
    sensor_pulse = 4'b0001;
    baggage_data = 8'b10101010;

    #5 reset = 0;

    repeat (20) begin
      #5 clk = ~clk;
    end

    $finish;
  end
endmodule
