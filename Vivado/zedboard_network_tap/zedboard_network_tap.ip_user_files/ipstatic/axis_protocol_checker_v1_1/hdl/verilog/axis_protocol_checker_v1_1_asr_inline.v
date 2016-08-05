// (c) Copyright 2013 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//--------------------------------------------

//RESET_POLARITY_SYMBOL, set to ! (or blank) for active low (high)
`define AKRPS !

`timescale 1 ns / 1 ns

//Assertion circuit for vunit: inline
//vunit is bound to module: Axi4StreamPC
module axis_protocol_checker_v1_1_9_asr_inline (Axi4StreamPC_asr_inline_out, reset, ARESETn, TVALID, ACLK, ACLKEN, TREADY, TID, TDEST, TKEEP, TDATA, TLAST, TSTRB, TUSER);
  parameter DATA_WIDTH_BYTES = 3;
  parameter DEST_WIDTH = 4;
  parameter ID_WIDTH = 4;
  parameter USER_WIDTH = 3;
  parameter DATA_MAX = DATA_WIDTH_BYTES ? ( DATA_WIDTH_BYTES * 8 ) - 1 : 0;
  parameter DEST_MAX = DEST_WIDTH ? DEST_WIDTH - 1 : 0;
  parameter STRB_WIDTH = DATA_WIDTH_BYTES;
  parameter STRB_MAX = STRB_WIDTH ? STRB_WIDTH - 1 : 0;
  parameter KEEP_MAX = STRB_WIDTH ? STRB_WIDTH - 1 : 0;
  parameter ID_MAX = ID_WIDTH ? ID_WIDTH - 1 : 0;
  parameter TUSER_MAX = USER_WIDTH ? USER_WIDTH - 1 : 0;
  parameter MAXWAITS = 16;
  output [11:1] Axi4StreamPC_asr_inline_out;
  input reset, ARESETn, TVALID, ACLK, ACLKEN, TREADY, TLAST;
  input [ID_MAX:0] TID;
  input [DEST_MAX:0] TDEST;
  input [KEEP_MAX:0] TKEEP;
  input [DATA_MAX:0] TDATA;
  input [STRB_MAX:0] TSTRB;
  input [TUSER_MAX:0] TUSER;

  wire [2:0] s1s;
  reg [2:0] s1sq;
  reg [ID_MAX:0] s2;
  wire [2:0] s4s;
  reg [2:0] s4sq;
  reg [DEST_MAX:0] s5;
  wire [2:0] s7s;
  reg [2:0] s7sq;
  reg [KEEP_MAX:0] s8;
  wire [4:0] s10s;
  reg [4:0] s10sq;
  wire [4:0] s11s;
  reg [4:0] s11sq;
  wire [2:0] s14s;
  reg [2:0] s14sq;
  reg [STRB_MAX:0] s15;
  wire [4:0] s17s;
  reg [4:0] s17sq;
  wire [2:0] s18s;
  reg [2:0] s18sq;
  wire [4:0] s20s;
  reg [4:0] s20sq;
  
  reg [DATA_MAX:0]  s11sqa;
  wire  s11sqaa;
  reg [TUSER_MAX:0]  s20sqa;
  wire  s20sqaa;
  wire s3, s6, s9, s13, s16;
  reg ASR_1, ASR_2, ASR_3, ASR_4, ASR_5, s12, ASR_6, ASR_7, ASR_8, ASR_9, ASR_10, ASR_11;


  assign Axi4StreamPC_asr_inline_out={ASR_11, ASR_10, ASR_9, ASR_8, ASR_7, ASR_6, ASR_5, ASR_4, ASR_3, ASR_2, ASR_1};

  function integer f_clogb2 (input integer size);
    integer s;
    begin
      s = size;
      s = s - 1;
      for (f_clogb2=1; s>1; f_clogb2=f_clogb2+1)
            s = s >> 1;
    end
  endfunction // clogb2

