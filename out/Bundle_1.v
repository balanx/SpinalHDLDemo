// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : Bundle_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module Bundle_1 (
  input               inPort_aw_valid,
  output              inPort_aw_ready,
  input      [31:0]   inPort_aw_payload_addr,
  input      [2:0]    inPort_aw_payload_prot,
  input               inPort_w_valid,
  output              inPort_w_ready,
  input      [31:0]   inPort_w_payload_data,
  input      [3:0]    inPort_w_payload_strb,
  output              inPort_b_valid,
  input               inPort_b_ready,
  output     [1:0]    inPort_b_payload_resp,
  input               inPort_ar_valid,
  output              inPort_ar_ready,
  input      [31:0]   inPort_ar_payload_addr,
  input      [2:0]    inPort_ar_payload_prot,
  output              inPort_r_valid,
  input               inPort_r_ready,
  output     [31:0]   inPort_r_payload_data,
  output     [1:0]    inPort_r_payload_resp,
  output              output_aw_valid,
  input               output_aw_ready,
  output     [31:0]   output_aw_payload_addr,
  output     [2:0]    output_aw_payload_prot,
  output              output_w_valid,
  input               output_w_ready,
  output     [31:0]   output_w_payload_data,
  output     [3:0]    output_w_payload_strb,
  input               output_b_valid,
  output              output_b_ready,
  input      [1:0]    output_b_payload_resp,
  output              output_ar_valid,
  input               output_ar_ready,
  output     [31:0]   output_ar_payload_addr,
  output     [2:0]    output_ar_payload_prot,
  input               output_r_valid,
  output              output_r_ready,
  input      [31:0]   output_r_payload_data,
  input      [1:0]    output_r_payload_resp,
  output     [4:0]    state
);

  wire       [4:0]    aliteMon_state;

  AxiLite4Mon aliteMon (
    .alite_aw_valid        (inPort_aw_valid             ), //i
    .alite_aw_ready        (inPort_aw_ready             ), //i
    .alite_aw_payload_addr (inPort_aw_payload_addr[31:0]), //i
    .alite_aw_payload_prot (inPort_aw_payload_prot[2:0] ), //i
    .alite_w_valid         (inPort_w_valid              ), //i
    .alite_w_ready         (inPort_w_ready              ), //i
    .alite_w_payload_data  (inPort_w_payload_data[31:0] ), //i
    .alite_w_payload_strb  (inPort_w_payload_strb[3:0]  ), //i
    .alite_b_valid         (inPort_b_valid              ), //i
    .alite_b_ready         (inPort_b_ready              ), //i
    .alite_b_payload_resp  (inPort_b_payload_resp[1:0]  ), //i
    .alite_ar_valid        (inPort_ar_valid             ), //i
    .alite_ar_ready        (inPort_ar_ready             ), //i
    .alite_ar_payload_addr (inPort_ar_payload_addr[31:0]), //i
    .alite_ar_payload_prot (inPort_ar_payload_prot[2:0] ), //i
    .alite_r_valid         (inPort_r_valid              ), //i
    .alite_r_ready         (inPort_r_ready              ), //i
    .alite_r_payload_data  (inPort_r_payload_data[31:0] ), //i
    .alite_r_payload_resp  (inPort_r_payload_resp[1:0]  ), //i
    .state                 (aliteMon_state[4:0]         )  //o
  );
  assign output_aw_valid = inPort_aw_valid;
  assign inPort_aw_ready = output_aw_ready;
  assign output_aw_payload_addr = inPort_aw_payload_addr;
  assign output_aw_payload_prot = inPort_aw_payload_prot;
  assign output_w_valid = inPort_w_valid;
  assign inPort_w_ready = output_w_ready;
  assign output_w_payload_data = inPort_w_payload_data;
  assign output_w_payload_strb = inPort_w_payload_strb;
  assign inPort_b_valid = output_b_valid;
  assign output_b_ready = inPort_b_ready;
  assign inPort_b_payload_resp = output_b_payload_resp;
  assign output_ar_valid = inPort_ar_valid;
  assign inPort_ar_ready = output_ar_ready;
  assign output_ar_payload_addr = inPort_ar_payload_addr;
  assign output_ar_payload_prot = inPort_ar_payload_prot;
  assign inPort_r_valid = output_r_valid;
  assign output_r_ready = inPort_r_ready;
  assign inPort_r_payload_data = output_r_payload_data;
  assign inPort_r_payload_resp = output_r_payload_resp;
  assign state = aliteMon_state;

endmodule

module AxiLite4Mon (
  input               alite_aw_valid,
  input               alite_aw_ready,
  input      [31:0]   alite_aw_payload_addr,
  input      [2:0]    alite_aw_payload_prot,
  input               alite_w_valid,
  input               alite_w_ready,
  input      [31:0]   alite_w_payload_data,
  input      [3:0]    alite_w_payload_strb,
  input               alite_b_valid,
  input               alite_b_ready,
  input      [1:0]    alite_b_payload_resp,
  input               alite_ar_valid,
  input               alite_ar_ready,
  input      [31:0]   alite_ar_payload_addr,
  input      [2:0]    alite_ar_payload_prot,
  input               alite_r_valid,
  input               alite_r_ready,
  input      [31:0]   alite_r_payload_data,
  input      [1:0]    alite_r_payload_resp,
  output     [4:0]    state
);

  wire                alite_aw_fire;
  wire                alite_w_fire;
  wire                alite_b_fire;
  wire                alite_ar_fire;
  wire                alite_r_fire;

  assign alite_aw_fire = (alite_aw_valid && alite_aw_ready);
  assign alite_w_fire = (alite_w_valid && alite_w_ready);
  assign alite_b_fire = (alite_b_valid && alite_b_ready);
  assign alite_ar_fire = (alite_ar_valid && alite_ar_ready);
  assign alite_r_fire = (alite_r_valid && alite_r_ready);
  assign state = {{{{alite_aw_fire,alite_w_fire},alite_b_fire},alite_ar_fire},alite_r_fire};

endmodule
