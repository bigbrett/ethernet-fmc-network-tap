// (c) Copyright 2012 Xilinx, Inc. All rights reserved.
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


`timescale 1ps/1ps
`default_nettype none
`ifndef AXI4STREAMPC_MESSAGES
  `define AXI4STREAMPC_MESSAGES
  `define ERRM_TVALID_RESET         "AXI4STREAM_ERRM_TVALID_RESET. TVALID must be low for the first clock edge that ARESETn goes high. Spec: section 2.7.2, and figure 2-4 on page 2-11."
  `define ERRM_TID_STABLE           "AXI4STREAM_ERRM_TID_STABLE. TID must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TDEST_STABLE         "AXI4STREAM_ERRM_TDEST_STABLE. TDEST must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TKEEP_STABLE         "AXI4STREAM_ERRM_TKEEP_STABLE. TKEEP must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TDATA_STABLE         "AXI4STREAM_ERRM_TDATA_STABLE. TDATA must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TLAST_STABLE         "AXI4STREAM_ERRM_TLAST_STABLE. TLAST must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TSTRB_STABLE         "AXI4STREAM_ERRM_TSTRB_STABLE. TSTRB must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TVALID_STABLE        "AXI4STREAM_ERRM_TVALID_STABLE. Once TVALID is asserted, it must remain asserted until TREADY is high. Spec: section 2.2.1, and figure 2-1 on page 2-3."
  `define RECS_TREADY_MAX_WAIT      "AXI4STREAM_RECS_TREADY_MAX_WAIT. TREADY should be asserted within MAXWAITS cycles of TVALID being asserted."
  `define ERRM_TID_X                "AXI4STREAM_ERRM_TID_X. When TVALID is high, a value of X on TID is not permitted."
  `define ERRM_TDEST_X              "AXI4STREAM_ERRM_TDEST_X. When TVALID is high, a value of X on TDEST is not permitted."
  `define ERRM_TKEEP_X              "AXI4STREAM_ERRM_TKEEP_X. When TVALID is high, a value of X on TKEEP is not permitted."
  `define ERRM_TDATA_X              "AXI4STREAM_ERRM_TDATA_X. When TVALID is high, a value of X on active byte lanes of TDATA is not permitted."
  `define ERRM_TLAST_X              "AXI4STREAM_ERRM_TLAST_X. When TVALID is high, a value of X on TLAST is not permitted."
  `define ERRM_TSTRB_X              "AXI4STREAM_ERRM_TSTRB_X. When TVALID is high, a value of X on TSTRB is not permitted."
  `define ERRM_TVALID_X             "AXI4STREAM_ERRM_TVALID_X. When not in reset, a value of X on TVALID is not permitted."
  `define ERRS_TREADY_X             "AXI4STREAM_ERRS_TREADY_X. When not in reset, a value of X on TREADY is not permitted."
  `define ERRM_TUSER_X              "AXI4STREAM_ERRM_TUSER_X. When TVALID is high, a value of X on TUSER is not permitted."
  `define ERRM_TUSER_STABLE         "AXI4STREAM_ERRM_TUSER_STABLE. TUSER must remain stable when TVALID is asserted and TREADY low. Spec: section 2.2.1, and figure 2-1, on page 2-3."
  `define ERRM_TKEEP_TSTRB          "AXI4STREAM_ERRM_TKEEP_TSTRB. If TKEEP is deasserted then TSTRB must also be deasserted. Spec: section 2.4.3, and table 2-2, on page 2-9."
  `define ERRM_STREAM_ALL_DONE_EOS  "AXI4STREAM_ERRM_STREAM_ALL_DONE_EOS. There are active streams outstanding at the end of the simulation."
  `define ERRM_TDATA_TIEOFF         "AXI4STREAM_ERRM_TDATA_TIEOFF. TDATA must be stable when DATA_WIDTH_BYTES has been set to zero."
  `define ERRM_TKEEP_TIEOFF         "AXI4STREAM_ERRM_TKEEP_TIEOFF. TKEEP must be stable when DATA_WIDTH_BYTES has been set to zero."
  `define ERRM_TSTRB_TIEOFF         "AXI4STREAM_ERRM_TSTRB_TIEOFF. TSTRB must be stable when DATA_WIDTH_BYTES has been set to zero."
  `define ERRM_TID_TIEOFF           "AXI4STREAM_ERRM_TID_TIEOFF. TID must be stable when ID_WIDTH has been set to zero."
  `define ERRM_TDEST_TIEOFF         "AXI4STREAM_ERRM_TDEST_TIEOFF. TDEST must be stable when DEST_WIDTH has been set to zero."
  `define ERRM_TUSER_TIEOFF         "AXI4STREAM_ERRM_TUSER_TIEOFF. TUSER must be stable when USER_WIDTH has been set to zero."
  `define AUXM_TID_TDEST_WIDTH      "AXI4STREAM_AUXM_TID_TDEST_WIDTH. The value of ID_WIDTH + DEST_WIDTH must not exceed 24."
