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

// SystemVerilog created from loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_305
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_305 (
    input wire [19:0] in_intel_reserved_ffwd_12_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [19:0] out_dest_data_out_12_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [11:0] c_i12_0gr_q;
    wire [31:0] element_extension_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306_buffer_in;
    wire [31:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306_buffer_out;
    wire [19:0] adapt_scalar_trunc_sel_x_b;


    // sync_out(GPOUT,8)@1
    assign out_stall_out = in_stall_in;

    // c_i12_0gr(CONSTANT,3)
    assign c_i12_0gr_q = 12'b000000000000;

    // element_extension(BITJOIN,4)@20000000
    assign element_extension_q = {c_i12_0gr_q, in_intel_reserved_ffwd_12_0};

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306(EXTIFACE,5)@1
    assign i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306_buffer_in = element_extension_q;
    acl_dspba_buffer #(
        .WIDTH(32)
    ) thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306 (
        .buffer_in(element_extension_q),
        .buffer_out(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306_buffer_out)
    );

    // adapt_scalar_trunc_sel_x(BITSELECT,9)@1
    assign adapt_scalar_trunc_sel_x_b = i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline306_buffer_out[19:0];

    // dupName_0_sync_out_x(GPOUT,11)@1
    assign out_dest_data_out_12_0 = adapt_scalar_trunc_sel_x_b;
    assign out_valid_out = in_valid_in;

endmodule
