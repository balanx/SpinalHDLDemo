// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Stream_2
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Stream_2 (
  input               io_din_valid,
  output              io_din_ready,
  input      [7:0]    io_din_payload,
  output              io_dout_valid,
  input               io_dout_ready,
  output     [7:0]    io_dout_payload
);

  wire       [7:0]    _zz_tmp;
  wire       [7:0]    _zz_tmp_1;
  wire       [7:0]    tmp;
  wire                io_din_translated_valid;
  wire                io_din_translated_ready;
  wire       [7:0]    io_din_translated_payload;

  assign _zz_tmp = (io_din_payload + 8'h01);
  assign _zz_tmp_1 = (io_din_payload - 8'h01);
  assign tmp = ((8'h80 < io_din_payload) ? _zz_tmp : _zz_tmp_1);
  assign io_din_translated_valid = io_din_valid;
  assign io_din_ready = io_din_translated_ready;
  assign io_din_translated_payload = tmp;
  assign io_dout_valid = io_din_translated_valid;
  assign io_din_translated_ready = io_dout_ready;
  assign io_dout_payload = io_din_translated_payload;

endmodule
