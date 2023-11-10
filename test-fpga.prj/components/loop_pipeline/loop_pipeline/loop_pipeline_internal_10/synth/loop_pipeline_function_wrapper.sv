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

// SystemVerilog created from loop_pipeline_function_wrapper
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] avm_pre1_readdata,
    input wire [0:0] avm_pre1_readdatavalid,
    input wire [0:0] avm_pre1_waitrequest,
    input wire [0:0] avm_pre1_writeack,
    input wire [63:0] avm_pre2552_readdata,
    input wire [0:0] avm_pre2552_readdatavalid,
    input wire [0:0] avm_pre2552_waitrequest,
    input wire [0:0] avm_pre2552_writeack,
    input wire [63:0] avm_pre2563_readdata,
    input wire [0:0] avm_pre2563_readdatavalid,
    input wire [0:0] avm_pre2563_waitrequest,
    input wire [0:0] avm_pre2563_writeack,
    input wire [63:0] avm_pre2574_readdata,
    input wire [0:0] avm_pre2574_readdatavalid,
    input wire [0:0] avm_pre2574_waitrequest,
    input wire [0:0] avm_pre2574_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline10_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline10_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline10_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline10_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline11_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline11_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline11_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline11_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline12_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline12_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline12_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline12_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline13_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline13_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline13_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline13_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline14_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline14_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline14_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline14_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline15_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline15_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline15_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline15_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline16_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline16_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline16_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline16_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline17_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline17_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline17_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline17_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline18_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline18_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline18_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline18_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline19_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline19_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline19_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline19_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline4_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline4_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline4_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline4_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline5_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline5_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline5_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline5_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline6_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline6_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline6_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline6_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline7_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline7_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline7_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline7_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline8_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline8_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline8_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline8_writeack,
    input wire [63:0] avm_unnamed_loop_pipeline9_readdata,
    input wire [0:0] avm_unnamed_loop_pipeline9_readdatavalid,
    input wire [0:0] avm_unnamed_loop_pipeline9_waitrequest,
    input wire [0:0] avm_unnamed_loop_pipeline9_writeack,
    input wire [63:0] avst_iord_bl_do_data,
    input wire [0:0] avst_iord_bl_do_valid,
    input wire [0:0] avst_iowr_bl_return_almostfull,
    input wire [0:0] avst_iowr_bl_return_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_pre1_address,
    output wire [0:0] avm_pre1_burstcount,
    output wire [7:0] avm_pre1_byteenable,
    output wire [0:0] avm_pre1_enable,
    output wire [0:0] avm_pre1_read,
    output wire [0:0] avm_pre1_write,
    output wire [63:0] avm_pre1_writedata,
    output wire [63:0] avm_pre2552_address,
    output wire [0:0] avm_pre2552_burstcount,
    output wire [7:0] avm_pre2552_byteenable,
    output wire [0:0] avm_pre2552_enable,
    output wire [0:0] avm_pre2552_read,
    output wire [0:0] avm_pre2552_write,
    output wire [63:0] avm_pre2552_writedata,
    output wire [63:0] avm_pre2563_address,
    output wire [0:0] avm_pre2563_burstcount,
    output wire [7:0] avm_pre2563_byteenable,
    output wire [0:0] avm_pre2563_enable,
    output wire [0:0] avm_pre2563_read,
    output wire [0:0] avm_pre2563_write,
    output wire [63:0] avm_pre2563_writedata,
    output wire [63:0] avm_pre2574_address,
    output wire [0:0] avm_pre2574_burstcount,
    output wire [7:0] avm_pre2574_byteenable,
    output wire [0:0] avm_pre2574_enable,
    output wire [0:0] avm_pre2574_read,
    output wire [0:0] avm_pre2574_write,
    output wire [63:0] avm_pre2574_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline10_address,
    output wire [0:0] avm_unnamed_loop_pipeline10_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline10_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline10_enable,
    output wire [0:0] avm_unnamed_loop_pipeline10_read,
    output wire [0:0] avm_unnamed_loop_pipeline10_write,
    output wire [63:0] avm_unnamed_loop_pipeline10_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline11_address,
    output wire [0:0] avm_unnamed_loop_pipeline11_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline11_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline11_enable,
    output wire [0:0] avm_unnamed_loop_pipeline11_read,
    output wire [0:0] avm_unnamed_loop_pipeline11_write,
    output wire [63:0] avm_unnamed_loop_pipeline11_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline12_address,
    output wire [0:0] avm_unnamed_loop_pipeline12_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline12_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline12_enable,
    output wire [0:0] avm_unnamed_loop_pipeline12_read,
    output wire [0:0] avm_unnamed_loop_pipeline12_write,
    output wire [63:0] avm_unnamed_loop_pipeline12_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline13_address,
    output wire [0:0] avm_unnamed_loop_pipeline13_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline13_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline13_enable,
    output wire [0:0] avm_unnamed_loop_pipeline13_read,
    output wire [0:0] avm_unnamed_loop_pipeline13_write,
    output wire [63:0] avm_unnamed_loop_pipeline13_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline14_address,
    output wire [0:0] avm_unnamed_loop_pipeline14_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline14_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline14_enable,
    output wire [0:0] avm_unnamed_loop_pipeline14_read,
    output wire [0:0] avm_unnamed_loop_pipeline14_write,
    output wire [63:0] avm_unnamed_loop_pipeline14_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline15_address,
    output wire [0:0] avm_unnamed_loop_pipeline15_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline15_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline15_enable,
    output wire [0:0] avm_unnamed_loop_pipeline15_read,
    output wire [0:0] avm_unnamed_loop_pipeline15_write,
    output wire [63:0] avm_unnamed_loop_pipeline15_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline16_address,
    output wire [0:0] avm_unnamed_loop_pipeline16_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline16_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline16_enable,
    output wire [0:0] avm_unnamed_loop_pipeline16_read,
    output wire [0:0] avm_unnamed_loop_pipeline16_write,
    output wire [63:0] avm_unnamed_loop_pipeline16_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline17_address,
    output wire [0:0] avm_unnamed_loop_pipeline17_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline17_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline17_enable,
    output wire [0:0] avm_unnamed_loop_pipeline17_read,
    output wire [0:0] avm_unnamed_loop_pipeline17_write,
    output wire [63:0] avm_unnamed_loop_pipeline17_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline18_address,
    output wire [0:0] avm_unnamed_loop_pipeline18_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline18_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline18_enable,
    output wire [0:0] avm_unnamed_loop_pipeline18_read,
    output wire [0:0] avm_unnamed_loop_pipeline18_write,
    output wire [63:0] avm_unnamed_loop_pipeline18_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline19_address,
    output wire [0:0] avm_unnamed_loop_pipeline19_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline19_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline19_enable,
    output wire [0:0] avm_unnamed_loop_pipeline19_read,
    output wire [0:0] avm_unnamed_loop_pipeline19_write,
    output wire [63:0] avm_unnamed_loop_pipeline19_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline4_address,
    output wire [0:0] avm_unnamed_loop_pipeline4_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline4_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline4_enable,
    output wire [0:0] avm_unnamed_loop_pipeline4_read,
    output wire [0:0] avm_unnamed_loop_pipeline4_write,
    output wire [63:0] avm_unnamed_loop_pipeline4_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline5_address,
    output wire [0:0] avm_unnamed_loop_pipeline5_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline5_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline5_enable,
    output wire [0:0] avm_unnamed_loop_pipeline5_read,
    output wire [0:0] avm_unnamed_loop_pipeline5_write,
    output wire [63:0] avm_unnamed_loop_pipeline5_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline6_address,
    output wire [0:0] avm_unnamed_loop_pipeline6_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline6_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline6_enable,
    output wire [0:0] avm_unnamed_loop_pipeline6_read,
    output wire [0:0] avm_unnamed_loop_pipeline6_write,
    output wire [63:0] avm_unnamed_loop_pipeline6_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline7_address,
    output wire [0:0] avm_unnamed_loop_pipeline7_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline7_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline7_enable,
    output wire [0:0] avm_unnamed_loop_pipeline7_read,
    output wire [0:0] avm_unnamed_loop_pipeline7_write,
    output wire [63:0] avm_unnamed_loop_pipeline7_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline8_address,
    output wire [0:0] avm_unnamed_loop_pipeline8_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline8_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline8_enable,
    output wire [0:0] avm_unnamed_loop_pipeline8_read,
    output wire [0:0] avm_unnamed_loop_pipeline8_write,
    output wire [63:0] avm_unnamed_loop_pipeline8_writedata,
    output wire [63:0] avm_unnamed_loop_pipeline9_address,
    output wire [0:0] avm_unnamed_loop_pipeline9_burstcount,
    output wire [7:0] avm_unnamed_loop_pipeline9_byteenable,
    output wire [0:0] avm_unnamed_loop_pipeline9_enable,
    output wire [0:0] avm_unnamed_loop_pipeline9_read,
    output wire [0:0] avm_unnamed_loop_pipeline9_write,
    output wire [63:0] avm_unnamed_loop_pipeline9_writedata,
    output wire [0:0] avst_iord_bl_do_ready,
    output wire [19:0] avst_iowr_bl_return_data,
    output wire [0:0] avst_iowr_bl_return_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [19:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] implicit_input_q;
    wire [0:0] loop_pipeline_function_out_iord_bl_do_o_fifoready;
    wire [19:0] loop_pipeline_function_out_iowr_bl_return_o_fifodata;
    wire [0:0] loop_pipeline_function_out_iowr_bl_return_o_fifovalid;
    wire [63:0] loop_pipeline_function_out_pre1_avm_address;
    wire [0:0] loop_pipeline_function_out_pre1_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_pre1_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_pre1_avm_enable;
    wire [0:0] loop_pipeline_function_out_pre1_avm_read;
    wire [0:0] loop_pipeline_function_out_pre1_avm_write;
    wire [63:0] loop_pipeline_function_out_pre1_avm_writedata;
    wire [63:0] loop_pipeline_function_out_pre2552_avm_address;
    wire [0:0] loop_pipeline_function_out_pre2552_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_pre2552_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_pre2552_avm_enable;
    wire [0:0] loop_pipeline_function_out_pre2552_avm_read;
    wire [0:0] loop_pipeline_function_out_pre2552_avm_write;
    wire [63:0] loop_pipeline_function_out_pre2552_avm_writedata;
    wire [63:0] loop_pipeline_function_out_pre2563_avm_address;
    wire [0:0] loop_pipeline_function_out_pre2563_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_pre2563_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_pre2563_avm_enable;
    wire [0:0] loop_pipeline_function_out_pre2563_avm_read;
    wire [0:0] loop_pipeline_function_out_pre2563_avm_write;
    wire [63:0] loop_pipeline_function_out_pre2563_avm_writedata;
    wire [63:0] loop_pipeline_function_out_pre2574_avm_address;
    wire [0:0] loop_pipeline_function_out_pre2574_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_pre2574_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_pre2574_avm_enable;
    wire [0:0] loop_pipeline_function_out_pre2574_avm_read;
    wire [0:0] loop_pipeline_function_out_pre2574_avm_write;
    wire [63:0] loop_pipeline_function_out_pre2574_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline10_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline11_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline12_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline13_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline14_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline15_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline16_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline17_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline18_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline19_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline4_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline5_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline6_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline7_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline8_avm_writedata;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_address;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_burstcount;
    wire [7:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_byteenable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_enable;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_read;
    wire [0:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_write;
    wire [63:0] loop_pipeline_function_out_unnamed_loop_pipeline9_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [19:0] return_bits_b;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // not_stall(LOGICAL,100)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = A;

    // A_const(CONSTANT,2)
    assign A_const_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // loop_pipeline_function(BLACKBOX,98)
    loop_pipeline_function theloop_pipeline_function (
        .in_arg_A(A_const_q),
        .in_arg_do(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_do_i_fifodata(implicit_input_q),
        .in_iord_bl_do_i_fifovalid(start),
        .in_iowr_bl_return_i_fifoready(not_stall_q),
        .in_pre1_avm_readdata(avm_pre1_readdata),
        .in_pre1_avm_readdatavalid(avm_pre1_readdatavalid),
        .in_pre1_avm_waitrequest(avm_pre1_waitrequest),
        .in_pre1_avm_writeack(avm_pre1_writeack),
        .in_pre2552_avm_readdata(avm_pre2552_readdata),
        .in_pre2552_avm_readdatavalid(avm_pre2552_readdatavalid),
        .in_pre2552_avm_waitrequest(avm_pre2552_waitrequest),
        .in_pre2552_avm_writeack(avm_pre2552_writeack),
        .in_pre2563_avm_readdata(avm_pre2563_readdata),
        .in_pre2563_avm_readdatavalid(avm_pre2563_readdatavalid),
        .in_pre2563_avm_waitrequest(avm_pre2563_waitrequest),
        .in_pre2563_avm_writeack(avm_pre2563_writeack),
        .in_pre2574_avm_readdata(avm_pre2574_readdata),
        .in_pre2574_avm_readdatavalid(avm_pre2574_readdatavalid),
        .in_pre2574_avm_waitrequest(avm_pre2574_waitrequest),
        .in_pre2574_avm_writeack(avm_pre2574_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_loop_pipeline10_avm_readdata(avm_unnamed_loop_pipeline10_readdata),
        .in_unnamed_loop_pipeline10_avm_readdatavalid(avm_unnamed_loop_pipeline10_readdatavalid),
        .in_unnamed_loop_pipeline10_avm_waitrequest(avm_unnamed_loop_pipeline10_waitrequest),
        .in_unnamed_loop_pipeline10_avm_writeack(avm_unnamed_loop_pipeline10_writeack),
        .in_unnamed_loop_pipeline11_avm_readdata(avm_unnamed_loop_pipeline11_readdata),
        .in_unnamed_loop_pipeline11_avm_readdatavalid(avm_unnamed_loop_pipeline11_readdatavalid),
        .in_unnamed_loop_pipeline11_avm_waitrequest(avm_unnamed_loop_pipeline11_waitrequest),
        .in_unnamed_loop_pipeline11_avm_writeack(avm_unnamed_loop_pipeline11_writeack),
        .in_unnamed_loop_pipeline12_avm_readdata(avm_unnamed_loop_pipeline12_readdata),
        .in_unnamed_loop_pipeline12_avm_readdatavalid(avm_unnamed_loop_pipeline12_readdatavalid),
        .in_unnamed_loop_pipeline12_avm_waitrequest(avm_unnamed_loop_pipeline12_waitrequest),
        .in_unnamed_loop_pipeline12_avm_writeack(avm_unnamed_loop_pipeline12_writeack),
        .in_unnamed_loop_pipeline13_avm_readdata(avm_unnamed_loop_pipeline13_readdata),
        .in_unnamed_loop_pipeline13_avm_readdatavalid(avm_unnamed_loop_pipeline13_readdatavalid),
        .in_unnamed_loop_pipeline13_avm_waitrequest(avm_unnamed_loop_pipeline13_waitrequest),
        .in_unnamed_loop_pipeline13_avm_writeack(avm_unnamed_loop_pipeline13_writeack),
        .in_unnamed_loop_pipeline14_avm_readdata(avm_unnamed_loop_pipeline14_readdata),
        .in_unnamed_loop_pipeline14_avm_readdatavalid(avm_unnamed_loop_pipeline14_readdatavalid),
        .in_unnamed_loop_pipeline14_avm_waitrequest(avm_unnamed_loop_pipeline14_waitrequest),
        .in_unnamed_loop_pipeline14_avm_writeack(avm_unnamed_loop_pipeline14_writeack),
        .in_unnamed_loop_pipeline15_avm_readdata(avm_unnamed_loop_pipeline15_readdata),
        .in_unnamed_loop_pipeline15_avm_readdatavalid(avm_unnamed_loop_pipeline15_readdatavalid),
        .in_unnamed_loop_pipeline15_avm_waitrequest(avm_unnamed_loop_pipeline15_waitrequest),
        .in_unnamed_loop_pipeline15_avm_writeack(avm_unnamed_loop_pipeline15_writeack),
        .in_unnamed_loop_pipeline16_avm_readdata(avm_unnamed_loop_pipeline16_readdata),
        .in_unnamed_loop_pipeline16_avm_readdatavalid(avm_unnamed_loop_pipeline16_readdatavalid),
        .in_unnamed_loop_pipeline16_avm_waitrequest(avm_unnamed_loop_pipeline16_waitrequest),
        .in_unnamed_loop_pipeline16_avm_writeack(avm_unnamed_loop_pipeline16_writeack),
        .in_unnamed_loop_pipeline17_avm_readdata(avm_unnamed_loop_pipeline17_readdata),
        .in_unnamed_loop_pipeline17_avm_readdatavalid(avm_unnamed_loop_pipeline17_readdatavalid),
        .in_unnamed_loop_pipeline17_avm_waitrequest(avm_unnamed_loop_pipeline17_waitrequest),
        .in_unnamed_loop_pipeline17_avm_writeack(avm_unnamed_loop_pipeline17_writeack),
        .in_unnamed_loop_pipeline18_avm_readdata(avm_unnamed_loop_pipeline18_readdata),
        .in_unnamed_loop_pipeline18_avm_readdatavalid(avm_unnamed_loop_pipeline18_readdatavalid),
        .in_unnamed_loop_pipeline18_avm_waitrequest(avm_unnamed_loop_pipeline18_waitrequest),
        .in_unnamed_loop_pipeline18_avm_writeack(avm_unnamed_loop_pipeline18_writeack),
        .in_unnamed_loop_pipeline19_avm_readdata(avm_unnamed_loop_pipeline19_readdata),
        .in_unnamed_loop_pipeline19_avm_readdatavalid(avm_unnamed_loop_pipeline19_readdatavalid),
        .in_unnamed_loop_pipeline19_avm_waitrequest(avm_unnamed_loop_pipeline19_waitrequest),
        .in_unnamed_loop_pipeline19_avm_writeack(avm_unnamed_loop_pipeline19_writeack),
        .in_unnamed_loop_pipeline4_avm_readdata(avm_unnamed_loop_pipeline4_readdata),
        .in_unnamed_loop_pipeline4_avm_readdatavalid(avm_unnamed_loop_pipeline4_readdatavalid),
        .in_unnamed_loop_pipeline4_avm_waitrequest(avm_unnamed_loop_pipeline4_waitrequest),
        .in_unnamed_loop_pipeline4_avm_writeack(avm_unnamed_loop_pipeline4_writeack),
        .in_unnamed_loop_pipeline5_avm_readdata(avm_unnamed_loop_pipeline5_readdata),
        .in_unnamed_loop_pipeline5_avm_readdatavalid(avm_unnamed_loop_pipeline5_readdatavalid),
        .in_unnamed_loop_pipeline5_avm_waitrequest(avm_unnamed_loop_pipeline5_waitrequest),
        .in_unnamed_loop_pipeline5_avm_writeack(avm_unnamed_loop_pipeline5_writeack),
        .in_unnamed_loop_pipeline6_avm_readdata(avm_unnamed_loop_pipeline6_readdata),
        .in_unnamed_loop_pipeline6_avm_readdatavalid(avm_unnamed_loop_pipeline6_readdatavalid),
        .in_unnamed_loop_pipeline6_avm_waitrequest(avm_unnamed_loop_pipeline6_waitrequest),
        .in_unnamed_loop_pipeline6_avm_writeack(avm_unnamed_loop_pipeline6_writeack),
        .in_unnamed_loop_pipeline7_avm_readdata(avm_unnamed_loop_pipeline7_readdata),
        .in_unnamed_loop_pipeline7_avm_readdatavalid(avm_unnamed_loop_pipeline7_readdatavalid),
        .in_unnamed_loop_pipeline7_avm_waitrequest(avm_unnamed_loop_pipeline7_waitrequest),
        .in_unnamed_loop_pipeline7_avm_writeack(avm_unnamed_loop_pipeline7_writeack),
        .in_unnamed_loop_pipeline8_avm_readdata(avm_unnamed_loop_pipeline8_readdata),
        .in_unnamed_loop_pipeline8_avm_readdatavalid(avm_unnamed_loop_pipeline8_readdatavalid),
        .in_unnamed_loop_pipeline8_avm_waitrequest(avm_unnamed_loop_pipeline8_waitrequest),
        .in_unnamed_loop_pipeline8_avm_writeack(avm_unnamed_loop_pipeline8_writeack),
        .in_unnamed_loop_pipeline9_avm_readdata(avm_unnamed_loop_pipeline9_readdata),
        .in_unnamed_loop_pipeline9_avm_readdatavalid(avm_unnamed_loop_pipeline9_readdatavalid),
        .in_unnamed_loop_pipeline9_avm_waitrequest(avm_unnamed_loop_pipeline9_waitrequest),
        .in_unnamed_loop_pipeline9_avm_writeack(avm_unnamed_loop_pipeline9_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_do_o_fifoready(loop_pipeline_function_out_iord_bl_do_o_fifoready),
        .out_iowr_bl_return_o_fifodata(loop_pipeline_function_out_iowr_bl_return_o_fifodata),
        .out_iowr_bl_return_o_fifovalid(loop_pipeline_function_out_iowr_bl_return_o_fifovalid),
        .out_pre1_avm_address(loop_pipeline_function_out_pre1_avm_address),
        .out_pre1_avm_burstcount(loop_pipeline_function_out_pre1_avm_burstcount),
        .out_pre1_avm_byteenable(loop_pipeline_function_out_pre1_avm_byteenable),
        .out_pre1_avm_enable(loop_pipeline_function_out_pre1_avm_enable),
        .out_pre1_avm_read(loop_pipeline_function_out_pre1_avm_read),
        .out_pre1_avm_write(loop_pipeline_function_out_pre1_avm_write),
        .out_pre1_avm_writedata(loop_pipeline_function_out_pre1_avm_writedata),
        .out_pre2552_avm_address(loop_pipeline_function_out_pre2552_avm_address),
        .out_pre2552_avm_burstcount(loop_pipeline_function_out_pre2552_avm_burstcount),
        .out_pre2552_avm_byteenable(loop_pipeline_function_out_pre2552_avm_byteenable),
        .out_pre2552_avm_enable(loop_pipeline_function_out_pre2552_avm_enable),
        .out_pre2552_avm_read(loop_pipeline_function_out_pre2552_avm_read),
        .out_pre2552_avm_write(loop_pipeline_function_out_pre2552_avm_write),
        .out_pre2552_avm_writedata(loop_pipeline_function_out_pre2552_avm_writedata),
        .out_pre2563_avm_address(loop_pipeline_function_out_pre2563_avm_address),
        .out_pre2563_avm_burstcount(loop_pipeline_function_out_pre2563_avm_burstcount),
        .out_pre2563_avm_byteenable(loop_pipeline_function_out_pre2563_avm_byteenable),
        .out_pre2563_avm_enable(loop_pipeline_function_out_pre2563_avm_enable),
        .out_pre2563_avm_read(loop_pipeline_function_out_pre2563_avm_read),
        .out_pre2563_avm_write(loop_pipeline_function_out_pre2563_avm_write),
        .out_pre2563_avm_writedata(loop_pipeline_function_out_pre2563_avm_writedata),
        .out_pre2574_avm_address(loop_pipeline_function_out_pre2574_avm_address),
        .out_pre2574_avm_burstcount(loop_pipeline_function_out_pre2574_avm_burstcount),
        .out_pre2574_avm_byteenable(loop_pipeline_function_out_pre2574_avm_byteenable),
        .out_pre2574_avm_enable(loop_pipeline_function_out_pre2574_avm_enable),
        .out_pre2574_avm_read(loop_pipeline_function_out_pre2574_avm_read),
        .out_pre2574_avm_write(loop_pipeline_function_out_pre2574_avm_write),
        .out_pre2574_avm_writedata(loop_pipeline_function_out_pre2574_avm_writedata),
        .out_stall_out(),
        .out_unnamed_loop_pipeline10_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_address),
        .out_unnamed_loop_pipeline10_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_burstcount),
        .out_unnamed_loop_pipeline10_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_byteenable),
        .out_unnamed_loop_pipeline10_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_enable),
        .out_unnamed_loop_pipeline10_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_read),
        .out_unnamed_loop_pipeline10_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_write),
        .out_unnamed_loop_pipeline10_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline10_avm_writedata),
        .out_unnamed_loop_pipeline11_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_address),
        .out_unnamed_loop_pipeline11_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_burstcount),
        .out_unnamed_loop_pipeline11_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_byteenable),
        .out_unnamed_loop_pipeline11_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_enable),
        .out_unnamed_loop_pipeline11_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_read),
        .out_unnamed_loop_pipeline11_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_write),
        .out_unnamed_loop_pipeline11_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline11_avm_writedata),
        .out_unnamed_loop_pipeline12_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_address),
        .out_unnamed_loop_pipeline12_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_burstcount),
        .out_unnamed_loop_pipeline12_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_byteenable),
        .out_unnamed_loop_pipeline12_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_enable),
        .out_unnamed_loop_pipeline12_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_read),
        .out_unnamed_loop_pipeline12_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_write),
        .out_unnamed_loop_pipeline12_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline12_avm_writedata),
        .out_unnamed_loop_pipeline13_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_address),
        .out_unnamed_loop_pipeline13_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_burstcount),
        .out_unnamed_loop_pipeline13_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_byteenable),
        .out_unnamed_loop_pipeline13_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_enable),
        .out_unnamed_loop_pipeline13_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_read),
        .out_unnamed_loop_pipeline13_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_write),
        .out_unnamed_loop_pipeline13_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline13_avm_writedata),
        .out_unnamed_loop_pipeline14_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_address),
        .out_unnamed_loop_pipeline14_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_burstcount),
        .out_unnamed_loop_pipeline14_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_byteenable),
        .out_unnamed_loop_pipeline14_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_enable),
        .out_unnamed_loop_pipeline14_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_read),
        .out_unnamed_loop_pipeline14_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_write),
        .out_unnamed_loop_pipeline14_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline14_avm_writedata),
        .out_unnamed_loop_pipeline15_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_address),
        .out_unnamed_loop_pipeline15_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_burstcount),
        .out_unnamed_loop_pipeline15_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_byteenable),
        .out_unnamed_loop_pipeline15_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_enable),
        .out_unnamed_loop_pipeline15_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_read),
        .out_unnamed_loop_pipeline15_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_write),
        .out_unnamed_loop_pipeline15_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline15_avm_writedata),
        .out_unnamed_loop_pipeline16_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_address),
        .out_unnamed_loop_pipeline16_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_burstcount),
        .out_unnamed_loop_pipeline16_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_byteenable),
        .out_unnamed_loop_pipeline16_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_enable),
        .out_unnamed_loop_pipeline16_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_read),
        .out_unnamed_loop_pipeline16_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_write),
        .out_unnamed_loop_pipeline16_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline16_avm_writedata),
        .out_unnamed_loop_pipeline17_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_address),
        .out_unnamed_loop_pipeline17_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_burstcount),
        .out_unnamed_loop_pipeline17_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_byteenable),
        .out_unnamed_loop_pipeline17_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_enable),
        .out_unnamed_loop_pipeline17_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_read),
        .out_unnamed_loop_pipeline17_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_write),
        .out_unnamed_loop_pipeline17_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline17_avm_writedata),
        .out_unnamed_loop_pipeline18_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_address),
        .out_unnamed_loop_pipeline18_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_burstcount),
        .out_unnamed_loop_pipeline18_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_byteenable),
        .out_unnamed_loop_pipeline18_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_enable),
        .out_unnamed_loop_pipeline18_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_read),
        .out_unnamed_loop_pipeline18_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_write),
        .out_unnamed_loop_pipeline18_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline18_avm_writedata),
        .out_unnamed_loop_pipeline19_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_address),
        .out_unnamed_loop_pipeline19_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_burstcount),
        .out_unnamed_loop_pipeline19_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_byteenable),
        .out_unnamed_loop_pipeline19_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_enable),
        .out_unnamed_loop_pipeline19_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_read),
        .out_unnamed_loop_pipeline19_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_write),
        .out_unnamed_loop_pipeline19_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline19_avm_writedata),
        .out_unnamed_loop_pipeline4_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_address),
        .out_unnamed_loop_pipeline4_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_burstcount),
        .out_unnamed_loop_pipeline4_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_byteenable),
        .out_unnamed_loop_pipeline4_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_enable),
        .out_unnamed_loop_pipeline4_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_read),
        .out_unnamed_loop_pipeline4_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_write),
        .out_unnamed_loop_pipeline4_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline4_avm_writedata),
        .out_unnamed_loop_pipeline5_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_address),
        .out_unnamed_loop_pipeline5_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_burstcount),
        .out_unnamed_loop_pipeline5_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_byteenable),
        .out_unnamed_loop_pipeline5_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_enable),
        .out_unnamed_loop_pipeline5_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_read),
        .out_unnamed_loop_pipeline5_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_write),
        .out_unnamed_loop_pipeline5_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline5_avm_writedata),
        .out_unnamed_loop_pipeline6_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_address),
        .out_unnamed_loop_pipeline6_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_burstcount),
        .out_unnamed_loop_pipeline6_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_byteenable),
        .out_unnamed_loop_pipeline6_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_enable),
        .out_unnamed_loop_pipeline6_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_read),
        .out_unnamed_loop_pipeline6_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_write),
        .out_unnamed_loop_pipeline6_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline6_avm_writedata),
        .out_unnamed_loop_pipeline7_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_address),
        .out_unnamed_loop_pipeline7_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_burstcount),
        .out_unnamed_loop_pipeline7_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_byteenable),
        .out_unnamed_loop_pipeline7_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_enable),
        .out_unnamed_loop_pipeline7_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_read),
        .out_unnamed_loop_pipeline7_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_write),
        .out_unnamed_loop_pipeline7_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline7_avm_writedata),
        .out_unnamed_loop_pipeline8_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_address),
        .out_unnamed_loop_pipeline8_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_burstcount),
        .out_unnamed_loop_pipeline8_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_byteenable),
        .out_unnamed_loop_pipeline8_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_enable),
        .out_unnamed_loop_pipeline8_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_read),
        .out_unnamed_loop_pipeline8_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_write),
        .out_unnamed_loop_pipeline8_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline8_avm_writedata),
        .out_unnamed_loop_pipeline9_avm_address(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_address),
        .out_unnamed_loop_pipeline9_avm_burstcount(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_burstcount),
        .out_unnamed_loop_pipeline9_avm_byteenable(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_byteenable),
        .out_unnamed_loop_pipeline9_avm_enable(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_enable),
        .out_unnamed_loop_pipeline9_avm_read(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_read),
        .out_unnamed_loop_pipeline9_avm_write(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_write),
        .out_unnamed_loop_pipeline9_avm_writedata(loop_pipeline_function_out_unnamed_loop_pipeline9_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_pre1_address(GPOUT,101)
    assign avm_pre1_address = loop_pipeline_function_out_pre1_avm_address;

    // avm_pre1_burstcount(GPOUT,102)
    assign avm_pre1_burstcount = loop_pipeline_function_out_pre1_avm_burstcount;

    // avm_pre1_byteenable(GPOUT,103)
    assign avm_pre1_byteenable = loop_pipeline_function_out_pre1_avm_byteenable;

    // avm_pre1_enable(GPOUT,104)
    assign avm_pre1_enable = loop_pipeline_function_out_pre1_avm_enable;

    // avm_pre1_read(GPOUT,105)
    assign avm_pre1_read = loop_pipeline_function_out_pre1_avm_read;

    // avm_pre1_write(GPOUT,106)
    assign avm_pre1_write = loop_pipeline_function_out_pre1_avm_write;

    // avm_pre1_writedata(GPOUT,107)
    assign avm_pre1_writedata = loop_pipeline_function_out_pre1_avm_writedata;

    // avm_pre2552_address(GPOUT,108)
    assign avm_pre2552_address = loop_pipeline_function_out_pre2552_avm_address;

    // avm_pre2552_burstcount(GPOUT,109)
    assign avm_pre2552_burstcount = loop_pipeline_function_out_pre2552_avm_burstcount;

    // avm_pre2552_byteenable(GPOUT,110)
    assign avm_pre2552_byteenable = loop_pipeline_function_out_pre2552_avm_byteenable;

    // avm_pre2552_enable(GPOUT,111)
    assign avm_pre2552_enable = loop_pipeline_function_out_pre2552_avm_enable;

    // avm_pre2552_read(GPOUT,112)
    assign avm_pre2552_read = loop_pipeline_function_out_pre2552_avm_read;

    // avm_pre2552_write(GPOUT,113)
    assign avm_pre2552_write = loop_pipeline_function_out_pre2552_avm_write;

    // avm_pre2552_writedata(GPOUT,114)
    assign avm_pre2552_writedata = loop_pipeline_function_out_pre2552_avm_writedata;

    // avm_pre2563_address(GPOUT,115)
    assign avm_pre2563_address = loop_pipeline_function_out_pre2563_avm_address;

    // avm_pre2563_burstcount(GPOUT,116)
    assign avm_pre2563_burstcount = loop_pipeline_function_out_pre2563_avm_burstcount;

    // avm_pre2563_byteenable(GPOUT,117)
    assign avm_pre2563_byteenable = loop_pipeline_function_out_pre2563_avm_byteenable;

    // avm_pre2563_enable(GPOUT,118)
    assign avm_pre2563_enable = loop_pipeline_function_out_pre2563_avm_enable;

    // avm_pre2563_read(GPOUT,119)
    assign avm_pre2563_read = loop_pipeline_function_out_pre2563_avm_read;

    // avm_pre2563_write(GPOUT,120)
    assign avm_pre2563_write = loop_pipeline_function_out_pre2563_avm_write;

    // avm_pre2563_writedata(GPOUT,121)
    assign avm_pre2563_writedata = loop_pipeline_function_out_pre2563_avm_writedata;

    // avm_pre2574_address(GPOUT,122)
    assign avm_pre2574_address = loop_pipeline_function_out_pre2574_avm_address;

    // avm_pre2574_burstcount(GPOUT,123)
    assign avm_pre2574_burstcount = loop_pipeline_function_out_pre2574_avm_burstcount;

    // avm_pre2574_byteenable(GPOUT,124)
    assign avm_pre2574_byteenable = loop_pipeline_function_out_pre2574_avm_byteenable;

    // avm_pre2574_enable(GPOUT,125)
    assign avm_pre2574_enable = loop_pipeline_function_out_pre2574_avm_enable;

    // avm_pre2574_read(GPOUT,126)
    assign avm_pre2574_read = loop_pipeline_function_out_pre2574_avm_read;

    // avm_pre2574_write(GPOUT,127)
    assign avm_pre2574_write = loop_pipeline_function_out_pre2574_avm_write;

    // avm_pre2574_writedata(GPOUT,128)
    assign avm_pre2574_writedata = loop_pipeline_function_out_pre2574_avm_writedata;

    // avm_unnamed_loop_pipeline10_address(GPOUT,129)
    assign avm_unnamed_loop_pipeline10_address = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_address;

    // avm_unnamed_loop_pipeline10_burstcount(GPOUT,130)
    assign avm_unnamed_loop_pipeline10_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_burstcount;

    // avm_unnamed_loop_pipeline10_byteenable(GPOUT,131)
    assign avm_unnamed_loop_pipeline10_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_byteenable;

    // avm_unnamed_loop_pipeline10_enable(GPOUT,132)
    assign avm_unnamed_loop_pipeline10_enable = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_enable;

    // avm_unnamed_loop_pipeline10_read(GPOUT,133)
    assign avm_unnamed_loop_pipeline10_read = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_read;

    // avm_unnamed_loop_pipeline10_write(GPOUT,134)
    assign avm_unnamed_loop_pipeline10_write = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_write;

    // avm_unnamed_loop_pipeline10_writedata(GPOUT,135)
    assign avm_unnamed_loop_pipeline10_writedata = loop_pipeline_function_out_unnamed_loop_pipeline10_avm_writedata;

    // avm_unnamed_loop_pipeline11_address(GPOUT,136)
    assign avm_unnamed_loop_pipeline11_address = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_address;

    // avm_unnamed_loop_pipeline11_burstcount(GPOUT,137)
    assign avm_unnamed_loop_pipeline11_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_burstcount;

    // avm_unnamed_loop_pipeline11_byteenable(GPOUT,138)
    assign avm_unnamed_loop_pipeline11_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_byteenable;

    // avm_unnamed_loop_pipeline11_enable(GPOUT,139)
    assign avm_unnamed_loop_pipeline11_enable = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_enable;

    // avm_unnamed_loop_pipeline11_read(GPOUT,140)
    assign avm_unnamed_loop_pipeline11_read = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_read;

    // avm_unnamed_loop_pipeline11_write(GPOUT,141)
    assign avm_unnamed_loop_pipeline11_write = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_write;

    // avm_unnamed_loop_pipeline11_writedata(GPOUT,142)
    assign avm_unnamed_loop_pipeline11_writedata = loop_pipeline_function_out_unnamed_loop_pipeline11_avm_writedata;

    // avm_unnamed_loop_pipeline12_address(GPOUT,143)
    assign avm_unnamed_loop_pipeline12_address = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_address;

    // avm_unnamed_loop_pipeline12_burstcount(GPOUT,144)
    assign avm_unnamed_loop_pipeline12_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_burstcount;

    // avm_unnamed_loop_pipeline12_byteenable(GPOUT,145)
    assign avm_unnamed_loop_pipeline12_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_byteenable;

    // avm_unnamed_loop_pipeline12_enable(GPOUT,146)
    assign avm_unnamed_loop_pipeline12_enable = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_enable;

    // avm_unnamed_loop_pipeline12_read(GPOUT,147)
    assign avm_unnamed_loop_pipeline12_read = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_read;

    // avm_unnamed_loop_pipeline12_write(GPOUT,148)
    assign avm_unnamed_loop_pipeline12_write = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_write;

    // avm_unnamed_loop_pipeline12_writedata(GPOUT,149)
    assign avm_unnamed_loop_pipeline12_writedata = loop_pipeline_function_out_unnamed_loop_pipeline12_avm_writedata;

    // avm_unnamed_loop_pipeline13_address(GPOUT,150)
    assign avm_unnamed_loop_pipeline13_address = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_address;

    // avm_unnamed_loop_pipeline13_burstcount(GPOUT,151)
    assign avm_unnamed_loop_pipeline13_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_burstcount;

    // avm_unnamed_loop_pipeline13_byteenable(GPOUT,152)
    assign avm_unnamed_loop_pipeline13_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_byteenable;

    // avm_unnamed_loop_pipeline13_enable(GPOUT,153)
    assign avm_unnamed_loop_pipeline13_enable = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_enable;

    // avm_unnamed_loop_pipeline13_read(GPOUT,154)
    assign avm_unnamed_loop_pipeline13_read = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_read;

    // avm_unnamed_loop_pipeline13_write(GPOUT,155)
    assign avm_unnamed_loop_pipeline13_write = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_write;

    // avm_unnamed_loop_pipeline13_writedata(GPOUT,156)
    assign avm_unnamed_loop_pipeline13_writedata = loop_pipeline_function_out_unnamed_loop_pipeline13_avm_writedata;

    // avm_unnamed_loop_pipeline14_address(GPOUT,157)
    assign avm_unnamed_loop_pipeline14_address = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_address;

    // avm_unnamed_loop_pipeline14_burstcount(GPOUT,158)
    assign avm_unnamed_loop_pipeline14_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_burstcount;

    // avm_unnamed_loop_pipeline14_byteenable(GPOUT,159)
    assign avm_unnamed_loop_pipeline14_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_byteenable;

    // avm_unnamed_loop_pipeline14_enable(GPOUT,160)
    assign avm_unnamed_loop_pipeline14_enable = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_enable;

    // avm_unnamed_loop_pipeline14_read(GPOUT,161)
    assign avm_unnamed_loop_pipeline14_read = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_read;

    // avm_unnamed_loop_pipeline14_write(GPOUT,162)
    assign avm_unnamed_loop_pipeline14_write = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_write;

    // avm_unnamed_loop_pipeline14_writedata(GPOUT,163)
    assign avm_unnamed_loop_pipeline14_writedata = loop_pipeline_function_out_unnamed_loop_pipeline14_avm_writedata;

    // avm_unnamed_loop_pipeline15_address(GPOUT,164)
    assign avm_unnamed_loop_pipeline15_address = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_address;

    // avm_unnamed_loop_pipeline15_burstcount(GPOUT,165)
    assign avm_unnamed_loop_pipeline15_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_burstcount;

    // avm_unnamed_loop_pipeline15_byteenable(GPOUT,166)
    assign avm_unnamed_loop_pipeline15_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_byteenable;

    // avm_unnamed_loop_pipeline15_enable(GPOUT,167)
    assign avm_unnamed_loop_pipeline15_enable = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_enable;

    // avm_unnamed_loop_pipeline15_read(GPOUT,168)
    assign avm_unnamed_loop_pipeline15_read = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_read;

    // avm_unnamed_loop_pipeline15_write(GPOUT,169)
    assign avm_unnamed_loop_pipeline15_write = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_write;

    // avm_unnamed_loop_pipeline15_writedata(GPOUT,170)
    assign avm_unnamed_loop_pipeline15_writedata = loop_pipeline_function_out_unnamed_loop_pipeline15_avm_writedata;

    // avm_unnamed_loop_pipeline16_address(GPOUT,171)
    assign avm_unnamed_loop_pipeline16_address = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_address;

    // avm_unnamed_loop_pipeline16_burstcount(GPOUT,172)
    assign avm_unnamed_loop_pipeline16_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_burstcount;

    // avm_unnamed_loop_pipeline16_byteenable(GPOUT,173)
    assign avm_unnamed_loop_pipeline16_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_byteenable;

    // avm_unnamed_loop_pipeline16_enable(GPOUT,174)
    assign avm_unnamed_loop_pipeline16_enable = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_enable;

    // avm_unnamed_loop_pipeline16_read(GPOUT,175)
    assign avm_unnamed_loop_pipeline16_read = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_read;

    // avm_unnamed_loop_pipeline16_write(GPOUT,176)
    assign avm_unnamed_loop_pipeline16_write = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_write;

    // avm_unnamed_loop_pipeline16_writedata(GPOUT,177)
    assign avm_unnamed_loop_pipeline16_writedata = loop_pipeline_function_out_unnamed_loop_pipeline16_avm_writedata;

    // avm_unnamed_loop_pipeline17_address(GPOUT,178)
    assign avm_unnamed_loop_pipeline17_address = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_address;

    // avm_unnamed_loop_pipeline17_burstcount(GPOUT,179)
    assign avm_unnamed_loop_pipeline17_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_burstcount;

    // avm_unnamed_loop_pipeline17_byteenable(GPOUT,180)
    assign avm_unnamed_loop_pipeline17_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_byteenable;

    // avm_unnamed_loop_pipeline17_enable(GPOUT,181)
    assign avm_unnamed_loop_pipeline17_enable = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_enable;

    // avm_unnamed_loop_pipeline17_read(GPOUT,182)
    assign avm_unnamed_loop_pipeline17_read = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_read;

    // avm_unnamed_loop_pipeline17_write(GPOUT,183)
    assign avm_unnamed_loop_pipeline17_write = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_write;

    // avm_unnamed_loop_pipeline17_writedata(GPOUT,184)
    assign avm_unnamed_loop_pipeline17_writedata = loop_pipeline_function_out_unnamed_loop_pipeline17_avm_writedata;

    // avm_unnamed_loop_pipeline18_address(GPOUT,185)
    assign avm_unnamed_loop_pipeline18_address = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_address;

    // avm_unnamed_loop_pipeline18_burstcount(GPOUT,186)
    assign avm_unnamed_loop_pipeline18_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_burstcount;

    // avm_unnamed_loop_pipeline18_byteenable(GPOUT,187)
    assign avm_unnamed_loop_pipeline18_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_byteenable;

    // avm_unnamed_loop_pipeline18_enable(GPOUT,188)
    assign avm_unnamed_loop_pipeline18_enable = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_enable;

    // avm_unnamed_loop_pipeline18_read(GPOUT,189)
    assign avm_unnamed_loop_pipeline18_read = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_read;

    // avm_unnamed_loop_pipeline18_write(GPOUT,190)
    assign avm_unnamed_loop_pipeline18_write = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_write;

    // avm_unnamed_loop_pipeline18_writedata(GPOUT,191)
    assign avm_unnamed_loop_pipeline18_writedata = loop_pipeline_function_out_unnamed_loop_pipeline18_avm_writedata;

    // avm_unnamed_loop_pipeline19_address(GPOUT,192)
    assign avm_unnamed_loop_pipeline19_address = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_address;

    // avm_unnamed_loop_pipeline19_burstcount(GPOUT,193)
    assign avm_unnamed_loop_pipeline19_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_burstcount;

    // avm_unnamed_loop_pipeline19_byteenable(GPOUT,194)
    assign avm_unnamed_loop_pipeline19_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_byteenable;

    // avm_unnamed_loop_pipeline19_enable(GPOUT,195)
    assign avm_unnamed_loop_pipeline19_enable = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_enable;

    // avm_unnamed_loop_pipeline19_read(GPOUT,196)
    assign avm_unnamed_loop_pipeline19_read = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_read;

    // avm_unnamed_loop_pipeline19_write(GPOUT,197)
    assign avm_unnamed_loop_pipeline19_write = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_write;

    // avm_unnamed_loop_pipeline19_writedata(GPOUT,198)
    assign avm_unnamed_loop_pipeline19_writedata = loop_pipeline_function_out_unnamed_loop_pipeline19_avm_writedata;

    // avm_unnamed_loop_pipeline4_address(GPOUT,199)
    assign avm_unnamed_loop_pipeline4_address = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_address;

    // avm_unnamed_loop_pipeline4_burstcount(GPOUT,200)
    assign avm_unnamed_loop_pipeline4_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_burstcount;

    // avm_unnamed_loop_pipeline4_byteenable(GPOUT,201)
    assign avm_unnamed_loop_pipeline4_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_byteenable;

    // avm_unnamed_loop_pipeline4_enable(GPOUT,202)
    assign avm_unnamed_loop_pipeline4_enable = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_enable;

    // avm_unnamed_loop_pipeline4_read(GPOUT,203)
    assign avm_unnamed_loop_pipeline4_read = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_read;

    // avm_unnamed_loop_pipeline4_write(GPOUT,204)
    assign avm_unnamed_loop_pipeline4_write = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_write;

    // avm_unnamed_loop_pipeline4_writedata(GPOUT,205)
    assign avm_unnamed_loop_pipeline4_writedata = loop_pipeline_function_out_unnamed_loop_pipeline4_avm_writedata;

    // avm_unnamed_loop_pipeline5_address(GPOUT,206)
    assign avm_unnamed_loop_pipeline5_address = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_address;

    // avm_unnamed_loop_pipeline5_burstcount(GPOUT,207)
    assign avm_unnamed_loop_pipeline5_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_burstcount;

    // avm_unnamed_loop_pipeline5_byteenable(GPOUT,208)
    assign avm_unnamed_loop_pipeline5_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_byteenable;

    // avm_unnamed_loop_pipeline5_enable(GPOUT,209)
    assign avm_unnamed_loop_pipeline5_enable = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_enable;

    // avm_unnamed_loop_pipeline5_read(GPOUT,210)
    assign avm_unnamed_loop_pipeline5_read = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_read;

    // avm_unnamed_loop_pipeline5_write(GPOUT,211)
    assign avm_unnamed_loop_pipeline5_write = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_write;

    // avm_unnamed_loop_pipeline5_writedata(GPOUT,212)
    assign avm_unnamed_loop_pipeline5_writedata = loop_pipeline_function_out_unnamed_loop_pipeline5_avm_writedata;

    // avm_unnamed_loop_pipeline6_address(GPOUT,213)
    assign avm_unnamed_loop_pipeline6_address = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_address;

    // avm_unnamed_loop_pipeline6_burstcount(GPOUT,214)
    assign avm_unnamed_loop_pipeline6_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_burstcount;

    // avm_unnamed_loop_pipeline6_byteenable(GPOUT,215)
    assign avm_unnamed_loop_pipeline6_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_byteenable;

    // avm_unnamed_loop_pipeline6_enable(GPOUT,216)
    assign avm_unnamed_loop_pipeline6_enable = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_enable;

    // avm_unnamed_loop_pipeline6_read(GPOUT,217)
    assign avm_unnamed_loop_pipeline6_read = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_read;

    // avm_unnamed_loop_pipeline6_write(GPOUT,218)
    assign avm_unnamed_loop_pipeline6_write = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_write;

    // avm_unnamed_loop_pipeline6_writedata(GPOUT,219)
    assign avm_unnamed_loop_pipeline6_writedata = loop_pipeline_function_out_unnamed_loop_pipeline6_avm_writedata;

    // avm_unnamed_loop_pipeline7_address(GPOUT,220)
    assign avm_unnamed_loop_pipeline7_address = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_address;

    // avm_unnamed_loop_pipeline7_burstcount(GPOUT,221)
    assign avm_unnamed_loop_pipeline7_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_burstcount;

    // avm_unnamed_loop_pipeline7_byteenable(GPOUT,222)
    assign avm_unnamed_loop_pipeline7_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_byteenable;

    // avm_unnamed_loop_pipeline7_enable(GPOUT,223)
    assign avm_unnamed_loop_pipeline7_enable = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_enable;

    // avm_unnamed_loop_pipeline7_read(GPOUT,224)
    assign avm_unnamed_loop_pipeline7_read = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_read;

    // avm_unnamed_loop_pipeline7_write(GPOUT,225)
    assign avm_unnamed_loop_pipeline7_write = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_write;

    // avm_unnamed_loop_pipeline7_writedata(GPOUT,226)
    assign avm_unnamed_loop_pipeline7_writedata = loop_pipeline_function_out_unnamed_loop_pipeline7_avm_writedata;

    // avm_unnamed_loop_pipeline8_address(GPOUT,227)
    assign avm_unnamed_loop_pipeline8_address = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_address;

    // avm_unnamed_loop_pipeline8_burstcount(GPOUT,228)
    assign avm_unnamed_loop_pipeline8_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_burstcount;

    // avm_unnamed_loop_pipeline8_byteenable(GPOUT,229)
    assign avm_unnamed_loop_pipeline8_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_byteenable;

    // avm_unnamed_loop_pipeline8_enable(GPOUT,230)
    assign avm_unnamed_loop_pipeline8_enable = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_enable;

    // avm_unnamed_loop_pipeline8_read(GPOUT,231)
    assign avm_unnamed_loop_pipeline8_read = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_read;

    // avm_unnamed_loop_pipeline8_write(GPOUT,232)
    assign avm_unnamed_loop_pipeline8_write = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_write;

    // avm_unnamed_loop_pipeline8_writedata(GPOUT,233)
    assign avm_unnamed_loop_pipeline8_writedata = loop_pipeline_function_out_unnamed_loop_pipeline8_avm_writedata;

    // avm_unnamed_loop_pipeline9_address(GPOUT,234)
    assign avm_unnamed_loop_pipeline9_address = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_address;

    // avm_unnamed_loop_pipeline9_burstcount(GPOUT,235)
    assign avm_unnamed_loop_pipeline9_burstcount = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_burstcount;

    // avm_unnamed_loop_pipeline9_byteenable(GPOUT,236)
    assign avm_unnamed_loop_pipeline9_byteenable = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_byteenable;

    // avm_unnamed_loop_pipeline9_enable(GPOUT,237)
    assign avm_unnamed_loop_pipeline9_enable = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_enable;

    // avm_unnamed_loop_pipeline9_read(GPOUT,238)
    assign avm_unnamed_loop_pipeline9_read = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_read;

    // avm_unnamed_loop_pipeline9_write(GPOUT,239)
    assign avm_unnamed_loop_pipeline9_write = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_write;

    // avm_unnamed_loop_pipeline9_writedata(GPOUT,240)
    assign avm_unnamed_loop_pipeline9_writedata = loop_pipeline_function_out_unnamed_loop_pipeline9_avm_writedata;

    // avst_iord_bl_do_ready(GPOUT,241)
    assign avst_iord_bl_do_ready = loop_pipeline_function_out_iord_bl_do_o_fifoready;

    // avst_iowr_bl_return_data(GPOUT,242)
    assign avst_iowr_bl_return_data = loop_pipeline_function_out_iowr_bl_return_o_fifodata;

    // avst_iowr_bl_return_valid(GPOUT,243)
    assign avst_iowr_bl_return_valid = loop_pipeline_function_out_iowr_bl_return_o_fifovalid;

    // not_ready(LOGICAL,99)
    assign not_ready_q = ~ (loop_pipeline_function_out_iord_bl_do_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,248)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,247)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,244)
    assign busy = busy_or_q;

    // done(GPOUT,245)
    assign done = loop_pipeline_function_out_iowr_bl_return_o_fifovalid;

    // return_bits(BITSELECT,249)
    assign return_bits_b = loop_pipeline_function_out_iowr_bl_return_o_fifodata[19:0];

    // returndata(GPOUT,246)
    assign returndata = return_bits_b;

endmodule
