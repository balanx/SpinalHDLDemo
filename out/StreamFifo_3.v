// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamFifo_3
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamFifo_3 (
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

  wire                myFifo_io_push_ready;
  wire                myFifo_io_pop_valid;
  wire       [7:0]    myFifo_io_pop_payload;
  wire       [7:0]    myFifo_io_pushOccupancy;
  wire       [7:0]    myFifo_io_popOccupancy;

  StreamFifoCC myFifo (
    .io_push_valid    (io_din_valid                ), //i
    .io_push_ready    (myFifo_io_push_ready        ), //o
    .io_push_payload  (io_din_payload[7:0]         ), //i
    .io_pop_valid     (myFifo_io_pop_valid         ), //o
    .io_pop_ready     (io_dout_ready               ), //i
    .io_pop_payload   (myFifo_io_pop_payload[7:0]  ), //o
    .io_pushOccupancy (myFifo_io_pushOccupancy[7:0]), //o
    .io_popOccupancy  (myFifo_io_popOccupancy[7:0] ), //o
    .a_clk            (a_clk                       ), //i
    .a_reset          (a_reset                     ), //i
    .b_clk            (b_clk                       )  //i
  );
  assign io_din_ready = myFifo_io_push_ready;
  assign io_dout_valid = myFifo_io_pop_valid;
  assign io_dout_payload = myFifo_io_pop_payload;

endmodule

module StreamFifoCC (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload,
  output     [7:0]    io_pushOccupancy,
  output     [7:0]    io_popOccupancy,
  input               a_clk,
  input               a_reset,
  input               b_clk
);

  reg        [7:0]    _zz_ram_port1;
  wire       [7:0]    popToPushGray_buffercc_io_dataOut;
  wire                bufferCC_3_io_dataOut;
  wire       [7:0]    pushToPopGray_buffercc_io_dataOut;
  wire       [7:0]    _zz_pushCC_pushPtrGray;
  wire       [6:0]    _zz_ram_port;
  wire       [7:0]    _zz_ram_port_1;
  wire       [7:0]    _zz_popCC_popPtrGray;
  wire       [6:0]    _zz_ram_port_2;
  wire                _zz_ram_port_3;
  wire       [6:0]    _zz_io_pop_payload_1;
  wire                _zz_io_pop_payload_2;
  reg                 _zz_1;
  wire       [7:0]    popToPushGray;
  wire       [7:0]    pushToPopGray;
  reg        [7:0]    pushCC_pushPtr;
  wire       [7:0]    pushCC_pushPtrPlus;
  wire                io_push_fire;
  reg        [7:0]    pushCC_pushPtrGray;
  wire       [7:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                io_push_fire_1;
  wire                _zz_io_pushOccupancy;
  wire                _zz_io_pushOccupancy_1;
  wire                _zz_io_pushOccupancy_2;
  wire                _zz_io_pushOccupancy_3;
  wire                _zz_io_pushOccupancy_4;
  wire                _zz_io_pushOccupancy_5;
  wire                _zz_io_pushOccupancy_6;
  wire                a_reset_syncronized;
  reg        [7:0]    popCC_popPtr;
  wire       [7:0]    popCC_popPtrPlus;
  wire                io_pop_fire;
  reg        [7:0]    popCC_popPtrGray;
  wire       [7:0]    popCC_pushPtrGray;
  wire                popCC_empty;
  wire                io_pop_fire_1;
  wire       [7:0]    _zz_io_pop_payload;
  wire                io_pop_fire_2;
  wire                _zz_io_popOccupancy;
  wire                _zz_io_popOccupancy_1;
  wire                _zz_io_popOccupancy_2;
  wire                _zz_io_popOccupancy_3;
  wire                _zz_io_popOccupancy_4;
  wire                _zz_io_popOccupancy_5;
  wire                _zz_io_popOccupancy_6;
  reg [7:0] ram [0:127];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[6:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtrPlus >>> 1'b1);
  assign _zz_io_pop_payload_1 = _zz_io_pop_payload[6:0];
  assign _zz_ram_port_1 = io_push_payload;
  assign _zz_io_pop_payload_2 = 1'b1;
  always @(posedge a_clk) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= _zz_ram_port_1;
    end
  end

  always @(posedge b_clk) begin
    if(_zz_io_pop_payload_2) begin
      _zz_ram_port1 <= ram[_zz_io_pop_payload_1];
    end
  end

  BufferCC popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[7:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[7:0]), //o
    .a_clk      (a_clk                                 ), //i
    .a_reset    (a_reset                               )  //i
  );
  BufferCC_1 bufferCC_3 (
    .io_dataIn  (1'b0                 ), //i
    .io_dataOut (bufferCC_3_io_dataOut), //o
    .b_clk      (b_clk                ), //i
    .a_reset    (a_reset              )  //i
  );
  BufferCC_2 pushToPopGray_buffercc (
    .io_dataIn           (pushToPopGray[7:0]                    ), //i
    .io_dataOut          (pushToPopGray_buffercc_io_dataOut[7:0]), //o
    .b_clk               (b_clk                                 ), //i
    .a_reset_syncronized (a_reset_syncronized                   )  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire_1) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 8'h01);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[7 : 6] == (~ pushCC_popPtrGray[7 : 6])) && (pushCC_pushPtrGray[5 : 0] == pushCC_popPtrGray[5 : 0]));
  assign io_push_ready = (! pushCC_full);
  assign io_push_fire_1 = (io_push_valid && io_push_ready);
  assign _zz_io_pushOccupancy = (pushCC_popPtrGray[1] ^ _zz_io_pushOccupancy_1);
  assign _zz_io_pushOccupancy_1 = (pushCC_popPtrGray[2] ^ _zz_io_pushOccupancy_2);
  assign _zz_io_pushOccupancy_2 = (pushCC_popPtrGray[3] ^ _zz_io_pushOccupancy_3);
  assign _zz_io_pushOccupancy_3 = (pushCC_popPtrGray[4] ^ _zz_io_pushOccupancy_4);
  assign _zz_io_pushOccupancy_4 = (pushCC_popPtrGray[5] ^ _zz_io_pushOccupancy_5);
  assign _zz_io_pushOccupancy_5 = (pushCC_popPtrGray[6] ^ _zz_io_pushOccupancy_6);
  assign _zz_io_pushOccupancy_6 = pushCC_popPtrGray[7];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy_6,{_zz_io_pushOccupancy_5,{_zz_io_pushOccupancy_4,{_zz_io_pushOccupancy_3,{_zz_io_pushOccupancy_2,{_zz_io_pushOccupancy_1,{_zz_io_pushOccupancy,(pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy)}}}}}}});
  assign a_reset_syncronized = bufferCC_3_io_dataOut;
  assign popCC_popPtrPlus = (popCC_popPtr + 8'h01);
  assign io_pop_fire = (io_pop_valid && io_pop_ready);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign io_pop_valid = (! popCC_empty);
  assign io_pop_fire_1 = (io_pop_valid && io_pop_ready);
  assign _zz_io_pop_payload = (io_pop_fire_1 ? popCC_popPtrPlus : popCC_popPtr);
  assign io_pop_payload = _zz_ram_port1;
  assign io_pop_fire_2 = (io_pop_valid && io_pop_ready);
  assign _zz_io_popOccupancy = (popCC_pushPtrGray[1] ^ _zz_io_popOccupancy_1);
  assign _zz_io_popOccupancy_1 = (popCC_pushPtrGray[2] ^ _zz_io_popOccupancy_2);
  assign _zz_io_popOccupancy_2 = (popCC_pushPtrGray[3] ^ _zz_io_popOccupancy_3);
  assign _zz_io_popOccupancy_3 = (popCC_pushPtrGray[4] ^ _zz_io_popOccupancy_4);
  assign _zz_io_popOccupancy_4 = (popCC_pushPtrGray[5] ^ _zz_io_popOccupancy_5);
  assign _zz_io_popOccupancy_5 = (popCC_pushPtrGray[6] ^ _zz_io_popOccupancy_6);
  assign _zz_io_popOccupancy_6 = popCC_pushPtrGray[7];
  assign io_popOccupancy = ({_zz_io_popOccupancy_6,{_zz_io_popOccupancy_5,{_zz_io_popOccupancy_4,{_zz_io_popOccupancy_3,{_zz_io_popOccupancy_2,{_zz_io_popOccupancy_1,{_zz_io_popOccupancy,(popCC_pushPtrGray[0] ^ _zz_io_popOccupancy)}}}}}}} - popCC_popPtr);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_popPtrGray;
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      pushCC_pushPtr <= 8'h0;
      pushCC_pushPtrGray <= 8'h0;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire_1) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge b_clk or posedge a_reset_syncronized) begin
    if(a_reset_syncronized) begin
      popCC_popPtr <= 8'h0;
      popCC_popPtrGray <= 8'h0;
    end else begin
      if(io_pop_fire) begin
        popCC_popPtrGray <= (_zz_popCC_popPtrGray ^ popCC_popPtrPlus);
      end
      if(io_pop_fire_2) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
    end
  end


endmodule

module BufferCC_2 (
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               b_clk,
  input               a_reset_syncronized
);

  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge b_clk or posedge a_reset_syncronized) begin
    if(a_reset_syncronized) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
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
  input      [7:0]    io_dataIn,
  output     [7:0]    io_dataOut,
  input               a_clk,
  input               a_reset
);

  (* async_reg = "true" *) reg        [7:0]    buffers_0;
  (* async_reg = "true" *) reg        [7:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge a_clk or posedge a_reset) begin
    if(a_reset) begin
      buffers_0 <= 8'h0;
      buffers_1 <= 8'h0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
