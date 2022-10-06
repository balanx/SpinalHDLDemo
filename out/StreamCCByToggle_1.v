// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamCCByToggle_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamCCByToggle_1 (
);

  wire                streamCCByToggle_2_io_output_ready;
  wire                streamCCByToggle_2_io_input_ready;
  wire                streamCCByToggle_2_io_output_valid;
  wire       [7:0]    streamCCByToggle_2_io_output_payload;
  wire                clka;
  wire                rsta;
  wire                clkb;
  wire                rstb;
  wire                streamA_valid;
  wire                streamA_ready;
  wire       [7:0]    streamA_payload;

  StreamCCByToggle streamCCByToggle_2 (
    .io_input_valid    (streamA_valid                            ), //i
    .io_input_ready    (streamCCByToggle_2_io_input_ready        ), //o
    .io_input_payload  (streamA_payload[7:0]                     ), //i
    .io_output_valid   (streamCCByToggle_2_io_output_valid       ), //o
    .io_output_ready   (streamCCByToggle_2_io_output_ready       ), //i
    .io_output_payload (streamCCByToggle_2_io_output_payload[7:0]), //o
    .clka              (clka                                     ), //i
    .rsta              (rsta                                     ), //i
    .clkb              (clkb                                     )  //i
  );
  assign streamA_ready = streamCCByToggle_2_io_input_ready;

endmodule

module StreamCCByToggle (
  input               io_input_valid,
  output              io_input_ready,
  input      [7:0]    io_input_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  input               clka,
  input               rsta,
  input               clkb
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
  wire                toplevel_rsta_syncronized;
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
    .clka       (clka                            ), //i
    .rsta       (rsta                            )  //i
  );
  BufferCC_1 bufferCC_3 (
    .io_dataIn  (1'b0                 ), //i
    .io_dataOut (bufferCC_3_io_dataOut), //o
    .clkb       (clkb                 ), //i
    .rsta       (rsta                 )  //i
  );
  BufferCC_2 pushArea_target_buffercc (
    .io_dataIn                 (pushArea_target                    ), //i
    .io_dataOut                (pushArea_target_buffercc_io_dataOut), //o
    .clkb                      (clkb                               ), //i
    .toplevel_rsta_syncronized (toplevel_rsta_syncronized          )  //i
  );
  assign pushArea_hit = outHitSignal_buffercc_io_dataOut;
  assign io_input_fire = (io_input_valid && io_input_ready);
  assign pushArea_accept = io_input_fire;
  assign io_input_ready = (pushArea_hit == pushArea_target);
  assign toplevel_rsta_syncronized = bufferCC_3_io_dataOut;
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
  always @(posedge clka or posedge rsta) begin
    if(rsta) begin
      pushArea_target <= 1'b0;
    end else begin
      if(pushArea_accept) begin
        pushArea_target <= (! pushArea_target);
      end
    end
  end

  always @(posedge clka) begin
    if(pushArea_accept) begin
      pushArea_data <= io_input_payload;
    end
  end

  always @(posedge clkb or posedge toplevel_rsta_syncronized) begin
    if(toplevel_rsta_syncronized) begin
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

  always @(posedge clkb) begin
    if(popArea_stream_fire_1) begin
      popArea_stream_rData <= popArea_stream_payload;
    end
  end


endmodule

module BufferCC_2 (
  input               io_dataIn,
  output              io_dataOut,
  input               clkb,
  input               toplevel_rsta_syncronized
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkb or posedge toplevel_rsta_syncronized) begin
    if(toplevel_rsta_syncronized) begin
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
  input               clkb,
  input               rsta
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clkb or posedge rsta) begin
    if(rsta) begin
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
  input               clka,
  input               rsta
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clka or posedge rsta) begin
    if(rsta) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
