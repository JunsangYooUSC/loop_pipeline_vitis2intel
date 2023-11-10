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

// SystemVerilog created from loop_pipeline_bb_B2_stall_region
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_bb_B2_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [23:0] in_intel_reserved_ffwd_0_0,
    output wire [19:0] out_intel_reserved_ffwd_22_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [19:0] in_intel_reserved_ffwd_10_0,
    output wire [23:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe240,
    output wire [0:0] out_valid_out,
    input wire [19:0] in_intel_reserved_ffwd_11_0,
    input wire [19:0] in_intel_reserved_ffwd_12_0,
    input wire [19:0] in_intel_reserved_ffwd_13_0,
    input wire [19:0] in_intel_reserved_ffwd_14_0,
    input wire [19:0] in_intel_reserved_ffwd_15_0,
    input wire [19:0] in_intel_reserved_ffwd_16_0,
    input wire [19:0] in_intel_reserved_ffwd_17_0,
    input wire [19:0] in_intel_reserved_ffwd_18_0,
    input wire [19:0] in_intel_reserved_ffwd_19_0,
    input wire [19:0] in_intel_reserved_ffwd_1_0,
    input wire [19:0] in_intel_reserved_ffwd_20_0,
    input wire [19:0] in_intel_reserved_ffwd_21_0,
    input wire [19:0] in_intel_reserved_ffwd_2_0,
    input wire [19:0] in_intel_reserved_ffwd_3_0,
    input wire [19:0] in_intel_reserved_ffwd_4_0,
    input wire [19:0] in_intel_reserved_ffwd_5_0,
    input wire [19:0] in_intel_reserved_ffwd_6_0,
    input wire [19:0] in_intel_reserved_ffwd_7_0,
    input wire [19:0] in_intel_reserved_ffwd_8_0,
    input wire [19:0] in_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out;
    wire [19:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [23:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_c0_exit38_2;
    wire [0:0] loop_pipeline_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] loop_pipeline_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] loop_pipeline_B2_merge_reg_aunroll_x_out_data_out_0;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_b;
    wire [0:0] bubble_join_loop_pipeline_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_loop_pipeline_B2_merge_reg_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_V0;
    wire [0:0] SE_out_loop_pipeline_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_loop_pipeline_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_loop_pipeline_B2_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,45)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,46)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[0:0];

    // SE_stall_entry(STALLENABLE,54)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = loop_pipeline_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // loop_pipeline_B2_merge_reg_aunroll_x(BLACKBOX,43)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0@1
    loop_pipeline_B2_merge_reg theloop_pipeline_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_loop_pipeline_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0(bubble_select_stall_entry_b),
        .out_stall_out(loop_pipeline_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(loop_pipeline_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0(loop_pipeline_B2_merge_reg_aunroll_x_out_data_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_loop_pipeline_B2_merge_reg_aunroll_x(BITJOIN,52)
    assign bubble_join_loop_pipeline_B2_merge_reg_aunroll_x_q = loop_pipeline_B2_merge_reg_aunroll_x_out_data_out_0;

    // bubble_select_loop_pipeline_B2_merge_reg_aunroll_x(BITSELECT,53)
    assign bubble_select_loop_pipeline_B2_merge_reg_aunroll_x_b = bubble_join_loop_pipeline_B2_merge_reg_aunroll_x_q[0:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_loop_pipeline_B2_merge_reg_aunroll_x(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_loop_pipeline_B2_merge_reg_aunroll_x_V0 = SE_out_loop_pipeline_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_loop_pipeline_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_o_stall | ~ (SE_out_loop_pipeline_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_loop_pipeline_B2_merge_reg_aunroll_x_wireValid = loop_pipeline_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x(BLACKBOX,42)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit38_0@9
    // out out_c0_exit38_1@9
    // out out_c0_exit38_2@9
    loop_pipeline_i_sfc_s_c0_in_for_cond1_prA000Z342_loop_pipeline220 thei_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_backStall),
        .in_i_valid(SE_out_loop_pipeline_B2_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni133_0(GND_q),
        .in_c0_eni133_1(bubble_select_loop_pipeline_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit38_0(),
        .out_c0_exit38_1(),
        .out_c0_exit38_2(i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_c0_exit38_2),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,9)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,11)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_intel_reserved_ffwd_22_0;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_intel_reserved_ffwd_23_0;

    // bubble_join_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x(BITJOIN,49)
    assign bubble_join_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_q = i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_out_c0_exit38_2;

    // bubble_select_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x(BITSELECT,50)
    assign bubble_select_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_q[0:0];

    // dupName_0_sync_out_x(GPOUT,21)@9
    assign out_c0_exe240 = bubble_select_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline220_aunroll_x_V0;

endmodule
