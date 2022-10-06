// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Clock_3
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Clock_3 (
  input               io_din,
  output              io_dout,
  input               a_clk,
  input               a_reset,
  input               b_clk
);

  wire                pulseCCByToggle_1_io_pulseOut;

  PulseCCByToggle pulseCCByToggle_1 (
    .io_pulseIn  (io_din                       ), //i
    .io_pulseOut (pulseCCByToggle_1_io_pulseOut), //o
    .a_clk       (a_clk                        ), //i
    .a_reset     (a_reset                      ), //i
    .b_clk       (b_clk                        )  //i
  );
  assign io_dout = pulseCCByToggle_1_io_pulseOut;

endmodule

module PulseCCByToggle (
  input               io_pulseIn,
  output              io_pulseOut,
  input               a_clk,
  input               a_reset,
  input               b_clk
);

  wire                bufferCC_2_io_dataOut;
  wire                inArea_target_buffercc_io_dataOut;
  reg                 inArea_target;
  wire                a_reset_syncronized;
  wire                outArea_target;
  reg                 outArea_target_regNext;

  BufferCC bufferCC_2 (
    .io_dataIn  (1'b0                 ), //i
    .io_dataOut (bufferCC_2_io_dataOut), //o
    .b_clk      (b_clk                ), //i
    .a_reset    (a_reset              )  //i
  );
  BufferCC_1 inArea_target_buffercc (
    .io_dataIn           (inArea_target                    ), //i
    .io_dataOut          (inArea_target_buffercc_io_dataOut), //o
    .b_clk               (b_clk                            ), //i
    .a_reset_syncronized (a_reset_syncronized              )  //i
  );
  assign a_reset_syncronized = bufferCC_2_io_dataOut;
  assign outArea_target = inArea_target_buffercc_io_dataOut;
  assign io_pulseOut = (outArea_target ^ outArea_target_regNext);
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      inArea_target <= 1'b0;
    end else begin
      if(io_pulseIn) begin
        inArea_target <= (! inArea_target);
      end
    end
  end

  always @(posedge b_clk or posedge a_reset_syncronized) begin
    if(a_reset_syncronized) begin
      outArea_target_regNext <= 1'b0;
    end else begin
      outArea_target_regNext <= outArea_target;
    end
  end


endmodule

module BufferCC_1 (
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

module BufferCC (
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