localparam L_WAIT_WIDTH = f_clogb2(MAXWAITS+1);

  //---------------
  //ASR_1 : assert property ( @(posedge ACLK) ! ( ARESETn ) ##1 ARESETn |-> ! TVALID );
  //---------------
  always @(posedge ACLK) if (`AKRPS reset) s1sq<=3'h4; else
    s1sq<=s1s;
  assign s1s={1'b1,
    (!(ARESETn)),
    (s1sq[1] && (ARESETn && TVALID))};
  always @(posedge ACLK) if (`AKRPS reset) ASR_1<=0; else
    ASR_1 <= (s1s[0]);

  //---------------
  //ASR_2 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TID) );
  //---------------
  always @(posedge ACLK)
    s2<=TID;
  assign s3 = s2 == TID;
  always @(posedge ACLK) if (`AKRPS reset) s4sq<=3'h4; else
    s4sq<=s4s;
  assign s4s={1'b1,
    (((ARESETn & TVALID) & (! TREADY))),
    (s4sq[1] && (ARESETn && !(s3)))};
  always @(posedge ACLK) if (`AKRPS reset) ASR_2<=0; else
    ASR_2 <= (s4s[0]);

  //---------------
  //ASR_3 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TDEST) );
  //---------------
  always @(posedge ACLK)
    s5<=TDEST;
  assign s6 = s5 == TDEST;
  always @(posedge ACLK) if (`AKRPS reset) s7sq<=3'h4; else
    s7sq<=s7s;
  assign s7s={1'b1,
    (((ARESETn & TVALID) & (! TREADY))),
    (s7sq[1] && (ARESETn && !(s6)))};
  always @(posedge ACLK) if (`AKRPS reset) ASR_3<=0; else
    ASR_3 <= (s7s[0]);


  //---------------
  //ASR_4 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TKEEP) );
  //---------------
  //---------------
  //ASR_5 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TDATA & TdataMask) );
  //---------------
  //---------------
  //ASR_7 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TSTRB) );
  //---------------
  //---------------
  //ASR_10 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TUSER & TuserMask) );
  //---------------

localparam integer L_NUM_DATA_BYTES   = DATA_WIDTH_BYTES;
localparam integer L_NUM_DEQ_LANES    = (DATA_WIDTH_BYTES + 7) / 8;
localparam integer L_NUM_DAND1_LANES  = (L_NUM_DEQ_LANES + 7) / 8;
localparam integer L_NUM_DAND2_LANES  = (L_NUM_DAND1_LANES + 7) / 8;
localparam integer L_NUM_USER_BYTES   = ((USER_WIDTH + 7) / 8);
localparam integer L_NUM_UBYTE_LANES  = ((L_NUM_USER_BYTES + 7) / 8) * 8;
localparam integer L_NUM_UEQ_LANES    = (L_NUM_UBYTE_LANES / 8);
localparam integer L_NUM_UAND1_LANES  = (L_NUM_UEQ_LANES + 7) / 8;
localparam integer L_NUM_UAND2_LANES  = (L_NUM_UAND1_LANES + 7) / 8;

wire  [(L_NUM_USER_BYTES*8)-1:0]      tuser_expand;
wire  [(L_NUM_USER_BYTES*8)-1:0]      s20sqa_expand;
reg   [L_NUM_UBYTE_LANES-1:0]         user_eq;
reg   [(8*L_NUM_UAND1_LANES)-1:0]     tuser_stage_1_eq;
reg   [(8*L_NUM_UAND2_LANES)-1:0]     tuser_stage_2_eq;

reg [(8*L_NUM_DEQ_LANES)-1:0]   data_eq;
reg [(8*L_NUM_DEQ_LANES)-1:0]   strb_eq;
reg [(8*L_NUM_DEQ_LANES)-1:0]   keep_eq;
reg [(8*L_NUM_DAND1_LANES)-1:0] tdata_stage_1_eq;
reg [(8*L_NUM_DAND2_LANES)-1:0] tdata_stage_2_eq;
reg [(8*L_NUM_DAND1_LANES)-1:0] tstrb_stage_1_eq;
reg [(8*L_NUM_DAND2_LANES)-1:0] tstrb_stage_2_eq;
reg [(8*L_NUM_DAND1_LANES)-1:0] tkeep_stage_1_eq;
reg [(8*L_NUM_DAND2_LANES)-1:0] tkeep_stage_2_eq;

  always @(posedge ACLK) begin
    s11sqa<=TDATA;
    s8<=TKEEP;
    s15<=TSTRB;
    s20sqa<=TUSER;
  end

  always @(posedge ACLK) begin
    if (`AKRPS reset) begin
      s11sq<=5'h00; 
      s10sq<=5'h00;
      s17sq<=5'h00;
      s20sq<=5'h00;
    end else begin
      s11sq<=s11s;
      s10sq<=s10s;
      s17sq<=s17s;
      s20sq<=s20s;
    end
  end

  assign s11s={
    (((ARESETn & TVALID) & (! TREADY))),
    (s11sq[4] && ARESETn),
    (s11sq[3]),
    (s11sq[2]),
    (s11sq[1] & !(s11sqaa))
    };

  assign s10s={
    (((ARESETn & TVALID) & (! TREADY))),
    (s10sq[4] && ARESETn),
    (s10sq[3]),
    (s10sq[2]),
    (s10sq[1] & !(s9))
    };

  assign s17s={
    (((ARESETn & TVALID) & (! TREADY))),
    (s17sq[4] && (ARESETn)),
    (s17sq[3]),
    (s17sq[2]),
    (s17sq[1] & !(s16))
    };

  assign s20s={
    (((ARESETn & TVALID) & (! TREADY))),
    (s20sq[4] && (ARESETn)),
    (s20sq[3]),
    (s20sq[2]),
    (s20sq[1] & !(s20sqaa))
    };

  always @(posedge ACLK) begin
    if (`AKRPS reset) begin
      ASR_4<=0;
      ASR_5<=0; 
      ASR_7<=0;
      ASR_10<=0;
    end else begin
      ASR_4 <= (s10s[0]);
      ASR_5 <= (s11s[0]);
      ASR_7 <= (s17s[0]);
      ASR_10 <= (s20s[0]);
    end
  end

