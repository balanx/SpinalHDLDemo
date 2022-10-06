// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamDispatcherSequencial_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamDispatcherSequencial_1 (
  input               clk,
  input               reset
);

  wire                streamDemux_1_io_outputs_0_ready;
  wire                streamDemux_1_io_outputs_1_ready;
  wire                streamDemux_1_io_outputs_2_ready;
  wire                streamDemux_1_io_input_ready;
  wire                streamDemux_1_io_outputs_0_valid;
  wire       [7:0]    streamDemux_1_io_outputs_0_payload;
  wire                streamDemux_1_io_outputs_1_valid;
  wire       [7:0]    streamDemux_1_io_outputs_1_payload;
  wire                streamDemux_1_io_outputs_2_valid;
  wire       [7:0]    streamDemux_1_io_outputs_2_payload;
  wire       [1:0]    _zz__zz_io_select_1;
  wire       [0:0]    _zz__zz_io_select_1_1;
  wire                inputStream_valid;
  wire                inputStream_ready;
  wire       [7:0]    inputStream_payload;
  reg                 _zz_io_select;
  reg        [1:0]    _zz_io_select_1;
  reg        [1:0]    _zz_io_select_2;
  wire                _zz_1;
  wire                _zz_2;
  wire                inputStream_fire;

  assign _zz__zz_io_select_1_1 = _zz_io_select;
  assign _zz__zz_io_select_1 = {1'd0, _zz__zz_io_select_1_1};
  StreamDemux streamDemux_1 (
    .io_select            (_zz_io_select_2[1:0]                   ), //i
    .io_input_valid       (inputStream_valid                      ), //i
    .io_input_ready       (streamDemux_1_io_input_ready           ), //o
    .io_input_payload     (inputStream_payload[7:0]               ), //i
    .io_outputs_0_valid   (streamDemux_1_io_outputs_0_valid       ), //o
    .io_outputs_0_ready   (streamDemux_1_io_outputs_0_ready       ), //i
    .io_outputs_0_payload (streamDemux_1_io_outputs_0_payload[7:0]), //o
    .io_outputs_1_valid   (streamDemux_1_io_outputs_1_valid       ), //o
    .io_outputs_1_ready   (streamDemux_1_io_outputs_1_ready       ), //i
    .io_outputs_1_payload (streamDemux_1_io_outputs_1_payload[7:0]), //o
    .io_outputs_2_valid   (streamDemux_1_io_outputs_2_valid       ), //o
    .io_outputs_2_ready   (streamDemux_1_io_outputs_2_ready       ), //i
    .io_outputs_2_payload (streamDemux_1_io_outputs_2_payload[7:0])  //o
  );
  always @(*) begin
    _zz_io_select = 1'b0;
    if(inputStream_fire) begin
      _zz_io_select = 1'b1;
    end
  end

  assign _zz_1 = (_zz_io_select_2 == 2'b10);
  assign _zz_2 = (_zz_1 && _zz_io_select);
  always @(*) begin
    if(_zz_2) begin
      _zz_io_select_1 = 2'b00;
    end else begin
      _zz_io_select_1 = (_zz_io_select_2 + _zz__zz_io_select_1);
    end
    if(1'b0) begin
      _zz_io_select_1 = 2'b00;
    end
  end

  assign inputStream_fire = (inputStream_valid && inputStream_ready);
  assign inputStream_ready = streamDemux_1_io_input_ready;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_io_select_2 <= 2'b00;
    end else begin
      _zz_io_select_2 <= _zz_io_select_1;
    end
  end


endmodule

module StreamDemux (
  input      [1:0]    io_select,
  input               io_input_valid,
  output reg          io_input_ready,
  input      [7:0]    io_input_payload,
  output reg          io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [7:0]    io_outputs_0_payload,
  output reg          io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [7:0]    io_outputs_1_payload,
  output reg          io_outputs_2_valid,
  input               io_outputs_2_ready,
  output     [7:0]    io_outputs_2_payload
);

  wire                when_Stream_l884;
  wire                when_Stream_l884_1;
  wire                when_Stream_l884_2;

  always @(*) begin
    io_input_ready = 1'b0;
    if(!when_Stream_l884) begin
      io_input_ready = io_outputs_0_ready;
    end
    if(!when_Stream_l884_1) begin
      io_input_ready = io_outputs_1_ready;
    end
    if(!when_Stream_l884_2) begin
      io_input_ready = io_outputs_2_ready;
    end
  end

  assign io_outputs_0_payload = io_input_payload;
  assign when_Stream_l884 = (2'b00 != io_select);
  always @(*) begin
    if(when_Stream_l884) begin
      io_outputs_0_valid = 1'b0;
    end else begin
      io_outputs_0_valid = io_input_valid;
    end
  end

  assign io_outputs_1_payload = io_input_payload;
  assign when_Stream_l884_1 = (2'b01 != io_select);
  always @(*) begin
    if(when_Stream_l884_1) begin
      io_outputs_1_valid = 1'b0;
    end else begin
      io_outputs_1_valid = io_input_valid;
    end
  end

  assign io_outputs_2_payload = io_input_payload;
  assign when_Stream_l884_2 = (2'b10 != io_select);
  always @(*) begin
    if(when_Stream_l884_2) begin
      io_outputs_2_valid = 1'b0;
    end else begin
      io_outputs_2_valid = io_input_valid;
    end
  end


endmodule
