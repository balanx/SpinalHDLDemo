// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamFork_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamFork_1 (
  input               clk,
  input               reset
);

  wire                inputStream_valid;
  reg                 inputStream_ready;
  wire       [7:0]    inputStream_payload;
  wire                outputstream1_valid;
  wire                outputstream1_ready;
  wire       [7:0]    outputstream1_payload;
  wire                outputstream2_valid;
  wire                outputstream2_ready;
  wire       [7:0]    outputstream2_payload;
  reg                 _zz_outputstream1_valid;
  reg                 _zz_outputstream2_valid;
  wire                when_Stream_l948;
  wire                when_Stream_l948_1;
  wire                outputstream1_fire;
  wire                outputstream2_fire;

  always @(*) begin
    inputStream_ready = 1'b1;
    if(when_Stream_l948) begin
      inputStream_ready = 1'b0;
    end
    if(when_Stream_l948_1) begin
      inputStream_ready = 1'b0;
    end
  end

  assign when_Stream_l948 = ((! outputstream1_ready) && _zz_outputstream1_valid);
  assign when_Stream_l948_1 = ((! outputstream2_ready) && _zz_outputstream2_valid);
  assign outputstream1_valid = (inputStream_valid && _zz_outputstream1_valid);
  assign outputstream1_payload = inputStream_payload;
  assign outputstream1_fire = (outputstream1_valid && outputstream1_ready);
  assign outputstream2_valid = (inputStream_valid && _zz_outputstream2_valid);
  assign outputstream2_payload = inputStream_payload;
  assign outputstream2_fire = (outputstream2_valid && outputstream2_ready);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_outputstream1_valid <= 1'b1;
      _zz_outputstream2_valid <= 1'b1;
    end else begin
      if(outputstream1_fire) begin
        _zz_outputstream1_valid <= 1'b0;
      end
      if(outputstream2_fire) begin
        _zz_outputstream2_valid <= 1'b0;
      end
      if(inputStream_ready) begin
        _zz_outputstream1_valid <= 1'b1;
        _zz_outputstream2_valid <= 1'b1;
      end
    end
  end


endmodule