genvar byte_exp;
genvar byte_cnt;
integer bc;
genvar data_stage_1;
genvar data_stage_2;
genvar user_bit;

integer user_bc;
genvar user_stage_1;
genvar user_stage_2;
generate
  ///////////////////////////////////////////////////////////////////////////////////////////
  //Expand the TUSER up to the nearest byte
  for (user_bit = 0; user_bit < (L_NUM_USER_BYTES * 8); user_bit = user_bit + 1) begin : UBIT_LOOP
    if (user_bit < USER_WIDTH) begin : VAL
      assign tuser_expand[user_bit] = TUSER[user_bit];
      assign s20sqa_expand[user_bit] = s20sqa[user_bit];
    end else begin
      assign tuser_expand[user_bit] = 1'b0;
      assign s20sqa_expand[user_bit] = 1'b0;
    end
  end

  for (user_stage_1 = 0; user_stage_1 < L_NUM_UAND1_LANES * 8; user_stage_1 = user_stage_1 + 1) begin : US1
    always @(posedge ACLK) begin
      if (user_stage_1 < L_NUM_UEQ_LANES) begin : VAL
        tuser_stage_1_eq[user_stage_1] <= &user_eq[user_stage_1*8 +:8];
      end else begin
        tuser_stage_1_eq[user_stage_1] <= 1'b1;
      end
    end
  end

  for (user_stage_2 = 0; user_stage_2 < L_NUM_UAND2_LANES * 8; user_stage_2 = user_stage_2 + 1) begin : US2
    always @(posedge ACLK) begin
      if (user_stage_2 < L_NUM_UAND1_LANES) begin : VAL
        tuser_stage_2_eq[user_stage_2] <= &tuser_stage_1_eq[user_stage_2*8 +:8];
      end else begin
        tuser_stage_2_eq[user_stage_2] <= 1'b1;
      end
    end
  end

  for (data_stage_1 = 0; data_stage_1 < L_NUM_DAND1_LANES * 8;data_stage_1 = data_stage_1 + 1) begin : DS1
    always @(posedge ACLK) begin
      if (data_stage_1 < L_NUM_DEQ_LANES) begin : VAL
        tdata_stage_1_eq[data_stage_1] <= &data_eq[data_stage_1*8 +:8];
        tkeep_stage_1_eq[data_stage_1] <= &keep_eq[data_stage_1*8 +:8];
        tstrb_stage_1_eq[data_stage_1] <= &strb_eq[data_stage_1*8 +:8];
      end else begin
        tdata_stage_1_eq[data_stage_1] <= 1'b1;
        tkeep_stage_1_eq[data_stage_1] <= 1'b1;
        tstrb_stage_1_eq[data_stage_1] <= 1'b1;
      end
    end
  end
  for (data_stage_2 = 0; data_stage_2 < L_NUM_DAND2_LANES * 8;data_stage_2 = data_stage_2 + 1) begin : DS2
    always @(posedge ACLK) begin
      if (data_stage_2 < L_NUM_DAND1_LANES) begin : VAL
        tdata_stage_2_eq[data_stage_2] <= &tdata_stage_1_eq[data_stage_2*8 +:8];
        tkeep_stage_2_eq[data_stage_2] <= &tkeep_stage_1_eq[data_stage_2*8 +:8];
        tstrb_stage_2_eq[data_stage_2] <= &tstrb_stage_1_eq[data_stage_2*8 +:8];
      end else begin
        tdata_stage_2_eq[data_stage_2] <= 1'b1;
        tkeep_stage_2_eq[data_stage_2] <= 1'b1;
        tstrb_stage_2_eq[data_stage_2] <= 1'b1;
      end
    end
  end
endgenerate

