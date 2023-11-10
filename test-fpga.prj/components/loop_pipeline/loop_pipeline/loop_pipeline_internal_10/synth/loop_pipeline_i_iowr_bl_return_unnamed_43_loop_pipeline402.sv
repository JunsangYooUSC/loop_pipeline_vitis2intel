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

// SystemVerilog created from loop_pipeline_i_iowr_bl_return_unnamed_43_loop_pipeline402
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_iowr_bl_return_unnamed_43_loop_pipeline402 (
    input wire [0:0] in_iowr_bl_return_i_fifoready,
    output wire [19:0] out_iowr_bl_return_o_fifodata,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_iowr_bl_return_o_fifovalid,
    output wire [0:0] out_o_ack,
    output wire [0:0] out_o_valid,
    input wire [19:0] in_i_data_0,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] agg_adapt_to_ufixed_cast_b;
    wire [19:0] bit_select_in_b;
    wire [31:0] c32_0_q;
    wire [11:0] c_i12_0gr_q;
    wire [31:0] dsdk_ip_adapt_bitjoin_q;
    wire [31:0] element_extension_q;
    wire [19:0] iowr_i_data;
    wire [0:0] iowr_i_endofpacket;
    wire iowr_i_endofpacket_bitsignaltemp;
    wire [0:0] iowr_i_fifoready;
    wire iowr_i_fifoready_bitsignaltemp;
    wire [31:0] iowr_i_fifosize;
    wire [31:0] iowr_i_packetempty;
    wire [0:0] iowr_i_predicate;
    wire iowr_i_predicate_bitsignaltemp;
    wire [0:0] iowr_i_stall;
    wire iowr_i_stall_bitsignaltemp;
    wire [0:0] iowr_i_startofpacket;
    wire iowr_i_startofpacket_bitsignaltemp;
    wire [0:0] iowr_i_valid;
    wire iowr_i_valid_bitsignaltemp;
    wire [0:0] iowr_o_ack;
    wire iowr_o_ack_bitsignaltemp;
    wire [19:0] iowr_o_fifodata;
    wire [0:0] iowr_o_fifoempty;
    wire [0:0] iowr_o_fifovalid;
    wire iowr_o_fifovalid_bitsignaltemp;
    wire [0:0] iowr_o_stall;
    wire iowr_o_stall_bitsignaltemp;
    wire [0:0] iowr_o_valid;
    wire iowr_o_valid_bitsignaltemp;
    wire [31:0] iowr_profile_total_fifo_size_incr;
    wire [31:0] dupName_0_agg_adapt_to_ufixed_cast_x_b;
    wire [31:0] dupName_0_dsdk_ip_adapt_bitjoin_x_q;
    wire [31:0] dupName_1_dsdk_ip_adapt_bitjoin_x_q;


    // c32_0(CONSTANT,4)
    assign c32_0_q = 32'b00000000000000000000000000000000;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i12_0gr(CONSTANT,5)
    assign c_i12_0gr_q = 12'b000000000000;

    // element_extension(BITJOIN,9)
    assign element_extension_q = {c_i12_0gr_q, in_i_data_0};

    // dupName_1_dsdk_ip_adapt_bitjoin_x(BITJOIN,20)
    assign dupName_1_dsdk_ip_adapt_bitjoin_x_q = element_extension_q;

    // agg_adapt_to_ufixed_cast(BITSELECT,2)
    assign agg_adapt_to_ufixed_cast_b = dupName_1_dsdk_ip_adapt_bitjoin_x_q[31:0];

    // dupName_0_dsdk_ip_adapt_bitjoin_x(BITJOIN,17)
    assign dupName_0_dsdk_ip_adapt_bitjoin_x_q = agg_adapt_to_ufixed_cast_b;

    // dupName_0_agg_adapt_to_ufixed_cast_x(BITSELECT,15)
    assign dupName_0_agg_adapt_to_ufixed_cast_x_b = dupName_0_dsdk_ip_adapt_bitjoin_x_q[31:0];

    // dsdk_ip_adapt_bitjoin(BITJOIN,8)
    assign dsdk_ip_adapt_bitjoin_q = dupName_0_agg_adapt_to_ufixed_cast_x_b;

    // bit_select_in(BITSELECT,3)
    assign bit_select_in_b = dsdk_ip_adapt_bitjoin_q[19:0];

    // iowr(EXTIFACE,10)
    assign iowr_i_data = bit_select_in_b;
    assign iowr_i_endofpacket = GND_q;
    assign iowr_i_fifoready = in_iowr_bl_return_i_fifoready;
    assign iowr_i_fifosize = c32_0_q;
    assign iowr_i_packetempty = c32_0_q;
    assign iowr_i_predicate = GND_q;
    assign iowr_i_stall = in_i_stall;
    assign iowr_i_startofpacket = GND_q;
    assign iowr_i_valid = in_i_valid;
    assign iowr_i_endofpacket_bitsignaltemp = iowr_i_endofpacket[0];
    assign iowr_i_fifoready_bitsignaltemp = iowr_i_fifoready[0];
    assign iowr_i_predicate_bitsignaltemp = iowr_i_predicate[0];
    assign iowr_i_stall_bitsignaltemp = iowr_i_stall[0];
    assign iowr_i_startofpacket_bitsignaltemp = iowr_i_startofpacket[0];
    assign iowr_i_valid_bitsignaltemp = iowr_i_valid[0];
    assign iowr_o_ack[0] = iowr_o_ack_bitsignaltemp;
    assign iowr_o_fifovalid[0] = iowr_o_fifovalid_bitsignaltemp;
    assign iowr_o_stall[0] = iowr_o_stall_bitsignaltemp;
    assign iowr_o_valid[0] = iowr_o_valid_bitsignaltemp;
    st_write #(
        .ASYNC_RESET(1),
        .DATA_WIDTH(20),
        .DELAY_READY(0),
        .EMPTY_WIDTH(0),
        .ENABLED(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiowr (
        .i_data(bit_select_in_b),
        .i_endofpacket(iowr_i_endofpacket_bitsignaltemp),
        .i_fifoready(iowr_i_fifoready_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_packetempty(c32_0_q),
        .i_predicate(iowr_i_predicate_bitsignaltemp),
        .i_stall(iowr_i_stall_bitsignaltemp),
        .i_startofpacket(iowr_i_startofpacket_bitsignaltemp),
        .i_valid(iowr_i_valid_bitsignaltemp),
        .o_ack(iowr_o_ack_bitsignaltemp),
        .o_fifodata(iowr_o_fifodata),
        .o_fifoempty(),
        .o_fifovalid(iowr_o_fifovalid_bitsignaltemp),
        .o_stall(iowr_o_stall_bitsignaltemp),
        .o_valid(iowr_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,12)
    assign out_iowr_bl_return_o_fifodata = iowr_o_fifodata;

    // sync_out(GPOUT,14)@20000000
    assign out_o_stall = iowr_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,18)
    assign out_iowr_bl_return_o_fifovalid = iowr_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,19)@0
    assign out_o_ack = iowr_o_ack;
    assign out_o_valid = iowr_o_valid;

endmodule
