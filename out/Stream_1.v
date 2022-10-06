// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Stream_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Stream_1 (
  input               io_din_valid,
  output              io_din_ready,
  input      [7:0]    io_din_payload,
  output              io_dout_valid,
  input               io_dout_ready,
  output     [7:0]    io_dout_payload,
  input               clk,
  input               reset
);

  wire                io_din_s2mPipe_valid;
  wire                io_din_s2mPipe_ready;
  wire       [7:0]    io_din_s2mPipe_payload;
  reg                 io_din_rValid;
  reg        [7:0]    io_din_rData;

  assign io_din_ready = (! io_din_rValid);
  assign io_din_s2mPipe_valid = (io_din_valid || io_din_rValid);
  assign io_din_s2mPipe_payload = (io_din_rValid ? io_din_rData : io_din_payload);
  assign io_dout_valid = io_din_s2mPipe_valid;
  assign io_din_s2mPipe_ready = io_dout_ready;
  assign io_dout_payload = io_din_s2mPipe_payload;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      io_din_rValid <= 1'b0;
    end else begin
      if(io_din_valid) begin
        io_din_rValid <= 1'b1;
      end
      if(io_din_s2mPipe_ready) begin
        io_din_rValid <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    if(io_din_ready) begin
      io_din_rData <= io_din_payload;
    end
  end


endmodule
