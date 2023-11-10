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

// SystemVerilog created from loop_pipeline_i_sfc_s_c0_in_for_cond1_prA000Z342_loop_pipeline220
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_sfc_s_c0_in_for_cond1_prA000Z342_loop_pipeline220 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [23:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [19:0] in_intel_reserved_ffwd_10_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out,
    input wire [19:0] in_intel_reserved_ffwd_11_0,
    output wire [19:0] out_intel_reserved_ffwd_22_0,
    input wire [19:0] in_intel_reserved_ffwd_12_0,
    output wire [23:0] out_intel_reserved_ffwd_23_0,
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
    input wire [0:0] in_c0_eni133_0,
    input wire [0:0] in_c0_eni133_1,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit38_0,
    output wire [0:0] out_c0_exit38_1,
    output wire [0:0] out_c0_exit38_2,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_0;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_1;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_2;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out;
    wire [19:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [23:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_1;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_2;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x(BLACKBOX,35)@20000000
    // out out_valid_out@20000003
    // out out_data_out_0@20000003
    // out out_data_out_1@20000003
    // out out_data_out_2@20000003
    loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zt38_loop_pipeline391 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_0),
        .in_data_in_1(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_1),
        .in_data_in_2(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_2),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_1),
        .out_data_out_2(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_2),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x(BLACKBOX,36)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_loop_pipeline0@6
    // out out_c0_exi237_0@6
    // out out_c0_exi237_1@6
    // out out_c0_exi237_2@6
    loop_pipeline_i_sfc_logic_s_c0_in_for_coA000Z342_loop_pipeline221 thei_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x (
        .in_i_valid(input_accepted_and_q),
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
        .in_c0_eni133_0(in_c0_eni133_0),
        .in_c0_eni133_1(in_c0_eni133_1),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out),
        .out_intel_reserved_ffwd_22_0(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_loop_pipeline0(),
        .out_c0_exi237_0(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_0),
        .out_c0_exi237_1(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_1),
        .out_c0_exi237_2(i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_c0_exi237_2),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_2_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c0_in_for_cond1_preheader_loop_pipelines_c0_enter342_loop_pipeline221_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,38)@9
    assign out_c0_exit38_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_0;
    assign out_c0_exit38_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_1;
    assign out_c0_exit38_2 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_data_out_2;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_aunroll_x_out_valid_out;

endmodule
