// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : WeightRR_1
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module WeightRR_1 (
  input               reg_0,
  input               reg_1,
  input               reg_2,
  input               reg_3,
  output     [3:0]    grant,
  input               clk,
  input               reset
);

  reg        [2:0]    _zz__zz_ohPority_0;
  wire       [2:0]    _zz__zz_ohPority_0_1;
  wire       [2:0]    _zz__zz_ohPority_0_2;
  wire       [7:0]    _zz__zz_grant_2;
  wire       [7:0]    _zz__zz_grant_2_1;
  wire       [3:0]    _zz__zz_grant_2_2;
  reg        [0:0]    weightCnt_0;
  reg        [1:0]    weightCnt_1;
  reg        [2:0]    weightCnt_2;
  reg        [2:0]    weightCnt_3;
  wire                when_WeightRR_1_l35;
  wire                when_WeightRR_1_l35_1;
  wire                when_WeightRR_1_l35_2;
  wire                when_WeightRR_1_l35_3;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  reg                 maskLocked_3;
  wire       [3:0]    maskLockedToBits;
  wire                _zz_maskToUInt;
  wire                _zz_maskToUInt_1;
  wire                _zz_maskToUInt_2;
  wire       [1:0]    maskToUInt;
  wire                _zz_ohPority_0;
  wire                ohPority_0;
  wire                ohPority_1;
  wire                ohPority_2;
  wire                ohPority_3;
  wire       [3:0]    _zz_grant;
  wire       [7:0]    _zz_grant_1;
  wire       [7:0]    _zz_grant_2;
  wire       [3:0]    _zz_grant_3;
  wire                when_WeightRR_1_l51;

  assign _zz__zz_ohPority_0_1 = {2'd0, weightCnt_0};
  assign _zz__zz_ohPority_0_2 = {1'd0, weightCnt_1};
  assign _zz__zz_grant_2 = (_zz_grant_1 - _zz__zz_grant_2_1);
  assign _zz__zz_grant_2_2 = {ohPority_3,{ohPority_2,{ohPority_1,ohPority_0}}};
  assign _zz__zz_grant_2_1 = {4'd0, _zz__zz_grant_2_2};
  always @(*) begin
    case(maskToUInt)
      2'b00 : _zz__zz_ohPority_0 = _zz__zz_ohPority_0_1;
      2'b01 : _zz__zz_ohPority_0 = _zz__zz_ohPority_0_2;
      2'b10 : _zz__zz_ohPority_0 = weightCnt_2;
      default : _zz__zz_ohPority_0 = weightCnt_3;
    endcase
  end

  assign when_WeightRR_1_l35 = grant[0];
  assign when_WeightRR_1_l35_1 = grant[1];
  assign when_WeightRR_1_l35_2 = grant[2];
  assign when_WeightRR_1_l35_3 = grant[3];
  assign maskLockedToBits = {maskLocked_3,{maskLocked_2,{maskLocked_1,maskLocked_0}}};
  assign _zz_maskToUInt = maskLockedToBits[3];
  assign _zz_maskToUInt_1 = (maskLockedToBits[1] || _zz_maskToUInt);
  assign _zz_maskToUInt_2 = (maskLockedToBits[2] || _zz_maskToUInt);
  assign maskToUInt = {_zz_maskToUInt_2,_zz_maskToUInt_1};
  assign _zz_ohPority_0 = (_zz__zz_ohPority_0 == 3'b000);
  assign ohPority_0 = (_zz_ohPority_0 ? maskLocked_3 : maskLocked_0);
  assign ohPority_1 = (_zz_ohPority_0 ? maskLocked_0 : maskLocked_1);
  assign ohPority_2 = (_zz_ohPority_0 ? maskLocked_1 : maskLocked_2);
  assign ohPority_3 = (_zz_ohPority_0 ? maskLocked_2 : maskLocked_3);
  assign _zz_grant = {reg_3,{reg_2,{reg_1,reg_0}}};
  assign _zz_grant_1 = {_zz_grant,_zz_grant};
  assign _zz_grant_2 = (_zz_grant_1 & (~ _zz__zz_grant_2));
  assign _zz_grant_3 = (_zz_grant_2[7 : 4] | _zz_grant_2[3 : 0]);
  assign grant = {_zz_grant_3[3],{_zz_grant_3[2],{_zz_grant_3[1],_zz_grant_3[0]}}};
  assign when_WeightRR_1_l51 = (|grant);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      weightCnt_0 <= 1'b1;
      weightCnt_1 <= 2'b10;
      weightCnt_2 <= 3'b011;
      weightCnt_3 <= 3'b100;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b0;
      maskLocked_3 <= 1'b1;
    end else begin
      if(when_WeightRR_1_l35) begin
        weightCnt_0 <= (weightCnt_0 - 1'b1);
      end else begin
        weightCnt_0 <= 1'b1;
      end
      if(when_WeightRR_1_l35_1) begin
        weightCnt_1 <= (weightCnt_1 - 2'b01);
      end else begin
        weightCnt_1 <= 2'b10;
      end
      if(when_WeightRR_1_l35_2) begin
        weightCnt_2 <= (weightCnt_2 - 3'b001);
      end else begin
        weightCnt_2 <= 3'b011;
      end
      if(when_WeightRR_1_l35_3) begin
        weightCnt_3 <= (weightCnt_3 - 3'b001);
      end else begin
        weightCnt_3 <= 3'b100;
      end
      if(when_WeightRR_1_l51) begin
        maskLocked_0 <= grant[0];
        maskLocked_1 <= grant[1];
        maskLocked_2 <= grant[2];
        maskLocked_3 <= grant[3];
      end
    end
  end


endmodule
