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
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_protocol_checker_v1_1_9_top #(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_AXIS_TDATA_WIDTH = 32,
  parameter integer C_AXIS_TID_WIDTH   = 1,
  parameter integer C_AXIS_TDEST_WIDTH = 1,
  parameter integer C_AXIS_TUSER_WIDTH = 1,
  parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF,
  // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
  //   [0] => TREADY present
  //   [1] => TDATA present
  //   [2] => TSTRB present, TDATA must be present
  //   [3] => TKEEP present, TDATA must be present
  //   [4] => TLAST present
  //   [5] => TID present
  //   [6] => TDEST present
  //   [7] => TUSER present
  parameter integer C_PC_MAXWAITS                  = 0,
  parameter integer C_PC_MESSAGE_LEVEL             = 2,
  parameter integer C_PC_HAS_SYSTEM_RESET          = 0,
  parameter integer C_PC_STATUS_WIDTH              = 11
) (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire                             aclk,
   input wire                             aresetn,
   input wire                             system_resetn,
   input wire                             aclken,

   // Slave side
   input  wire                            pc_axis_tvalid,
   input  wire                            pc_axis_tready,
   input  wire [C_AXIS_TDATA_WIDTH-1:0]   pc_axis_tdata,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0] pc_axis_tstrb,
   input  wire [C_AXIS_TDATA_WIDTH/8-1:0] pc_axis_tkeep,
   input  wire                            pc_axis_tlast,
   input  wire [C_AXIS_TID_WIDTH-1:0]     pc_axis_tid,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]   pc_axis_tdest,
   input  wire [C_AXIS_TUSER_WIDTH-1:0]   pc_axis_tuser,
   output wire                            pc_asserted,
   output wire [C_PC_STATUS_WIDTH-1:0]    pc_status
);

localparam LP_AXIS_USER_BITS_PER_BYTE  = 0;

wire                                                                      TREADY_internal;
wire [(C_AXIS_TDATA_WIDTH   - 1) : 0]                                     TDATA_internal;
wire [((C_AXIS_TDATA_WIDTH/8)-1) : 0]                                     TSTRB_internal;
wire [((C_AXIS_TDATA_WIDTH/8)-1) : 0]                                     TKEEP_internal;
wire                                                                      TLAST_internal;
wire [((C_AXIS_SIGNAL_SET[5] == 0 ) ? 0 : C_AXIS_TID_WIDTH     - 1) : 0]  TID_internal;
wire [((C_AXIS_SIGNAL_SET[6] == 0 ) ? 0 : C_AXIS_TDEST_WIDTH   - 1) : 0]  TDEST_internal;
wire [((C_AXIS_SIGNAL_SET[7] == 0 ) ? 0 : C_AXIS_TUSER_WIDTH   - 1) : 0]  TUSER_internal;

reg                                                                       ARESETn_q;
reg                                                                       ACLKEN_q;
reg                                                                       TVALID_q;
reg                                                                       TREADY_q;
reg  [(C_AXIS_TDATA_WIDTH   - 1) : 0]                                     TDATA_q;
reg  [((C_AXIS_TDATA_WIDTH/8)-1) : 0]                                     TSTRB_q;
reg  [((C_AXIS_TDATA_WIDTH/8)-1) : 0]                                     TKEEP_q;
reg                                                                       TLAST_q;
reg  [((C_AXIS_SIGNAL_SET[5] == 0 ) ? 0 : C_AXIS_TID_WIDTH     - 1) : 0]  TID_q;
reg  [((C_AXIS_SIGNAL_SET[6] == 0 ) ? 0 : C_AXIS_TDEST_WIDTH   - 1) : 0]  TDEST_q;
reg  [((C_AXIS_SIGNAL_SET[7] == 0 ) ? 0 : C_AXIS_TUSER_WIDTH   - 1) : 0]  TUSER_q;


