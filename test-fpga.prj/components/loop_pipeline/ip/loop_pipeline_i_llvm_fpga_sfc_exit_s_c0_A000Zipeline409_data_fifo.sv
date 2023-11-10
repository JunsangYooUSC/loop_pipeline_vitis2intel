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

// SystemVerilog created from loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zipeline409_data_fifo
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zipeline409_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0,
    input wire [0:0] in_data_in_1,
    input wire [0:0] in_data_in_2,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0,
    output wire [0:0] out_data_out_1,
    output wire [0:0] out_data_out_2,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_in;
    wire [0:0] adapt_scalar_trunc_q;
    wire [6:0] c_i7_0gr_q;
    wire [23:0] dsdk_ip_adapt_bitjoin_q;
    wire [7:0] element_extension_q;
    wire [23:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_almost_full_bitsignaltemp;
    wire [23:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_b;
    wire [0:0] dupName_0_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_0_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_0_element_extension_x_q;
    wire [0:0] dupName_0_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_1_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_1_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_1_element_extension_x_q;
    wire [0:0] dupName_1_ip_dsdk_adapt_bitselect_x_b;


    // c_i7_0gr(CONSTANT,3)
    assign c_i7_0gr_q = 7'b0000000;

    // dupName_1_element_extension_x(BITJOIN,16)
    assign dupName_1_element_extension_x_q = {c_i7_0gr_q, in_data_in_2};

    // dupName_0_element_extension_x(BITJOIN,12)
    assign dupName_0_element_extension_x_q = {c_i7_0gr_q, in_data_in_1};

    // element_extension(BITJOIN,5)
    assign element_extension_q = {c_i7_0gr_q, in_data_in_0};

    // dsdk_ip_adapt_bitjoin(BITJOIN,4)
    assign dsdk_ip_adapt_bitjoin_q = {dupName_1_element_extension_x_q, dupName_0_element_extension_x_q, element_extension_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410(EXTIFACE,6)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_in = dsdk_ip_adapt_bitjoin_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(16),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(24),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410 (
        .data_in(dsdk_ip_adapt_bitjoin_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,9)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_stall_out;

    // dupName_1_ip_dsdk_adapt_bitselect_x(BITSELECT,17)
    assign dupName_1_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_out[16:16];

    // dupName_1_adapt_scalar_trunc_x(ROUND,14)
    assign dupName_1_adapt_scalar_trunc_x_in = dupName_1_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_1_adapt_scalar_trunc_x_q = dupName_1_adapt_scalar_trunc_x_in[0:0];

    // dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,13)
    assign dupName_0_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_out[8:8];

    // dupName_0_adapt_scalar_trunc_x(ROUND,10)
    assign dupName_0_adapt_scalar_trunc_x_in = dupName_0_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_0_adapt_scalar_trunc_x_q = dupName_0_adapt_scalar_trunc_x_in[0:0];

    // ip_dsdk_adapt_bitselect(BITSELECT,7)
    assign ip_dsdk_adapt_bitselect_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_data_out[0:0];

    // adapt_scalar_trunc(ROUND,2)
    assign adapt_scalar_trunc_in = ip_dsdk_adapt_bitselect_b;
    assign adapt_scalar_trunc_q = adapt_scalar_trunc_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,19)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_almost_full;
    assign out_data_out_0 = adapt_scalar_trunc_q;
    assign out_data_out_1 = dupName_0_adapt_scalar_trunc_x_q;
    assign out_data_out_2 = dupName_1_adapt_scalar_trunc_x_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline410_valid_out;

endmodule
