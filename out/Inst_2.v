// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Inst_2
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Inst_2 (
  input               io_port_din_valid,
  input      [7:0]    io_port_din_payload_d0,
  input      [7:0]    io_port_din_payload_d1,
  output              io_port_sum_valid,
  output     [7:0]    io_port_sum_payload,
  input               clk,
  input               reset
);

  wire                adder_io_port_sum_valid;
  wire       [7:0]    adder_io_port_sum_payload;

  add_2 adder (
    .io_port_din_valid      (io_port_din_valid             ), //i
    .io_port_din_payload_d0 (io_port_din_payload_d0[7:0]   ), //i
    .io_port_din_payload_d1 (io_port_din_payload_d1[7:0]   ), //i
    .io_port_sum_valid      (adder_io_port_sum_valid       ), //o
    .io_port_sum_payload    (adder_io_port_sum_payload[7:0]), //o
    .clk                    (clk                           ), //i
    .reset                  (reset                         )  //i
  );
  assign io_port_sum_valid = adder_io_port_sum_valid;
  assign io_port_sum_payload = adder_io_port_sum_payload;

endmodule

module add_2 (
  input               io_port_din_valid,
  input      [7:0]    io_port_din_payload_d0,
  input      [7:0]    io_port_din_payload_d1,
  output              io_port_sum_valid,
  output     [7:0]    io_port_sum_payload,
  input               clk,
  input               reset
);

  reg        [7:0]    _zz_io_port_sum_payload;
  reg                 io_port_din_valid_regNext;

  assign io_port_sum_payload = _zz_io_port_sum_payload;
  assign io_port_sum_valid = io_port_din_valid_regNext;
  always @(posedge clk) begin
    if(io_port_din_valid) begin
      _zz_io_port_sum_payload <= (io_port_din_payload_d0 + io_port_din_payload_d1);
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      io_port_din_valid_regNext <= 1'b0;
    end else begin
      io_port_din_valid_regNext <= io_port_din_valid;
    end
  end


endmodule
