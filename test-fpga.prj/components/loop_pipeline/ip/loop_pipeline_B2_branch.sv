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

// SystemVerilog created from loop_pipeline_B2_branch
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_B2_branch (
    input wire [0:0] in_c0_exe240,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe240_cmp_q;
    wire [0:0] loop_pipeline_B2_branch_enable_q;
    wire [0:0] loop_pipeline_B2_branch_enable_not_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // not_stall_in_1(LOGICAL,10)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe240_cmp(LOGICAL,2)
    assign c0_exe240_cmp_q = ~ (in_c0_exe240);

    // valid_out_1_and(LOGICAL,21)
    assign valid_out_1_and_q = in_valid_in & c0_exe240_cmp_q;

    // valid_1_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= 1'b0;
        end
        else if (loop_pipeline_B2_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,12)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,14)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,9)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,20)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe240;

    // valid_0_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= 1'b0;
        end
        else if (loop_pipeline_B2_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,11)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,13)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // loop_pipeline_B2_branch_enable(LOGICAL,7)
    assign loop_pipeline_B2_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // loop_pipeline_B2_branch_enable_not(LOGICAL,8)
    assign loop_pipeline_B2_branch_enable_not_q = ~ (loop_pipeline_B2_branch_enable_q);

    // out_stall_out(GPOUT,15)
    assign out_stall_out = loop_pipeline_B2_branch_enable_not_q;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,17)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
