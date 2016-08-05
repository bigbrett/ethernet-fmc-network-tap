// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axis_protocol_checker:1.1
// IP Revision: 9

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_axis_protocol_checker_0_0 (
  aclk,
  aresetn,
  pc_axis_tvalid,
  pc_axis_tdata,
  pc_axis_tuser,
  pc_asserted,
  pc_status
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TVALID" *)
input wire pc_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TDATA" *)
input wire [7 : 0] pc_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PC_AXIS TUSER" *)
input wire [3 : 0] pc_axis_tuser;
output wire pc_asserted;
output wire [10 : 0] pc_status;

  axis_protocol_checker_v1_1_9_top #(
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_SIGNAL_SET('B00000000000000000000000010000010),
    .C_PC_MAXWAITS(0),
    .C_PC_MESSAGE_LEVEL(2),
    .C_PC_HAS_SYSTEM_RESET(0),
    .C_PC_STATUS_WIDTH(11)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .system_resetn(1'D1),
    .aclken(1'D1),
    .pc_axis_tvalid(pc_axis_tvalid),
    .pc_axis_tready(1'D1),
    .pc_axis_tdata(pc_axis_tdata),
    .pc_axis_tstrb(1'H1),
    .pc_axis_tkeep(1'H1),
    .pc_axis_tlast(1'D1),
    .pc_axis_tid(1'D0),
    .pc_axis_tdest(1'D0),
    .pc_axis_tuser(pc_axis_tuser),
    .pc_asserted(pc_asserted),
    .pc_status(pc_status)
  );
endmodule