always @(posedge ACLK) begin
  for (user_bc = 0; user_bc < L_NUM_UBYTE_LANES; user_bc = user_bc + 1) begin : UBC_LOOP
    if (user_bc < L_NUM_USER_BYTES) begin : VAL
      user_eq[user_bc] <= tuser_expand[(user_bc*8)+:8] == s20sqa_expand[(user_bc*8)+:8];
    end else begin
      user_eq[user_bc] <= 1'b1;
    end
  end
end

//Take the TDATA
always @(posedge ACLK) begin
  for (bc = 0; bc < L_NUM_DEQ_LANES*8; bc = bc + 1) begin : BC_LOOP
    if (bc < L_NUM_DATA_BYTES) begin : VAL
      data_eq[bc] <= s11sqa[bc*8 +:8] == TDATA[bc*8 +: 8];
      strb_eq[bc] <= s15[bc] == TSTRB[bc];
      keep_eq[bc] <= s8[bc] == TKEEP[bc];
    end else begin
      data_eq[bc] <= 1'b1;
      strb_eq[bc] <= 1'b1;
      keep_eq[bc] <= 1'b1;
    end
  end
end

assign s11sqaa = &tdata_stage_2_eq;
assign s9 = &tkeep_stage_2_eq;
assign s16 = &tstrb_stage_2_eq;
assign s20sqaa = &tuser_stage_2_eq;

  //---------------
  //ASR_6 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> $stable(TLAST) );
  //---------------
  always @(posedge ACLK)
    s12<=TLAST;
  assign s13 = s12 == TLAST;
  always @(posedge ACLK) if (`AKRPS reset) s14sq<=3'h4; else
    s14sq<=s14s;
  assign s14s={1'b1,
    (((ARESETn & TVALID) & (! TREADY))),
    (s14sq[1] && (ARESETn && !(s13)))};
  always @(posedge ACLK) if (`AKRPS reset) ASR_6<=0; else
    ASR_6 <= (s14s[0]);

  //---------------
  //ASR_8 : assert property ( @(posedge ACLK) ARESETn & TVALID & ! TREADY ##1 ARESETn |-> TVALID );
  //---------------
  always @(posedge ACLK) if (`AKRPS reset) s18sq<=3'h4; else
    s18sq<=s18s;
  assign s18s={1'b1,
    (((ARESETn & TVALID) & (! TREADY))),
    (s18sq[1] && (ARESETn && !(TVALID)))};
  always @(posedge ACLK) if (`AKRPS reset) ASR_8<=0; else
    ASR_8 <= (s18s[0]);

  //---------------
  //ASR_9 : assert property ( @(posedge ACLK) ARESETn & ( TVALID & ! TREADY ) |-> ##[1:16] ( ! TVALID | TREADY ) );
  //---------------

  reg [L_WAIT_WIDTH-1:0]  v_cnt;
  wire asr_9_set;

  generate
    if (MAXWAITS > 0) begin : gen_wait
      always @(posedge ACLK) begin
        if (`AKRPS reset) begin
          v_cnt <= {L_WAIT_WIDTH{1'b0}};
        end else if (ACLKEN == 1) begin
          //Valid, not ready, clken
          if (ARESETn & (TVALID & !TREADY)) begin
            v_cnt <= v_cnt + 1;
          end else begin
            v_cnt <= {L_WAIT_WIDTH{1'b0}};
          end
        end
      end

      assign asr_9_set = (v_cnt == MAXWAITS) & (ARESETn & (TVALID & !TREADY));
    end else begin : gen_no_wait
      assign asr_9_set = 1'b0;
    end
  endgenerate

  always @(posedge ACLK) if (`AKRPS reset) ASR_9<=0; else
    ASR_9 <= (asr_9_set);

  //---------------
  //ASR_11 : assert property ( @(posedge ACLK) ARESETn & TVALID |-> ~ ( | ( ~ TKEEP & TSTRB ) ) );
  //---------------
  always @(posedge ACLK) if (`AKRPS reset) ASR_11<=0; else
    ASR_11 <= (((ARESETn & TVALID) && (| ( ((~ TKEEP) & TSTRB) ))));

endmodule //axis_protocol_checker_v1_1_9_asr_inline
/*Instantiation code:
Axi4StreamPC_asr_inline #(DATA_WIDTH_BYTES, DEST_WIDTH, ID_WIDTH, USER_WIDTH, DATA_MAX, DEST_MAX, STRB_WIDTH, STRB_MAX, KEEP_MAX, ID_MAX, TUSER_MAX) i_Axi4StreamPC_asr_inline (Axi4StreamPC_asr_inline_out, reset, ACLKEN, ARESETn, TVALID, ACLK, TREADY, TID, TDEST, TKEEP, TDATA, TdataMask, TLAST, TSTRB, TUSER, TuserMask);
*/
//End of circuit(s) for vunit: inline


