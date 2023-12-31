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

// SystemVerilog created from loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zt38_loop_pipeline391
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zt38_loop_pipeline391 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_mask_valid,
    input wire [0:0] in_data_in_0,
    input wire [0:0] in_data_in_1,
    input wire [0:0] in_data_in_2,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0,
    output wire [0:0] out_data_out_1,
    output wire [0:0] out_data_out_2,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_full_detector_out_full;
    wire [0:0] not_stall_output_q;
    wire [0:0] output_accepted_and_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_0;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_1;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_2;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_output(LOGICAL,4)
    assign not_stall_output_q = ~ (in_stall_in);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x(BLACKBOX,9)@20000000
    // out out_almost_full@20000003
    // out out_valid_out@20000003
    // out out_data_out_0@20000003
    // out out_data_out_1@20000003
    // out out_data_out_2@20000003
    loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zipeline409_data_fifo thei_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x (
        .in_stall_in(in_stall_in),
        .in_valid_in(in_valid_in),
        .in_data_in_0(in_data_in_0),
        .in_data_in_1(in_data_in_1),
        .in_data_in_2(in_data_in_2),
        .out_almost_full(),
        .out_stall_out(),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_1),
        .out_data_out_2(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_2),
        .clock(clock),
        .resetn(resetn)
    );

    // output_accepted_and(LOGICAL,5)
    assign output_accepted_and_q = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_valid_out & not_stall_output_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_full_detector(BLACKBOX,3)@20000000
    loop_pipeline_i_llvm_fpga_sfc_exit_s_c0_A000Zine390_full_detector thei_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_full_detector (
        .in_dec_pipelined_thread(GND_q),
        .in_decrement(output_accepted_and_q),
        .in_inc_pipelined_thread(GND_q),
        .in_increment(in_input_accepted),
        .out_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_full_detector_out_full),
        .out_throttle(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,7)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline390_full_detector_out_full;

    // dupName_0_sync_out_aunroll_x(GPOUT,12)@20000003
    assign out_data_out_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_0;
    assign out_data_out_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_1;
    assign out_data_out_2 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_data_out_2;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_loop_pipelines_c0_exit38_loop_pipeline409_data_fifo_aunroll_x_out_valid_out;

endmodule
