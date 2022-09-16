// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamWidthAdapter_2
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module StreamWidthAdapter_2 (
  input               io_din_valid,
  output              io_din_ready,
  input      [7:0]    io_din_payload,
  output              io_dout_valid,
  input               io_dout_ready,
  output     [31:0]   io_dout_payload,
  input               clk,
  input               reset
);

  wire       [1:0]    _zz__zz_io_din_ready_1;
  wire       [0:0]    _zz__zz_io_din_ready_1_1;
  wire       [15:0]   _zz__zz_io_dout_payload;
  wire       [31:0]   _zz_io_dout_payload_1;
  wire       [31:0]   _zz_io_dout_payload_2;
  wire                io_din_fire;
  reg                 _zz_io_din_ready;
  reg        [1:0]    _zz_io_din_ready_1;
  reg        [1:0]    _zz_io_din_ready_2;
  wire                _zz_io_din_ready_3;
  reg        [23:0]   _zz_io_dout_payload;
  wire                io_din_fire_1;

  assign _zz__zz_io_din_ready_1_1 = _zz_io_din_ready;
  assign _zz__zz_io_din_ready_1 = {1'd0, _zz__zz_io_din_ready_1_1};
  assign _zz__zz_io_dout_payload = (_zz_io_dout_payload >>> 8);
  assign _zz_io_dout_payload_2 = {io_din_payload,_zz_io_dout_payload};
  assign _zz_io_dout_payload_1 = _zz_io_dout_payload_2;
  assign io_din_fire = (io_din_valid && io_din_ready);
  always @(*) begin
    _zz_io_din_ready = 1'b0;
    if(io_din_fire) begin
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

  assign io_din_fire_1 = (io_din_valid && io_din_ready);
  assign io_dout_valid = (io_din_valid && _zz_io_din_ready_3);
  assign io_dout_payload = _zz_io_dout_payload_1;
  assign io_din_ready = (! ((! io_dout_ready) && _zz_io_din_ready_3));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_io_din_ready_2 <= 2'b00;
    end else begin
      _zz_io_din_ready_2 <= _zz_io_din_ready_1;
    end
  end

  always @(posedge clk) begin
    if(io_din_fire_1) begin
      _zz_io_dout_payload <= {io_din_payload,_zz__zz_io_dout_payload};
    end
  end


endmodule
