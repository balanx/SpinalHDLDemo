// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamArbiter_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamArbiter_1 (
  input               clk,
  input               reset
);

  wire                streamArbiter_2_io_output_ready;
  wire                streamArbiter_2_io_inputs_0_ready;
  wire                streamArbiter_2_io_inputs_1_ready;
  wire                streamArbiter_2_io_inputs_2_ready;
  wire                streamArbiter_2_io_output_valid;
  wire       [7:0]    streamArbiter_2_io_output_payload;
  wire       [1:0]    streamArbiter_2_io_chosen;
  wire       [2:0]    streamArbiter_2_io_chosenOH;
  wire                streamA_valid;
  wire                streamA_ready;
  wire       [7:0]    streamA_payload;
  wire                streamB_valid;
  wire                streamB_ready;
  wire       [7:0]    streamB_payload;
  wire                streamC_valid;
  wire                streamC_ready;
  wire       [7:0]    streamC_payload;

  StreamArbiter streamArbiter_2 (
    .io_inputs_0_valid   (streamA_valid                         ), //i
    .io_inputs_0_ready   (streamArbiter_2_io_inputs_0_ready     ), //o
    .io_inputs_0_payload (streamA_payload[7:0]                  ), //i
    .io_inputs_1_valid   (streamB_valid                         ), //i
    .io_inputs_1_ready   (streamArbiter_2_io_inputs_1_ready     ), //o
    .io_inputs_1_payload (streamB_payload[7:0]                  ), //i
    .io_inputs_2_valid   (streamC_valid                         ), //i
    .io_inputs_2_ready   (streamArbiter_2_io_inputs_2_ready     ), //o
    .io_inputs_2_payload (streamC_payload[7:0]                  ), //i
    .io_output_valid     (streamArbiter_2_io_output_valid       ), //o
    .io_output_ready     (streamArbiter_2_io_output_ready       ), //i
    .io_output_payload   (streamArbiter_2_io_output_payload[7:0]), //o
    .io_chosen           (streamArbiter_2_io_chosen[1:0]        ), //o
    .io_chosenOH         (streamArbiter_2_io_chosenOH[2:0]      ), //o
    .clk                 (clk                                   ), //i
    .reset               (reset                                 )  //i
  );
  assign streamA_ready = streamArbiter_2_io_inputs_0_ready;
  assign streamB_ready = streamArbiter_2_io_inputs_1_ready;
  assign streamC_ready = streamArbiter_2_io_inputs_2_ready;

endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [7:0]    io_inputs_0_payload,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [7:0]    io_inputs_1_payload,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [7:0]    io_inputs_2_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);

  wire       [5:0]    _zz__zz_maskProposal_0_2;
  wire       [5:0]    _zz__zz_maskProposal_0_2_1;
  wire       [2:0]    _zz__zz_maskProposal_0_2_2;
  reg        [7:0]    _zz_io_output_payload;
  wire       [1:0]    _zz_io_output_payload_1;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_maskProposal_0;
  wire       [5:0]    _zz_maskProposal_0_1;
  wire       [5:0]    _zz_maskProposal_0_2;
  wire       [2:0]    _zz_maskProposal_0_3;
  wire                io_output_fire;
  wire                _zz_io_chosen;
  wire                _zz_io_chosen_1;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = {maskLocked_1,{maskLocked_0,maskLocked_2}};
  assign _zz__zz_maskProposal_0_2_1 = {3'd0, _zz__zz_maskProposal_0_2_2};
  assign _zz_io_output_payload_1 = {maskRouted_2,maskRouted_1};
  always @(*) begin
    case(_zz_io_output_payload_1)
      2'b00 : _zz_io_output_payload = io_inputs_0_payload;
      2'b01 : _zz_io_output_payload = io_inputs_1_payload;
      default : _zz_io_output_payload = io_inputs_2_payload;
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_maskProposal_0 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[5 : 3] | _zz_maskProposal_0_2[2 : 0]);
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign maskProposal_1 = _zz_maskProposal_0_3[1];
  assign maskProposal_2 = _zz_maskProposal_0_3[2];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign io_output_payload = _zz_io_output_payload;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_io_chosen = io_chosenOH[1];
  assign _zz_io_chosen_1 = io_chosenOH[2];
  assign io_chosen = {_zz_io_chosen_1,_zz_io_chosen};
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule
