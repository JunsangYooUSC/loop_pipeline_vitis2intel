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

// SystemVerilog created from loop_pipeline_i_llvm_fpga_push_i24_zz13eA000Zsh7_loop_pipeline356
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_llvm_fpga_push_i24_zz13eA000Zsh7_loop_pipeline356 (
    input wire [0:0] in_feedback_stall_in_7,
    output wire [31:0] out_feedback_out_7,
    output wire [0:0] out_feedback_valid_out_7,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [23:0] in_data_in,
    input wire [0:0] in_keep_going,
    input wire [0:0] in_valid_in,
    output wire [23:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] c_i8_0gr_q;
    wire [31:0] element_extension_q;
    wire [31:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_data_in;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_dir;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_stall_in;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_predicate;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_in;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_in;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_data_out;
    wire [31:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_out;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_valid_out;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_out;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_out;
    wire i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_out_bitsignaltemp;
    wire [23:0] adapt_scalar_trunc_sel_x_b;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i8_0gr(CONSTANT,4)
    assign c_i8_0gr_q = 8'b00000000;

    // element_extension(BITJOIN,5)@6
    assign element_extension_q = {c_i8_0gr_q, in_data_in};

    // i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357(EXTIFACE,8)@6
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_data_in = element_extension_q;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_dir = in_keep_going;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_stall_in = in_feedback_stall_in_7;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_predicate = GND_q;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_in = in_stall_in;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_in = in_valid_in;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_dir_bitsignaltemp = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_dir[0];
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_stall_in[0];
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_predicate_bitsignaltemp = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_predicate[0];
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_in_bitsignaltemp = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_in[0];
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_in_bitsignaltemp = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_in[0];
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_valid_out[0] = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_valid_out_bitsignaltemp;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_out[0] = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_out[0] = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_out_bitsignaltemp;
    acl_push #(
        .FIFO_DEPTH(1),
        .INF_LOOP(0),
        .INF_LOOP_INITIALIZATION(32'b00000000000000000000000000000000),
        .MIN_FIFO_LATENCY(1),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .DATA_WIDTH(32),
        .ENABLED(0),
        .RAM_FIFO_DEPTH_INC(0),
        .STALLFREE(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357 (
        .data_in(element_extension_q),
        .dir(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_dir_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_stall_in_bitsignaltemp),
        .predicate(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_data_out),
        .feedback_out(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_out),
        .feedback_valid_out(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,7)
    assign out_feedback_out_7 = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_out;
    assign out_feedback_valid_out_7 = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_feedback_valid_out;

    // sync_out(GPOUT,10)@6
    assign out_stall_out = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_stall_out;

    // adapt_scalar_trunc_sel_x(BITSELECT,11)@6
    assign adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_data_out[23:0];

    // dupName_0_sync_out_x(GPOUT,13)@6
    assign out_data_out = adapt_scalar_trunc_sel_x_b;
    assign out_valid_out = i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline357_valid_out;

endmodule
