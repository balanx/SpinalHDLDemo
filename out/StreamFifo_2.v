// Generator : SpinalHDL v1.7.2    git head : 08fc866bebdc40c471ebe327bface63e34406489
// Component : StreamFifo_2
// Git hash  : 23d564a3e9d4d768c2cb1641ec7dc2becc0d2602

`timescale 1ns/1ps

module StreamFifo_2 (
  input               din_valid,
  output              din_ready,
  input      [7:0]    din_payload,
  output              dout_valid,
  input               dout_ready,
  output     [7:0]    dout_payload,
  input               clk,
  input               reset
);

  wire                din_fifo_io_push_ready;
  wire                din_fifo_io_pop_valid;
  wire       [7:0]    din_fifo_io_pop_payload;
  wire       [4:0]    din_fifo_io_occupancy;

  StreamFifoLowLatency din_fifo (
    .io_push_valid   (din_valid                   ), //i
    .io_push_ready   (din_fifo_io_push_ready      ), //o
    .io_push_payload (din_payload[7:0]            ), //i
    .io_pop_valid    (din_fifo_io_pop_valid       ), //o
    .io_pop_ready    (dout_ready                  ), //i
    .io_pop_payload  (din_fifo_io_pop_payload[7:0]), //o
    .io_flush        (1'b0                        ), //i
    .io_occupancy    (din_fifo_io_occupancy[4:0]  ), //o
    .clk             (clk                         ), //i
    .reset           (reset                       )  //i
  );
  assign din_ready = din_fifo_io_push_ready;
  assign dout_valid = din_fifo_io_pop_valid;
  assign dout_payload = din_fifo_io_pop_payload;

endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg [7:0]    io_pop_payload,
  input               io_flush,
  output     [4:0]    io_occupancy,
  input               clk,
  input               reset
);

  wire       [7:0]    _zz_ram_port0;
  wire       [3:0]    _zz_pushPtr_valueNext;
  wire       [0:0]    _zz_pushPtr_valueNext_1;
  wire       [3:0]    _zz_popPtr_valueNext;
  wire       [0:0]    _zz_popPtr_valueNext_1;
  wire       [7:0]    _zz_ram_port;
  reg                 _zz_1;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  reg        [3:0]    pushPtr_valueNext;
  reg        [3:0]    pushPtr_value;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  reg        [3:0]    popPtr_valueNext;
  reg        [3:0]    popPtr_value;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire       [7:0]    readed;
  wire                when_Stream_l1178;
  wire                when_Stream_l1191;
  wire       [3:0]    ptrDif;
  (* ram_style = "distributed" *) reg [7:0] ram [0:15];

  assign _zz_pushPtr_valueNext_1 = pushPtr_willIncrement;
  assign _zz_pushPtr_valueNext = {3'd0, _zz_pushPtr_valueNext_1};
  assign _zz_popPtr_valueNext_1 = popPtr_willIncrement;
  assign _zz_popPtr_valueNext = {3'd0, _zz_popPtr_valueNext_1};
  assign _zz_ram_port = io_push_payload;
  assign _zz_ram_port0 = ram[popPtr_value];
  always @(posedge clk) begin
    if(_zz_1) begin
      ram[pushPtr_value] <= _zz_ram_port;
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(pushing) begin
      _zz_1 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = (pushPtr_value == 4'b1111);
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    pushPtr_valueNext = (pushPtr_value + _zz_pushPtr_valueNext);
    if(pushPtr_willClear) begin
      pushPtr_valueNext = 4'b0000;
    end
  end

  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = (popPtr_value == 4'b1111);
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  always @(*) begin
    popPtr_valueNext = (popPtr_value + _zz_popPtr_valueNext);
    if(popPtr_willClear) begin
      popPtr_valueNext = 4'b0000;
    end
  end

  assign ptrMatch = (pushPtr_value == popPtr_value);
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign readed = _zz_ram_port0;
  assign when_Stream_l1178 = (! empty);
  always @(*) begin
    if(when_Stream_l1178) begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  always @(*) begin
    if(when_Stream_l1178) begin
      io_pop_payload = readed;
    end else begin
      io_pop_payload = io_push_payload;
    end
  end

  assign when_Stream_l1191 = (pushing != popping);
  assign ptrDif = (pushPtr_value - popPtr_value);
  assign io_occupancy = {(risingOccupancy && ptrMatch),ptrDif};
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pushPtr_value <= 4'b0000;
      popPtr_value <= 4'b0000;
      risingOccupancy <= 1'b0;
    end else begin
      pushPtr_value <= pushPtr_valueNext;
      popPtr_value <= popPtr_valueNext;
      if(when_Stream_l1191) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
