// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamFork_2
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamFork_2 (
);

  wire                inputStream_fork_io_outputs_0_ready;
  wire                inputStream_fork_io_outputs_1_ready;
  wire                inputStream_fork_io_input_ready;
  wire                inputStream_fork_io_outputs_0_valid;
  wire       [7:0]    inputStream_fork_io_outputs_0_payload;
  wire                inputStream_fork_io_outputs_1_valid;
  wire       [7:0]    inputStream_fork_io_outputs_1_payload;
  wire                inputStream_valid;
  wire                inputStream_ready;
  wire       [7:0]    inputStream_payload;

  StreamFork inputStream_fork (
    .io_input_valid       (inputStream_valid                         ), //i
    .io_input_ready       (inputStream_fork_io_input_ready           ), //o
    .io_input_payload     (inputStream_payload[7:0]                  ), //i
    .io_outputs_0_valid   (inputStream_fork_io_outputs_0_valid       ), //o
    .io_outputs_0_ready   (inputStream_fork_io_outputs_0_ready       ), //i
    .io_outputs_0_payload (inputStream_fork_io_outputs_0_payload[7:0]), //o
    .io_outputs_1_valid   (inputStream_fork_io_outputs_1_valid       ), //o
    .io_outputs_1_ready   (inputStream_fork_io_outputs_1_ready       ), //i
    .io_outputs_1_payload (inputStream_fork_io_outputs_1_payload[7:0])  //o
  );
  assign inputStream_ready = inputStream_fork_io_input_ready;

endmodule

module StreamFork (
  input               io_input_valid,
  output              io_input_ready,
  input      [7:0]    io_input_payload,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [7:0]    io_outputs_0_payload,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [7:0]    io_outputs_1_payload
);


  assign io_input_ready = (io_outputs_0_ready && io_outputs_1_ready);
  assign io_outputs_0_valid = (io_input_valid && io_input_ready);
  assign io_outputs_1_valid = (io_input_valid && io_input_ready);
  assign io_outputs_0_payload = io_input_payload;
  assign io_outputs_1_payload = io_input_payload;

endmodule
