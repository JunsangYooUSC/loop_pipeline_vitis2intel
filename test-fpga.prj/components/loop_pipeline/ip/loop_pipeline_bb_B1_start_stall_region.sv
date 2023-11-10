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

// SystemVerilog created from loop_pipeline_bb_B1_start_stall_region
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_bb_B1_start_stall_region (
    input wire [63:0] in_iord_bl_do_i_fifodata,
    input wire [0:0] in_iord_bl_do_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out,
    input wire [7:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [23:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_pre1_avm_readdata,
    input wire [0:0] in_pre1_avm_writeack,
    input wire [0:0] in_pre1_avm_waitrequest,
    input wire [0:0] in_pre1_avm_readdatavalid,
    output wire [0:0] out_iord_bl_do_o_fifoready,
    input wire [23:0] in_intel_reserved_ffwd_24_0,
    output wire [19:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_forked29,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_pre2552_avm_readdata,
    input wire [0:0] in_pre2552_avm_writeack,
    input wire [0:0] in_pre2552_avm_waitrequest,
    input wire [0:0] in_pre2552_avm_readdatavalid,
    output wire [63:0] out_pre1_avm_address,
    output wire [0:0] out_pre1_avm_enable,
    output wire [0:0] out_pre1_avm_read,
    output wire [0:0] out_pre1_avm_write,
    output wire [63:0] out_pre1_avm_writedata,
    output wire [7:0] out_pre1_avm_byteenable,
    output wire [0:0] out_pre1_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_11_0,
    input wire [63:0] in_pre2563_avm_readdata,
    input wire [0:0] in_pre2563_avm_writeack,
    input wire [0:0] in_pre2563_avm_waitrequest,
    input wire [0:0] in_pre2563_avm_readdatavalid,
    output wire [63:0] out_pre2552_avm_address,
    output wire [0:0] out_pre2552_avm_enable,
    output wire [0:0] out_pre2552_avm_read,
    output wire [0:0] out_pre2552_avm_write,
    output wire [63:0] out_pre2552_avm_writedata,
    output wire [7:0] out_pre2552_avm_byteenable,
    output wire [0:0] out_pre2552_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_12_0,
    input wire [63:0] in_pre2574_avm_readdata,
    input wire [0:0] in_pre2574_avm_writeack,
    input wire [0:0] in_pre2574_avm_waitrequest,
    input wire [0:0] in_pre2574_avm_readdatavalid,
    output wire [63:0] out_pre2563_avm_address,
    output wire [0:0] out_pre2563_avm_enable,
    output wire [0:0] out_pre2563_avm_read,
    output wire [0:0] out_pre2563_avm_write,
    output wire [63:0] out_pre2563_avm_writedata,
    output wire [7:0] out_pre2563_avm_byteenable,
    output wire [0:0] out_pre2563_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_13_0,
    input wire [63:0] in_unnamed_loop_pipeline4_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline4_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline4_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline4_avm_readdatavalid,
    output wire [63:0] out_pre2574_avm_address,
    output wire [0:0] out_pre2574_avm_enable,
    output wire [0:0] out_pre2574_avm_read,
    output wire [0:0] out_pre2574_avm_write,
    output wire [63:0] out_pre2574_avm_writedata,
    output wire [7:0] out_pre2574_avm_byteenable,
    output wire [0:0] out_pre2574_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_14_0,
    input wire [63:0] in_unnamed_loop_pipeline5_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline5_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline5_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline5_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline4_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline4_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline4_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline4_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_15_0,
    input wire [63:0] in_unnamed_loop_pipeline6_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline6_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline6_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline6_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline5_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline5_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline5_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline5_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_16_0,
    input wire [63:0] in_unnamed_loop_pipeline7_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline7_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline7_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline7_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline6_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline6_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline6_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline6_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_17_0,
    input wire [63:0] in_unnamed_loop_pipeline8_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline8_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline8_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline8_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline7_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline7_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline7_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline7_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_18_0,
    input wire [63:0] in_unnamed_loop_pipeline9_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline9_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline9_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline9_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline8_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline8_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline8_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline8_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_19_0,
    input wire [63:0] in_unnamed_loop_pipeline10_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline10_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline10_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline10_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline9_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline9_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline9_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline9_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_1_0,
    input wire [63:0] in_unnamed_loop_pipeline11_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline11_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline11_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline11_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline10_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline10_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline10_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline10_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_20_0,
    input wire [63:0] in_unnamed_loop_pipeline12_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline12_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline12_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline12_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline11_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline11_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline11_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline11_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_21_0,
    input wire [63:0] in_unnamed_loop_pipeline13_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline13_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline13_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline13_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline12_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline12_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline12_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline12_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_2_0,
    input wire [63:0] in_unnamed_loop_pipeline14_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline14_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline14_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline14_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline13_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline13_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline13_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline13_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_3_0,
    input wire [63:0] in_unnamed_loop_pipeline15_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline15_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline15_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline15_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline14_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline14_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline14_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline14_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_4_0,
    input wire [63:0] in_unnamed_loop_pipeline16_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline16_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline16_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline16_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline15_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline15_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline15_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline15_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_5_0,
    input wire [63:0] in_unnamed_loop_pipeline17_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline17_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline17_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline17_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline16_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline16_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline16_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline16_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_6_0,
    input wire [63:0] in_unnamed_loop_pipeline18_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline18_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline18_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline18_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline17_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline17_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline17_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline17_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_7_0,
    input wire [63:0] in_unnamed_loop_pipeline19_avm_readdata,
    input wire [0:0] in_unnamed_loop_pipeline19_avm_writeack,
    input wire [0:0] in_unnamed_loop_pipeline19_avm_waitrequest,
    input wire [0:0] in_unnamed_loop_pipeline19_avm_readdatavalid,
    output wire [63:0] out_unnamed_loop_pipeline18_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline18_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline18_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline18_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_unnamed_loop_pipeline19_avm_address,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_enable,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_read,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_write,
    output wire [63:0] out_unnamed_loop_pipeline19_avm_writedata,
    output wire [7:0] out_unnamed_loop_pipeline19_avm_byteenable,
    output wire [0:0] out_unnamed_loop_pipeline19_avm_burstcount,
    output wire [19:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [23:0] c_i24_0gr_q;
    wire [23:0] i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_valid_out;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_valid_out;
    wire [23:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_valid_out;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_writedata;
    wire [4:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_readdata;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_stall;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_valid;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_address;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_burstcount;
    wire [7:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_byteenable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_enable;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_read;
    wire [0:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_write;
    wire [63:0] i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_valid_out;
    wire [0:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_s;
    reg [23:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_q;
    wire [19:0] i_conv_i1_i_i_10_loop_pipeline149_sel_x_b;
    wire [19:0] i_conv_i1_i_i_11_loop_pipeline150_sel_x_b;
    wire [19:0] i_conv_i1_i_i_12_loop_pipeline151_sel_x_b;
    wire [19:0] i_conv_i1_i_i_13_loop_pipeline152_sel_x_b;
    wire [19:0] i_conv_i1_i_i_14_loop_pipeline153_sel_x_b;
    wire [19:0] i_conv_i1_i_i_15_loop_pipeline154_sel_x_b;
    wire [19:0] i_conv_i1_i_i_16_loop_pipeline155_sel_x_b;
    wire [19:0] i_conv_i1_i_i_17_loop_pipeline156_sel_x_b;
    wire [19:0] i_conv_i1_i_i_18_loop_pipeline157_sel_x_b;
    wire [19:0] i_conv_i1_i_i_19_loop_pipeline158_sel_x_b;
    wire [19:0] i_conv_i1_i_i_1_loop_pipeline140_sel_x_b;
    wire [19:0] i_conv_i1_i_i_2_loop_pipeline141_sel_x_b;
    wire [19:0] i_conv_i1_i_i_3_loop_pipeline142_sel_x_b;
    wire [19:0] i_conv_i1_i_i_4_loop_pipeline143_sel_x_b;
    wire [19:0] i_conv_i1_i_i_5_loop_pipeline144_sel_x_b;
    wire [19:0] i_conv_i1_i_i_6_loop_pipeline145_sel_x_b;
    wire [19:0] i_conv_i1_i_i_7_loop_pipeline146_sel_x_b;
    wire [19:0] i_conv_i1_i_i_8_loop_pipeline147_sel_x_b;
    wire [19:0] i_conv_i1_i_i_9_loop_pipeline148_sel_x_b;
    wire [19:0] i_conv_i1_i_i_loop_pipeline139_sel_x_b;
    wire [0:0] i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_iord_bl_do_o_fifoready;
    wire [0:0] i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_data_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2;
    wire [64:0] i_value_i_i_i_10_loop_pipeline57_add_x_a;
    wire [64:0] i_value_i_i_i_10_loop_pipeline57_add_x_b;
    logic [64:0] i_value_i_i_i_10_loop_pipeline57_add_x_o;
    wire [64:0] i_value_i_i_i_10_loop_pipeline57_add_x_q;
    wire [63:0] i_value_i_i_i_10_loop_pipeline57_c_i64_10_x_q;
    wire [63:0] i_value_i_i_i_10_loop_pipeline57_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_11_loop_pipeline59_add_x_a;
    wire [64:0] i_value_i_i_i_11_loop_pipeline59_add_x_b;
    logic [64:0] i_value_i_i_i_11_loop_pipeline59_add_x_o;
    wire [64:0] i_value_i_i_i_11_loop_pipeline59_add_x_q;
    wire [63:0] i_value_i_i_i_11_loop_pipeline59_c_i64_11_x_q;
    wire [63:0] i_value_i_i_i_11_loop_pipeline59_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_12_loop_pipeline61_add_x_a;
    wire [64:0] i_value_i_i_i_12_loop_pipeline61_add_x_b;
    logic [64:0] i_value_i_i_i_12_loop_pipeline61_add_x_o;
    wire [64:0] i_value_i_i_i_12_loop_pipeline61_add_x_q;
    wire [63:0] i_value_i_i_i_12_loop_pipeline61_c_i64_12_x_q;
    wire [63:0] i_value_i_i_i_12_loop_pipeline61_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_13_loop_pipeline63_add_x_a;
    wire [64:0] i_value_i_i_i_13_loop_pipeline63_add_x_b;
    logic [64:0] i_value_i_i_i_13_loop_pipeline63_add_x_o;
    wire [64:0] i_value_i_i_i_13_loop_pipeline63_add_x_q;
    wire [63:0] i_value_i_i_i_13_loop_pipeline63_c_i64_13_x_q;
    wire [63:0] i_value_i_i_i_13_loop_pipeline63_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_14_loop_pipeline65_add_x_a;
    wire [64:0] i_value_i_i_i_14_loop_pipeline65_add_x_b;
    logic [64:0] i_value_i_i_i_14_loop_pipeline65_add_x_o;
    wire [64:0] i_value_i_i_i_14_loop_pipeline65_add_x_q;
    wire [63:0] i_value_i_i_i_14_loop_pipeline65_c_i64_14_x_q;
    wire [63:0] i_value_i_i_i_14_loop_pipeline65_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_15_loop_pipeline67_add_x_a;
    wire [64:0] i_value_i_i_i_15_loop_pipeline67_add_x_b;
    logic [64:0] i_value_i_i_i_15_loop_pipeline67_add_x_o;
    wire [64:0] i_value_i_i_i_15_loop_pipeline67_add_x_q;
    wire [63:0] i_value_i_i_i_15_loop_pipeline67_c_i64_15_x_q;
    wire [63:0] i_value_i_i_i_15_loop_pipeline67_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_16_loop_pipeline69_add_x_a;
    wire [64:0] i_value_i_i_i_16_loop_pipeline69_add_x_b;
    logic [64:0] i_value_i_i_i_16_loop_pipeline69_add_x_o;
    wire [64:0] i_value_i_i_i_16_loop_pipeline69_add_x_q;
    wire [63:0] i_value_i_i_i_16_loop_pipeline69_c_i64_16_x_q;
    wire [63:0] i_value_i_i_i_16_loop_pipeline69_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_17_loop_pipeline71_add_x_a;
    wire [64:0] i_value_i_i_i_17_loop_pipeline71_add_x_b;
    logic [64:0] i_value_i_i_i_17_loop_pipeline71_add_x_o;
    wire [64:0] i_value_i_i_i_17_loop_pipeline71_add_x_q;
    wire [63:0] i_value_i_i_i_17_loop_pipeline71_c_i64_17_x_q;
    wire [63:0] i_value_i_i_i_17_loop_pipeline71_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_18_loop_pipeline73_add_x_a;
    wire [64:0] i_value_i_i_i_18_loop_pipeline73_add_x_b;
    logic [64:0] i_value_i_i_i_18_loop_pipeline73_add_x_o;
    wire [64:0] i_value_i_i_i_18_loop_pipeline73_add_x_q;
    wire [63:0] i_value_i_i_i_18_loop_pipeline73_c_i64_18_x_q;
    wire [63:0] i_value_i_i_i_18_loop_pipeline73_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_19_loop_pipeline75_add_x_a;
    wire [64:0] i_value_i_i_i_19_loop_pipeline75_add_x_b;
    logic [64:0] i_value_i_i_i_19_loop_pipeline75_add_x_o;
    wire [64:0] i_value_i_i_i_19_loop_pipeline75_add_x_q;
    wire [63:0] i_value_i_i_i_19_loop_pipeline75_c_i64_19_x_q;
    wire [63:0] i_value_i_i_i_19_loop_pipeline75_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_1_loop_pipeline39_add_x_a;
    wire [64:0] i_value_i_i_i_1_loop_pipeline39_add_x_b;
    logic [64:0] i_value_i_i_i_1_loop_pipeline39_add_x_o;
    wire [64:0] i_value_i_i_i_1_loop_pipeline39_add_x_q;
    wire [63:0] i_value_i_i_i_1_loop_pipeline39_c_i64_1gr_x_q;
    wire [63:0] i_value_i_i_i_1_loop_pipeline39_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_2_loop_pipeline41_add_x_a;
    wire [64:0] i_value_i_i_i_2_loop_pipeline41_add_x_b;
    logic [64:0] i_value_i_i_i_2_loop_pipeline41_add_x_o;
    wire [64:0] i_value_i_i_i_2_loop_pipeline41_add_x_q;
    wire [63:0] i_value_i_i_i_2_loop_pipeline41_c_i64_2gr_x_q;
    wire [63:0] i_value_i_i_i_2_loop_pipeline41_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_3_loop_pipeline43_add_x_a;
    wire [64:0] i_value_i_i_i_3_loop_pipeline43_add_x_b;
    logic [64:0] i_value_i_i_i_3_loop_pipeline43_add_x_o;
    wire [64:0] i_value_i_i_i_3_loop_pipeline43_add_x_q;
    wire [63:0] i_value_i_i_i_3_loop_pipeline43_c_i64_3gr_x_q;
    wire [63:0] i_value_i_i_i_3_loop_pipeline43_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_4_loop_pipeline45_add_x_a;
    wire [64:0] i_value_i_i_i_4_loop_pipeline45_add_x_b;
    logic [64:0] i_value_i_i_i_4_loop_pipeline45_add_x_o;
    wire [64:0] i_value_i_i_i_4_loop_pipeline45_add_x_q;
    wire [63:0] i_value_i_i_i_4_loop_pipeline45_c_i64_4gr_x_q;
    wire [63:0] i_value_i_i_i_4_loop_pipeline45_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_5_loop_pipeline47_add_x_a;
    wire [64:0] i_value_i_i_i_5_loop_pipeline47_add_x_b;
    logic [64:0] i_value_i_i_i_5_loop_pipeline47_add_x_o;
    wire [64:0] i_value_i_i_i_5_loop_pipeline47_add_x_q;
    wire [63:0] i_value_i_i_i_5_loop_pipeline47_c_i64_5gr_x_q;
    wire [63:0] i_value_i_i_i_5_loop_pipeline47_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_6_loop_pipeline49_add_x_a;
    wire [64:0] i_value_i_i_i_6_loop_pipeline49_add_x_b;
    logic [64:0] i_value_i_i_i_6_loop_pipeline49_add_x_o;
    wire [64:0] i_value_i_i_i_6_loop_pipeline49_add_x_q;
    wire [63:0] i_value_i_i_i_6_loop_pipeline49_c_i64_6gr_x_q;
    wire [63:0] i_value_i_i_i_6_loop_pipeline49_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_7_loop_pipeline51_add_x_a;
    wire [64:0] i_value_i_i_i_7_loop_pipeline51_add_x_b;
    logic [64:0] i_value_i_i_i_7_loop_pipeline51_add_x_o;
    wire [64:0] i_value_i_i_i_7_loop_pipeline51_add_x_q;
    wire [63:0] i_value_i_i_i_7_loop_pipeline51_c_i64_7gr_x_q;
    wire [63:0] i_value_i_i_i_7_loop_pipeline51_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_8_loop_pipeline53_add_x_a;
    wire [64:0] i_value_i_i_i_8_loop_pipeline53_add_x_b;
    logic [64:0] i_value_i_i_i_8_loop_pipeline53_add_x_o;
    wire [64:0] i_value_i_i_i_8_loop_pipeline53_add_x_q;
    wire [63:0] i_value_i_i_i_8_loop_pipeline53_c_i64_8gr_x_q;
    wire [63:0] i_value_i_i_i_8_loop_pipeline53_trunc_sel_x_b;
    wire [64:0] i_value_i_i_i_9_loop_pipeline55_add_x_a;
    wire [64:0] i_value_i_i_i_9_loop_pipeline55_add_x_b;
    logic [64:0] i_value_i_i_i_9_loop_pipeline55_add_x_o;
    wire [64:0] i_value_i_i_i_9_loop_pipeline55_add_x_q;
    wire [63:0] i_value_i_i_i_9_loop_pipeline55_c_i64_9gr_x_q;
    wire [63:0] i_value_i_i_i_9_loop_pipeline55_trunc_sel_x_b;
    wire [19:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t_loop_pipeline32_sel_x_b;
    wire [0:0] loop_pipeline_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] loop_pipeline_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] loop_pipeline_B1_start_merge_reg_aunroll_x_out_data_out_0;
    reg [0:0] redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_q;
    wire [23:0] bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_q;
    wire [23:0] bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_b;
    wire [4:0] bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_q;
    wire [4:0] bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_join_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_b;
    wire [0:0] bubble_join_loop_pipeline_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_loop_pipeline_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_V0;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_backStall;
    wire [0:0] SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V2;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg5;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed5;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg6;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed6;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg7;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed7;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg8;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed8;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg9;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed9;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg10;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg10;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed10;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg11;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg11;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed11;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg12;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg12;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed12;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg13;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg13;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed13;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg14;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg14;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed14;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg15;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg15;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed15;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg16;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg16;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed16;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg17;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg17;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed17;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg18;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg18;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed18;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg19;
    reg [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg19;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed19;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or4;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or5;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or6;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or7;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or8;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or9;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or10;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or11;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or12;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or13;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or14;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or15;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or16;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or17;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or18;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V4;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V5;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V6;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V7;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V8;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V9;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V10;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V11;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V12;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V13;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V14;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V15;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V16;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V17;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V18;
    wire [0:0] SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V19;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_V0;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_V1;
    reg [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_v_s_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backEN;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backStall;
    wire [0:0] SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and9;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and10;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and11;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and12;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and13;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and14;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and15;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and16;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and17;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and18;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and19;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and20;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,498)
    assign bubble_join_stall_entry_q = in_forked29;

    // bubble_select_stall_entry(BITSELECT,499)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];

    // SE_stall_entry(STALLENABLE,600)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = loop_pipeline_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // loop_pipeline_B1_start_merge_reg_aunroll_x(BLACKBOX,385)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0@1
    loop_pipeline_B1_start_merge_reg theloop_pipeline_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0(bubble_select_stall_entry_b),
        .out_stall_out(loop_pipeline_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(loop_pipeline_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0(loop_pipeline_B1_start_merge_reg_aunroll_x_out_data_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_loop_pipeline_B1_start_merge_reg_aunroll_x(BITJOIN,508)
    assign bubble_join_loop_pipeline_B1_start_merge_reg_aunroll_x_q = loop_pipeline_B1_start_merge_reg_aunroll_x_out_data_out_0;

    // bubble_select_loop_pipeline_B1_start_merge_reg_aunroll_x(BITSELECT,509)
    assign bubble_select_loop_pipeline_B1_start_merge_reg_aunroll_x_b = bubble_join_loop_pipeline_B1_start_merge_reg_aunroll_x_q[0:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79(STALLENABLE,558)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79(BITJOIN,435)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79(BITSELECT,436)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_q[4:0];

    // i_conv_i1_i_i_loop_pipeline139_sel_x(BITSELECT,305)@34
    assign i_conv_i1_i_i_loop_pipeline139_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159(BLACKBOX,54)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_20_loop_pipeline160 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159 (
        .in_enable_in(VCC_q),
        .in_src_data_in_18_0(i_conv_i1_i_i_loop_pipeline139_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_V0),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_intel_reserved_ffwd_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82(STALLENABLE,560)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82(BITJOIN,438)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82(BITSELECT,439)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_q[4:0];

    // i_conv_i1_i_i_1_loop_pipeline140_sel_x(BITSELECT,296)@34
    assign i_conv_i1_i_i_1_loop_pipeline140_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162(BLACKBOX,55)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_21_loop_pipeline163 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162 (
        .in_enable_in(VCC_q),
        .in_src_data_in_19_0(i_conv_i1_i_i_1_loop_pipeline140_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_V0),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_intel_reserved_ffwd_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85(STALLENABLE,562)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85(BITJOIN,441)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85(BITSELECT,442)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_q[4:0];

    // i_conv_i1_i_i_2_loop_pipeline141_sel_x(BITSELECT,297)@34
    assign i_conv_i1_i_i_2_loop_pipeline141_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165(BLACKBOX,56)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_22_loop_pipeline166 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165 (
        .in_enable_in(VCC_q),
        .in_src_data_in_20_0(i_conv_i1_i_i_2_loop_pipeline141_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_V0),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_intel_reserved_ffwd_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88(STALLENABLE,564)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88(BITJOIN,444)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88(BITSELECT,445)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_q[4:0];

    // i_conv_i1_i_i_3_loop_pipeline142_sel_x(BITSELECT,298)@34
    assign i_conv_i1_i_i_3_loop_pipeline142_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168(BLACKBOX,57)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_23_loop_pipeline169 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168 (
        .in_enable_in(VCC_q),
        .in_src_data_in_21_0(i_conv_i1_i_i_3_loop_pipeline142_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_V0),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_intel_reserved_ffwd_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91(STALLENABLE,586)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91(BITJOIN,477)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91(BITSELECT,478)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_q[4:0];

    // i_conv_i1_i_i_4_loop_pipeline143_sel_x(BITSELECT,299)@34
    assign i_conv_i1_i_i_4_loop_pipeline143_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171(BLACKBOX,58)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_24_loop_pipeline172 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171 (
        .in_enable_in(VCC_q),
        .in_src_data_in_2_0(i_conv_i1_i_i_4_loop_pipeline143_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94(STALLENABLE,588)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94(BITJOIN,480)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94(BITSELECT,481)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_q[4:0];

    // i_conv_i1_i_i_5_loop_pipeline144_sel_x(BITSELECT,300)@34
    assign i_conv_i1_i_i_5_loop_pipeline144_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174(BLACKBOX,59)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_25_loop_pipeline175 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174 (
        .in_enable_in(VCC_q),
        .in_src_data_in_3_0(i_conv_i1_i_i_5_loop_pipeline144_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97(STALLENABLE,590)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97(BITJOIN,483)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97(BITSELECT,484)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_q[4:0];

    // i_conv_i1_i_i_6_loop_pipeline145_sel_x(BITSELECT,301)@34
    assign i_conv_i1_i_i_6_loop_pipeline145_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177(BLACKBOX,60)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_26_loop_pipeline178 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177 (
        .in_enable_in(VCC_q),
        .in_src_data_in_4_0(i_conv_i1_i_i_6_loop_pipeline145_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100(STALLENABLE,592)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100(BITJOIN,486)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100(BITSELECT,487)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_q[4:0];

    // i_conv_i1_i_i_7_loop_pipeline146_sel_x(BITSELECT,302)@34
    assign i_conv_i1_i_i_7_loop_pipeline146_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180(BLACKBOX,61)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_27_loop_pipeline181 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180 (
        .in_enable_in(VCC_q),
        .in_src_data_in_5_0(i_conv_i1_i_i_7_loop_pipeline146_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103(STALLENABLE,594)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103(BITJOIN,489)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103(BITSELECT,490)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_q[4:0];

    // i_conv_i1_i_i_8_loop_pipeline147_sel_x(BITSELECT,303)@34
    assign i_conv_i1_i_i_8_loop_pipeline147_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183(BLACKBOX,62)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_28_loop_pipeline184 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183 (
        .in_enable_in(VCC_q),
        .in_src_data_in_6_0(i_conv_i1_i_i_8_loop_pipeline147_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109(STALLENABLE,566)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109(BITJOIN,447)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109(BITSELECT,448)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_q[4:0];

    // i_conv_i1_i_i_10_loop_pipeline149_sel_x(BITSELECT,286)@34
    assign i_conv_i1_i_i_10_loop_pipeline149_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189(BLACKBOX,64)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_30_loop_pipeline190 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189 (
        .in_enable_in(VCC_q),
        .in_src_data_in_8_0(i_conv_i1_i_i_10_loop_pipeline149_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_V0),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112(STALLENABLE,568)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112(BITJOIN,450)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112(BITSELECT,451)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_q[4:0];

    // i_conv_i1_i_i_11_loop_pipeline150_sel_x(BITSELECT,287)@34
    assign i_conv_i1_i_i_11_loop_pipeline150_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192(BLACKBOX,65)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_31_loop_pipeline193 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192 (
        .in_enable_in(VCC_q),
        .in_src_data_in_9_0(i_conv_i1_i_i_11_loop_pipeline150_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_V0),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115(STALLENABLE,570)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115(BITJOIN,453)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115(BITSELECT,454)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_q[4:0];

    // i_conv_i1_i_i_12_loop_pipeline151_sel_x(BITSELECT,288)@34
    assign i_conv_i1_i_i_12_loop_pipeline151_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195(BLACKBOX,66)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_32_loop_pipeline196 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195 (
        .in_enable_in(VCC_q),
        .in_src_data_in_10_0(i_conv_i1_i_i_12_loop_pipeline151_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118(STALLENABLE,572)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118(BITJOIN,456)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118(BITSELECT,457)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_q[4:0];

    // i_conv_i1_i_i_13_loop_pipeline152_sel_x(BITSELECT,289)@34
    assign i_conv_i1_i_i_13_loop_pipeline152_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198(BLACKBOX,67)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_33_loop_pipeline199 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198 (
        .in_enable_in(VCC_q),
        .in_src_data_in_11_0(i_conv_i1_i_i_13_loop_pipeline152_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_V0),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121(STALLENABLE,574)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121(BITJOIN,459)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121(BITSELECT,460)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_q[4:0];

    // i_conv_i1_i_i_14_loop_pipeline153_sel_x(BITSELECT,290)@34
    assign i_conv_i1_i_i_14_loop_pipeline153_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201(BLACKBOX,68)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_34_loop_pipeline202 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201 (
        .in_enable_in(VCC_q),
        .in_src_data_in_12_0(i_conv_i1_i_i_14_loop_pipeline153_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_V0),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124(STALLENABLE,576)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124(BITJOIN,462)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124(BITSELECT,463)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_q[4:0];

    // i_conv_i1_i_i_15_loop_pipeline154_sel_x(BITSELECT,291)@34
    assign i_conv_i1_i_i_15_loop_pipeline154_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204(BLACKBOX,69)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_35_loop_pipeline205 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204 (
        .in_enable_in(VCC_q),
        .in_src_data_in_13_0(i_conv_i1_i_i_15_loop_pipeline154_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_V0),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127(STALLENABLE,578)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127(BITJOIN,465)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127(BITSELECT,466)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_q[4:0];

    // i_conv_i1_i_i_16_loop_pipeline155_sel_x(BITSELECT,292)@34
    assign i_conv_i1_i_i_16_loop_pipeline155_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207(BLACKBOX,70)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_36_loop_pipeline208 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207 (
        .in_enable_in(VCC_q),
        .in_src_data_in_14_0(i_conv_i1_i_i_16_loop_pipeline155_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_V0),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130(STALLENABLE,580)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130(BITJOIN,468)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130(BITSELECT,469)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_q[4:0];

    // i_conv_i1_i_i_17_loop_pipeline156_sel_x(BITSELECT,293)@34
    assign i_conv_i1_i_i_17_loop_pipeline156_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210(BLACKBOX,71)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_37_loop_pipeline211 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210 (
        .in_enable_in(VCC_q),
        .in_src_data_in_15_0(i_conv_i1_i_i_17_loop_pipeline156_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_V0),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133(STALLENABLE,582)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133(BITJOIN,471)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133(BITSELECT,472)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_q[4:0];

    // i_conv_i1_i_i_18_loop_pipeline157_sel_x(BITSELECT,294)@34
    assign i_conv_i1_i_i_18_loop_pipeline157_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213(BLACKBOX,72)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_38_loop_pipeline214 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213 (
        .in_enable_in(VCC_q),
        .in_src_data_in_16_0(i_conv_i1_i_i_18_loop_pipeline157_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_V0),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_intel_reserved_ffwd_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136(STALLENABLE,584)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_valid;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136(BITJOIN,474)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136(BITSELECT,475)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_q[4:0];

    // i_conv_i1_i_i_19_loop_pipeline158_sel_x(BITSELECT,295)@34
    assign i_conv_i1_i_i_19_loop_pipeline158_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_b[4:0]};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216(BLACKBOX,73)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_39_loop_pipeline217 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216 (
        .in_enable_in(VCC_q),
        .in_src_data_in_17_0(i_conv_i1_i_i_19_loop_pipeline158_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_V0),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_intel_reserved_ffwd_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i24_0gr(CONSTANT,5)
    assign c_i24_0gr_q = 24'b000000000000000000000000;

    // bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25(BITJOIN,410)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_q = i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25(BITSELECT,411)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_b = bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_q[23:0];

    // SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0(STALLENABLE,667)
    // Valid signal propagation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_V0 = SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_backStall & SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backEN = ~ (SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_v_s_0 = SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backEN & SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backStall = ~ (SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0 & SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_R_v_0 <= SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x(BITJOIN,505)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_q = i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2;

    // bubble_select_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x(BITSELECT,506)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_b = bubble_join_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_q[0:0];

    // redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0(REG,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_q <= 1'b0;
        end
        else if (SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backEN == 1'b1)
        begin
            redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_q <= bubble_select_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_b;
        end
    end

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30(MUX,98)@2
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_s = redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_q;
    always @(i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_s or bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_b or c_i24_0gr_q)
    begin
        unique case (i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_s)
            1'b0 : i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_q = bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_b;
            1'b1 : i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_q = c_i24_0gr_q;
            default : i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_q = 24'b0;
        endcase
    end

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t_loop_pipeline32_sel_x(BITSELECT,384)@2
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t_loop_pipeline32_sel_x_b = i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_q[19:0];

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76(BLACKBOX,74)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Zed_3_loop_pipeline77 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76 (
        .in_enable_in(VCC_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_b),
        .in_src_data_in_1_0(i_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t_loop_pipeline32_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76(STALLENABLE,554)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_V0 = SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_backStall = bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_wireValid = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg(STALLFIFO,820)
    assign bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33(BLACKBOX,75)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Zed_2_loop_pipeline34 thei_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33 (
        .in_enable_in(VCC_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_b),
        .in_src_data_in_0_0(i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_0_replace_phi_loop_pipeline30_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_V1),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33(STALLENABLE,556)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_V0 = SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_backStall = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_wireValid = i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg(STALLFIFO,821)
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1(STALLENABLE,715)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and2 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and3 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and4 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and5 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and6 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and7 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and8 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and9 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and8;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and10 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and9;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and11 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and10;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and12 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and11;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and13 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and12;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and14 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and13;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and15 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and14;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and16 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and15;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and17 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and16;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and18 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and17;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and19 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and18;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and20 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and19;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_wireValid = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_and20;

    // bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106(BITJOIN,492)
    assign bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_q = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_readdata;

    // bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106(BITSELECT,493)
    assign bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_b = bubble_join_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_q[4:0];

    // i_conv_i1_i_i_9_loop_pipeline148_sel_x(BITSELECT,304)@34
    assign i_conv_i1_i_i_9_loop_pipeline148_sel_x_b = {{15{bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_b[4]}}, bubble_select_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_b[4:0]};

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186(BLACKBOX,63)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_29_loop_pipeline187 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186 (
        .in_enable_in(VCC_q),
        .in_src_data_in_7_0(i_conv_i1_i_i_9_loop_pipeline148_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_V0),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106(STALLENABLE,596)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_V0 = SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_backStall = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_stall_out | ~ (SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_wireValid = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_valid;

    // i_value_i_i_i_9_loop_pipeline55_c_i64_9gr_x(CONSTANT,381)
    assign i_value_i_i_i_9_loop_pipeline55_c_i64_9gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001001;

    // bubble_join_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x(BITJOIN,502)
    assign bubble_join_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_q = i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_data_0;

    // bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x(BITSELECT,503)
    assign bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b = bubble_join_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_q[63:0];

    // i_value_i_i_i_9_loop_pipeline55_add_x(ADD,380)@2
    assign i_value_i_i_i_9_loop_pipeline55_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_9_loop_pipeline55_add_x_b = {1'b0, i_value_i_i_i_9_loop_pipeline55_c_i64_9gr_x_q};
    assign i_value_i_i_i_9_loop_pipeline55_add_x_o = $unsigned(i_value_i_i_i_9_loop_pipeline55_add_x_a) + $unsigned(i_value_i_i_i_9_loop_pipeline55_add_x_b);
    assign i_value_i_i_i_9_loop_pipeline55_add_x_q = i_value_i_i_i_9_loop_pipeline55_add_x_o[64:0];

    // i_value_i_i_i_9_loop_pipeline55_trunc_sel_x(BITSELECT,383)@2
    assign i_value_i_i_i_9_loop_pipeline55_trunc_sel_x_b = i_value_i_i_i_9_loop_pipeline55_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106(BLACKBOX,95)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline9_avm_address@20000000
    // out out_unnamed_loop_pipeline9_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline9_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline9_avm_enable@20000000
    // out out_unnamed_loop_pipeline9_avm_read@20000000
    // out out_unnamed_loop_pipeline9_avm_write@20000000
    // out out_unnamed_loop_pipeline9_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Zd_9_loop_pipeline107 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_9_loop_pipeline55_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V19),
        .in_unnamed_loop_pipeline9_avm_readdata(in_unnamed_loop_pipeline9_avm_readdata),
        .in_unnamed_loop_pipeline9_avm_readdatavalid(in_unnamed_loop_pipeline9_avm_readdatavalid),
        .in_unnamed_loop_pipeline9_avm_waitrequest(in_unnamed_loop_pipeline9_avm_waitrequest),
        .in_unnamed_loop_pipeline9_avm_writeack(in_unnamed_loop_pipeline9_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_valid),
        .out_unnamed_loop_pipeline9_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_address),
        .out_unnamed_loop_pipeline9_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_burstcount),
        .out_unnamed_loop_pipeline9_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_byteenable),
        .out_unnamed_loop_pipeline9_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_enable),
        .out_unnamed_loop_pipeline9_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_read),
        .out_unnamed_loop_pipeline9_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_write),
        .out_unnamed_loop_pipeline9_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_8_loop_pipeline53_c_i64_8gr_x(CONSTANT,377)
    assign i_value_i_i_i_8_loop_pipeline53_c_i64_8gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001000;

    // i_value_i_i_i_8_loop_pipeline53_add_x(ADD,376)@2
    assign i_value_i_i_i_8_loop_pipeline53_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_8_loop_pipeline53_add_x_b = {1'b0, i_value_i_i_i_8_loop_pipeline53_c_i64_8gr_x_q};
    assign i_value_i_i_i_8_loop_pipeline53_add_x_o = $unsigned(i_value_i_i_i_8_loop_pipeline53_add_x_a) + $unsigned(i_value_i_i_i_8_loop_pipeline53_add_x_b);
    assign i_value_i_i_i_8_loop_pipeline53_add_x_q = i_value_i_i_i_8_loop_pipeline53_add_x_o[64:0];

    // i_value_i_i_i_8_loop_pipeline53_trunc_sel_x(BITSELECT,379)@2
    assign i_value_i_i_i_8_loop_pipeline53_trunc_sel_x_b = i_value_i_i_i_8_loop_pipeline53_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103(BLACKBOX,94)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline8_avm_address@20000000
    // out out_unnamed_loop_pipeline8_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline8_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline8_avm_enable@20000000
    // out out_unnamed_loop_pipeline8_avm_read@20000000
    // out out_unnamed_loop_pipeline8_avm_write@20000000
    // out out_unnamed_loop_pipeline8_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Zd_8_loop_pipeline104 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_8_loop_pipeline53_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V18),
        .in_unnamed_loop_pipeline8_avm_readdata(in_unnamed_loop_pipeline8_avm_readdata),
        .in_unnamed_loop_pipeline8_avm_readdatavalid(in_unnamed_loop_pipeline8_avm_readdatavalid),
        .in_unnamed_loop_pipeline8_avm_waitrequest(in_unnamed_loop_pipeline8_avm_waitrequest),
        .in_unnamed_loop_pipeline8_avm_writeack(in_unnamed_loop_pipeline8_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_valid),
        .out_unnamed_loop_pipeline8_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_address),
        .out_unnamed_loop_pipeline8_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_burstcount),
        .out_unnamed_loop_pipeline8_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_byteenable),
        .out_unnamed_loop_pipeline8_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_enable),
        .out_unnamed_loop_pipeline8_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_read),
        .out_unnamed_loop_pipeline8_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_write),
        .out_unnamed_loop_pipeline8_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_7_loop_pipeline51_c_i64_7gr_x(CONSTANT,373)
    assign i_value_i_i_i_7_loop_pipeline51_c_i64_7gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000111;

    // i_value_i_i_i_7_loop_pipeline51_add_x(ADD,372)@2
    assign i_value_i_i_i_7_loop_pipeline51_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_7_loop_pipeline51_add_x_b = {1'b0, i_value_i_i_i_7_loop_pipeline51_c_i64_7gr_x_q};
    assign i_value_i_i_i_7_loop_pipeline51_add_x_o = $unsigned(i_value_i_i_i_7_loop_pipeline51_add_x_a) + $unsigned(i_value_i_i_i_7_loop_pipeline51_add_x_b);
    assign i_value_i_i_i_7_loop_pipeline51_add_x_q = i_value_i_i_i_7_loop_pipeline51_add_x_o[64:0];

    // i_value_i_i_i_7_loop_pipeline51_trunc_sel_x(BITSELECT,375)@2
    assign i_value_i_i_i_7_loop_pipeline51_trunc_sel_x_b = i_value_i_i_i_7_loop_pipeline51_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100(BLACKBOX,93)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline7_avm_address@20000000
    // out out_unnamed_loop_pipeline7_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline7_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline7_avm_enable@20000000
    // out out_unnamed_loop_pipeline7_avm_read@20000000
    // out out_unnamed_loop_pipeline7_avm_write@20000000
    // out out_unnamed_loop_pipeline7_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Zd_7_loop_pipeline101 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_7_loop_pipeline51_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V17),
        .in_unnamed_loop_pipeline7_avm_readdata(in_unnamed_loop_pipeline7_avm_readdata),
        .in_unnamed_loop_pipeline7_avm_readdatavalid(in_unnamed_loop_pipeline7_avm_readdatavalid),
        .in_unnamed_loop_pipeline7_avm_waitrequest(in_unnamed_loop_pipeline7_avm_waitrequest),
        .in_unnamed_loop_pipeline7_avm_writeack(in_unnamed_loop_pipeline7_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_valid),
        .out_unnamed_loop_pipeline7_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_address),
        .out_unnamed_loop_pipeline7_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_burstcount),
        .out_unnamed_loop_pipeline7_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_byteenable),
        .out_unnamed_loop_pipeline7_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_enable),
        .out_unnamed_loop_pipeline7_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_read),
        .out_unnamed_loop_pipeline7_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_write),
        .out_unnamed_loop_pipeline7_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_6_loop_pipeline49_c_i64_6gr_x(CONSTANT,369)
    assign i_value_i_i_i_6_loop_pipeline49_c_i64_6gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000110;

    // i_value_i_i_i_6_loop_pipeline49_add_x(ADD,368)@2
    assign i_value_i_i_i_6_loop_pipeline49_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_6_loop_pipeline49_add_x_b = {1'b0, i_value_i_i_i_6_loop_pipeline49_c_i64_6gr_x_q};
    assign i_value_i_i_i_6_loop_pipeline49_add_x_o = $unsigned(i_value_i_i_i_6_loop_pipeline49_add_x_a) + $unsigned(i_value_i_i_i_6_loop_pipeline49_add_x_b);
    assign i_value_i_i_i_6_loop_pipeline49_add_x_q = i_value_i_i_i_6_loop_pipeline49_add_x_o[64:0];

    // i_value_i_i_i_6_loop_pipeline49_trunc_sel_x(BITSELECT,371)@2
    assign i_value_i_i_i_6_loop_pipeline49_trunc_sel_x_b = i_value_i_i_i_6_loop_pipeline49_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97(BLACKBOX,92)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline6_avm_address@20000000
    // out out_unnamed_loop_pipeline6_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline6_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline6_avm_enable@20000000
    // out out_unnamed_loop_pipeline6_avm_read@20000000
    // out out_unnamed_loop_pipeline6_avm_write@20000000
    // out out_unnamed_loop_pipeline6_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Zed_6_loop_pipeline98 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_6_loop_pipeline49_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V16),
        .in_unnamed_loop_pipeline6_avm_readdata(in_unnamed_loop_pipeline6_avm_readdata),
        .in_unnamed_loop_pipeline6_avm_readdatavalid(in_unnamed_loop_pipeline6_avm_readdatavalid),
        .in_unnamed_loop_pipeline6_avm_waitrequest(in_unnamed_loop_pipeline6_avm_waitrequest),
        .in_unnamed_loop_pipeline6_avm_writeack(in_unnamed_loop_pipeline6_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_valid),
        .out_unnamed_loop_pipeline6_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_address),
        .out_unnamed_loop_pipeline6_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_burstcount),
        .out_unnamed_loop_pipeline6_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_byteenable),
        .out_unnamed_loop_pipeline6_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_enable),
        .out_unnamed_loop_pipeline6_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_read),
        .out_unnamed_loop_pipeline6_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_write),
        .out_unnamed_loop_pipeline6_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_5_loop_pipeline47_c_i64_5gr_x(CONSTANT,365)
    assign i_value_i_i_i_5_loop_pipeline47_c_i64_5gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000101;

    // i_value_i_i_i_5_loop_pipeline47_add_x(ADD,364)@2
    assign i_value_i_i_i_5_loop_pipeline47_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_5_loop_pipeline47_add_x_b = {1'b0, i_value_i_i_i_5_loop_pipeline47_c_i64_5gr_x_q};
    assign i_value_i_i_i_5_loop_pipeline47_add_x_o = $unsigned(i_value_i_i_i_5_loop_pipeline47_add_x_a) + $unsigned(i_value_i_i_i_5_loop_pipeline47_add_x_b);
    assign i_value_i_i_i_5_loop_pipeline47_add_x_q = i_value_i_i_i_5_loop_pipeline47_add_x_o[64:0];

    // i_value_i_i_i_5_loop_pipeline47_trunc_sel_x(BITSELECT,367)@2
    assign i_value_i_i_i_5_loop_pipeline47_trunc_sel_x_b = i_value_i_i_i_5_loop_pipeline47_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94(BLACKBOX,91)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline5_avm_address@20000000
    // out out_unnamed_loop_pipeline5_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline5_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline5_avm_enable@20000000
    // out out_unnamed_loop_pipeline5_avm_read@20000000
    // out out_unnamed_loop_pipeline5_avm_write@20000000
    // out out_unnamed_loop_pipeline5_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Zed_5_loop_pipeline95 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_5_loop_pipeline47_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V15),
        .in_unnamed_loop_pipeline5_avm_readdata(in_unnamed_loop_pipeline5_avm_readdata),
        .in_unnamed_loop_pipeline5_avm_readdatavalid(in_unnamed_loop_pipeline5_avm_readdatavalid),
        .in_unnamed_loop_pipeline5_avm_waitrequest(in_unnamed_loop_pipeline5_avm_waitrequest),
        .in_unnamed_loop_pipeline5_avm_writeack(in_unnamed_loop_pipeline5_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_valid),
        .out_unnamed_loop_pipeline5_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_address),
        .out_unnamed_loop_pipeline5_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_burstcount),
        .out_unnamed_loop_pipeline5_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_byteenable),
        .out_unnamed_loop_pipeline5_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_enable),
        .out_unnamed_loop_pipeline5_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_read),
        .out_unnamed_loop_pipeline5_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_write),
        .out_unnamed_loop_pipeline5_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_4_loop_pipeline45_c_i64_4gr_x(CONSTANT,361)
    assign i_value_i_i_i_4_loop_pipeline45_c_i64_4gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000100;

    // i_value_i_i_i_4_loop_pipeline45_add_x(ADD,360)@2
    assign i_value_i_i_i_4_loop_pipeline45_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_4_loop_pipeline45_add_x_b = {1'b0, i_value_i_i_i_4_loop_pipeline45_c_i64_4gr_x_q};
    assign i_value_i_i_i_4_loop_pipeline45_add_x_o = $unsigned(i_value_i_i_i_4_loop_pipeline45_add_x_a) + $unsigned(i_value_i_i_i_4_loop_pipeline45_add_x_b);
    assign i_value_i_i_i_4_loop_pipeline45_add_x_q = i_value_i_i_i_4_loop_pipeline45_add_x_o[64:0];

    // i_value_i_i_i_4_loop_pipeline45_trunc_sel_x(BITSELECT,363)@2
    assign i_value_i_i_i_4_loop_pipeline45_trunc_sel_x_b = i_value_i_i_i_4_loop_pipeline45_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91(BLACKBOX,90)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline4_avm_address@20000000
    // out out_unnamed_loop_pipeline4_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline4_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline4_avm_enable@20000000
    // out out_unnamed_loop_pipeline4_avm_read@20000000
    // out out_unnamed_loop_pipeline4_avm_write@20000000
    // out out_unnamed_loop_pipeline4_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Zed_4_loop_pipeline92 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_4_loop_pipeline45_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V14),
        .in_unnamed_loop_pipeline4_avm_readdata(in_unnamed_loop_pipeline4_avm_readdata),
        .in_unnamed_loop_pipeline4_avm_readdatavalid(in_unnamed_loop_pipeline4_avm_readdatavalid),
        .in_unnamed_loop_pipeline4_avm_waitrequest(in_unnamed_loop_pipeline4_avm_waitrequest),
        .in_unnamed_loop_pipeline4_avm_writeack(in_unnamed_loop_pipeline4_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_valid),
        .out_unnamed_loop_pipeline4_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_address),
        .out_unnamed_loop_pipeline4_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_burstcount),
        .out_unnamed_loop_pipeline4_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_byteenable),
        .out_unnamed_loop_pipeline4_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_enable),
        .out_unnamed_loop_pipeline4_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_read),
        .out_unnamed_loop_pipeline4_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_write),
        .out_unnamed_loop_pipeline4_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_19_loop_pipeline75_c_i64_19_x(CONSTANT,345)
    assign i_value_i_i_i_19_loop_pipeline75_c_i64_19_x_q = 64'b0000000000000000000000000000000000000000000000000000000000010011;

    // i_value_i_i_i_19_loop_pipeline75_add_x(ADD,344)@2
    assign i_value_i_i_i_19_loop_pipeline75_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_19_loop_pipeline75_add_x_b = {1'b0, i_value_i_i_i_19_loop_pipeline75_c_i64_19_x_q};
    assign i_value_i_i_i_19_loop_pipeline75_add_x_o = $unsigned(i_value_i_i_i_19_loop_pipeline75_add_x_a) + $unsigned(i_value_i_i_i_19_loop_pipeline75_add_x_b);
    assign i_value_i_i_i_19_loop_pipeline75_add_x_q = i_value_i_i_i_19_loop_pipeline75_add_x_o[64:0];

    // i_value_i_i_i_19_loop_pipeline75_trunc_sel_x(BITSELECT,347)@2
    assign i_value_i_i_i_19_loop_pipeline75_trunc_sel_x_b = i_value_i_i_i_19_loop_pipeline75_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136(BLACKBOX,89)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline19_avm_address@20000000
    // out out_unnamed_loop_pipeline19_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline19_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline19_avm_enable@20000000
    // out out_unnamed_loop_pipeline19_avm_read@20000000
    // out out_unnamed_loop_pipeline19_avm_write@20000000
    // out out_unnamed_loop_pipeline19_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_19_loop_pipeline137 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_19_loop_pipeline75_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V13),
        .in_unnamed_loop_pipeline19_avm_readdata(in_unnamed_loop_pipeline19_avm_readdata),
        .in_unnamed_loop_pipeline19_avm_readdatavalid(in_unnamed_loop_pipeline19_avm_readdatavalid),
        .in_unnamed_loop_pipeline19_avm_waitrequest(in_unnamed_loop_pipeline19_avm_waitrequest),
        .in_unnamed_loop_pipeline19_avm_writeack(in_unnamed_loop_pipeline19_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_valid),
        .out_unnamed_loop_pipeline19_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_address),
        .out_unnamed_loop_pipeline19_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_burstcount),
        .out_unnamed_loop_pipeline19_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_byteenable),
        .out_unnamed_loop_pipeline19_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_enable),
        .out_unnamed_loop_pipeline19_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_read),
        .out_unnamed_loop_pipeline19_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_write),
        .out_unnamed_loop_pipeline19_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_18_loop_pipeline73_c_i64_18_x(CONSTANT,341)
    assign i_value_i_i_i_18_loop_pipeline73_c_i64_18_x_q = 64'b0000000000000000000000000000000000000000000000000000000000010010;

    // i_value_i_i_i_18_loop_pipeline73_add_x(ADD,340)@2
    assign i_value_i_i_i_18_loop_pipeline73_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_18_loop_pipeline73_add_x_b = {1'b0, i_value_i_i_i_18_loop_pipeline73_c_i64_18_x_q};
    assign i_value_i_i_i_18_loop_pipeline73_add_x_o = $unsigned(i_value_i_i_i_18_loop_pipeline73_add_x_a) + $unsigned(i_value_i_i_i_18_loop_pipeline73_add_x_b);
    assign i_value_i_i_i_18_loop_pipeline73_add_x_q = i_value_i_i_i_18_loop_pipeline73_add_x_o[64:0];

    // i_value_i_i_i_18_loop_pipeline73_trunc_sel_x(BITSELECT,343)@2
    assign i_value_i_i_i_18_loop_pipeline73_trunc_sel_x_b = i_value_i_i_i_18_loop_pipeline73_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133(BLACKBOX,88)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline18_avm_address@20000000
    // out out_unnamed_loop_pipeline18_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline18_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline18_avm_enable@20000000
    // out out_unnamed_loop_pipeline18_avm_read@20000000
    // out out_unnamed_loop_pipeline18_avm_write@20000000
    // out out_unnamed_loop_pipeline18_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_18_loop_pipeline134 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_18_loop_pipeline73_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V12),
        .in_unnamed_loop_pipeline18_avm_readdata(in_unnamed_loop_pipeline18_avm_readdata),
        .in_unnamed_loop_pipeline18_avm_readdatavalid(in_unnamed_loop_pipeline18_avm_readdatavalid),
        .in_unnamed_loop_pipeline18_avm_waitrequest(in_unnamed_loop_pipeline18_avm_waitrequest),
        .in_unnamed_loop_pipeline18_avm_writeack(in_unnamed_loop_pipeline18_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_valid),
        .out_unnamed_loop_pipeline18_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_address),
        .out_unnamed_loop_pipeline18_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_burstcount),
        .out_unnamed_loop_pipeline18_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_byteenable),
        .out_unnamed_loop_pipeline18_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_enable),
        .out_unnamed_loop_pipeline18_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_read),
        .out_unnamed_loop_pipeline18_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_write),
        .out_unnamed_loop_pipeline18_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_17_loop_pipeline71_c_i64_17_x(CONSTANT,337)
    assign i_value_i_i_i_17_loop_pipeline71_c_i64_17_x_q = 64'b0000000000000000000000000000000000000000000000000000000000010001;

    // i_value_i_i_i_17_loop_pipeline71_add_x(ADD,336)@2
    assign i_value_i_i_i_17_loop_pipeline71_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_17_loop_pipeline71_add_x_b = {1'b0, i_value_i_i_i_17_loop_pipeline71_c_i64_17_x_q};
    assign i_value_i_i_i_17_loop_pipeline71_add_x_o = $unsigned(i_value_i_i_i_17_loop_pipeline71_add_x_a) + $unsigned(i_value_i_i_i_17_loop_pipeline71_add_x_b);
    assign i_value_i_i_i_17_loop_pipeline71_add_x_q = i_value_i_i_i_17_loop_pipeline71_add_x_o[64:0];

    // i_value_i_i_i_17_loop_pipeline71_trunc_sel_x(BITSELECT,339)@2
    assign i_value_i_i_i_17_loop_pipeline71_trunc_sel_x_b = i_value_i_i_i_17_loop_pipeline71_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130(BLACKBOX,87)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline17_avm_address@20000000
    // out out_unnamed_loop_pipeline17_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline17_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline17_avm_enable@20000000
    // out out_unnamed_loop_pipeline17_avm_read@20000000
    // out out_unnamed_loop_pipeline17_avm_write@20000000
    // out out_unnamed_loop_pipeline17_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_17_loop_pipeline131 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_17_loop_pipeline71_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V11),
        .in_unnamed_loop_pipeline17_avm_readdata(in_unnamed_loop_pipeline17_avm_readdata),
        .in_unnamed_loop_pipeline17_avm_readdatavalid(in_unnamed_loop_pipeline17_avm_readdatavalid),
        .in_unnamed_loop_pipeline17_avm_waitrequest(in_unnamed_loop_pipeline17_avm_waitrequest),
        .in_unnamed_loop_pipeline17_avm_writeack(in_unnamed_loop_pipeline17_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_valid),
        .out_unnamed_loop_pipeline17_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_address),
        .out_unnamed_loop_pipeline17_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_burstcount),
        .out_unnamed_loop_pipeline17_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_byteenable),
        .out_unnamed_loop_pipeline17_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_enable),
        .out_unnamed_loop_pipeline17_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_read),
        .out_unnamed_loop_pipeline17_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_write),
        .out_unnamed_loop_pipeline17_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_16_loop_pipeline69_c_i64_16_x(CONSTANT,333)
    assign i_value_i_i_i_16_loop_pipeline69_c_i64_16_x_q = 64'b0000000000000000000000000000000000000000000000000000000000010000;

    // i_value_i_i_i_16_loop_pipeline69_add_x(ADD,332)@2
    assign i_value_i_i_i_16_loop_pipeline69_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_16_loop_pipeline69_add_x_b = {1'b0, i_value_i_i_i_16_loop_pipeline69_c_i64_16_x_q};
    assign i_value_i_i_i_16_loop_pipeline69_add_x_o = $unsigned(i_value_i_i_i_16_loop_pipeline69_add_x_a) + $unsigned(i_value_i_i_i_16_loop_pipeline69_add_x_b);
    assign i_value_i_i_i_16_loop_pipeline69_add_x_q = i_value_i_i_i_16_loop_pipeline69_add_x_o[64:0];

    // i_value_i_i_i_16_loop_pipeline69_trunc_sel_x(BITSELECT,335)@2
    assign i_value_i_i_i_16_loop_pipeline69_trunc_sel_x_b = i_value_i_i_i_16_loop_pipeline69_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127(BLACKBOX,86)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline16_avm_address@20000000
    // out out_unnamed_loop_pipeline16_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline16_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline16_avm_enable@20000000
    // out out_unnamed_loop_pipeline16_avm_read@20000000
    // out out_unnamed_loop_pipeline16_avm_write@20000000
    // out out_unnamed_loop_pipeline16_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_16_loop_pipeline128 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_16_loop_pipeline69_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V10),
        .in_unnamed_loop_pipeline16_avm_readdata(in_unnamed_loop_pipeline16_avm_readdata),
        .in_unnamed_loop_pipeline16_avm_readdatavalid(in_unnamed_loop_pipeline16_avm_readdatavalid),
        .in_unnamed_loop_pipeline16_avm_waitrequest(in_unnamed_loop_pipeline16_avm_waitrequest),
        .in_unnamed_loop_pipeline16_avm_writeack(in_unnamed_loop_pipeline16_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_valid),
        .out_unnamed_loop_pipeline16_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_address),
        .out_unnamed_loop_pipeline16_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_burstcount),
        .out_unnamed_loop_pipeline16_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_byteenable),
        .out_unnamed_loop_pipeline16_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_enable),
        .out_unnamed_loop_pipeline16_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_read),
        .out_unnamed_loop_pipeline16_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_write),
        .out_unnamed_loop_pipeline16_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_15_loop_pipeline67_c_i64_15_x(CONSTANT,329)
    assign i_value_i_i_i_15_loop_pipeline67_c_i64_15_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001111;

    // i_value_i_i_i_15_loop_pipeline67_add_x(ADD,328)@2
    assign i_value_i_i_i_15_loop_pipeline67_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_15_loop_pipeline67_add_x_b = {1'b0, i_value_i_i_i_15_loop_pipeline67_c_i64_15_x_q};
    assign i_value_i_i_i_15_loop_pipeline67_add_x_o = $unsigned(i_value_i_i_i_15_loop_pipeline67_add_x_a) + $unsigned(i_value_i_i_i_15_loop_pipeline67_add_x_b);
    assign i_value_i_i_i_15_loop_pipeline67_add_x_q = i_value_i_i_i_15_loop_pipeline67_add_x_o[64:0];

    // i_value_i_i_i_15_loop_pipeline67_trunc_sel_x(BITSELECT,331)@2
    assign i_value_i_i_i_15_loop_pipeline67_trunc_sel_x_b = i_value_i_i_i_15_loop_pipeline67_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124(BLACKBOX,85)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline15_avm_address@20000000
    // out out_unnamed_loop_pipeline15_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline15_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline15_avm_enable@20000000
    // out out_unnamed_loop_pipeline15_avm_read@20000000
    // out out_unnamed_loop_pipeline15_avm_write@20000000
    // out out_unnamed_loop_pipeline15_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_15_loop_pipeline125 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_15_loop_pipeline67_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V9),
        .in_unnamed_loop_pipeline15_avm_readdata(in_unnamed_loop_pipeline15_avm_readdata),
        .in_unnamed_loop_pipeline15_avm_readdatavalid(in_unnamed_loop_pipeline15_avm_readdatavalid),
        .in_unnamed_loop_pipeline15_avm_waitrequest(in_unnamed_loop_pipeline15_avm_waitrequest),
        .in_unnamed_loop_pipeline15_avm_writeack(in_unnamed_loop_pipeline15_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_valid),
        .out_unnamed_loop_pipeline15_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_address),
        .out_unnamed_loop_pipeline15_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_burstcount),
        .out_unnamed_loop_pipeline15_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_byteenable),
        .out_unnamed_loop_pipeline15_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_enable),
        .out_unnamed_loop_pipeline15_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_read),
        .out_unnamed_loop_pipeline15_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_write),
        .out_unnamed_loop_pipeline15_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_14_loop_pipeline65_c_i64_14_x(CONSTANT,325)
    assign i_value_i_i_i_14_loop_pipeline65_c_i64_14_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001110;

    // i_value_i_i_i_14_loop_pipeline65_add_x(ADD,324)@2
    assign i_value_i_i_i_14_loop_pipeline65_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_14_loop_pipeline65_add_x_b = {1'b0, i_value_i_i_i_14_loop_pipeline65_c_i64_14_x_q};
    assign i_value_i_i_i_14_loop_pipeline65_add_x_o = $unsigned(i_value_i_i_i_14_loop_pipeline65_add_x_a) + $unsigned(i_value_i_i_i_14_loop_pipeline65_add_x_b);
    assign i_value_i_i_i_14_loop_pipeline65_add_x_q = i_value_i_i_i_14_loop_pipeline65_add_x_o[64:0];

    // i_value_i_i_i_14_loop_pipeline65_trunc_sel_x(BITSELECT,327)@2
    assign i_value_i_i_i_14_loop_pipeline65_trunc_sel_x_b = i_value_i_i_i_14_loop_pipeline65_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121(BLACKBOX,84)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline14_avm_address@20000000
    // out out_unnamed_loop_pipeline14_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline14_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline14_avm_enable@20000000
    // out out_unnamed_loop_pipeline14_avm_read@20000000
    // out out_unnamed_loop_pipeline14_avm_write@20000000
    // out out_unnamed_loop_pipeline14_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_14_loop_pipeline122 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_14_loop_pipeline65_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V8),
        .in_unnamed_loop_pipeline14_avm_readdata(in_unnamed_loop_pipeline14_avm_readdata),
        .in_unnamed_loop_pipeline14_avm_readdatavalid(in_unnamed_loop_pipeline14_avm_readdatavalid),
        .in_unnamed_loop_pipeline14_avm_waitrequest(in_unnamed_loop_pipeline14_avm_waitrequest),
        .in_unnamed_loop_pipeline14_avm_writeack(in_unnamed_loop_pipeline14_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_valid),
        .out_unnamed_loop_pipeline14_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_address),
        .out_unnamed_loop_pipeline14_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_burstcount),
        .out_unnamed_loop_pipeline14_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_byteenable),
        .out_unnamed_loop_pipeline14_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_enable),
        .out_unnamed_loop_pipeline14_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_read),
        .out_unnamed_loop_pipeline14_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_write),
        .out_unnamed_loop_pipeline14_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_13_loop_pipeline63_c_i64_13_x(CONSTANT,321)
    assign i_value_i_i_i_13_loop_pipeline63_c_i64_13_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001101;

    // i_value_i_i_i_13_loop_pipeline63_add_x(ADD,320)@2
    assign i_value_i_i_i_13_loop_pipeline63_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_13_loop_pipeline63_add_x_b = {1'b0, i_value_i_i_i_13_loop_pipeline63_c_i64_13_x_q};
    assign i_value_i_i_i_13_loop_pipeline63_add_x_o = $unsigned(i_value_i_i_i_13_loop_pipeline63_add_x_a) + $unsigned(i_value_i_i_i_13_loop_pipeline63_add_x_b);
    assign i_value_i_i_i_13_loop_pipeline63_add_x_q = i_value_i_i_i_13_loop_pipeline63_add_x_o[64:0];

    // i_value_i_i_i_13_loop_pipeline63_trunc_sel_x(BITSELECT,323)@2
    assign i_value_i_i_i_13_loop_pipeline63_trunc_sel_x_b = i_value_i_i_i_13_loop_pipeline63_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118(BLACKBOX,83)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline13_avm_address@20000000
    // out out_unnamed_loop_pipeline13_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline13_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline13_avm_enable@20000000
    // out out_unnamed_loop_pipeline13_avm_read@20000000
    // out out_unnamed_loop_pipeline13_avm_write@20000000
    // out out_unnamed_loop_pipeline13_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_13_loop_pipeline119 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_13_loop_pipeline63_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V7),
        .in_unnamed_loop_pipeline13_avm_readdata(in_unnamed_loop_pipeline13_avm_readdata),
        .in_unnamed_loop_pipeline13_avm_readdatavalid(in_unnamed_loop_pipeline13_avm_readdatavalid),
        .in_unnamed_loop_pipeline13_avm_waitrequest(in_unnamed_loop_pipeline13_avm_waitrequest),
        .in_unnamed_loop_pipeline13_avm_writeack(in_unnamed_loop_pipeline13_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_valid),
        .out_unnamed_loop_pipeline13_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_address),
        .out_unnamed_loop_pipeline13_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_burstcount),
        .out_unnamed_loop_pipeline13_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_byteenable),
        .out_unnamed_loop_pipeline13_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_enable),
        .out_unnamed_loop_pipeline13_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_read),
        .out_unnamed_loop_pipeline13_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_write),
        .out_unnamed_loop_pipeline13_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_12_loop_pipeline61_c_i64_12_x(CONSTANT,317)
    assign i_value_i_i_i_12_loop_pipeline61_c_i64_12_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001100;

    // i_value_i_i_i_12_loop_pipeline61_add_x(ADD,316)@2
    assign i_value_i_i_i_12_loop_pipeline61_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_12_loop_pipeline61_add_x_b = {1'b0, i_value_i_i_i_12_loop_pipeline61_c_i64_12_x_q};
    assign i_value_i_i_i_12_loop_pipeline61_add_x_o = $unsigned(i_value_i_i_i_12_loop_pipeline61_add_x_a) + $unsigned(i_value_i_i_i_12_loop_pipeline61_add_x_b);
    assign i_value_i_i_i_12_loop_pipeline61_add_x_q = i_value_i_i_i_12_loop_pipeline61_add_x_o[64:0];

    // i_value_i_i_i_12_loop_pipeline61_trunc_sel_x(BITSELECT,319)@2
    assign i_value_i_i_i_12_loop_pipeline61_trunc_sel_x_b = i_value_i_i_i_12_loop_pipeline61_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115(BLACKBOX,82)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline12_avm_address@20000000
    // out out_unnamed_loop_pipeline12_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline12_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline12_avm_enable@20000000
    // out out_unnamed_loop_pipeline12_avm_read@20000000
    // out out_unnamed_loop_pipeline12_avm_write@20000000
    // out out_unnamed_loop_pipeline12_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_12_loop_pipeline116 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_12_loop_pipeline61_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V6),
        .in_unnamed_loop_pipeline12_avm_readdata(in_unnamed_loop_pipeline12_avm_readdata),
        .in_unnamed_loop_pipeline12_avm_readdatavalid(in_unnamed_loop_pipeline12_avm_readdatavalid),
        .in_unnamed_loop_pipeline12_avm_waitrequest(in_unnamed_loop_pipeline12_avm_waitrequest),
        .in_unnamed_loop_pipeline12_avm_writeack(in_unnamed_loop_pipeline12_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_valid),
        .out_unnamed_loop_pipeline12_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_address),
        .out_unnamed_loop_pipeline12_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_burstcount),
        .out_unnamed_loop_pipeline12_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_byteenable),
        .out_unnamed_loop_pipeline12_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_enable),
        .out_unnamed_loop_pipeline12_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_read),
        .out_unnamed_loop_pipeline12_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_write),
        .out_unnamed_loop_pipeline12_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_11_loop_pipeline59_c_i64_11_x(CONSTANT,313)
    assign i_value_i_i_i_11_loop_pipeline59_c_i64_11_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001011;

    // i_value_i_i_i_11_loop_pipeline59_add_x(ADD,312)@2
    assign i_value_i_i_i_11_loop_pipeline59_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_11_loop_pipeline59_add_x_b = {1'b0, i_value_i_i_i_11_loop_pipeline59_c_i64_11_x_q};
    assign i_value_i_i_i_11_loop_pipeline59_add_x_o = $unsigned(i_value_i_i_i_11_loop_pipeline59_add_x_a) + $unsigned(i_value_i_i_i_11_loop_pipeline59_add_x_b);
    assign i_value_i_i_i_11_loop_pipeline59_add_x_q = i_value_i_i_i_11_loop_pipeline59_add_x_o[64:0];

    // i_value_i_i_i_11_loop_pipeline59_trunc_sel_x(BITSELECT,315)@2
    assign i_value_i_i_i_11_loop_pipeline59_trunc_sel_x_b = i_value_i_i_i_11_loop_pipeline59_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112(BLACKBOX,81)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline11_avm_address@20000000
    // out out_unnamed_loop_pipeline11_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline11_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline11_avm_enable@20000000
    // out out_unnamed_loop_pipeline11_avm_read@20000000
    // out out_unnamed_loop_pipeline11_avm_write@20000000
    // out out_unnamed_loop_pipeline11_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_11_loop_pipeline113 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_11_loop_pipeline59_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V5),
        .in_unnamed_loop_pipeline11_avm_readdata(in_unnamed_loop_pipeline11_avm_readdata),
        .in_unnamed_loop_pipeline11_avm_readdatavalid(in_unnamed_loop_pipeline11_avm_readdatavalid),
        .in_unnamed_loop_pipeline11_avm_waitrequest(in_unnamed_loop_pipeline11_avm_waitrequest),
        .in_unnamed_loop_pipeline11_avm_writeack(in_unnamed_loop_pipeline11_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_valid),
        .out_unnamed_loop_pipeline11_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_address),
        .out_unnamed_loop_pipeline11_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_burstcount),
        .out_unnamed_loop_pipeline11_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_byteenable),
        .out_unnamed_loop_pipeline11_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_enable),
        .out_unnamed_loop_pipeline11_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_read),
        .out_unnamed_loop_pipeline11_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_write),
        .out_unnamed_loop_pipeline11_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_10_loop_pipeline57_c_i64_10_x(CONSTANT,309)
    assign i_value_i_i_i_10_loop_pipeline57_c_i64_10_x_q = 64'b0000000000000000000000000000000000000000000000000000000000001010;

    // i_value_i_i_i_10_loop_pipeline57_add_x(ADD,308)@2
    assign i_value_i_i_i_10_loop_pipeline57_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_10_loop_pipeline57_add_x_b = {1'b0, i_value_i_i_i_10_loop_pipeline57_c_i64_10_x_q};
    assign i_value_i_i_i_10_loop_pipeline57_add_x_o = $unsigned(i_value_i_i_i_10_loop_pipeline57_add_x_a) + $unsigned(i_value_i_i_i_10_loop_pipeline57_add_x_b);
    assign i_value_i_i_i_10_loop_pipeline57_add_x_q = i_value_i_i_i_10_loop_pipeline57_add_x_o[64:0];

    // i_value_i_i_i_10_loop_pipeline57_trunc_sel_x(BITSELECT,311)@2
    assign i_value_i_i_i_10_loop_pipeline57_trunc_sel_x_b = i_value_i_i_i_10_loop_pipeline57_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109(BLACKBOX,80)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_loop_pipeline10_avm_address@20000000
    // out out_unnamed_loop_pipeline10_avm_burstcount@20000000
    // out out_unnamed_loop_pipeline10_avm_byteenable@20000000
    // out out_unnamed_loop_pipeline10_avm_enable@20000000
    // out out_unnamed_loop_pipeline10_avm_read@20000000
    // out out_unnamed_loop_pipeline10_avm_write@20000000
    // out out_unnamed_loop_pipeline10_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z_10_loop_pipeline110 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_10_loop_pipeline57_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V4),
        .in_unnamed_loop_pipeline10_avm_readdata(in_unnamed_loop_pipeline10_avm_readdata),
        .in_unnamed_loop_pipeline10_avm_readdatavalid(in_unnamed_loop_pipeline10_avm_readdatavalid),
        .in_unnamed_loop_pipeline10_avm_waitrequest(in_unnamed_loop_pipeline10_avm_waitrequest),
        .in_unnamed_loop_pipeline10_avm_writeack(in_unnamed_loop_pipeline10_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_valid),
        .out_unnamed_loop_pipeline10_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_address),
        .out_unnamed_loop_pipeline10_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_burstcount),
        .out_unnamed_loop_pipeline10_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_byteenable),
        .out_unnamed_loop_pipeline10_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_enable),
        .out_unnamed_loop_pipeline10_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_read),
        .out_unnamed_loop_pipeline10_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_write),
        .out_unnamed_loop_pipeline10_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_3_loop_pipeline43_c_i64_3gr_x(CONSTANT,357)
    assign i_value_i_i_i_3_loop_pipeline43_c_i64_3gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000011;

    // i_value_i_i_i_3_loop_pipeline43_add_x(ADD,356)@2
    assign i_value_i_i_i_3_loop_pipeline43_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_3_loop_pipeline43_add_x_b = {1'b0, i_value_i_i_i_3_loop_pipeline43_c_i64_3gr_x_q};
    assign i_value_i_i_i_3_loop_pipeline43_add_x_o = $unsigned(i_value_i_i_i_3_loop_pipeline43_add_x_a) + $unsigned(i_value_i_i_i_3_loop_pipeline43_add_x_b);
    assign i_value_i_i_i_3_loop_pipeline43_add_x_q = i_value_i_i_i_3_loop_pipeline43_add_x_o[64:0];

    // i_value_i_i_i_3_loop_pipeline43_trunc_sel_x(BITSELECT,359)@2
    assign i_value_i_i_i_3_loop_pipeline43_trunc_sel_x_b = i_value_i_i_i_3_loop_pipeline43_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88(BLACKBOX,79)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_pre2574_avm_address@20000000
    // out out_pre2574_avm_burstcount@20000000
    // out out_pre2574_avm_byteenable@20000000
    // out out_pre2574_avm_enable@20000000
    // out out_pre2574_avm_read@20000000
    // out out_pre2574_avm_write@20000000
    // out out_pre2574_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z5_p1024i5_pre2574_89 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_3_loop_pipeline43_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V3),
        .in_pre2574_avm_readdata(in_pre2574_avm_readdata),
        .in_pre2574_avm_readdatavalid(in_pre2574_avm_readdatavalid),
        .in_pre2574_avm_waitrequest(in_pre2574_avm_waitrequest),
        .in_pre2574_avm_writeack(in_pre2574_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_valid),
        .out_pre2574_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_address),
        .out_pre2574_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_burstcount),
        .out_pre2574_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_byteenable),
        .out_pre2574_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_enable),
        .out_pre2574_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_read),
        .out_pre2574_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_write),
        .out_pre2574_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_2_loop_pipeline41_c_i64_2gr_x(CONSTANT,353)
    assign i_value_i_i_i_2_loop_pipeline41_c_i64_2gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000010;

    // i_value_i_i_i_2_loop_pipeline41_add_x(ADD,352)@2
    assign i_value_i_i_i_2_loop_pipeline41_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_2_loop_pipeline41_add_x_b = {1'b0, i_value_i_i_i_2_loop_pipeline41_c_i64_2gr_x_q};
    assign i_value_i_i_i_2_loop_pipeline41_add_x_o = $unsigned(i_value_i_i_i_2_loop_pipeline41_add_x_a) + $unsigned(i_value_i_i_i_2_loop_pipeline41_add_x_b);
    assign i_value_i_i_i_2_loop_pipeline41_add_x_q = i_value_i_i_i_2_loop_pipeline41_add_x_o[64:0];

    // i_value_i_i_i_2_loop_pipeline41_trunc_sel_x(BITSELECT,355)@2
    assign i_value_i_i_i_2_loop_pipeline41_trunc_sel_x_b = i_value_i_i_i_2_loop_pipeline41_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85(BLACKBOX,78)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_pre2563_avm_address@20000000
    // out out_pre2563_avm_burstcount@20000000
    // out out_pre2563_avm_byteenable@20000000
    // out out_pre2563_avm_enable@20000000
    // out out_pre2563_avm_read@20000000
    // out out_pre2563_avm_write@20000000
    // out out_pre2563_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z5_p1024i5_pre2563_86 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_2_loop_pipeline41_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V2),
        .in_pre2563_avm_readdata(in_pre2563_avm_readdata),
        .in_pre2563_avm_readdatavalid(in_pre2563_avm_readdatavalid),
        .in_pre2563_avm_waitrequest(in_pre2563_avm_waitrequest),
        .in_pre2563_avm_writeack(in_pre2563_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_valid),
        .out_pre2563_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_address),
        .out_pre2563_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_burstcount),
        .out_pre2563_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_byteenable),
        .out_pre2563_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_enable),
        .out_pre2563_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_read),
        .out_pre2563_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_write),
        .out_pre2563_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_value_i_i_i_1_loop_pipeline39_c_i64_1gr_x(CONSTANT,349)
    assign i_value_i_i_i_1_loop_pipeline39_c_i64_1gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // i_value_i_i_i_1_loop_pipeline39_add_x(ADD,348)@2
    assign i_value_i_i_i_1_loop_pipeline39_add_x_a = {1'b0, bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b};
    assign i_value_i_i_i_1_loop_pipeline39_add_x_b = {1'b0, i_value_i_i_i_1_loop_pipeline39_c_i64_1gr_x_q};
    assign i_value_i_i_i_1_loop_pipeline39_add_x_o = $unsigned(i_value_i_i_i_1_loop_pipeline39_add_x_a) + $unsigned(i_value_i_i_i_1_loop_pipeline39_add_x_b);
    assign i_value_i_i_i_1_loop_pipeline39_add_x_q = i_value_i_i_i_1_loop_pipeline39_add_x_o[64:0];

    // i_value_i_i_i_1_loop_pipeline39_trunc_sel_x(BITSELECT,351)@2
    assign i_value_i_i_i_1_loop_pipeline39_trunc_sel_x_b = i_value_i_i_i_1_loop_pipeline39_add_x_q[63:0];

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82(BLACKBOX,77)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_pre2552_avm_address@20000000
    // out out_pre2552_avm_burstcount@20000000
    // out out_pre2552_avm_byteenable@20000000
    // out out_pre2552_avm_enable@20000000
    // out out_pre2552_avm_read@20000000
    // out out_pre2552_avm_write@20000000
    // out out_pre2552_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipA000Z5_p1024i5_pre2552_83 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82 (
        .in_flush(in_flush),
        .in_i_address(i_value_i_i_i_1_loop_pipeline39_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V1),
        .in_pre2552_avm_readdata(in_pre2552_avm_readdata),
        .in_pre2552_avm_readdatavalid(in_pre2552_avm_readdatavalid),
        .in_pre2552_avm_waitrequest(in_pre2552_avm_waitrequest),
        .in_pre2552_avm_writeack(in_pre2552_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_valid),
        .out_pre2552_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_address),
        .out_pre2552_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_burstcount),
        .out_pre2552_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_byteenable),
        .out_pre2552_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_enable),
        .out_pre2552_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_read),
        .out_pre2552_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_write),
        .out_pre2552_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79(BLACKBOX,76)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_pre1_avm_address@20000000
    // out out_pre1_avm_burstcount@20000000
    // out out_pre1_avm_byteenable@20000000
    // out out_pre1_avm_enable@20000000
    // out out_pre1_avm_read@20000000
    // out out_pre1_avm_write@20000000
    // out out_pre1_avm_writedata@20000000
    loop_pipeline_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_80 thei_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_backStall),
        .in_i_valid(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V0),
        .in_pre1_avm_readdata(in_pre1_avm_readdata),
        .in_pre1_avm_readdatavalid(in_pre1_avm_readdatavalid),
        .in_pre1_avm_waitrequest(in_pre1_avm_waitrequest),
        .in_pre1_avm_writeack(in_pre1_avm_writeack),
        .out_o_readdata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_readdata),
        .out_o_stall(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_stall),
        .out_o_valid(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_valid),
        .out_pre1_avm_address(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_address),
        .out_pre1_avm_burstcount(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_burstcount),
        .out_pre1_avm_byteenable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_byteenable),
        .out_pre1_avm_enable(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_enable),
        .out_pre1_avm_read(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_read),
        .out_pre1_avm_write(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_write),
        .out_pre1_avm_writedata(i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x(STALLENABLE,623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg4 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg5 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg6 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg7 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg8 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg9 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg10 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg11 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg12 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg13 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg14 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg15 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg16 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg17 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg18 <= '0;
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg19 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg0 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg1 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg2 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg3 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg4 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg5 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg6 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg7 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg8 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg9 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg9;
            // Successor 10
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg10 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg10;
            // Successor 11
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg11 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg11;
            // Successor 12
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg12 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg12;
            // Successor 13
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg13 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg13;
            // Successor 14
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg14 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg14;
            // Successor 15
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg15 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg15;
            // Successor 16
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg16 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg16;
            // Successor 17
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg17 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg17;
            // Successor 18
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg18 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg18;
            // Successor 19
            SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg19 <= SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg19;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed0 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed1 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed2 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed3 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed4 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg4;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed5 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg5;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed6 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg6;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed7 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg7;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed8 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg8;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed9 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg9;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed10 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg10;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed11 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg11;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed12 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg12;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed13 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg13;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed14 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg14;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed15 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg15;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed16 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg16;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed17 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg17;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed18 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg18;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed19 = (~ (i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_o_stall) & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid) | SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg19;
    // Consuming
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_backStall & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg0 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg1 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg2 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg3 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg4 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed4;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg5 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed5;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg6 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed6;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg7 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed7;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg8 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed8;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg9 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed9;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg10 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed10;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg11 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed11;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg12 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed12;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg13 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed13;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg14 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed14;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg15 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed15;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg16 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed16;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg17 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed17;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg18 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed18;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_toReg19 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_StallValid & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed19;
    // Backward Stall generation
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or0 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or1 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed1 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or0;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or2 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed2 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or1;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or3 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed3 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or2;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or4 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed4 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or3;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or5 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed5 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or4;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or6 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed6 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or5;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or7 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed7 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or6;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or8 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed8 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or7;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or9 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed9 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or8;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or10 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed10 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or9;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or11 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed11 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or10;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or12 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed12 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or11;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or13 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed13 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or12;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or14 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed14 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or13;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or15 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed15 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or14;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or16 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed16 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or15;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or17 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed17 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or16;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or18 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed18 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or17;
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_consumed19 & SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_or18);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_backStall = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V0 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V1 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V2 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V3 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V4 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg4);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V5 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg5);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V6 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg6);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V7 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg7);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V8 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg8);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V9 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg9);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V10 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg10);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V11 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg11);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V12 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg12);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V13 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg13);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V14 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg14);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V15 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg15);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V16 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg16);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V17 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg17);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V18 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg18);
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_V19 = SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_fromReg19);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_wireValid = i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22(BITJOIN,495)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22(BITSELECT,496)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_b = bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_q[0:0];

    // i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x(BLACKBOX,306)@2
    // in in_i_stall@20000000
    // out out_iord_bl_do_o_fifoready@20000000
    // out out_o_stall@20000000
    loop_pipeline_i_iord_bl_do_unnamed_1_loop_pipeline29 thei_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_b),
        .in_i_stall(SE_out_i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V2),
        .in_iord_bl_do_i_fifodata(in_iord_bl_do_i_fifodata),
        .in_iord_bl_do_i_fifovalid(in_iord_bl_do_i_fifovalid),
        .out_iord_bl_do_o_fifoready(i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_iord_bl_do_o_fifoready),
        .out_o_stall(i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_valid),
        .out_o_data_0(i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_data_0),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25(BLACKBOX,53)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_dest_i24_A000Zssa_replace_phi30_26 thei_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25 (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_b),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V1),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25(STALLENABLE,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed0 = (~ (i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed1 = (~ (i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_backStall & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_or0 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_backStall = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_V0 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_V1 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_and0 = i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_and1 = SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_wireValid = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V0 & SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_and1;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22(STALLENABLE,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg0 <= SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg1 <= SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg2 <= SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_backStall) & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid) | SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d_lcssa_replace_phi30_loop_pipeline25_out_stall_out) & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid) | SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg1;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed2 = (~ (i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_o_stall) & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid) | SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_StallValid = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_backStall & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_StallValid & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg1 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_StallValid & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed1;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_toReg2 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_StallValid & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_or0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_or1 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed1 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_or0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireStall = ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_consumed2 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_or1);
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_backStall = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid & ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg0);
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V1 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid & ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg1);
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_V2 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid & ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22(BLACKBOX,96)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    loop_pipeline_i_llvm_fpga_pop_throttle_i1_throttle_pop_23 thei_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_backStall),
        .in_valid_in(SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x(STALLENABLE,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg0 <= SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg1 <= SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_stall_out) & SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg0;
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_o_stall) & SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_StallValid = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_backStall & SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid;
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_toReg0 = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_StallValid & SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed0;
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_toReg1 = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_StallValid & SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_or0 = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed0;
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireStall = ~ (SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_consumed1 & SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_or0);
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_backStall = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_V0 = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg0);
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_V1 = SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_wireValid = loop_pipeline_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x(STALLENABLE,625)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_backStall = SE_redist0_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2_1_0_backStall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x(BLACKBOX,307)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    loop_pipeline_i_sfc_s_c0_in_wt_entry_s_c0_enter1_loop_pipeline7 thei_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_backStall),
        .in_i_valid(SE_out_loop_pipeline_B1_start_merge_reg_aunroll_x_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0(GND_q),
        .in_c0_eni1_1(bubble_select_loop_pipeline_B1_start_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out(i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out(i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0(),
        .out_c0_exit_1(),
        .out_c0_exit_2(i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_c0_exit_2),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out = i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out = i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_loop_pipeline11_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,11)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_loop_pipeline22_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,103)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_loop_pipelines_c0_enter1_loop_pipeline7_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,105)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,109)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,111)
    assign out_iord_bl_do_o_fifoready = i_iord_bl_do_unnamed_loop_pipeline1_loop_pipeline28_aunroll_x_out_iord_bl_do_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,116)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline32_loop_pipeline195_out_intel_reserved_ffwd_10_0;

    // dupName_0_sync_out_x(GPOUT,118)@34
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline2_loop_pipeline33_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,120)
    assign out_pre1_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_address;
    assign out_pre1_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_enable;
    assign out_pre1_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_read;
    assign out_pre1_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_write;
    assign out_pre1_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_writedata;
    assign out_pre1_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_byteenable;
    assign out_pre1_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre1_loop_pipeline79_out_pre1_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,124)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline33_loop_pipeline198_out_intel_reserved_ffwd_11_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,126)
    assign out_pre2552_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_address;
    assign out_pre2552_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_enable;
    assign out_pre2552_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_read;
    assign out_pre2552_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_write;
    assign out_pre2552_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_writedata;
    assign out_pre2552_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_byteenable;
    assign out_pre2552_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2552_loop_pipeline82_out_pre2552_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,130)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline34_loop_pipeline201_out_intel_reserved_ffwd_12_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,132)
    assign out_pre2563_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_address;
    assign out_pre2563_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_enable;
    assign out_pre2563_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_read;
    assign out_pre2563_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_write;
    assign out_pre2563_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_writedata;
    assign out_pre2563_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_byteenable;
    assign out_pre2563_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2563_loop_pipeline85_out_pre2563_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,136)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline35_loop_pipeline204_out_intel_reserved_ffwd_13_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,138)
    assign out_pre2574_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_address;
    assign out_pre2574_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_enable;
    assign out_pre2574_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_read;
    assign out_pre2574_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_write;
    assign out_pre2574_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_writedata;
    assign out_pre2574_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_byteenable;
    assign out_pre2574_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_pre2574_loop_pipeline88_out_pre2574_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,142)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline36_loop_pipeline207_out_intel_reserved_ffwd_14_0;

    // dupName_5_ext_sig_sync_out_x(GPOUT,144)
    assign out_unnamed_loop_pipeline4_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_address;
    assign out_unnamed_loop_pipeline4_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_enable;
    assign out_unnamed_loop_pipeline4_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_read;
    assign out_unnamed_loop_pipeline4_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_write;
    assign out_unnamed_loop_pipeline4_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_writedata;
    assign out_unnamed_loop_pipeline4_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_byteenable;
    assign out_unnamed_loop_pipeline4_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline4_loop_pipeline91_out_unnamed_loop_pipeline4_avm_burstcount;

    // dupName_5_regfree_osync_x(GPOUT,148)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline210_out_intel_reserved_ffwd_15_0;

    // dupName_6_ext_sig_sync_out_x(GPOUT,150)
    assign out_unnamed_loop_pipeline5_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_address;
    assign out_unnamed_loop_pipeline5_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_enable;
    assign out_unnamed_loop_pipeline5_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_read;
    assign out_unnamed_loop_pipeline5_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_write;
    assign out_unnamed_loop_pipeline5_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_writedata;
    assign out_unnamed_loop_pipeline5_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_byteenable;
    assign out_unnamed_loop_pipeline5_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline5_loop_pipeline94_out_unnamed_loop_pipeline5_avm_burstcount;

    // dupName_6_regfree_osync_x(GPOUT,154)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline38_loop_pipeline213_out_intel_reserved_ffwd_16_0;

    // dupName_7_ext_sig_sync_out_x(GPOUT,156)
    assign out_unnamed_loop_pipeline6_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_address;
    assign out_unnamed_loop_pipeline6_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_enable;
    assign out_unnamed_loop_pipeline6_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_read;
    assign out_unnamed_loop_pipeline6_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_write;
    assign out_unnamed_loop_pipeline6_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_writedata;
    assign out_unnamed_loop_pipeline6_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_byteenable;
    assign out_unnamed_loop_pipeline6_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline6_loop_pipeline97_out_unnamed_loop_pipeline6_avm_burstcount;

    // dupName_7_regfree_osync_x(GPOUT,160)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline39_loop_pipeline216_out_intel_reserved_ffwd_17_0;

    // dupName_8_ext_sig_sync_out_x(GPOUT,162)
    assign out_unnamed_loop_pipeline7_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_address;
    assign out_unnamed_loop_pipeline7_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_enable;
    assign out_unnamed_loop_pipeline7_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_read;
    assign out_unnamed_loop_pipeline7_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_write;
    assign out_unnamed_loop_pipeline7_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_writedata;
    assign out_unnamed_loop_pipeline7_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_byteenable;
    assign out_unnamed_loop_pipeline7_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline7_loop_pipeline100_out_unnamed_loop_pipeline7_avm_burstcount;

    // dupName_8_regfree_osync_x(GPOUT,166)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline20_loop_pipeline159_out_intel_reserved_ffwd_18_0;

    // dupName_9_ext_sig_sync_out_x(GPOUT,168)
    assign out_unnamed_loop_pipeline8_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_address;
    assign out_unnamed_loop_pipeline8_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_enable;
    assign out_unnamed_loop_pipeline8_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_read;
    assign out_unnamed_loop_pipeline8_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_write;
    assign out_unnamed_loop_pipeline8_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_writedata;
    assign out_unnamed_loop_pipeline8_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_byteenable;
    assign out_unnamed_loop_pipeline8_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline8_loop_pipeline103_out_unnamed_loop_pipeline8_avm_burstcount;

    // dupName_9_regfree_osync_x(GPOUT,172)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline21_loop_pipeline162_out_intel_reserved_ffwd_19_0;

    // dupName_10_ext_sig_sync_out_x(GPOUT,174)
    assign out_unnamed_loop_pipeline9_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_address;
    assign out_unnamed_loop_pipeline9_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_enable;
    assign out_unnamed_loop_pipeline9_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_read;
    assign out_unnamed_loop_pipeline9_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_write;
    assign out_unnamed_loop_pipeline9_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_writedata;
    assign out_unnamed_loop_pipeline9_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_byteenable;
    assign out_unnamed_loop_pipeline9_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline9_loop_pipeline106_out_unnamed_loop_pipeline9_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,178)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline3_loop_pipeline76_out_intel_reserved_ffwd_1_0;

    // dupName_11_ext_sig_sync_out_x(GPOUT,180)
    assign out_unnamed_loop_pipeline10_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_address;
    assign out_unnamed_loop_pipeline10_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_enable;
    assign out_unnamed_loop_pipeline10_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_read;
    assign out_unnamed_loop_pipeline10_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_write;
    assign out_unnamed_loop_pipeline10_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_writedata;
    assign out_unnamed_loop_pipeline10_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_byteenable;
    assign out_unnamed_loop_pipeline10_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline10_loop_pipeline109_out_unnamed_loop_pipeline10_avm_burstcount;

    // dupName_11_regfree_osync_x(GPOUT,184)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline22_loop_pipeline165_out_intel_reserved_ffwd_20_0;

    // dupName_12_ext_sig_sync_out_x(GPOUT,186)
    assign out_unnamed_loop_pipeline11_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_address;
    assign out_unnamed_loop_pipeline11_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_enable;
    assign out_unnamed_loop_pipeline11_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_read;
    assign out_unnamed_loop_pipeline11_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_write;
    assign out_unnamed_loop_pipeline11_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_writedata;
    assign out_unnamed_loop_pipeline11_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_byteenable;
    assign out_unnamed_loop_pipeline11_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline11_loop_pipeline112_out_unnamed_loop_pipeline11_avm_burstcount;

    // dupName_12_regfree_osync_x(GPOUT,190)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline23_loop_pipeline168_out_intel_reserved_ffwd_21_0;

    // dupName_13_ext_sig_sync_out_x(GPOUT,192)
    assign out_unnamed_loop_pipeline12_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_address;
    assign out_unnamed_loop_pipeline12_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_enable;
    assign out_unnamed_loop_pipeline12_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_read;
    assign out_unnamed_loop_pipeline12_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_write;
    assign out_unnamed_loop_pipeline12_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_writedata;
    assign out_unnamed_loop_pipeline12_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_byteenable;
    assign out_unnamed_loop_pipeline12_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline12_loop_pipeline115_out_unnamed_loop_pipeline12_avm_burstcount;

    // dupName_13_regfree_osync_x(GPOUT,196)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline24_loop_pipeline171_out_intel_reserved_ffwd_2_0;

    // dupName_14_ext_sig_sync_out_x(GPOUT,198)
    assign out_unnamed_loop_pipeline13_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_address;
    assign out_unnamed_loop_pipeline13_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_enable;
    assign out_unnamed_loop_pipeline13_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_read;
    assign out_unnamed_loop_pipeline13_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_write;
    assign out_unnamed_loop_pipeline13_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_writedata;
    assign out_unnamed_loop_pipeline13_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_byteenable;
    assign out_unnamed_loop_pipeline13_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline13_loop_pipeline118_out_unnamed_loop_pipeline13_avm_burstcount;

    // dupName_14_regfree_osync_x(GPOUT,202)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline25_loop_pipeline174_out_intel_reserved_ffwd_3_0;

    // dupName_15_ext_sig_sync_out_x(GPOUT,204)
    assign out_unnamed_loop_pipeline14_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_address;
    assign out_unnamed_loop_pipeline14_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_enable;
    assign out_unnamed_loop_pipeline14_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_read;
    assign out_unnamed_loop_pipeline14_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_write;
    assign out_unnamed_loop_pipeline14_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_writedata;
    assign out_unnamed_loop_pipeline14_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_byteenable;
    assign out_unnamed_loop_pipeline14_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline14_loop_pipeline121_out_unnamed_loop_pipeline14_avm_burstcount;

    // dupName_15_regfree_osync_x(GPOUT,208)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline26_loop_pipeline177_out_intel_reserved_ffwd_4_0;

    // dupName_16_ext_sig_sync_out_x(GPOUT,210)
    assign out_unnamed_loop_pipeline15_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_address;
    assign out_unnamed_loop_pipeline15_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_enable;
    assign out_unnamed_loop_pipeline15_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_read;
    assign out_unnamed_loop_pipeline15_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_write;
    assign out_unnamed_loop_pipeline15_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_writedata;
    assign out_unnamed_loop_pipeline15_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_byteenable;
    assign out_unnamed_loop_pipeline15_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline15_loop_pipeline124_out_unnamed_loop_pipeline15_avm_burstcount;

    // dupName_16_regfree_osync_x(GPOUT,214)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline27_loop_pipeline180_out_intel_reserved_ffwd_5_0;

    // dupName_17_ext_sig_sync_out_x(GPOUT,216)
    assign out_unnamed_loop_pipeline16_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_address;
    assign out_unnamed_loop_pipeline16_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_enable;
    assign out_unnamed_loop_pipeline16_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_read;
    assign out_unnamed_loop_pipeline16_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_write;
    assign out_unnamed_loop_pipeline16_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_writedata;
    assign out_unnamed_loop_pipeline16_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_byteenable;
    assign out_unnamed_loop_pipeline16_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline16_loop_pipeline127_out_unnamed_loop_pipeline16_avm_burstcount;

    // dupName_17_regfree_osync_x(GPOUT,220)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline28_loop_pipeline183_out_intel_reserved_ffwd_6_0;

    // dupName_18_ext_sig_sync_out_x(GPOUT,222)
    assign out_unnamed_loop_pipeline17_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_address;
    assign out_unnamed_loop_pipeline17_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_enable;
    assign out_unnamed_loop_pipeline17_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_read;
    assign out_unnamed_loop_pipeline17_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_write;
    assign out_unnamed_loop_pipeline17_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_writedata;
    assign out_unnamed_loop_pipeline17_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_byteenable;
    assign out_unnamed_loop_pipeline17_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline17_loop_pipeline130_out_unnamed_loop_pipeline17_avm_burstcount;

    // dupName_18_regfree_osync_x(GPOUT,226)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline29_loop_pipeline186_out_intel_reserved_ffwd_7_0;

    // dupName_19_ext_sig_sync_out_x(GPOUT,228)
    assign out_unnamed_loop_pipeline18_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_address;
    assign out_unnamed_loop_pipeline18_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_enable;
    assign out_unnamed_loop_pipeline18_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_read;
    assign out_unnamed_loop_pipeline18_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_write;
    assign out_unnamed_loop_pipeline18_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_writedata;
    assign out_unnamed_loop_pipeline18_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_byteenable;
    assign out_unnamed_loop_pipeline18_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline18_loop_pipeline133_out_unnamed_loop_pipeline18_avm_burstcount;

    // dupName_19_regfree_osync_x(GPOUT,231)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline30_loop_pipeline189_out_intel_reserved_ffwd_8_0;

    // dupName_20_ext_sig_sync_out_x(GPOUT,232)
    assign out_unnamed_loop_pipeline19_avm_address = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_address;
    assign out_unnamed_loop_pipeline19_avm_enable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_enable;
    assign out_unnamed_loop_pipeline19_avm_read = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_read;
    assign out_unnamed_loop_pipeline19_avm_write = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_write;
    assign out_unnamed_loop_pipeline19_avm_writedata = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_writedata;
    assign out_unnamed_loop_pipeline19_avm_byteenable = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_byteenable;
    assign out_unnamed_loop_pipeline19_avm_burstcount = i_llvm_fpga_load_local_pipelined_i5_p1024i5_unnamed_loop_pipeline19_loop_pipeline136_out_unnamed_loop_pipeline19_avm_burstcount;

    // dupName_20_regfree_osync_x(GPOUT,235)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline31_loop_pipeline192_out_intel_reserved_ffwd_9_0;

endmodule
