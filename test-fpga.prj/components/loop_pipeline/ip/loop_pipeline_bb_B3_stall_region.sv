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

// SystemVerilog created from loop_pipeline_bb_B3_stall_region
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_bb_B3_stall_region (
    input wire [0:0] in_iowr_bl_return_i_fifoready,
    output wire [19:0] out_iowr_bl_return_o_fifodata,
    output wire [0:0] out_iowr_bl_return_o_fifovalid,
    output wire [7:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [19:0] in_intel_reserved_ffwd_22_0,
    output wire [23:0] out_intel_reserved_ffwd_24_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [23:0] in_intel_reserved_ffwd_23_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_valid_out;
    wire [23:0] i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_valid_out;
    wire [23:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_intel_reserved_ffwd_24_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_valid_out;
    wire [7:0] i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_valid_out;
    wire [19:0] i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_iowr_bl_return_o_fifodata;
    wire [0:0] i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_iowr_bl_return_o_fifovalid;
    wire [0:0] i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_valid;
    wire [19:0] bubble_join_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_q;
    wire [19:0] bubble_select_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_b;
    wire [23:0] bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_q;
    wire [23:0] bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_b;
    wire [0:0] bubble_join_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_and0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_V0;


    // bubble_join_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x(BITJOIN,46)
    assign bubble_join_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_q = i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x(BITSELECT,47)
    assign bubble_select_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_b = bubble_join_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_q[0:0];

    // i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    loop_pipeline_i_llvm_fpga_push_token_i1_throttle_push_404 thei_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403 (
        .in_data_in(bubble_select_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_V0 = SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_and0 = i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_valid_out;
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_V0 & SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_and0;

    // bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg(STALLENABLE,80)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_s_tv_0 = SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_backStall & bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_V0 = SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_backStall = bubble_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_wireValid = i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_q = i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_dest_data_out_23_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_b = bubble_join_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_q[23:0];

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_44_loop_pipeline407 thei_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406 (
        .in_enable_in(VCC_q),
        .in_src_data_in_24_0(bubble_select_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_V0),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_intel_reserved_ffwd_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393(STALLENABLE,51)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_V0 = SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_backStall = i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_wireValid = i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_dest_i24_A000Zs_pms_vm_pms_d28_394 thei_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_dest_data_out_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i24_pms_cs249_pms_vs_pms_vm_pms_d28_loop_pipeline393_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_A000Z927_loop_pipeline397 thei_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_dest_data_out_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396(BITJOIN,36)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_q = i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_dest_data_out_22_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396(BITSELECT,37)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_b = bubble_join_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_q[19:0];

    // SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_V0 = SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_backStall = i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_wireValid = i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_out_valid_out;

    // SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_V0 = SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_backStall = i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_stall_out | ~ (SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_wireValid = i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_valid;

    // i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x(BLACKBOX,34)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_o_fifodata@20000000
    // out out_iowr_bl_return_o_fifovalid@20000000
    // out out_o_stall@20000000
    loop_pipeline_i_iowr_bl_return_unnamed_43_loop_pipeline402 thei_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x (
        .in_i_stall(SE_out_i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_V0),
        .in_iowr_bl_return_i_fifoready(in_iowr_bl_return_i_fifoready),
        .in_i_data_0(bubble_select_i_llvm_fpga_ffwd_dest_i20_reduction_loop_pipeline_1927_loop_pipeline396_b),
        .out_iowr_bl_return_o_fifodata(i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_iowr_bl_return_o_fifodata),
        .out_iowr_bl_return_o_fifovalid(i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_iowr_bl_return_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_iowr_bl_return_o_fifodata = i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_iowr_bl_return_o_fifodata;
    assign out_iowr_bl_return_o_fifovalid = i_iowr_bl_return_unnamed_loop_pipeline43_loop_pipeline401_aunroll_x_out_iowr_bl_return_o_fifovalid;

    // feedback_out_1_sync(GPOUT,8)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,10)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_out_feedback_valid_out_1;

    // regfree_osync(GPOUT,18)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline44_loop_pipeline406_out_intel_reserved_ffwd_24_0;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,27)@1
    assign out_valid_out = SE_out_i_llvm_fpga_push_token_i1_throttle_push_loop_pipeline403_V0;

endmodule
