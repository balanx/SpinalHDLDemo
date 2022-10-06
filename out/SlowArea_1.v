// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : SlowArea_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module SlowArea_1 (
  output reg          io_c0,
  output reg          io_c1,
  input               clk,
  input               reset
);

  reg        [1:0]    _zz_when_ClockDomain_l369;
  wire                when_ClockDomain_l369;
  reg                 when_ClockDomain_l369_regNext;
  reg                 slow_tmp;

  assign when_ClockDomain_l369 = (_zz_when_ClockDomain_l369 == 2'b11);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      io_c0 <= 1'b0;
      io_c1 <= 1'b0;
      _zz_when_ClockDomain_l369 <= 2'b00;
      when_ClockDomain_l369_regNext <= 1'b0;
    end else begin
      io_c0 <= (! io_c0);
      _zz_when_ClockDomain_l369 <= (_zz_when_ClockDomain_l369 + 2'b01);
      if(when_ClockDomain_l369) begin
        _zz_when_ClockDomain_l369 <= 2'b00;
      end
      when_ClockDomain_l369_regNext <= when_ClockDomain_l369;
      io_c1 <= slow_tmp;
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      slow_tmp <= 1'b0;
    end else begin
      if(when_ClockDomain_l369_regNext) begin
        slow_tmp <= (! slow_tmp);
      end
    end
  end


endmodule
