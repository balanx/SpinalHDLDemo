// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamJoin_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamJoin_1 (
);

  wire                streamA_valid;
  wire                streamA_ready;
  wire       [7:0]    streamA_payload;
  wire                streamB_valid;
  wire                streamB_ready;
  wire       [7:0]    streamB_payload;
  wire                streamC_valid;
  wire                streamC_ready;
  wire       [7:0]    streamC_payload;
  wire                _zz_streamA_ready;
  wire                _zz_streamA_ready_1;

  assign _zz_streamA_ready_1 = (_zz_streamA_ready && streamC_ready);
  assign _zz_streamA_ready = (streamA_valid && streamB_valid);
  assign streamA_ready = _zz_streamA_ready_1;
  assign streamB_ready = _zz_streamA_ready_1;
  assign streamC_valid = _zz_streamA_ready;

endmodule
