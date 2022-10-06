// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Clock_4
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Clock_4 (
  input               io_din_valid,
  output              io_din_ready,
  input      [7:0]    io_din_payload,
  output              io_dout_valid,
  input               io_dout_ready,
  output     [7:0]    io_dout_payload,
  input               a_clk,
  input               a_reset,
  input               b_clk
);

  wire                streamCCByToggle_1_io_input_ready;
  wire                streamCCByToggle_1_io_output_valid;
  wire       [7:0]    streamCCByToggle_1_io_output_payload;

  StreamCCByToggle streamCCByToggle_1 (
    .io_input_valid    (io_din_valid                             ), //i
    .io_input_ready    (streamCCByToggle_1_io_input_ready        ), //o
    .io_input_payload  (io_din_payload[7:0]                      ), //i
    .io_output_valid   (streamCCByToggle_1_io_output_valid       ), //o
    .io_output_ready   (io_dout_ready                            ), //i
    .io_output_payload (streamCCByToggle_1_io_output_payload[7:0]), //o
    .a_clk             (a_clk                                    ), //i
    .a_reset           (a_reset                                  ), //i
    .b_clk             (b_clk                                    )  //i
  );
  assign io_din_ready = streamCCByToggle_1_io_input_ready;
  assign io_dout_valid = streamCCByToggle_1_io_output_valid;
  assign io_dout_payload = streamCCByToggle_1_io_output_payload;

endmodule

module StreamCCByToggle (
  input               io_input_valid,
  output              io_input_ready,
  input      [7:0]    io_input_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  input               a_clk,
  input               a_reset,
  input               b_clk
);

  wire                outHitSignal_buffercc_io_dataOut;
  wire                bufferCC_3_io_dataOut;
  wire                pushArea_target_buffercc_io_dataOut;
  wire                outHitSignal;
  wire                pushArea_hit;
  wire                pushArea_accept;
  reg                 pushArea_target;
  reg        [7:0]    pushArea_data;
  wire                io_input_fire;
  wire                a_reset_syncronized;
  wire                popArea_stream_valid;
  reg                 popArea_stream_ready;
  wire       [7:0]    popArea_stream_payload;
  wire                popArea_target;
  wire                popArea_stream_fire;
  reg                 popArea_hit;
  wire                popArea_stream_m2sPipe_valid;
  wire                popArea_stream_m2sPipe_ready;
  wire       [7:0]    popArea_stream_m2sPipe_payload;
  reg                 popArea_stream_rValid;
  wire                popArea_stream_fire_1;
  reg        [7:0]    popArea_stream_rData;
  wire                when_Stream_l368;

  BufferCC outHitSignal_buffercc (
    .io_dataIn  (outHitSignal                    ), //i
    .io_dataOut (outHitSignal_buffercc_io_dataOut), //o
    .a_clk      (a_clk                           ), //i
    .a_reset    (a_reset                         )  //i
  );
  BufferCC_1 bufferCC_3 (
    .io_dataIn  (1'b0                 ), //i
    .io_dataOut (bufferCC_3_io_dataOut), //o
    .b_clk      (b_clk                ), //i
    .a_reset    (a_reset              )  //i
  );
  BufferCC_2 pushArea_target_buffercc (
    .io_dataIn           (pushArea_target                    ), //i
    .io_dataOut          (pushArea_target_buffercc_io_dataOut), //o
    .b_clk               (b_clk                              ), //i
    .a_reset_syncronized (a_reset_syncronized                )  //i
  );
  assign pushArea_hit = outHitSignal_buffercc_io_dataOut;
  assign io_input_fire = (io_input_valid && io_input_ready);
  assign pushArea_accept = io_input_fire;
  assign io_input_ready = (pushArea_hit == pushArea_target);
  assign a_reset_syncronized = bufferCC_3_io_dataOut;
  assign popArea_target = pushArea_target_buffercc_io_dataOut;
  assign popArea_stream_fire = (popArea_stream_valid && popArea_stream_ready);
  assign outHitSignal = popArea_hit;
  assign popArea_stream_valid = (popArea_target != popArea_hit);
  assign popArea_stream_payload = pushArea_data;
  assign popArea_stream_fire_1 = (popArea_stream_valid && popArea_stream_ready);
  always @(*) begin
    popArea_stream_ready = popArea_stream_m2sPipe_ready;
    if(when_Stream_l368) begin
      popArea_stream_ready = 1'b1;
    end
  end

  assign when_Stream_l368 = (! popArea_stream_m2sPipe_valid);
  assign popArea_stream_m2sPipe_valid = popArea_stream_rValid;
  assign popArea_stream_m2sPipe_payload = popArea_stream_rData;
  assign io_output_valid = popArea_stream_m2sPipe_valid;
  assign popArea_stream_m2sPipe_ready = io_output_ready;
  assign io_output_payload = popArea_stream_m2sPipe_payload;
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      pushArea_target <= 1'b0;
    end else begin
      if(pushArea_accept) begin
        pushArea_target <= (! pushArea_target);
      end
    end
  end

  always @(posedge a_clk) begin
    if(pushArea_accept) begin
      pushArea_data <= io_input_payload;
    end
  end

  always @(posedge b_clk or posedge a_reset_syncronized) begin
    if(a_reset_syncronized) begin
      popArea_hit <= 1'b0;
      popArea_stream_rValid <= 1'b0;
    end else begin
      if(popArea_stream_fire) begin
        popArea_hit <= popArea_target;
      end
      if(popArea_stream_ready) begin
        popArea_stream_rValid <= popArea_stream_valid;
      end
    end
  end

  always @(posedge b_clk) begin
    if(popArea_stream_fire_1) begin
      popArea_stream_rData <= popArea_stream_payload;
    end
  end


endmodule

module BufferCC_2 (
  input               io_dataIn,
  output              io_dataOut,
  input               b_clk,
  input               a_reset_syncronized
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge b_clk or posedge a_reset_syncronized) begin
    if(a_reset_syncronized) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1 (
  input               io_dataIn,
  output              io_dataOut,
  input               b_clk,
  input               a_reset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge b_clk or posedge a_reset) begin
    if(a_reset) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               a_clk,
  input               a_reset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