`endif

`define REPORTER_MACRO(ERR_BIT, NET_NAME, MSG_TEXT, SEV_NUM) \
  always@(posedge NET_NAME) begin \
    if ((SEV_NUM != 0) && (NET_NAME === 1'b1)) begin \
      $display("%t : %m : BIT(%d) : %s : %s", $time, ERR_BIT, (SEV_NUM == 0) ? "INFO" : (SEV_NUM == 1) ? "WARNING" : "ERROR" , MSG_TEXT); \
      if (SEV_NUM == 3) $stop;\
      if (SEV_NUM == 4) $finish;\
    end else if ((NET_NAME !== 1'b1) && (NET_NAME !== 1'b0)) begin \
      $display("%t : %m : BIT(%d) :   ERROR : Invalid state %b", $time, ERR_BIT, NET_NAME); \
    end \
  end

`define ASSIGN_MARKED_DEBUG(ERR_BIT, DISPLAY_NETNAME) \
  (* mark_debug = "true" *) reg DISPLAY_NETNAME;\
  always@(posedge aclk) DISPLAY_NETNAME <= pc_status[ERR_BIT];

module axis_protocol_checker_v1_1_9_reporter #(
  parameter integer C_PC_MESSAGE_LEVEL             = 2,
  parameter integer C_PC_STATUS_WIDTH              = 11
) (
  input  wire                             aclk,
  input  wire [C_PC_STATUS_WIDTH-1:0]     pc_status
);

`ASSIGN_MARKED_DEBUG(00, PC_00_AXI4STREAM_ERRM_TVALID_RESET      )
`ASSIGN_MARKED_DEBUG(01, PC_01_AXI4STREAM_ERRM_TID_STABLE        )
`ASSIGN_MARKED_DEBUG(02, PC_02_AXI4STREAM_ERRM_TDEST_STABLE      )
`ASSIGN_MARKED_DEBUG(03, PC_03_AXI4STREAM_ERRM_TKEEP_STABLE      )
`ASSIGN_MARKED_DEBUG(04, PC_04_AXI4STREAM_ERRM_TDATA_STABLE      )
`ASSIGN_MARKED_DEBUG(05, PC_05_AXI4STREAM_ERRM_TLAST_STABLE      )
`ASSIGN_MARKED_DEBUG(06, PC_06_AXI4STREAM_ERRM_TSTRB_STABLE      )
`ASSIGN_MARKED_DEBUG(07, PC_07_AXI4STREAM_ERRM_TVALID_STABLE     )
`ASSIGN_MARKED_DEBUG(08, PC_08_AXI4STREAM_RECS_TREADY_MAX_WAIT   )
`ASSIGN_MARKED_DEBUG(09, PC_09_AXI4STREAM_ERRM_TUSER_STABLE      )
`ASSIGN_MARKED_DEBUG(10, PC_10_AXI4STREAM_ERRM_TKEEP_TSTRB       )

// synthesis translate_off
`REPORTER_MACRO(00, PC_00_AXI4STREAM_ERRM_TVALID_RESET   , `ERRM_TVALID_RESET      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(01, PC_01_AXI4STREAM_ERRM_TID_STABLE     , `ERRM_TID_STABLE        , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(02, PC_02_AXI4STREAM_ERRM_TDEST_STABLE   , `ERRM_TDEST_STABLE      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(03, PC_03_AXI4STREAM_ERRM_TKEEP_STABLE   , `ERRM_TKEEP_STABLE      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(04, PC_04_AXI4STREAM_ERRM_TDATA_STABLE   , `ERRM_TDATA_STABLE      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(05, PC_05_AXI4STREAM_ERRM_TLAST_STABLE   , `ERRM_TLAST_STABLE      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(06, PC_06_AXI4STREAM_ERRM_TSTRB_STABLE   , `ERRM_TSTRB_STABLE      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(07, PC_07_AXI4STREAM_ERRM_TVALID_STABLE  , `ERRM_TVALID_STABLE     , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(08, PC_08_AXI4STREAM_RECS_TREADY_MAX_WAIT, `RECS_TREADY_MAX_WAIT   , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(09, PC_09_AXI4STREAM_ERRM_TUSER_STABLE   , `ERRM_TUSER_STABLE      , C_PC_MESSAGE_LEVEL)
`REPORTER_MACRO(10, PC_10_AXI4STREAM_ERRM_TKEEP_TSTRB    , `ERRM_TKEEP_TSTRB       , C_PC_MESSAGE_LEVEL)

// synthesis translate_on

endmodule

`ifdef AXI4STREAMPC_MESSAGES
  `undef AXI4STREAMPC_MESSAGES
  `undef ERRM_TVALID_RESET
  `undef ERRM_TID_STABLE
  `undef ERRM_TDEST_STABLE
  `undef ERRM_TKEEP_STABLE
  `undef ERRM_TDATA_STABLE
  `undef ERRM_TLAST_STABLE
  `undef ERRM_TSTRB_STABLE
  `undef ERRM_TVALID_STABLE
  `undef RECS_TREADY_MAX_WAIT
  `undef ERRM_TID_X
  `undef ERRM_TDEST_X
  `undef ERRM_TKEEP_X
  `undef ERRM_TDATA_X
  `undef ERRM_TLAST_X
  `undef ERRM_TSTRB_X
  `undef ERRM_TVALID_X
  `undef ERRS_TREADY_X
  `undef ERRM_TUSER_X
  `undef ERRM_TUSER_STABLE
  `undef ERRM_TKEEP_TSTRB
  `undef ERRM_STREAM_ALL_DONE_EOS
  `undef ERRM_TDATA_TIEOFF
  `undef ERRM_TKEEP_TIEOFF
  `undef ERRM_TSTRB_TIEOFF
  `undef ERRM_TID_TIEOFF
  `undef ERRM_TDEST_TIEOFF
  `undef ERRM_TUSER_TIEOFF
`endif

`default_nettype wire
