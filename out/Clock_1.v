// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Clock_1
// Git hash  : 40a09e7801b4d01ff6c67f3e402af9d0310f44f7

`timescale 1ns/1ps

module Clock_1 (
  input               io_din,
  output              io_dout,
  input               a_clk,
  input               a_reset,
  input               b_clk,
  input               b_reset
);

  wire                areaA_bufA_buffercc_io_dataOut;
  reg                 areaA_bufA;
  wire                areaB_bufB;

  BufferCC areaA_bufA_buffercc (
    .io_dataIn  (areaA_bufA                    ), //i
    .io_dataOut (areaA_bufA_buffercc_io_dataOut), //o
    .b_clk      (b_clk                         ), //i
    .b_reset    (b_reset                       )  //i
  );
  assign areaB_bufB = areaA_bufA_buffercc_io_dataOut;
  assign io_dout = areaB_bufB;
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      areaA_bufA <= 1'b0;
    end else begin
      areaA_bufA <= io_din;
    end
  end


endmodule

module BufferCC (
  input               io_dataIn,
  output              io_dataOut,
  input               b_clk,
  input               b_reset
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge b_clk or posedge b_reset) begin
    if(b_reset) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
