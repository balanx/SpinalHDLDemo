// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamWidthAdapter_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamWidthAdapter_1 (
  input               io_din_valid,
  output              io_din_ready,
  input      [31:0]   io_din_payload,
  output              io_dout_valid,
  input               io_dout_ready,
  output     [7:0]    io_dout_payload,
  input               clk,
  input               reset
);

  wire       [1:0]    _zz__zz_io_din_ready_1;
  wire       [0:0]    _zz__zz_io_din_ready_1_1;
  wire       [31:0]   _zz__zz_io_dout_payload;
  reg        [7:0]    _zz_io_dout_payload_1;
  wire                io_dout_fire;
  reg                 _zz_io_din_ready;
  reg        [1:0]    _zz_io_din_ready_1;
  reg        [1:0]    _zz_io_din_ready_2;
  wire                _zz_io_din_ready_3;
  wire       [31:0]   _zz_io_dout_payload;

  assign _zz__zz_io_din_ready_1_1 = _zz_io_din_ready;
  assign _zz__zz_io_din_ready_1 = {1'd0, _zz__zz_io_din_ready_1_1};
  assign _zz__zz_io_dout_payload = io_din_payload;
  always @(*) begin
    case(_zz_io_din_ready_2)
      2'b00 : _zz_io_dout_payload_1 = _zz_io_dout_payload[31 : 24];
      2'b01 : _zz_io_dout_payload_1 = _zz_io_dout_payload[23 : 16];
      2'b10 : _zz_io_dout_payload_1 = _zz_io_dout_payload[15 : 8];
      default : _zz_io_dout_payload_1 = _zz_io_dout_payload[7 : 0];
    endcase
  end

  assign io_dout_fire = (io_dout_valid && io_dout_ready);
  always @(*) begin
    _zz_io_din_ready = 1'b0;
    if(io_dout_fire) begin
      _zz_io_din_ready = 1'b1;
    end
  end

  assign _zz_io_din_ready_3 = (_zz_io_din_ready_2 == 2'b11);
  always @(*) begin
    _zz_io_din_ready_1 = (_zz_io_din_ready_2 + _zz__zz_io_din_ready_1);
    if(1'b0) begin
      _zz_io_din_ready_1 = 2'b00;
    end
  end

  assign io_dout_valid = io_din_valid;
  assign _zz_io_dout_payload = _zz__zz_io_dout_payload;
  assign io_dout_payload = _zz_io_dout_payload_1;
  assign io_din_ready = (io_dout_ready && _zz_io_din_ready_3);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_io_din_ready_2 <= 2'b00;
    end else begin
      _zz_io_din_ready_2 <= _zz_io_din_ready_1;
    end
  end


endmodule
