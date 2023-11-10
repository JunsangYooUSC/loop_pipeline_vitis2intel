// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #222)
// 
// Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from loop_pipeline_function
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_do,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_iord_bl_do_i_fifodata,
    input wire [0:0] in_iord_bl_do_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_i_fifoready,
    input wire [63:0] in_pre1_avm_readdata,
    input wire [0:0] in_pre1_avm_readdatavalid,
    input wire [0:0] in_pre1_avm_waitrequest,
    input wire [0:0] in_pre1_avm_writeack,
    input wire [63:0] in_pre2552_avm_readdata,
    input wire [0:0] in_pre2552_avm_readdatavalid,
    input wire [0:0] in_pre2552_avm_waitrequest,
    input wire [0:0] in_pre2552_avm_writeack,
    input wire [63:0] in_pre2563_avm_readdata,
    input wire [0:0] in_pre2563_avm_readdatavalid,
    input wire [0:0] in_pre2563_avm_waitrequest,
    input wire [0:0] in_pre2563_avm_writeack,
    input wire [63:0] in_pre2574_avm_readdata,
    input wire [0:0] in_pre2574_avm_readdatavalid,
    input wire [0:0] in_pre2574_avm_waitrequest,
    input wire [0:0] in_pre2574_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_loop_pipeline10_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline10_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline10_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline10_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline11_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline11_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline11_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline11_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline12_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline12_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline12_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline12_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline13_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline13_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline13_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline13_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline14_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline14_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline14_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline14_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline15_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline15_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline15_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline15_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline16_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline16_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline16_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline16_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline17_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline17_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline17_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline17_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline18_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline18_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline18_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline18_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline19_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline19_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline19_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline19_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline4_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline4_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline4_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline4_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline5_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline5_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline5_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline5_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline6_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline6_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline6_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline6_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline7_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline7_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline7_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline7_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline8_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline8_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline8_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline8_avm_writeack,
    input wire [63:0] in_unnamed_loop_pipeline9_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline9_avm_readdatavalid,
    input wire [0:0] in_unnamed_loop_pipeline9_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline9_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_do_o_fifoready,
    output wire [19:0] out_iowr_bl_return_o_fifodata,
    output wire [0:0] out_iowr_bl_return_o_fifovalid,
    output wire [63:0] out_pre1_avm_address,
    output wire [0:0] out_pre1_avm_burstcount,
    output wire [7:0] out_pre1_avm_byteenable,
    output wire [0:0] out_pre1_avm_enable,
    output wire [0:0] out_pre1_avm_read,
    output wire [0:0] out_pre1_avm_write,
    output wire [63:0] out_pre1_avm_writedata,
    output wire [63:0] out_pre2552_avm_address,
    output wire [0:0] out_pre2552_avm_burstcount,
    output wire [7:0] out_pre2552_avm_byteenable,
    output wire [0:0] out_pre2552_avm_enable,
    output wire [0:0] out_pre2552_avm_read,
    output wire [0:0] out_pre2552_avm_write,
    output wire [63:0] out_pre2552_avm_writedata,
    output wire [63:0] out_pre2563_avm_address,
    output wire [0:0] out_pre2563_avm_burstcount,
    output wire [7:0] out_pre2563_avm_byteenable,
    output wire [0:0] out_pre2563_avm_enable,
    output wire [0:0] out_pre2563_avm_read,
    output wire [0:0] out_pre2563_avm_write,
    output wire [63:0] out_pre2563_avm_writedata,
    output wire [63:0] out_pre2574_avm_address,
    output wire [0:0] out_pre2574_avm_burstcount,
    output wire [7:0] out_pre2574_avm_byteenable,
    output wire [0:0] out_pre2574_avm_enable,
    output wire [0:0] out_pre2574_avm_read,
    output wire [0:0] out_pre2574_avm_write,
    output wire [63:0] out_pre2574_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_loop_pipeline10_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline10_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline10_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline11_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline11_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline11_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline12_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline12_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline12_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline13_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline13_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline13_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline14_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline14_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline14_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline15_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline15_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline15_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline16_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline16_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline16_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline17_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline17_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline17_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline18_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline18_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline18_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline19_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline19_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline19_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline4_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline4_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline4_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline5_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline5_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline5_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline6_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline6_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline6_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline7_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline7_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline7_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline8_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline8_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline8_avm_writedata,
    output wire [63:0] out_unnamed_loop_pipeline9_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_burstcount,
    output wire [7:0] out_unnamed_loop_pipeline9_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline9_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_loop_pipeline_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_loop_pipeline_B1_start_out_feedback_stall_out_1;
    wire [23:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_0_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_10_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_11_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_12_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_13_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_14_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_15_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_16_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_17_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_18_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_19_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_1_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_20_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_21_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_2_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_3_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_4_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_5_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_6_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_7_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_8_0;
    wire [19:0] bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_loop_pipeline_B1_start_out_iord_bl_do_o_fifoready;
    wire [0:0] bb_loop_pipeline_B1_start_out_pipeline_valid_out;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre1_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre1_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_pre1_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre1_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre1_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre1_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre1_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre2552_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2552_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_pre2552_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2552_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2552_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2552_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre2552_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre2563_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2563_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_pre2563_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2563_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2563_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2563_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre2563_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre2574_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2574_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_pre2574_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2574_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2574_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_pre2574_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_pre2574_avm_writedata;
    wire [0:0] bb_loop_pipeline_B1_start_out_stall_out_0;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_writedata;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_address;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_burstcount;
    wire [7:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_byteenable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_enable;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_read;
    wire [0:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_write;
    wire [63:0] bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_writedata;
    wire [0:0] bb_loop_pipeline_B1_start_out_valid_out_0;
    wire [0:0] bb_loop_pipeline_B2_out_exiting_stall_out;
    wire [0:0] bb_loop_pipeline_B2_out_exiting_valid_out;
    wire [19:0] bb_loop_pipeline_B2_out_intel_reserved_ffwd_22_0;
    wire [23:0] bb_loop_pipeline_B2_out_intel_reserved_ffwd_23_0;
    wire [0:0] bb_loop_pipeline_B2_out_pipeline_valid_out;
    wire [0:0] bb_loop_pipeline_B2_out_stall_out_0;
    wire [0:0] bb_loop_pipeline_B2_out_stall_out_1;
    wire [0:0] bb_loop_pipeline_B2_out_valid_out_0;
    wire [7:0] bb_loop_pipeline_B3_out_feedback_out_1;
    wire [0:0] bb_loop_pipeline_B3_out_feedback_valid_out_1;
    wire [23:0] bb_loop_pipeline_B3_out_intel_reserved_ffwd_24_0;
    wire [19:0] bb_loop_pipeline_B3_out_iowr_bl_return_o_fifodata;
    wire [0:0] bb_loop_pipeline_B3_out_iowr_bl_return_o_fifovalid;
    wire [0:0] bb_loop_pipeline_B3_out_stall_out_0;
    wire [1:0] c_i2_0gr_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_loop_pipeline0_out_o_stall;
    wire [0:0] loop_limiter_loop_pipeline0_out_o_valid;
    wire [0:0] bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_data_0;
    wire [0:0] bb_loop_pipeline_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_loop_pipeline_B3_sr_0_aunroll_x_out_o_valid;


    // c_i2_0gr(CONSTANT,8)
    assign c_i2_0gr_q = 2'b00;

    // i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo(BLACKBOX,11)
    loop_pipeline_i_llvm_fpga_pipeline_keep_going31_11_valid_fifo thei_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo (
        .in_data_in(c_i2_0gr_q),
        .in_stall_in(bb_loop_pipeline_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo(BLACKBOX,13)
    loop_pipeline_i_llvm_fpga_pipeline_keep_going_229_valid_fifo thei_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo (
        .in_data_in(c_i2_0gr_q),
        .in_stall_in(bb_loop_pipeline_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loop_pipeline_B3_sr_0_aunroll_x(BLACKBOX,250)
    loop_pipeline_bb_B3_sr_0 thebb_loop_pipeline_B3_sr_0_aunroll_x (
        .in_i_stall(bb_loop_pipeline_B3_out_stall_out_0),
        .in_i_valid(bb_loop_pipeline_B2_out_valid_out_0),
        .in_i_data_0(GND_q),
        .out_o_stall(bb_loop_pipeline_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_loop_pipeline_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr(BLACKBOX,12)
    loop_pipeline_i_llvm_fpga_pipeline_keep_going_229_sr thei_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo_out_stall_out),
        .in_i_valid(bb_loop_pipeline_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loop_pipeline_B2(BLACKBOX,4)
    loop_pipeline_bb_B2 thebb_loop_pipeline_B2 (
        .in_forked_0(GND_q),
        .in_forked_1(bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_data_0),
        .in_intel_reserved_ffwd_0_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_2_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_9_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_sr_out_o_stall),
        .in_stall_in_0(bb_loop_pipeline_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_loop_pipeline_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_loop_pipeline_B2_out_exiting_valid_out),
        .out_intel_reserved_ffwd_22_0(bb_loop_pipeline_B2_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_loop_pipeline_B2_out_intel_reserved_ffwd_23_0),
        .out_pipeline_valid_out(bb_loop_pipeline_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_loop_pipeline_B2_out_stall_out_0),
        .out_stall_out_1(bb_loop_pipeline_B2_out_stall_out_1),
        .out_valid_out_0(bb_loop_pipeline_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loop_pipeline_B2_sr_1_aunroll_x(BLACKBOX,249)
    loop_pipeline_bb_B2_sr_1 thebb_loop_pipeline_B2_sr_1_aunroll_x (
        .in_i_stall(bb_loop_pipeline_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_loop_pipeline0_out_o_valid),
        .in_i_data_0(VCC_q),
        .out_o_stall(bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0(bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_data_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_loop_pipeline0(BLACKBOX,103)
    loop_pipeline_loop_limiter_0 theloop_limiter_loop_pipeline0 (
        .in_i_stall(bb_loop_pipeline_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_loop_pipeline_B2_out_exiting_stall_out),
        .in_i_valid(bb_loop_pipeline_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_loop_pipeline_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_loop_pipeline0_out_o_stall),
        .out_o_valid(loop_limiter_loop_pipeline0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr(BLACKBOX,10)
    loop_pipeline_i_llvm_fpga_pipeline_keep_going31_11_sr thei_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo_out_stall_out),
        .in_i_valid(bb_loop_pipeline_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // bb_loop_pipeline_B3(BLACKBOX,5)
    loop_pipeline_bb_B3 thebb_loop_pipeline_B3 (
        .in_feedback_stall_in_1(bb_loop_pipeline_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_22_0(bb_loop_pipeline_B2_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_loop_pipeline_B2_out_intel_reserved_ffwd_23_0),
        .in_iowr_bl_return_i_fifoready(in_iowr_bl_return_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_loop_pipeline_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_loop_pipeline_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_loop_pipeline_B3_out_feedback_valid_out_1),
        .out_intel_reserved_ffwd_24_0(bb_loop_pipeline_B3_out_intel_reserved_ffwd_24_0),
        .out_iowr_bl_return_o_fifodata(bb_loop_pipeline_B3_out_iowr_bl_return_o_fifodata),
        .out_iowr_bl_return_o_fifovalid(bb_loop_pipeline_B3_out_iowr_bl_return_o_fifovalid),
        .out_stall_out_0(bb_loop_pipeline_B3_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loop_pipeline_B1_start(BLACKBOX,3)
    loop_pipeline_bb_B1_start thebb_loop_pipeline_B1_start (
        .in_feedback_in_1(bb_loop_pipeline_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_loop_pipeline_B3_out_feedback_valid_out_1),
        .in_flush(in_start),
        .in_forked29_0(GND_q),
        .in_forked29_1(VCC_q),
        .in_intel_reserved_ffwd_24_0(bb_loop_pipeline_B3_out_intel_reserved_ffwd_24_0),
        .in_iord_bl_do_i_fifodata(in_iord_bl_do_i_fifodata),
        .in_iord_bl_do_i_fifovalid(in_iord_bl_do_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_sr_out_o_stall),
        .in_pre1_avm_readdata(in_pre1_avm_readdata),
        .in_pre1_avm_readdatavalid(in_pre1_avm_readdatavalid),
        .in_pre1_avm_waitrequest(in_pre1_avm_waitrequest),
        .in_pre1_avm_writeack(in_pre1_avm_writeack),
        .in_pre2552_avm_readdata(in_pre2552_avm_readdata),
        .in_pre2552_avm_readdatavalid(in_pre2552_avm_readdatavalid),
        .in_pre2552_avm_waitrequest(in_pre2552_avm_waitrequest),
        .in_pre2552_avm_writeack(in_pre2552_avm_writeack),
        .in_pre2563_avm_readdata(in_pre2563_avm_readdata),
        .in_pre2563_avm_readdatavalid(in_pre2563_avm_readdatavalid),
        .in_pre2563_avm_waitrequest(in_pre2563_avm_waitrequest),
        .in_pre2563_avm_writeack(in_pre2563_avm_writeack),
        .in_pre2574_avm_readdata(in_pre2574_avm_readdata),
        .in_pre2574_avm_readdatavalid(in_pre2574_avm_readdatavalid),
        .in_pre2574_avm_waitrequest(in_pre2574_avm_waitrequest),
        .in_pre2574_avm_writeack(in_pre2574_avm_writeack),
        .in_stall_in_0(loop_limiter_loop_pipeline0_out_o_stall),
        .in_unnamed_loop_pipeline10_avm_readdata(in_unnamed_loop_pipeline10_avm_readdata),
        .in_unnamed_loop_pipeline10_avm_readdatavalid(in_unnamed_loop_pipeline10_avm_readdatavalid),
        .in_unnamed_loop_pipeline10_avm_waitrequest(in_unnamed_loop_pipeline10_avm_waitrequest),
        .in_unnamed_loop_pipeline10_avm_writeack(in_unnamed_loop_pipeline10_avm_writeack),
        .in_unnamed_loop_pipeline11_avm_readdata(in_unnamed_loop_pipeline11_avm_readdata),
        .in_unnamed_loop_pipeline11_avm_readdatavalid(in_unnamed_loop_pipeline11_avm_readdatavalid),
        .in_unnamed_loop_pipeline11_avm_waitrequest(in_unnamed_loop_pipeline11_avm_waitrequest),
        .in_unnamed_loop_pipeline11_avm_writeack(in_unnamed_loop_pipeline11_avm_writeack),
        .in_unnamed_loop_pipeline12_avm_readdata(in_unnamed_loop_pipeline12_avm_readdata),
        .in_unnamed_loop_pipeline12_avm_readdatavalid(in_unnamed_loop_pipeline12_avm_readdatavalid),
        .in_unnamed_loop_pipeline12_avm_waitrequest(in_unnamed_loop_pipeline12_avm_waitrequest),
        .in_unnamed_loop_pipeline12_avm_writeack(in_unnamed_loop_pipeline12_avm_writeack),
        .in_unnamed_loop_pipeline13_avm_readdata(in_unnamed_loop_pipeline13_avm_readdata),
        .in_unnamed_loop_pipeline13_avm_readdatavalid(in_unnamed_loop_pipeline13_avm_readdatavalid),
        .in_unnamed_loop_pipeline13_avm_waitrequest(in_unnamed_loop_pipeline13_avm_waitrequest),
        .in_unnamed_loop_pipeline13_avm_writeack(in_unnamed_loop_pipeline13_avm_writeack),
        .in_unnamed_loop_pipeline14_avm_readdata(in_unnamed_loop_pipeline14_avm_readdata),
        .in_unnamed_loop_pipeline14_avm_readdatavalid(in_unnamed_loop_pipeline14_avm_readdatavalid),
        .in_unnamed_loop_pipeline14_avm_waitrequest(in_unnamed_loop_pipeline14_avm_waitrequest),
        .in_unnamed_loop_pipeline14_avm_writeack(in_unnamed_loop_pipeline14_avm_writeack),
        .in_unnamed_loop_pipeline15_avm_readdata(in_unnamed_loop_pipeline15_avm_readdata),
        .in_unnamed_loop_pipeline15_avm_readdatavalid(in_unnamed_loop_pipeline15_avm_readdatavalid),
        .in_unnamed_loop_pipeline15_avm_waitrequest(in_unnamed_loop_pipeline15_avm_waitrequest),
        .in_unnamed_loop_pipeline15_avm_writeack(in_unnamed_loop_pipeline15_avm_writeack),
        .in_unnamed_loop_pipeline16_avm_readdata(in_unnamed_loop_pipeline16_avm_readdata),
        .in_unnamed_loop_pipeline16_avm_readdatavalid(in_unnamed_loop_pipeline16_avm_readdatavalid),
        .in_unnamed_loop_pipeline16_avm_waitrequest(in_unnamed_loop_pipeline16_avm_waitrequest),
        .in_unnamed_loop_pipeline16_avm_writeack(in_unnamed_loop_pipeline16_avm_writeack),
        .in_unnamed_loop_pipeline17_avm_readdata(in_unnamed_loop_pipeline17_avm_readdata),
        .in_unnamed_loop_pipeline17_avm_readdatavalid(in_unnamed_loop_pipeline17_avm_readdatavalid),
        .in_unnamed_loop_pipeline17_avm_waitrequest(in_unnamed_loop_pipeline17_avm_waitrequest),
        .in_unnamed_loop_pipeline17_avm_writeack(in_unnamed_loop_pipeline17_avm_writeack),
        .in_unnamed_loop_pipeline18_avm_readdata(in_unnamed_loop_pipeline18_avm_readdata),
        .in_unnamed_loop_pipeline18_avm_readdatavalid(in_unnamed_loop_pipeline18_avm_readdatavalid),
        .in_unnamed_loop_pipeline18_avm_waitrequest(in_unnamed_loop_pipeline18_avm_waitrequest),
        .in_unnamed_loop_pipeline18_avm_writeack(in_unnamed_loop_pipeline18_avm_writeack),
        .in_unnamed_loop_pipeline19_avm_readdata(in_unnamed_loop_pipeline19_avm_readdata),
        .in_unnamed_loop_pipeline19_avm_readdatavalid(in_unnamed_loop_pipeline19_avm_readdatavalid),
        .in_unnamed_loop_pipeline19_avm_waitrequest(in_unnamed_loop_pipeline19_avm_waitrequest),
        .in_unnamed_loop_pipeline19_avm_writeack(in_unnamed_loop_pipeline19_avm_writeack),
        .in_unnamed_loop_pipeline4_avm_readdata(in_unnamed_loop_pipeline4_avm_readdata),
        .in_unnamed_loop_pipeline4_avm_readdatavalid(in_unnamed_loop_pipeline4_avm_readdatavalid),
        .in_unnamed_loop_pipeline4_avm_waitrequest(in_unnamed_loop_pipeline4_avm_waitrequest),
        .in_unnamed_loop_pipeline4_avm_writeack(in_unnamed_loop_pipeline4_avm_writeack),
        .in_unnamed_loop_pipeline5_avm_readdata(in_unnamed_loop_pipeline5_avm_readdata),
        .in_unnamed_loop_pipeline5_avm_readdatavalid(in_unnamed_loop_pipeline5_avm_readdatavalid),
        .in_unnamed_loop_pipeline5_avm_waitrequest(in_unnamed_loop_pipeline5_avm_waitrequest),
        .in_unnamed_loop_pipeline5_avm_writeack(in_unnamed_loop_pipeline5_avm_writeack),
        .in_unnamed_loop_pipeline6_avm_readdata(in_unnamed_loop_pipeline6_avm_readdata),
        .in_unnamed_loop_pipeline6_avm_readdatavalid(in_unnamed_loop_pipeline6_avm_readdatavalid),
        .in_unnamed_loop_pipeline6_avm_waitrequest(in_unnamed_loop_pipeline6_avm_waitrequest),
        .in_unnamed_loop_pipeline6_avm_writeack(in_unnamed_loop_pipeline6_avm_writeack),
        .in_unnamed_loop_pipeline7_avm_readdata(in_unnamed_loop_pipeline7_avm_readdata),
        .in_unnamed_loop_pipeline7_avm_readdatavalid(in_unnamed_loop_pipeline7_avm_readdatavalid),
        .in_unnamed_loop_pipeline7_avm_waitrequest(in_unnamed_loop_pipeline7_avm_waitrequest),
        .in_unnamed_loop_pipeline7_avm_writeack(in_unnamed_loop_pipeline7_avm_writeack),
        .in_unnamed_loop_pipeline8_avm_readdata(in_unnamed_loop_pipeline8_avm_readdata),
        .in_unnamed_loop_pipeline8_avm_readdatavalid(in_unnamed_loop_pipeline8_avm_readdatavalid),
        .in_unnamed_loop_pipeline8_avm_waitrequest(in_unnamed_loop_pipeline8_avm_waitrequest),
        .in_unnamed_loop_pipeline8_avm_writeack(in_unnamed_loop_pipeline8_avm_writeack),
        .in_unnamed_loop_pipeline9_avm_readdata(in_unnamed_loop_pipeline9_avm_readdata),
        .in_unnamed_loop_pipeline9_avm_readdatavalid(in_unnamed_loop_pipeline9_avm_readdatavalid),
        .in_unnamed_loop_pipeline9_avm_waitrequest(in_unnamed_loop_pipeline9_avm_waitrequest),
        .in_unnamed_loop_pipeline9_avm_writeack(in_unnamed_loop_pipeline9_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_loop_pipeline_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_2_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_loop_pipeline_B1_start_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_do_o_fifoready(bb_loop_pipeline_B1_start_out_iord_bl_do_o_fifoready),
        .out_pipeline_valid_out(bb_loop_pipeline_B1_start_out_pipeline_valid_out),
        .out_pre1_avm_address(bb_loop_pipeline_B1_start_out_pre1_avm_address),
        .out_pre1_avm_burstcount(bb_loop_pipeline_B1_start_out_pre1_avm_burstcount),
        .out_pre1_avm_byteenable(bb_loop_pipeline_B1_start_out_pre1_avm_byteenable),
        .out_pre1_avm_enable(bb_loop_pipeline_B1_start_out_pre1_avm_enable),
        .out_pre1_avm_read(bb_loop_pipeline_B1_start_out_pre1_avm_read),
        .out_pre1_avm_write(bb_loop_pipeline_B1_start_out_pre1_avm_write),
        .out_pre1_avm_writedata(bb_loop_pipeline_B1_start_out_pre1_avm_writedata),
        .out_pre2552_avm_address(bb_loop_pipeline_B1_start_out_pre2552_avm_address),
        .out_pre2552_avm_burstcount(bb_loop_pipeline_B1_start_out_pre2552_avm_burstcount),
        .out_pre2552_avm_byteenable(bb_loop_pipeline_B1_start_out_pre2552_avm_byteenable),
        .out_pre2552_avm_enable(bb_loop_pipeline_B1_start_out_pre2552_avm_enable),
        .out_pre2552_avm_read(bb_loop_pipeline_B1_start_out_pre2552_avm_read),
        .out_pre2552_avm_write(bb_loop_pipeline_B1_start_out_pre2552_avm_write),
        .out_pre2552_avm_writedata(bb_loop_pipeline_B1_start_out_pre2552_avm_writedata),
        .out_pre2563_avm_address(bb_loop_pipeline_B1_start_out_pre2563_avm_address),
        .out_pre2563_avm_burstcount(bb_loop_pipeline_B1_start_out_pre2563_avm_burstcount),
        .out_pre2563_avm_byteenable(bb_loop_pipeline_B1_start_out_pre2563_avm_byteenable),
        .out_pre2563_avm_enable(bb_loop_pipeline_B1_start_out_pre2563_avm_enable),
        .out_pre2563_avm_read(bb_loop_pipeline_B1_start_out_pre2563_avm_read),
        .out_pre2563_avm_write(bb_loop_pipeline_B1_start_out_pre2563_avm_write),
        .out_pre2563_avm_writedata(bb_loop_pipeline_B1_start_out_pre2563_avm_writedata),
        .out_pre2574_avm_address(bb_loop_pipeline_B1_start_out_pre2574_avm_address),
        .out_pre2574_avm_burstcount(bb_loop_pipeline_B1_start_out_pre2574_avm_burstcount),
        .out_pre2574_avm_byteenable(bb_loop_pipeline_B1_start_out_pre2574_avm_byteenable),
        .out_pre2574_avm_enable(bb_loop_pipeline_B1_start_out_pre2574_avm_enable),
        .out_pre2574_avm_read(bb_loop_pipeline_B1_start_out_pre2574_avm_read),
        .out_pre2574_avm_write(bb_loop_pipeline_B1_start_out_pre2574_avm_write),
        .out_pre2574_avm_writedata(bb_loop_pipeline_B1_start_out_pre2574_avm_writedata),
        .out_stall_out_0(bb_loop_pipeline_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_unnamed_loop_pipeline10_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_address),
        .out_unnamed_loop_pipeline10_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_burstcount),
        .out_unnamed_loop_pipeline10_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_byteenable),
        .out_unnamed_loop_pipeline10_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_enable),
        .out_unnamed_loop_pipeline10_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_read),
        .out_unnamed_loop_pipeline10_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_write),
        .out_unnamed_loop_pipeline10_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_writedata),
        .out_unnamed_loop_pipeline11_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_address),
        .out_unnamed_loop_pipeline11_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_burstcount),
        .out_unnamed_loop_pipeline11_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_byteenable),
        .out_unnamed_loop_pipeline11_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_enable),
        .out_unnamed_loop_pipeline11_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_read),
        .out_unnamed_loop_pipeline11_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_write),
        .out_unnamed_loop_pipeline11_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_writedata),
        .out_unnamed_loop_pipeline12_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_address),
        .out_unnamed_loop_pipeline12_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_burstcount),
        .out_unnamed_loop_pipeline12_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_byteenable),
        .out_unnamed_loop_pipeline12_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_enable),
        .out_unnamed_loop_pipeline12_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_read),
        .out_unnamed_loop_pipeline12_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_write),
        .out_unnamed_loop_pipeline12_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_writedata),
        .out_unnamed_loop_pipeline13_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_address),
        .out_unnamed_loop_pipeline13_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_burstcount),
        .out_unnamed_loop_pipeline13_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_byteenable),
        .out_unnamed_loop_pipeline13_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_enable),
        .out_unnamed_loop_pipeline13_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_read),
        .out_unnamed_loop_pipeline13_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_write),
        .out_unnamed_loop_pipeline13_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_writedata),
        .out_unnamed_loop_pipeline14_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_address),
        .out_unnamed_loop_pipeline14_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_burstcount),
        .out_unnamed_loop_pipeline14_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_byteenable),
        .out_unnamed_loop_pipeline14_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_enable),
        .out_unnamed_loop_pipeline14_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_read),
        .out_unnamed_loop_pipeline14_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_write),
        .out_unnamed_loop_pipeline14_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_writedata),
        .out_unnamed_loop_pipeline15_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_address),
        .out_unnamed_loop_pipeline15_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_burstcount),
        .out_unnamed_loop_pipeline15_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_byteenable),
        .out_unnamed_loop_pipeline15_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_enable),
        .out_unnamed_loop_pipeline15_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_read),
        .out_unnamed_loop_pipeline15_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_write),
        .out_unnamed_loop_pipeline15_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_writedata),
        .out_unnamed_loop_pipeline16_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_address),
        .out_unnamed_loop_pipeline16_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_burstcount),
        .out_unnamed_loop_pipeline16_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_byteenable),
        .out_unnamed_loop_pipeline16_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_enable),
        .out_unnamed_loop_pipeline16_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_read),
        .out_unnamed_loop_pipeline16_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_write),
        .out_unnamed_loop_pipeline16_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_writedata),
        .out_unnamed_loop_pipeline17_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_address),
        .out_unnamed_loop_pipeline17_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_burstcount),
        .out_unnamed_loop_pipeline17_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_byteenable),
        .out_unnamed_loop_pipeline17_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_enable),
        .out_unnamed_loop_pipeline17_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_read),
        .out_unnamed_loop_pipeline17_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_write),
        .out_unnamed_loop_pipeline17_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_writedata),
        .out_unnamed_loop_pipeline18_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_address),
        .out_unnamed_loop_pipeline18_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_burstcount),
        .out_unnamed_loop_pipeline18_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_byteenable),
        .out_unnamed_loop_pipeline18_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_enable),
        .out_unnamed_loop_pipeline18_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_read),
        .out_unnamed_loop_pipeline18_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_write),
        .out_unnamed_loop_pipeline18_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_writedata),
        .out_unnamed_loop_pipeline19_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_address),
        .out_unnamed_loop_pipeline19_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_burstcount),
        .out_unnamed_loop_pipeline19_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_byteenable),
        .out_unnamed_loop_pipeline19_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_enable),
        .out_unnamed_loop_pipeline19_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_read),
        .out_unnamed_loop_pipeline19_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_write),
        .out_unnamed_loop_pipeline19_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_writedata),
        .out_unnamed_loop_pipeline4_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_address),
        .out_unnamed_loop_pipeline4_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_burstcount),
        .out_unnamed_loop_pipeline4_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_byteenable),
        .out_unnamed_loop_pipeline4_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_enable),
        .out_unnamed_loop_pipeline4_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_read),
        .out_unnamed_loop_pipeline4_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_write),
        .out_unnamed_loop_pipeline4_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_writedata),
        .out_unnamed_loop_pipeline5_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_address),
        .out_unnamed_loop_pipeline5_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_burstcount),
        .out_unnamed_loop_pipeline5_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_byteenable),
        .out_unnamed_loop_pipeline5_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_enable),
        .out_unnamed_loop_pipeline5_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_read),
        .out_unnamed_loop_pipeline5_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_write),
        .out_unnamed_loop_pipeline5_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_writedata),
        .out_unnamed_loop_pipeline6_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_address),
        .out_unnamed_loop_pipeline6_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_burstcount),
        .out_unnamed_loop_pipeline6_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_byteenable),
        .out_unnamed_loop_pipeline6_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_enable),
        .out_unnamed_loop_pipeline6_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_read),
        .out_unnamed_loop_pipeline6_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_write),
        .out_unnamed_loop_pipeline6_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_writedata),
        .out_unnamed_loop_pipeline7_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_address),
        .out_unnamed_loop_pipeline7_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_burstcount),
        .out_unnamed_loop_pipeline7_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_byteenable),
        .out_unnamed_loop_pipeline7_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_enable),
        .out_unnamed_loop_pipeline7_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_read),
        .out_unnamed_loop_pipeline7_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_write),
        .out_unnamed_loop_pipeline7_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_writedata),
        .out_unnamed_loop_pipeline8_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_address),
        .out_unnamed_loop_pipeline8_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_burstcount),
        .out_unnamed_loop_pipeline8_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_byteenable),
        .out_unnamed_loop_pipeline8_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_enable),
        .out_unnamed_loop_pipeline8_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_read),
        .out_unnamed_loop_pipeline8_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_write),
        .out_unnamed_loop_pipeline8_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_writedata),
        .out_unnamed_loop_pipeline9_avm_address(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_address),
        .out_unnamed_loop_pipeline9_avm_burstcount(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_burstcount),
        .out_unnamed_loop_pipeline9_avm_byteenable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_byteenable),
        .out_unnamed_loop_pipeline9_avm_enable(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_enable),
        .out_unnamed_loop_pipeline9_avm_read(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_read),
        .out_unnamed_loop_pipeline9_avm_write(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_write),
        .out_unnamed_loop_pipeline9_avm_writedata(bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_writedata),
        .out_valid_out_0(bb_loop_pipeline_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_do_o_fifoready(GPOUT,104)
    assign out_iord_bl_do_o_fifoready = bb_loop_pipeline_B1_start_out_iord_bl_do_o_fifoready;

    // out_iowr_bl_return_o_fifodata(GPOUT,105)
    assign out_iowr_bl_return_o_fifodata = bb_loop_pipeline_B3_out_iowr_bl_return_o_fifodata;

    // out_iowr_bl_return_o_fifovalid(GPOUT,106)
    assign out_iowr_bl_return_o_fifovalid = bb_loop_pipeline_B3_out_iowr_bl_return_o_fifovalid;

    // out_pre1_avm_address(GPOUT,107)
    assign out_pre1_avm_address = bb_loop_pipeline_B1_start_out_pre1_avm_address;

    // out_pre1_avm_burstcount(GPOUT,108)
    assign out_pre1_avm_burstcount = bb_loop_pipeline_B1_start_out_pre1_avm_burstcount;

    // out_pre1_avm_byteenable(GPOUT,109)
    assign out_pre1_avm_byteenable = bb_loop_pipeline_B1_start_out_pre1_avm_byteenable;

    // out_pre1_avm_enable(GPOUT,110)
    assign out_pre1_avm_enable = bb_loop_pipeline_B1_start_out_pre1_avm_enable;

    // out_pre1_avm_read(GPOUT,111)
    assign out_pre1_avm_read = bb_loop_pipeline_B1_start_out_pre1_avm_read;

    // out_pre1_avm_write(GPOUT,112)
    assign out_pre1_avm_write = bb_loop_pipeline_B1_start_out_pre1_avm_write;

    // out_pre1_avm_writedata(GPOUT,113)
    assign out_pre1_avm_writedata = bb_loop_pipeline_B1_start_out_pre1_avm_writedata;

    // out_pre2552_avm_address(GPOUT,114)
    assign out_pre2552_avm_address = bb_loop_pipeline_B1_start_out_pre2552_avm_address;

    // out_pre2552_avm_burstcount(GPOUT,115)
    assign out_pre2552_avm_burstcount = bb_loop_pipeline_B1_start_out_pre2552_avm_burstcount;

    // out_pre2552_avm_byteenable(GPOUT,116)
    assign out_pre2552_avm_byteenable = bb_loop_pipeline_B1_start_out_pre2552_avm_byteenable;

    // out_pre2552_avm_enable(GPOUT,117)
    assign out_pre2552_avm_enable = bb_loop_pipeline_B1_start_out_pre2552_avm_enable;

    // out_pre2552_avm_read(GPOUT,118)
    assign out_pre2552_avm_read = bb_loop_pipeline_B1_start_out_pre2552_avm_read;

    // out_pre2552_avm_write(GPOUT,119)
    assign out_pre2552_avm_write = bb_loop_pipeline_B1_start_out_pre2552_avm_write;

    // out_pre2552_avm_writedata(GPOUT,120)
    assign out_pre2552_avm_writedata = bb_loop_pipeline_B1_start_out_pre2552_avm_writedata;

    // out_pre2563_avm_address(GPOUT,121)
    assign out_pre2563_avm_address = bb_loop_pipeline_B1_start_out_pre2563_avm_address;

    // out_pre2563_avm_burstcount(GPOUT,122)
    assign out_pre2563_avm_burstcount = bb_loop_pipeline_B1_start_out_pre2563_avm_burstcount;

    // out_pre2563_avm_byteenable(GPOUT,123)
    assign out_pre2563_avm_byteenable = bb_loop_pipeline_B1_start_out_pre2563_avm_byteenable;

    // out_pre2563_avm_enable(GPOUT,124)
    assign out_pre2563_avm_enable = bb_loop_pipeline_B1_start_out_pre2563_avm_enable;

    // out_pre2563_avm_read(GPOUT,125)
    assign out_pre2563_avm_read = bb_loop_pipeline_B1_start_out_pre2563_avm_read;

    // out_pre2563_avm_write(GPOUT,126)
    assign out_pre2563_avm_write = bb_loop_pipeline_B1_start_out_pre2563_avm_write;

    // out_pre2563_avm_writedata(GPOUT,127)
    assign out_pre2563_avm_writedata = bb_loop_pipeline_B1_start_out_pre2563_avm_writedata;

    // out_pre2574_avm_address(GPOUT,128)
    assign out_pre2574_avm_address = bb_loop_pipeline_B1_start_out_pre2574_avm_address;

    // out_pre2574_avm_burstcount(GPOUT,129)
    assign out_pre2574_avm_burstcount = bb_loop_pipeline_B1_start_out_pre2574_avm_burstcount;

    // out_pre2574_avm_byteenable(GPOUT,130)
    assign out_pre2574_avm_byteenable = bb_loop_pipeline_B1_start_out_pre2574_avm_byteenable;

    // out_pre2574_avm_enable(GPOUT,131)
    assign out_pre2574_avm_enable = bb_loop_pipeline_B1_start_out_pre2574_avm_enable;

    // out_pre2574_avm_read(GPOUT,132)
    assign out_pre2574_avm_read = bb_loop_pipeline_B1_start_out_pre2574_avm_read;

    // out_pre2574_avm_write(GPOUT,133)
    assign out_pre2574_avm_write = bb_loop_pipeline_B1_start_out_pre2574_avm_write;

    // out_pre2574_avm_writedata(GPOUT,134)
    assign out_pre2574_avm_writedata = bb_loop_pipeline_B1_start_out_pre2574_avm_writedata;

    // bb_loop_pipeline_B0_runOnce(BLACKBOX,2)
    loop_pipeline_bb_B0_runOnce thebb_loop_pipeline_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_loop_pipeline_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,135)
    assign out_stall_out = bb_loop_pipeline_B0_runOnce_out_stall_out_0;

    // out_unnamed_loop_pipeline10_avm_address(GPOUT,136)
    assign out_unnamed_loop_pipeline10_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_address;

    // out_unnamed_loop_pipeline10_avm_burstcount(GPOUT,137)
    assign out_unnamed_loop_pipeline10_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_burstcount;

    // out_unnamed_loop_pipeline10_avm_byteenable(GPOUT,138)
    assign out_unnamed_loop_pipeline10_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_byteenable;

    // out_unnamed_loop_pipeline10_avm_enable(GPOUT,139)
    assign out_unnamed_loop_pipeline10_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_enable;

    // out_unnamed_loop_pipeline10_avm_read(GPOUT,140)
    assign out_unnamed_loop_pipeline10_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_read;

    // out_unnamed_loop_pipeline10_avm_write(GPOUT,141)
    assign out_unnamed_loop_pipeline10_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_write;

    // out_unnamed_loop_pipeline10_avm_writedata(GPOUT,142)
    assign out_unnamed_loop_pipeline10_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline10_avm_writedata;

    // out_unnamed_loop_pipeline11_avm_address(GPOUT,143)
    assign out_unnamed_loop_pipeline11_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_address;

    // out_unnamed_loop_pipeline11_avm_burstcount(GPOUT,144)
    assign out_unnamed_loop_pipeline11_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_burstcount;

    // out_unnamed_loop_pipeline11_avm_byteenable(GPOUT,145)
    assign out_unnamed_loop_pipeline11_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_byteenable;

    // out_unnamed_loop_pipeline11_avm_enable(GPOUT,146)
    assign out_unnamed_loop_pipeline11_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_enable;

    // out_unnamed_loop_pipeline11_avm_read(GPOUT,147)
    assign out_unnamed_loop_pipeline11_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_read;

    // out_unnamed_loop_pipeline11_avm_write(GPOUT,148)
    assign out_unnamed_loop_pipeline11_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_write;

    // out_unnamed_loop_pipeline11_avm_writedata(GPOUT,149)
    assign out_unnamed_loop_pipeline11_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline11_avm_writedata;

    // out_unnamed_loop_pipeline12_avm_address(GPOUT,150)
    assign out_unnamed_loop_pipeline12_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_address;

    // out_unnamed_loop_pipeline12_avm_burstcount(GPOUT,151)
    assign out_unnamed_loop_pipeline12_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_burstcount;

    // out_unnamed_loop_pipeline12_avm_byteenable(GPOUT,152)
    assign out_unnamed_loop_pipeline12_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_byteenable;

    // out_unnamed_loop_pipeline12_avm_enable(GPOUT,153)
    assign out_unnamed_loop_pipeline12_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_enable;

    // out_unnamed_loop_pipeline12_avm_read(GPOUT,154)
    assign out_unnamed_loop_pipeline12_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_read;

    // out_unnamed_loop_pipeline12_avm_write(GPOUT,155)
    assign out_unnamed_loop_pipeline12_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_write;

    // out_unnamed_loop_pipeline12_avm_writedata(GPOUT,156)
    assign out_unnamed_loop_pipeline12_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline12_avm_writedata;

    // out_unnamed_loop_pipeline13_avm_address(GPOUT,157)
    assign out_unnamed_loop_pipeline13_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_address;

    // out_unnamed_loop_pipeline13_avm_burstcount(GPOUT,158)
    assign out_unnamed_loop_pipeline13_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_burstcount;

    // out_unnamed_loop_pipeline13_avm_byteenable(GPOUT,159)
    assign out_unnamed_loop_pipeline13_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_byteenable;

    // out_unnamed_loop_pipeline13_avm_enable(GPOUT,160)
    assign out_unnamed_loop_pipeline13_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_enable;

    // out_unnamed_loop_pipeline13_avm_read(GPOUT,161)
    assign out_unnamed_loop_pipeline13_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_read;

    // out_unnamed_loop_pipeline13_avm_write(GPOUT,162)
    assign out_unnamed_loop_pipeline13_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_write;

    // out_unnamed_loop_pipeline13_avm_writedata(GPOUT,163)
    assign out_unnamed_loop_pipeline13_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline13_avm_writedata;

    // out_unnamed_loop_pipeline14_avm_address(GPOUT,164)
    assign out_unnamed_loop_pipeline14_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_address;

    // out_unnamed_loop_pipeline14_avm_burstcount(GPOUT,165)
    assign out_unnamed_loop_pipeline14_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_burstcount;

    // out_unnamed_loop_pipeline14_avm_byteenable(GPOUT,166)
    assign out_unnamed_loop_pipeline14_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_byteenable;

    // out_unnamed_loop_pipeline14_avm_enable(GPOUT,167)
    assign out_unnamed_loop_pipeline14_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_enable;

    // out_unnamed_loop_pipeline14_avm_read(GPOUT,168)
    assign out_unnamed_loop_pipeline14_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_read;

    // out_unnamed_loop_pipeline14_avm_write(GPOUT,169)
    assign out_unnamed_loop_pipeline14_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_write;

    // out_unnamed_loop_pipeline14_avm_writedata(GPOUT,170)
    assign out_unnamed_loop_pipeline14_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline14_avm_writedata;

    // out_unnamed_loop_pipeline15_avm_address(GPOUT,171)
    assign out_unnamed_loop_pipeline15_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_address;

    // out_unnamed_loop_pipeline15_avm_burstcount(GPOUT,172)
    assign out_unnamed_loop_pipeline15_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_burstcount;

    // out_unnamed_loop_pipeline15_avm_byteenable(GPOUT,173)
    assign out_unnamed_loop_pipeline15_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_byteenable;

    // out_unnamed_loop_pipeline15_avm_enable(GPOUT,174)
    assign out_unnamed_loop_pipeline15_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_enable;

    // out_unnamed_loop_pipeline15_avm_read(GPOUT,175)
    assign out_unnamed_loop_pipeline15_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_read;

    // out_unnamed_loop_pipeline15_avm_write(GPOUT,176)
    assign out_unnamed_loop_pipeline15_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_write;

    // out_unnamed_loop_pipeline15_avm_writedata(GPOUT,177)
    assign out_unnamed_loop_pipeline15_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline15_avm_writedata;

    // out_unnamed_loop_pipeline16_avm_address(GPOUT,178)
    assign out_unnamed_loop_pipeline16_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_address;

    // out_unnamed_loop_pipeline16_avm_burstcount(GPOUT,179)
    assign out_unnamed_loop_pipeline16_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_burstcount;

    // out_unnamed_loop_pipeline16_avm_byteenable(GPOUT,180)
    assign out_unnamed_loop_pipeline16_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_byteenable;

    // out_unnamed_loop_pipeline16_avm_enable(GPOUT,181)
    assign out_unnamed_loop_pipeline16_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_enable;

    // out_unnamed_loop_pipeline16_avm_read(GPOUT,182)
    assign out_unnamed_loop_pipeline16_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_read;

    // out_unnamed_loop_pipeline16_avm_write(GPOUT,183)
    assign out_unnamed_loop_pipeline16_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_write;

    // out_unnamed_loop_pipeline16_avm_writedata(GPOUT,184)
    assign out_unnamed_loop_pipeline16_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline16_avm_writedata;

    // out_unnamed_loop_pipeline17_avm_address(GPOUT,185)
    assign out_unnamed_loop_pipeline17_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_address;

    // out_unnamed_loop_pipeline17_avm_burstcount(GPOUT,186)
    assign out_unnamed_loop_pipeline17_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_burstcount;

    // out_unnamed_loop_pipeline17_avm_byteenable(GPOUT,187)
    assign out_unnamed_loop_pipeline17_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_byteenable;

    // out_unnamed_loop_pipeline17_avm_enable(GPOUT,188)
    assign out_unnamed_loop_pipeline17_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_enable;

    // out_unnamed_loop_pipeline17_avm_read(GPOUT,189)
    assign out_unnamed_loop_pipeline17_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_read;

    // out_unnamed_loop_pipeline17_avm_write(GPOUT,190)
    assign out_unnamed_loop_pipeline17_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_write;

    // out_unnamed_loop_pipeline17_avm_writedata(GPOUT,191)
    assign out_unnamed_loop_pipeline17_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline17_avm_writedata;

    // out_unnamed_loop_pipeline18_avm_address(GPOUT,192)
    assign out_unnamed_loop_pipeline18_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_address;

    // out_unnamed_loop_pipeline18_avm_burstcount(GPOUT,193)
    assign out_unnamed_loop_pipeline18_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_burstcount;

    // out_unnamed_loop_pipeline18_avm_byteenable(GPOUT,194)
    assign out_unnamed_loop_pipeline18_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_byteenable;

    // out_unnamed_loop_pipeline18_avm_enable(GPOUT,195)
    assign out_unnamed_loop_pipeline18_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_enable;

    // out_unnamed_loop_pipeline18_avm_read(GPOUT,196)
    assign out_unnamed_loop_pipeline18_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_read;

    // out_unnamed_loop_pipeline18_avm_write(GPOUT,197)
    assign out_unnamed_loop_pipeline18_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_write;

    // out_unnamed_loop_pipeline18_avm_writedata(GPOUT,198)
    assign out_unnamed_loop_pipeline18_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline18_avm_writedata;

    // out_unnamed_loop_pipeline19_avm_address(GPOUT,199)
    assign out_unnamed_loop_pipeline19_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_address;

    // out_unnamed_loop_pipeline19_avm_burstcount(GPOUT,200)
    assign out_unnamed_loop_pipeline19_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_burstcount;

    // out_unnamed_loop_pipeline19_avm_byteenable(GPOUT,201)
    assign out_unnamed_loop_pipeline19_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_byteenable;

    // out_unnamed_loop_pipeline19_avm_enable(GPOUT,202)
    assign out_unnamed_loop_pipeline19_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_enable;

    // out_unnamed_loop_pipeline19_avm_read(GPOUT,203)
    assign out_unnamed_loop_pipeline19_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_read;

    // out_unnamed_loop_pipeline19_avm_write(GPOUT,204)
    assign out_unnamed_loop_pipeline19_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_write;

    // out_unnamed_loop_pipeline19_avm_writedata(GPOUT,205)
    assign out_unnamed_loop_pipeline19_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline19_avm_writedata;

    // out_unnamed_loop_pipeline4_avm_address(GPOUT,206)
    assign out_unnamed_loop_pipeline4_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_address;

    // out_unnamed_loop_pipeline4_avm_burstcount(GPOUT,207)
    assign out_unnamed_loop_pipeline4_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_burstcount;

    // out_unnamed_loop_pipeline4_avm_byteenable(GPOUT,208)
    assign out_unnamed_loop_pipeline4_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_byteenable;

    // out_unnamed_loop_pipeline4_avm_enable(GPOUT,209)
    assign out_unnamed_loop_pipeline4_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_enable;

    // out_unnamed_loop_pipeline4_avm_read(GPOUT,210)
    assign out_unnamed_loop_pipeline4_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_read;

    // out_unnamed_loop_pipeline4_avm_write(GPOUT,211)
    assign out_unnamed_loop_pipeline4_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_write;

    // out_unnamed_loop_pipeline4_avm_writedata(GPOUT,212)
    assign out_unnamed_loop_pipeline4_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline4_avm_writedata;

    // out_unnamed_loop_pipeline5_avm_address(GPOUT,213)
    assign out_unnamed_loop_pipeline5_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_address;

    // out_unnamed_loop_pipeline5_avm_burstcount(GPOUT,214)
    assign out_unnamed_loop_pipeline5_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_burstcount;

    // out_unnamed_loop_pipeline5_avm_byteenable(GPOUT,215)
    assign out_unnamed_loop_pipeline5_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_byteenable;

    // out_unnamed_loop_pipeline5_avm_enable(GPOUT,216)
    assign out_unnamed_loop_pipeline5_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_enable;

    // out_unnamed_loop_pipeline5_avm_read(GPOUT,217)
    assign out_unnamed_loop_pipeline5_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_read;

    // out_unnamed_loop_pipeline5_avm_write(GPOUT,218)
    assign out_unnamed_loop_pipeline5_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_write;

    // out_unnamed_loop_pipeline5_avm_writedata(GPOUT,219)
    assign out_unnamed_loop_pipeline5_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline5_avm_writedata;

    // out_unnamed_loop_pipeline6_avm_address(GPOUT,220)
    assign out_unnamed_loop_pipeline6_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_address;

    // out_unnamed_loop_pipeline6_avm_burstcount(GPOUT,221)
    assign out_unnamed_loop_pipeline6_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_burstcount;

    // out_unnamed_loop_pipeline6_avm_byteenable(GPOUT,222)
    assign out_unnamed_loop_pipeline6_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_byteenable;

    // out_unnamed_loop_pipeline6_avm_enable(GPOUT,223)
    assign out_unnamed_loop_pipeline6_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_enable;

    // out_unnamed_loop_pipeline6_avm_read(GPOUT,224)
    assign out_unnamed_loop_pipeline6_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_read;

    // out_unnamed_loop_pipeline6_avm_write(GPOUT,225)
    assign out_unnamed_loop_pipeline6_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_write;

    // out_unnamed_loop_pipeline6_avm_writedata(GPOUT,226)
    assign out_unnamed_loop_pipeline6_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline6_avm_writedata;

    // out_unnamed_loop_pipeline7_avm_address(GPOUT,227)
    assign out_unnamed_loop_pipeline7_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_address;

    // out_unnamed_loop_pipeline7_avm_burstcount(GPOUT,228)
    assign out_unnamed_loop_pipeline7_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_burstcount;

    // out_unnamed_loop_pipeline7_avm_byteenable(GPOUT,229)
    assign out_unnamed_loop_pipeline7_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_byteenable;

    // out_unnamed_loop_pipeline7_avm_enable(GPOUT,230)
    assign out_unnamed_loop_pipeline7_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_enable;

    // out_unnamed_loop_pipeline7_avm_read(GPOUT,231)
    assign out_unnamed_loop_pipeline7_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_read;

    // out_unnamed_loop_pipeline7_avm_write(GPOUT,232)
    assign out_unnamed_loop_pipeline7_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_write;

    // out_unnamed_loop_pipeline7_avm_writedata(GPOUT,233)
    assign out_unnamed_loop_pipeline7_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline7_avm_writedata;

    // out_unnamed_loop_pipeline8_avm_address(GPOUT,234)
    assign out_unnamed_loop_pipeline8_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_address;

    // out_unnamed_loop_pipeline8_avm_burstcount(GPOUT,235)
    assign out_unnamed_loop_pipeline8_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_burstcount;

    // out_unnamed_loop_pipeline8_avm_byteenable(GPOUT,236)
    assign out_unnamed_loop_pipeline8_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_byteenable;

    // out_unnamed_loop_pipeline8_avm_enable(GPOUT,237)
    assign out_unnamed_loop_pipeline8_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_enable;

    // out_unnamed_loop_pipeline8_avm_read(GPOUT,238)
    assign out_unnamed_loop_pipeline8_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_read;

    // out_unnamed_loop_pipeline8_avm_write(GPOUT,239)
    assign out_unnamed_loop_pipeline8_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_write;

    // out_unnamed_loop_pipeline8_avm_writedata(GPOUT,240)
    assign out_unnamed_loop_pipeline8_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline8_avm_writedata;

    // out_unnamed_loop_pipeline9_avm_address(GPOUT,241)
    assign out_unnamed_loop_pipeline9_avm_address = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_address;

    // out_unnamed_loop_pipeline9_avm_burstcount(GPOUT,242)
    assign out_unnamed_loop_pipeline9_avm_burstcount = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_burstcount;

    // out_unnamed_loop_pipeline9_avm_byteenable(GPOUT,243)
    assign out_unnamed_loop_pipeline9_avm_byteenable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_byteenable;

    // out_unnamed_loop_pipeline9_avm_enable(GPOUT,244)
    assign out_unnamed_loop_pipeline9_avm_enable = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_enable;

    // out_unnamed_loop_pipeline9_avm_read(GPOUT,245)
    assign out_unnamed_loop_pipeline9_avm_read = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_read;

    // out_unnamed_loop_pipeline9_avm_write(GPOUT,246)
    assign out_unnamed_loop_pipeline9_avm_write = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_write;

    // out_unnamed_loop_pipeline9_avm_writedata(GPOUT,247)
    assign out_unnamed_loop_pipeline9_avm_writedata = bb_loop_pipeline_B1_start_out_unnamed_loop_pipeline9_avm_writedata;

    // out_valid_out(GPOUT,248)
    assign out_valid_out = GND_q;

endmodule
