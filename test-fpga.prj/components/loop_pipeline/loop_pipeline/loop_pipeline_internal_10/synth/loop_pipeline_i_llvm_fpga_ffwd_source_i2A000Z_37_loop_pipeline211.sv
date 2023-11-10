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

// SystemVerilog created from loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_37_loop_pipeline211
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_37_loop_pipeline211 (
    output wire [19:0] out_intel_reserved_ffwd_15_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_enable_in,
    input wire [19:0] in_src_data_in_15_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [19:0] adapt_scalar_trunc_in;
    wire [19:0] adapt_scalar_trunc_q;
    wire [11:0] c_i12_0gr_q;
    wire [31:0] element_extension_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_enable_in;
    wire i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_enable_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_valid_in;
    wire i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_source_out;


    // c_i12_0gr(CONSTANT,3)
    assign c_i12_0gr_q = 12'b000000000000;

    // element_extension(BITJOIN,4)
    assign element_extension_q = {c_i12_0gr_q, in_src_data_in_15_0};

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212(EXTIFACE,5)
    assign i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_enable_in = in_enable_in;
    assign i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_source_in = element_extension_q;
    assign i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_enable_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_enable_in[0];
    assign i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_valid_in[0];
    acl_ffwdsrc #(
        .WIDTH(32)
    ) thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212 (
        .enable_in(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_enable_in_bitsignaltemp),
        .source_in(element_extension_q),
        .valid_in(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_source_out),
        .clock(clock),
        .resetn(resetn)
    );

    // adapt_scalar_trunc(ROUND,2)
    assign adapt_scalar_trunc_in = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline37_loop_pipeline212_source_out[19:0];
    assign adapt_scalar_trunc_q = adapt_scalar_trunc_in[19:0];

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_15_0 = adapt_scalar_trunc_q;

    // sync_out(GPOUT,8)@20000000
    assign out_stall_out = in_stall_in;

    // dupName_0_sync_out_x(GPOUT,10)@34
    assign out_valid_out = in_valid_in;

endmodule