assign TREADY_internal  = (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : pc_axis_tready;
assign TDATA_internal   = (C_AXIS_SIGNAL_SET[1] == 0) ? {C_AXIS_TDATA_WIDTH{1'b0}} : pc_axis_tdata;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//When there isn't a STRB but there is KEEP then STRB must track KEEP
assign TSTRB_internal   = (C_AXIS_SIGNAL_SET[2] == 0) ? TKEEP_internal : pc_axis_tstrb;
assign TKEEP_internal   = (C_AXIS_SIGNAL_SET[3] == 0) ? {(C_AXIS_TDATA_WIDTH/8){1'b1}} : pc_axis_tkeep;
assign TLAST_internal   = (C_AXIS_SIGNAL_SET[4] == 0) ? 1'b1 : pc_axis_tlast;
assign TDEST_internal   = (C_AXIS_SIGNAL_SET[6] == 0) ? 1'b0 : pc_axis_tdest;
assign TID_internal     = (C_AXIS_SIGNAL_SET[5] == 0) ? 1'b0 : pc_axis_tid;
assign TUSER_internal   = (C_AXIS_SIGNAL_SET[7] == 0) ? 1'b0 : pc_axis_tuser;

always @(posedge aclk) begin
  ARESETn_q <= aresetn;
  ACLKEN_q  <= aclken;
  TVALID_q  <= pc_axis_tvalid;
  TREADY_q  <= TREADY_internal;
  TDATA_q   <= TDATA_internal; 
  TSTRB_q   <= TSTRB_internal; 
  TKEEP_q   <= TKEEP_internal; 
  TLAST_q   <= TLAST_internal; 
  TID_q     <= TID_internal;   
  TDEST_q   <= TDEST_internal; 
  TUSER_q   <= TUSER_internal; 
end

wire  reset_i;
wire  resetn_out;
wire  checker_main_resetn;
(* shreg_extract="no", iob="false", equivalent_register_removal = "no" *) reg [2:0] reset_resync;

assign reset_i = ~system_resetn;
assign resetn_out = (C_PC_HAS_SYSTEM_RESET == 1) ? reset_resync[2] : aresetn;

always @(posedge aclk or posedge reset_i) begin
  if (reset_i) begin
    reset_resync <= 3'b000;
  end else begin
    reset_resync <= {reset_resync[1:0], 1'b1};
  end
end

assign checker_main_resetn = resetn_out & aresetn;

wire [C_PC_STATUS_WIDTH-1:0] Axi4StreamPC_asr_inline_out;

axis_protocol_checker_v1_1_9_asr_inline #(
  .DEST_WIDTH          ((C_AXIS_SIGNAL_SET[6] == 0 ) ? 0 : C_AXIS_TDEST_WIDTH   ),
  .DATA_WIDTH_BYTES    ((C_AXIS_SIGNAL_SET[1] == 0 ) ? 1 : C_AXIS_TDATA_WIDTH/8 ),
  .ID_WIDTH            ((C_AXIS_SIGNAL_SET[5] == 0 ) ? 0 : C_AXIS_TID_WIDTH     ),
  .USER_WIDTH          ((C_AXIS_SIGNAL_SET[7] == 0 ) ? 1 : C_AXIS_TUSER_WIDTH   ),
  .MAXWAITS            (C_PC_MAXWAITS)
) PC (
  .Axi4StreamPC_asr_inline_out  ( Axi4StreamPC_asr_inline_out ),
  .reset                        ( resetn_out  ),
  .ACLK                         ( aclk        ),
  .ACLKEN                       ( ACLKEN_q    ),
  .ARESETn                      ( ARESETn_q   ),
  .TVALID                       ( TVALID_q    ),
  .TREADY                       ( TREADY_q    ),
  .TLAST                        ( TLAST_q     ),
  .TID                          ( TID_q       ),
  .TDEST                        ( TDEST_q     ),
  .TKEEP                        ( TKEEP_q     ),
  .TDATA                        ( TDATA_q     ),
  .TSTRB                        ( TSTRB_q     ),
  .TUSER                        ( TUSER_q     )
);

reg  [C_PC_STATUS_WIDTH-1:0] pc_status_i;
reg                          pc_asserted_i;
wire [C_PC_STATUS_WIDTH-1:0] pc_status_masked;

assign pc_status_masked = {Axi4StreamPC_asr_inline_out};
assign pc_asserted = pc_asserted_i;

always @(posedge aclk) begin : p_errorSeq
  if (!checker_main_resetn) begin
    pc_asserted_i <= 1'b0;
    pc_status_i <= {C_PC_STATUS_WIDTH {1'b0}};
  end else begin
    pc_asserted_i <= |pc_status_i;
    pc_status_i <= pc_status_masked | pc_status_i;
  end
end

assign pc_status = pc_status_i;

axis_protocol_checker_v1_1_9_reporter #(
  .C_PC_MESSAGE_LEVEL         (C_PC_MESSAGE_LEVEL),
  .C_PC_STATUS_WIDTH          (C_PC_STATUS_WIDTH)
) REP (
  .aclk         (aclk),
  .pc_status    (pc_status)
);

endmodule

`default_nettype wire
