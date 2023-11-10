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

// SystemVerilog created from loop_pipeline_i_sfc_logic_s_c0_in_for_coA000Z342_loop_pipeline221
// SystemVerilog created on Thu Nov  9 21:07:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loop_pipeline_i_sfc_logic_s_c0_in_for_coA000Z342_loop_pipeline221 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [23:0] in_intel_reserved_ffwd_0_0,
    output wire [19:0] out_intel_reserved_ffwd_22_0,
    input wire [19:0] in_intel_reserved_ffwd_10_0,
    output wire [23:0] out_intel_reserved_ffwd_23_0,
    input wire [19:0] in_intel_reserved_ffwd_11_0,
    input wire [19:0] in_intel_reserved_ffwd_12_0,
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
    output wire [0:0] out_c0_exi237_0,
    output wire [0:0] out_c0_exi237_1,
    output wire [0:0] out_c0_exi237_2,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_loop_pipeline0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [19:0] c_i20_undef_q;
    wire [23:0] c_i24_undef_q;
    wire [31:0] c_i32_0gr_q;
    wire [31:0] c_i32_1gr_q;
    wire [3:0] c_i4_7gr_q;
    wire [5:0] c_i6_18_q;
    wire [5:0] c_i6_1gr_q;
    wire [2:0] i_cleanups_shl_loop_pipeline372_vt_const_3_q;
    wire [3:0] i_cleanups_shl_loop_pipeline372_vt_join_q;
    wire [0:0] i_cleanups_shl_loop_pipeline372_vt_select_0_b;
    wire [7:0] i_exitcond_loop_pipeline365_a;
    wire [7:0] i_exitcond_loop_pipeline365_b;
    logic [7:0] i_exitcond_loop_pipeline365_o;
    wire [0:0] i_exitcond_loop_pipeline365_c;
    wire [6:0] i_fpgaindvars_iv_next_loop_pipeline378_a;
    wire [6:0] i_fpgaindvars_iv_next_loop_pipeline378_b;
    logic [6:0] i_fpgaindvars_iv_next_loop_pipeline378_o;
    wire [6:0] i_fpgaindvars_iv_next_loop_pipeline378_q;
    wire [32:0] i_inc5_loop_pipeline358_a;
    wire [32:0] i_inc5_loop_pipeline358_b;
    logic [32:0] i_inc5_loop_pipeline358_o;
    wire [32:0] i_inc5_loop_pipeline358_q;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i23_loop_pipeline262_out_dest_data_out_18_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1013_loop_pipeline292_out_dest_data_out_8_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1114_loop_pipeline295_out_dest_data_out_9_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1215_loop_pipeline298_out_dest_data_out_10_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_124_loop_pipeline265_out_dest_data_out_19_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1316_loop_pipeline301_out_dest_data_out_11_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline304_out_dest_data_out_12_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1518_loop_pipeline307_out_dest_data_out_13_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1619_loop_pipeline310_out_dest_data_out_14_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1720_loop_pipeline313_out_dest_data_out_15_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1821_loop_pipeline316_out_dest_data_out_16_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1922_loop_pipeline319_out_dest_data_out_17_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_225_loop_pipeline268_out_dest_data_out_20_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_326_loop_pipeline271_out_dest_data_out_21_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_47_loop_pipeline274_out_dest_data_out_2_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_58_loop_pipeline277_out_dest_data_out_3_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_69_loop_pipeline280_out_dest_data_out_4_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_710_loop_pipeline283_out_dest_data_out_5_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_811_loop_pipeline286_out_dest_data_out_6_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_912_loop_pipeline289_out_dest_data_out_7_0;
    wire [19:0] i_llvm_fpga_ffwd_dest_i20_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t6_loop_pipeline244_out_dest_data_out_1_0;
    wire [23:0] i_llvm_fpga_ffwd_dest_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_05_loop_pipeline251_out_dest_data_out_0_0;
    wire [19:0] i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline40_loop_pipeline382_out_intel_reserved_ffwd_22_0;
    wire [23:0] i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline41_loop_pipeline385_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_pipeline_valid_out;
    wire [19:0] i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_feedback_stall_out_8;
    wire [23:0] i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_feedback_stall_out_9;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_feedback_stall_out_10;
    wire [5:0] i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_feedback_stall_out_6;
    wire [7:0] i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i1_notexitcond_loop_pipeline368_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_loop_pipeline368_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i20_push8_loop_pipeline343_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i20_push8_loop_pipeline343_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379_out_feedback_valid_out_6;
    wire [0:0] i_masked_loop_pipeline388_qi;
    reg [0:0] i_masked_loop_pipeline388_q;
    wire [20:0] i_mul_i_i_i_110_loop_pipeline331_a;
    wire [20:0] i_mul_i_i_i_110_loop_pipeline331_b;
    logic [20:0] i_mul_i_i_i_110_loop_pipeline331_o;
    wire [20:0] i_mul_i_i_i_110_loop_pipeline331_q;
    wire [20:0] i_mul_i_i_i_115_loop_pipeline326_a;
    wire [20:0] i_mul_i_i_i_115_loop_pipeline326_b;
    logic [20:0] i_mul_i_i_i_115_loop_pipeline326_o;
    wire [20:0] i_mul_i_i_i_115_loop_pipeline326_q;
    wire [20:0] i_mul_i_i_i_134_loop_pipeline325_a;
    wire [20:0] i_mul_i_i_i_134_loop_pipeline325_b;
    logic [20:0] i_mul_i_i_i_134_loop_pipeline325_o;
    wire [20:0] i_mul_i_i_i_134_loop_pipeline325_q;
    wire [20:0] i_mul_i_i_i_153_loop_pipeline324_a;
    wire [20:0] i_mul_i_i_i_153_loop_pipeline324_b;
    logic [20:0] i_mul_i_i_i_153_loop_pipeline324_o;
    wire [20:0] i_mul_i_i_i_153_loop_pipeline324_q;
    wire [20:0] i_mul_i_i_i_172_loop_pipeline323_a;
    wire [20:0] i_mul_i_i_i_172_loop_pipeline323_b;
    logic [20:0] i_mul_i_i_i_172_loop_pipeline323_o;
    wire [20:0] i_mul_i_i_i_172_loop_pipeline323_q;
    wire [20:0] i_mul_i_i_i_191_loop_pipeline322_a;
    wire [20:0] i_mul_i_i_i_191_loop_pipeline322_b;
    logic [20:0] i_mul_i_i_i_191_loop_pipeline322_o;
    wire [20:0] i_mul_i_i_i_191_loop_pipeline322_q;
    wire [20:0] i_mul_i_i_i_39_loop_pipeline330_a;
    wire [20:0] i_mul_i_i_i_39_loop_pipeline330_b;
    logic [20:0] i_mul_i_i_i_39_loop_pipeline330_o;
    wire [20:0] i_mul_i_i_i_39_loop_pipeline330_q;
    wire [20:0] i_mul_i_i_i_58_loop_pipeline329_a;
    wire [20:0] i_mul_i_i_i_58_loop_pipeline329_b;
    logic [20:0] i_mul_i_i_i_58_loop_pipeline329_o;
    wire [20:0] i_mul_i_i_i_58_loop_pipeline329_q;
    wire [20:0] i_mul_i_i_i_77_loop_pipeline328_a;
    wire [20:0] i_mul_i_i_i_77_loop_pipeline328_b;
    logic [20:0] i_mul_i_i_i_77_loop_pipeline328_o;
    wire [20:0] i_mul_i_i_i_77_loop_pipeline328_q;
    wire [20:0] i_mul_i_i_i_96_loop_pipeline327_a;
    wire [20:0] i_mul_i_i_i_96_loop_pipeline327_b;
    logic [20:0] i_mul_i_i_i_96_loop_pipeline327_o;
    wire [20:0] i_mul_i_i_i_96_loop_pipeline327_q;
    wire [3:0] i_next_initerations_loop_pipeline235_vt_join_q;
    wire [2:0] i_next_initerations_loop_pipeline235_vt_select_2_b;
    wire [0:0] i_notcmp_loop_pipeline367_q;
    wire [0:0] i_or_loop_pipeline371_q;
    wire [20:0] i_reduction_loop_pipeline_011_loop_pipeline332_a;
    wire [20:0] i_reduction_loop_pipeline_011_loop_pipeline332_b;
    logic [20:0] i_reduction_loop_pipeline_011_loop_pipeline332_o;
    wire [20:0] i_reduction_loop_pipeline_011_loop_pipeline332_q;
    wire [20:0] i_reduction_loop_pipeline_1016_loop_pipeline337_a;
    wire [20:0] i_reduction_loop_pipeline_1016_loop_pipeline337_b;
    logic [20:0] i_reduction_loop_pipeline_1016_loop_pipeline337_o;
    wire [20:0] i_reduction_loop_pipeline_1016_loop_pipeline337_q;
    wire [20:0] i_reduction_loop_pipeline_1217_loop_pipeline338_a;
    wire [20:0] i_reduction_loop_pipeline_1217_loop_pipeline338_b;
    logic [20:0] i_reduction_loop_pipeline_1217_loop_pipeline338_o;
    wire [20:0] i_reduction_loop_pipeline_1217_loop_pipeline338_q;
    wire [20:0] i_reduction_loop_pipeline_1419_loop_pipeline340_a;
    wire [20:0] i_reduction_loop_pipeline_1419_loop_pipeline340_b;
    logic [20:0] i_reduction_loop_pipeline_1419_loop_pipeline340_o;
    wire [20:0] i_reduction_loop_pipeline_1419_loop_pipeline340_q;
    wire [20:0] i_reduction_loop_pipeline_1518_loop_pipeline339_a;
    wire [20:0] i_reduction_loop_pipeline_1518_loop_pipeline339_b;
    logic [20:0] i_reduction_loop_pipeline_1518_loop_pipeline339_o;
    wire [20:0] i_reduction_loop_pipeline_1518_loop_pipeline339_q;
    wire [20:0] i_reduction_loop_pipeline_19_loop_pipeline342_a;
    wire [20:0] i_reduction_loop_pipeline_19_loop_pipeline342_b;
    logic [20:0] i_reduction_loop_pipeline_19_loop_pipeline342_o;
    wire [20:0] i_reduction_loop_pipeline_19_loop_pipeline342_q;
    wire [11:0] i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_const_31_q;
    wire [31:0] i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_join_q;
    wire [19:0] i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_select_19_b;
    wire [20:0] i_reduction_loop_pipeline_212_loop_pipeline333_a;
    wire [20:0] i_reduction_loop_pipeline_212_loop_pipeline333_b;
    logic [20:0] i_reduction_loop_pipeline_212_loop_pipeline333_o;
    wire [20:0] i_reduction_loop_pipeline_212_loop_pipeline333_q;
    wire [20:0] i_reduction_loop_pipeline_413_loop_pipeline334_a;
    wire [20:0] i_reduction_loop_pipeline_413_loop_pipeline334_b;
    logic [20:0] i_reduction_loop_pipeline_413_loop_pipeline334_o;
    wire [20:0] i_reduction_loop_pipeline_413_loop_pipeline334_q;
    wire [20:0] i_reduction_loop_pipeline_614_loop_pipeline335_a;
    wire [20:0] i_reduction_loop_pipeline_614_loop_pipeline335_b;
    logic [20:0] i_reduction_loop_pipeline_614_loop_pipeline335_o;
    wire [20:0] i_reduction_loop_pipeline_614_loop_pipeline335_q;
    wire [20:0] i_reduction_loop_pipeline_815_loop_pipeline336_a;
    wire [20:0] i_reduction_loop_pipeline_815_loop_pipeline336_b;
    logic [20:0] i_reduction_loop_pipeline_815_loop_pipeline336_o;
    wire [20:0] i_reduction_loop_pipeline_815_loop_pipeline336_q;
    wire [0:0] i_replace_phi_loop_pipeline250_s;
    reg [19:0] i_replace_phi_loop_pipeline250_q;
    wire [0:0] i_xor_loop_pipeline228_q;
    wire [0:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_s;
    reg [23:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_q;
    wire [7:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_const_31_q;
    wire [31:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_join_q;
    wire [23:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_select_23_b;
    wire [5:0] bgTrunc_i_fpgaindvars_iv_next_loop_pipeline378_sel_x_b;
    wire [31:0] bgTrunc_i_inc5_loop_pipeline358_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_110_loop_pipeline331_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_115_loop_pipeline326_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_134_loop_pipeline325_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_153_loop_pipeline324_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_172_loop_pipeline323_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_191_loop_pipeline322_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_39_loop_pipeline330_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_58_loop_pipeline329_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_77_loop_pipeline328_sel_x_b;
    wire [19:0] bgTrunc_i_mul_i_i_i_96_loop_pipeline327_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_1016_loop_pipeline337_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_1217_loop_pipeline338_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_1419_loop_pipeline340_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_18_loop_pipeline341_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_19_loop_pipeline342_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b;
    wire [19:0] bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b;
    wire [3:0] i_cleanups_shl_loop_pipeline372_sel_x_b;
    wire [0:0] i_first_cleanup_loop_pipeline227_sel_x_b;
    wire [0:0] i_last_initeration_loop_pipeline240_sel_x_b;
    wire [1:0] i_next_cleanups_loop_pipeline374_shift_narrow_x_b;
    wire [63:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_vec_1_join_x_q;
    wire [23:0] i_pms_cs249_pms_vs_pms_vm_pms_d_compressed_loop_pipeline354_pms_cs249_pms_vs_pms_vm_pms_d_shuffle_join_x_q;
    wire [31:0] i_reduction_loop_pipeline_19_zext_loop_pipeline346_sel_x_b;
    wire [19:0] i_unnamed_loop_pipeline261_sel_x_b;
    wire [31:0] i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_sel_x_b;
    wire [2:0] leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid329_i_next_cleanups_loop_pipeline374_shift_x_q;
    wire [0:0] leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x_in;
    wire [0:0] leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x_b;
    wire [0:0] leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_s;
    reg [3:0] leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid336_i_next_initerations_loop_pipeline236_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid338_i_next_initerations_loop_pipeline236_shift_x_q;
    wire [0:0] rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_s;
    reg [3:0] rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_q;
    wire i_reduction_loop_pipeline_18_loop_pipeline341_cma_reset;
    wire [19:0] i_reduction_loop_pipeline_18_loop_pipeline341_cma_a0;
    wire [19:0] i_reduction_loop_pipeline_18_loop_pipeline341_cma_c0;
    wire [39:0] i_reduction_loop_pipeline_18_loop_pipeline341_cma_s0;
    wire [39:0] i_reduction_loop_pipeline_18_loop_pipeline341_cma_qq;
    wire [39:0] i_reduction_loop_pipeline_18_loop_pipeline341_cma_q;
    wire i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena0;
    wire i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena1;
    wire i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena2;
    wire [55:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_b;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_c;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_d;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_e;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_f;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_g;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_h;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_i;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_j;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_k;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_l;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_m;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_n;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_o;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_p;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_q;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_r;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_s;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_t;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_u;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_v;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_w;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_x;
    wire [0:0] i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_y;
    reg [0:0] redist0_sync_in_aunroll_x_in_c0_eni133_1_2_q;
    reg [0:0] redist0_sync_in_aunroll_x_in_c0_eni133_1_2_delay_0;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni133_1_3_q;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni133_1_5_delay_0;
    reg [0:0] redist3_sync_in_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_in_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_q;
    reg [0:0] redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_delay_0;
    reg [19:0] redist8_bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b_1_q;
    reg [19:0] redist9_bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b_1_q;
    reg [19:0] redist10_bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b_1_q;
    reg [19:0] redist11_bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b_1_q;
    reg [19:0] redist12_bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b_1_q;
    reg [19:0] redist13_bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b_1_q;
    reg [0:0] redist14_i_masked_loop_pipeline388_q_2_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_delay_0;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist3_sync_in_aunroll_x_in_i_valid_1(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_in_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // redist4_sync_in_aunroll_x_in_i_valid_2(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_in_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_i_valid_2_q <= redist3_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // redist5_sync_in_aunroll_x_in_i_valid_3(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_q <= redist4_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_delay_0 <= '0;
            redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_delay_0 <= i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out;
            redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_q <= redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_delay_0;
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3_q <= redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_q;
        end
    end

    // leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x(BITSELECT,327)@4
    assign leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x_b = leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid329_i_next_cleanups_loop_pipeline374_shift_x(BITJOIN,328)@4
    assign leftShiftStage0Idx1_uid329_i_next_cleanups_loop_pipeline374_shift_x_q = {leftShiftStage0Idx1Rng1_uid328_i_next_cleanups_loop_pipeline374_shift_x_b, GND_q};

    // i_cleanups_shl_loop_pipeline372_vt_const_3(CONSTANT,37)
    assign i_cleanups_shl_loop_pipeline372_vt_const_3_q = 3'b000;

    // i_xor_loop_pipeline228(LOGICAL,117)@4
    assign i_xor_loop_pipeline228_q = i_first_cleanup_loop_pipeline227_sel_x_b ^ VCC_q;

    // i_notcmp_loop_pipeline367(LOGICAL,98)@4
    assign i_notcmp_loop_pipeline367_q = i_exitcond_loop_pipeline365_c ^ VCC_q;

    // i_or_loop_pipeline371(LOGICAL,99)@4
    assign i_or_loop_pipeline371_q = i_notcmp_loop_pipeline367_q | i_xor_loop_pipeline228_q;

    // i_cleanups_shl_loop_pipeline372_sel_x(BITSELECT,212)@4
    assign i_cleanups_shl_loop_pipeline372_sel_x_b = {3'b000, i_or_loop_pipeline371_q[0:0]};

    // i_cleanups_shl_loop_pipeline372_vt_select_0(BITSELECT,39)@4
    assign i_cleanups_shl_loop_pipeline372_vt_select_0_b = i_cleanups_shl_loop_pipeline372_sel_x_b[0:0];

    // i_cleanups_shl_loop_pipeline372_vt_join(BITJOIN,38)@4
    assign i_cleanups_shl_loop_pipeline372_vt_join_q = {i_cleanups_shl_loop_pipeline372_vt_const_3_q, i_cleanups_shl_loop_pipeline372_vt_select_0_b};

    // i_next_cleanups_loop_pipeline374_shift_narrow_x(BITSELECT,217)@4
    assign i_next_cleanups_loop_pipeline374_shift_narrow_x_b = i_cleanups_shl_loop_pipeline372_vt_join_q[1:0];

    // leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x(BITSELECT,329)@4
    assign leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x_in = i_next_cleanups_loop_pipeline374_shift_narrow_x_b[0:0];
    assign leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x_b = leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x_in[0:0];

    // leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x(MUX,330)@4
    assign leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_s = leftShiftStageSel0Dto0_uid330_i_next_cleanups_loop_pipeline374_shift_x_b;
    always @(leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_data_out or leftShiftStage0Idx1_uid329_i_next_cleanups_loop_pipeline374_shift_x_q)
    begin
        unique case (leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_s)
            1'b0 : leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_data_out;
            1'b1 : leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_q = leftShiftStage0Idx1_uid329_i_next_cleanups_loop_pipeline374_shift_x_q;
            default : leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375(BLACKBOX,81)@4
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    loop_pipeline_i_llvm_fpga_push_i4_cleanups_push11_376 thei_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375 (
        .in_data_in(leftShiftStage0_uid331_i_next_cleanups_loop_pipeline374_shift_x_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_feedback_stall_out_11),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_in_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_in_aunroll_x_in_c0_eni133_1_2(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_in_aunroll_x_in_c0_eni133_1_2_delay_0 <= '0;
            redist0_sync_in_aunroll_x_in_c0_eni133_1_2_q <= '0;
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni133_1_2_delay_0 <= in_c0_eni133_1;
            redist0_sync_in_aunroll_x_in_c0_eni133_1_2_q <= redist0_sync_in_aunroll_x_in_c0_eni133_1_2_delay_0;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni133_1_3(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_in_aunroll_x_in_c0_eni133_1_3_q <= '0;
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni133_1_3_q <= redist0_sync_in_aunroll_x_in_c0_eni133_1_2_q;
        end
    end

    // c_i4_7gr(CONSTANT,32)
    assign c_i4_7gr_q = 4'b0111;

    // i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224(BLACKBOX,73)@4
    // out out_feedback_stall_out_11@20000000
    loop_pipeline_i_llvm_fpga_pop_i4_cleanups_pop11_225 thei_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224 (
        .in_data_in(c_i4_7gr_q),
        .in_dir(redist1_sync_in_aunroll_x_in_c0_eni133_1_3_q),
        .in_feedback_in_11(i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i4_cleanups_push11_loop_pipeline375_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_in_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_loop_pipeline227_sel_x(BITSELECT,213)@4
    assign i_first_cleanup_loop_pipeline227_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop11_loop_pipeline224_out_data_out[0:0];

    // i_fpgaindvars_iv_next_loop_pipeline378(ADD,42)@4
    assign i_fpgaindvars_iv_next_loop_pipeline378_a = {1'b0, i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_data_out};
    assign i_fpgaindvars_iv_next_loop_pipeline378_b = {1'b0, c_i6_1gr_q};
    assign i_fpgaindvars_iv_next_loop_pipeline378_o = $unsigned(i_fpgaindvars_iv_next_loop_pipeline378_a) + $unsigned(i_fpgaindvars_iv_next_loop_pipeline378_b);
    assign i_fpgaindvars_iv_next_loop_pipeline378_q = i_fpgaindvars_iv_next_loop_pipeline378_o[6:0];

    // bgTrunc_i_fpgaindvars_iv_next_loop_pipeline378_sel_x(BITSELECT,129)@4
    assign bgTrunc_i_fpgaindvars_iv_next_loop_pipeline378_sel_x_b = i_fpgaindvars_iv_next_loop_pipeline378_q[5:0];

    // i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379(BLACKBOX,83)@4
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    loop_pipeline_i_llvm_fpga_push_i6_fpgaindvars_iv_push6_380 thei_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379 (
        .in_data_in(bgTrunc_i_fpgaindvars_iv_next_loop_pipeline378_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_feedback_stall_out_6),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_in_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_18(CONSTANT,33)
    assign c_i6_18_q = 6'b010010;

    // i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362(BLACKBOX,75)@4
    // out out_feedback_stall_out_6@20000000
    loop_pipeline_i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_363 thei_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362 (
        .in_data_in(c_i6_18_q),
        .in_dir(redist1_sync_in_aunroll_x_in_c0_eni133_1_3_q),
        .in_feedback_in_6(i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i6_fpgaindvars_iv_push6_loop_pipeline379_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_in_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1gr(CONSTANT,34)
    assign c_i6_1gr_q = 6'b111111;

    // i_exitcond_loop_pipeline365(COMPARE,40)@4
    assign i_exitcond_loop_pipeline365_a = {{2{c_i6_1gr_q[5]}}, c_i6_1gr_q};
    assign i_exitcond_loop_pipeline365_b = {{2{i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_data_out[5]}}, i_llvm_fpga_pop_i6_fpgaindvars_iv_pop6_loop_pipeline362_out_data_out};
    assign i_exitcond_loop_pipeline365_o = $signed(i_exitcond_loop_pipeline365_a) - $signed(i_exitcond_loop_pipeline365_b);
    assign i_exitcond_loop_pipeline365_c[0] = i_exitcond_loop_pipeline365_o[7];

    // i_llvm_fpga_push_i1_notexitcond_loop_pipeline368(BLACKBOX,77)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    loop_pipeline_i_llvm_fpga_push_i1_notexitcond_369 thei_llvm_fpga_push_i1_notexitcond_loop_pipeline368 (
        .in_data_in(i_exitcond_loop_pipeline365_c),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_loop_pipeline227_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_in_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_loop_pipeline368_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_loop_pipeline368_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0Idx1Rng1_uid336_i_next_initerations_loop_pipeline236_shift_x(BITSELECT,335)@1
    assign rightShiftStage0Idx1Rng1_uid336_i_next_initerations_loop_pipeline236_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_data_out[3:1];

    // rightShiftStage0Idx1_uid338_i_next_initerations_loop_pipeline236_shift_x(BITJOIN,337)@1
    assign rightShiftStage0Idx1_uid338_i_next_initerations_loop_pipeline236_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid336_i_next_initerations_loop_pipeline236_shift_x_b};

    // i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237(BLACKBOX,82)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    loop_pipeline_i_llvm_fpga_push_i4_initerations_push10_238 thei_llvm_fpga_push_i4_initerations_push10_loop_pipeline237 (
        .in_data_in(i_next_initerations_loop_pipeline235_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232(BLACKBOX,74)@1
    // out out_feedback_stall_out_10@20000000
    loop_pipeline_i_llvm_fpga_pop_i4_initerations_pop10_233 thei_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232 (
        .in_data_in(c_i4_7gr_q),
        .in_dir(in_c0_eni133_1),
        .in_feedback_in_10(i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_initerations_push10_loop_pipeline237_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x(MUX,339)@1
    assign rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_data_out or rightShiftStage0Idx1_uid338_i_next_initerations_loop_pipeline236_shift_x_q)
    begin
        unique case (rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_s)
            1'b0 : rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop10_loop_pipeline232_out_data_out;
            1'b1 : rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_q = rightShiftStage0Idx1_uid338_i_next_initerations_loop_pipeline236_shift_x_q;
            default : rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_loop_pipeline235_vt_select_2(BITSELECT,97)@1
    assign i_next_initerations_loop_pipeline235_vt_select_2_b = rightShiftStage0_uid340_i_next_initerations_loop_pipeline236_shift_x_q[2:0];

    // i_next_initerations_loop_pipeline235_vt_join(BITJOIN,96)@1
    assign i_next_initerations_loop_pipeline235_vt_join_q = {GND_q, i_next_initerations_loop_pipeline235_vt_select_2_b};

    // i_last_initeration_loop_pipeline240_sel_x(BITSELECT,214)@1
    assign i_last_initeration_loop_pipeline240_sel_x_b = i_next_initerations_loop_pipeline235_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241(BLACKBOX,76)@1
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    loop_pipeline_i_llvm_fpga_push_i1_lastiniteration_242 thei_llvm_fpga_push_i1_lastiniteration_loop_pipeline241 (
        .in_data_in(i_last_initeration_loop_pipeline240_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_loop_pipeline229(BLACKBOX,69)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    loop_pipeline_i_llvm_fpga_pipeline_keep_going_230 thei_llvm_fpga_pipeline_keep_going_loop_pipeline229 (
        .in_data_in(in_c0_eni133_1),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_loop_pipeline241_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_loop_pipeline368_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_loop_pipeline368_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,35)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,125)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_pipeline_valid_out;

    // redist6_sync_in_aunroll_x_in_i_valid_5(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_in_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist6_sync_in_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_i_valid_5_delay_0 <= redist5_sync_in_aunroll_x_in_i_valid_3_q;
            redist6_sync_in_aunroll_x_in_i_valid_5_q <= redist6_sync_in_aunroll_x_in_i_valid_5_delay_0;
        end
    end

    // c_i32_1gr(CONSTANT,30)
    assign c_i32_1gr_q = 32'b00000000000000000000000000000001;

    // i_inc5_loop_pipeline358(ADD,43)@3
    assign i_inc5_loop_pipeline358_a = {1'b0, i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_data_out};
    assign i_inc5_loop_pipeline358_b = {1'b0, c_i32_1gr_q};
    assign i_inc5_loop_pipeline358_o = $unsigned(i_inc5_loop_pipeline358_a) + $unsigned(i_inc5_loop_pipeline358_b);
    assign i_inc5_loop_pipeline358_q = i_inc5_loop_pipeline358_o[32:0];

    // bgTrunc_i_inc5_loop_pipeline358_sel_x(BITSELECT,130)@3
    assign bgTrunc_i_inc5_loop_pipeline358_sel_x_b = i_inc5_loop_pipeline358_q[31:0];

    // i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359(BLACKBOX,80)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    loop_pipeline_i_llvm_fpga_push_i32_i_029_push9_360 thei_llvm_fpga_push_i32_i_029_push9_loop_pipeline359 (
        .in_data_in(bgTrunc_i_inc5_loop_pipeline358_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_feedback_stall_out_9),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_in_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0gr(CONSTANT,29)
    assign c_i32_0gr_q = 32'b00000000000000000000000000000000;

    // i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258(BLACKBOX,72)@3
    // out out_feedback_stall_out_9@20000000
    loop_pipeline_i_llvm_fpga_pop_i32_i_029_pop9_259 thei_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258 (
        .in_data_in(c_i32_0gr_q),
        .in_dir(redist0_sync_in_aunroll_x_in_c0_eni133_1_2_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_029_push9_loop_pipeline359_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_in_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_loop_pipeline261_sel_x(BITSELECT,290)@3
    assign i_unnamed_loop_pipeline261_sel_x_b = i_llvm_fpga_pop_i32_i_029_pop9_loop_pipeline258_out_data_out[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_47_loop_pipeline274(BLACKBOX,59)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_47_275 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_47_loop_pipeline274 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_47_loop_pipeline274_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_58_loop_pipeline277(BLACKBOX,60)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_58_278 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_58_loop_pipeline277 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_58_loop_pipeline277_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_58_loop_pipeline329(ADD,92)@1
    assign i_mul_i_i_i_58_loop_pipeline329_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_58_loop_pipeline277_out_dest_data_out_3_0};
    assign i_mul_i_i_i_58_loop_pipeline329_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_47_loop_pipeline274_out_dest_data_out_2_0};
    assign i_mul_i_i_i_58_loop_pipeline329_o = $unsigned(i_mul_i_i_i_58_loop_pipeline329_a) + $unsigned(i_mul_i_i_i_58_loop_pipeline329_b);
    assign i_mul_i_i_i_58_loop_pipeline329_q = i_mul_i_i_i_58_loop_pipeline329_o[20:0];

    // bgTrunc_i_mul_i_i_i_58_loop_pipeline329_sel_x(BITSELECT,138)@1
    assign bgTrunc_i_mul_i_i_i_58_loop_pipeline329_sel_x_b = i_mul_i_i_i_58_loop_pipeline329_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_69_loop_pipeline280(BLACKBOX,61)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_69_281 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_69_loop_pipeline280 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_69_loop_pipeline280_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_710_loop_pipeline283(BLACKBOX,62)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_710_284 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_710_loop_pipeline283 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_710_loop_pipeline283_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_77_loop_pipeline328(ADD,93)@1
    assign i_mul_i_i_i_77_loop_pipeline328_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_710_loop_pipeline283_out_dest_data_out_5_0};
    assign i_mul_i_i_i_77_loop_pipeline328_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_69_loop_pipeline280_out_dest_data_out_4_0};
    assign i_mul_i_i_i_77_loop_pipeline328_o = $unsigned(i_mul_i_i_i_77_loop_pipeline328_a) + $unsigned(i_mul_i_i_i_77_loop_pipeline328_b);
    assign i_mul_i_i_i_77_loop_pipeline328_q = i_mul_i_i_i_77_loop_pipeline328_o[20:0];

    // bgTrunc_i_mul_i_i_i_77_loop_pipeline328_sel_x(BITSELECT,139)@1
    assign bgTrunc_i_mul_i_i_i_77_loop_pipeline328_sel_x_b = i_mul_i_i_i_77_loop_pipeline328_q[19:0];

    // i_reduction_loop_pipeline_614_loop_pipeline335(ADD,113)@1
    assign i_reduction_loop_pipeline_614_loop_pipeline335_a = {1'b0, bgTrunc_i_mul_i_i_i_77_loop_pipeline328_sel_x_b};
    assign i_reduction_loop_pipeline_614_loop_pipeline335_b = {1'b0, bgTrunc_i_mul_i_i_i_58_loop_pipeline329_sel_x_b};
    assign i_reduction_loop_pipeline_614_loop_pipeline335_o = $unsigned(i_reduction_loop_pipeline_614_loop_pipeline335_a) + $unsigned(i_reduction_loop_pipeline_614_loop_pipeline335_b);
    assign i_reduction_loop_pipeline_614_loop_pipeline335_q = i_reduction_loop_pipeline_614_loop_pipeline335_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x(BITSELECT,150)@1
    assign bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b = i_reduction_loop_pipeline_614_loop_pipeline335_q[19:0];

    // redist9_bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b_1(DELAY,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist9_bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b_1_q <= bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b;
        end
    end

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_811_loop_pipeline286(BLACKBOX,63)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_811_287 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_811_loop_pipeline286 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_811_loop_pipeline286_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_912_loop_pipeline289(BLACKBOX,64)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_912_290 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_912_loop_pipeline289 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_912_loop_pipeline289_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_96_loop_pipeline327(ADD,94)@1
    assign i_mul_i_i_i_96_loop_pipeline327_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_912_loop_pipeline289_out_dest_data_out_7_0};
    assign i_mul_i_i_i_96_loop_pipeline327_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_811_loop_pipeline286_out_dest_data_out_6_0};
    assign i_mul_i_i_i_96_loop_pipeline327_o = $unsigned(i_mul_i_i_i_96_loop_pipeline327_a) + $unsigned(i_mul_i_i_i_96_loop_pipeline327_b);
    assign i_mul_i_i_i_96_loop_pipeline327_q = i_mul_i_i_i_96_loop_pipeline327_o[20:0];

    // bgTrunc_i_mul_i_i_i_96_loop_pipeline327_sel_x(BITSELECT,140)@1
    assign bgTrunc_i_mul_i_i_i_96_loop_pipeline327_sel_x_b = i_mul_i_i_i_96_loop_pipeline327_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1013_loop_pipeline292(BLACKBOX,46)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1013_293 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1013_loop_pipeline292 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1013_loop_pipeline292_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1114_loop_pipeline295(BLACKBOX,47)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1114_296 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1114_loop_pipeline295 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1114_loop_pipeline295_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_115_loop_pipeline326(ADD,86)@1
    assign i_mul_i_i_i_115_loop_pipeline326_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1114_loop_pipeline295_out_dest_data_out_9_0};
    assign i_mul_i_i_i_115_loop_pipeline326_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1013_loop_pipeline292_out_dest_data_out_8_0};
    assign i_mul_i_i_i_115_loop_pipeline326_o = $unsigned(i_mul_i_i_i_115_loop_pipeline326_a) + $unsigned(i_mul_i_i_i_115_loop_pipeline326_b);
    assign i_mul_i_i_i_115_loop_pipeline326_q = i_mul_i_i_i_115_loop_pipeline326_o[20:0];

    // bgTrunc_i_mul_i_i_i_115_loop_pipeline326_sel_x(BITSELECT,132)@1
    assign bgTrunc_i_mul_i_i_i_115_loop_pipeline326_sel_x_b = i_mul_i_i_i_115_loop_pipeline326_q[19:0];

    // i_reduction_loop_pipeline_413_loop_pipeline334(ADD,112)@1
    assign i_reduction_loop_pipeline_413_loop_pipeline334_a = {1'b0, bgTrunc_i_mul_i_i_i_115_loop_pipeline326_sel_x_b};
    assign i_reduction_loop_pipeline_413_loop_pipeline334_b = {1'b0, bgTrunc_i_mul_i_i_i_96_loop_pipeline327_sel_x_b};
    assign i_reduction_loop_pipeline_413_loop_pipeline334_o = $unsigned(i_reduction_loop_pipeline_413_loop_pipeline334_a) + $unsigned(i_reduction_loop_pipeline_413_loop_pipeline334_b);
    assign i_reduction_loop_pipeline_413_loop_pipeline334_q = i_reduction_loop_pipeline_413_loop_pipeline334_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x(BITSELECT,149)@1
    assign bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b = i_reduction_loop_pipeline_413_loop_pipeline334_q[19:0];

    // redist10_bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b_1(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b_1_q <= bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b;
        end
    end

    // i_reduction_loop_pipeline_1217_loop_pipeline338(ADD,102)@2
    assign i_reduction_loop_pipeline_1217_loop_pipeline338_a = {1'b0, redist10_bgTrunc_i_reduction_loop_pipeline_413_loop_pipeline334_sel_x_b_1_q};
    assign i_reduction_loop_pipeline_1217_loop_pipeline338_b = {1'b0, redist9_bgTrunc_i_reduction_loop_pipeline_614_loop_pipeline335_sel_x_b_1_q};
    assign i_reduction_loop_pipeline_1217_loop_pipeline338_o = $unsigned(i_reduction_loop_pipeline_1217_loop_pipeline338_a) + $unsigned(i_reduction_loop_pipeline_1217_loop_pipeline338_b);
    assign i_reduction_loop_pipeline_1217_loop_pipeline338_q = i_reduction_loop_pipeline_1217_loop_pipeline338_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_1217_loop_pipeline338_sel_x(BITSELECT,143)@2
    assign bgTrunc_i_reduction_loop_pipeline_1217_loop_pipeline338_sel_x_b = i_reduction_loop_pipeline_1217_loop_pipeline338_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1215_loop_pipeline298(BLACKBOX,48)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1215_299 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1215_loop_pipeline298 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1215_loop_pipeline298_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1316_loop_pipeline301(BLACKBOX,50)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1316_302 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1316_loop_pipeline301 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1316_loop_pipeline301_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_134_loop_pipeline325(ADD,87)@1
    assign i_mul_i_i_i_134_loop_pipeline325_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1316_loop_pipeline301_out_dest_data_out_11_0};
    assign i_mul_i_i_i_134_loop_pipeline325_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1215_loop_pipeline298_out_dest_data_out_10_0};
    assign i_mul_i_i_i_134_loop_pipeline325_o = $unsigned(i_mul_i_i_i_134_loop_pipeline325_a) + $unsigned(i_mul_i_i_i_134_loop_pipeline325_b);
    assign i_mul_i_i_i_134_loop_pipeline325_q = i_mul_i_i_i_134_loop_pipeline325_o[20:0];

    // bgTrunc_i_mul_i_i_i_134_loop_pipeline325_sel_x(BITSELECT,133)@1
    assign bgTrunc_i_mul_i_i_i_134_loop_pipeline325_sel_x_b = i_mul_i_i_i_134_loop_pipeline325_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline304(BLACKBOX,51)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_305 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline304 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline304_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1518_loop_pipeline307(BLACKBOX,52)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1518_308 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1518_loop_pipeline307 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1518_loop_pipeline307_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_153_loop_pipeline324(ADD,88)@1
    assign i_mul_i_i_i_153_loop_pipeline324_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1518_loop_pipeline307_out_dest_data_out_13_0};
    assign i_mul_i_i_i_153_loop_pipeline324_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1417_loop_pipeline304_out_dest_data_out_12_0};
    assign i_mul_i_i_i_153_loop_pipeline324_o = $unsigned(i_mul_i_i_i_153_loop_pipeline324_a) + $unsigned(i_mul_i_i_i_153_loop_pipeline324_b);
    assign i_mul_i_i_i_153_loop_pipeline324_q = i_mul_i_i_i_153_loop_pipeline324_o[20:0];

    // bgTrunc_i_mul_i_i_i_153_loop_pipeline324_sel_x(BITSELECT,134)@1
    assign bgTrunc_i_mul_i_i_i_153_loop_pipeline324_sel_x_b = i_mul_i_i_i_153_loop_pipeline324_q[19:0];

    // i_reduction_loop_pipeline_212_loop_pipeline333(ADD,111)@1
    assign i_reduction_loop_pipeline_212_loop_pipeline333_a = {1'b0, bgTrunc_i_mul_i_i_i_153_loop_pipeline324_sel_x_b};
    assign i_reduction_loop_pipeline_212_loop_pipeline333_b = {1'b0, bgTrunc_i_mul_i_i_i_134_loop_pipeline325_sel_x_b};
    assign i_reduction_loop_pipeline_212_loop_pipeline333_o = $unsigned(i_reduction_loop_pipeline_212_loop_pipeline333_a) + $unsigned(i_reduction_loop_pipeline_212_loop_pipeline333_b);
    assign i_reduction_loop_pipeline_212_loop_pipeline333_q = i_reduction_loop_pipeline_212_loop_pipeline333_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x(BITSELECT,148)@1
    assign bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b = i_reduction_loop_pipeline_212_loop_pipeline333_q[19:0];

    // redist11_bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b_1(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b_1_q <= bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b;
        end
    end

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1619_loop_pipeline310(BLACKBOX,53)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1619_311 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1619_loop_pipeline310 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1619_loop_pipeline310_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1720_loop_pipeline313(BLACKBOX,54)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1720_314 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1720_loop_pipeline313 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1720_loop_pipeline313_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_172_loop_pipeline323(ADD,89)@1
    assign i_mul_i_i_i_172_loop_pipeline323_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1720_loop_pipeline313_out_dest_data_out_15_0};
    assign i_mul_i_i_i_172_loop_pipeline323_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1619_loop_pipeline310_out_dest_data_out_14_0};
    assign i_mul_i_i_i_172_loop_pipeline323_o = $unsigned(i_mul_i_i_i_172_loop_pipeline323_a) + $unsigned(i_mul_i_i_i_172_loop_pipeline323_b);
    assign i_mul_i_i_i_172_loop_pipeline323_q = i_mul_i_i_i_172_loop_pipeline323_o[20:0];

    // bgTrunc_i_mul_i_i_i_172_loop_pipeline323_sel_x(BITSELECT,135)@1
    assign bgTrunc_i_mul_i_i_i_172_loop_pipeline323_sel_x_b = i_mul_i_i_i_172_loop_pipeline323_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1821_loop_pipeline316(BLACKBOX,55)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1821_317 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1821_loop_pipeline316 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1821_loop_pipeline316_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1922_loop_pipeline319(BLACKBOX,56)@1
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1922_320 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1922_loop_pipeline319 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1922_loop_pipeline319_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_191_loop_pipeline322(ADD,90)@1
    assign i_mul_i_i_i_191_loop_pipeline322_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1922_loop_pipeline319_out_dest_data_out_17_0};
    assign i_mul_i_i_i_191_loop_pipeline322_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_1821_loop_pipeline316_out_dest_data_out_16_0};
    assign i_mul_i_i_i_191_loop_pipeline322_o = $unsigned(i_mul_i_i_i_191_loop_pipeline322_a) + $unsigned(i_mul_i_i_i_191_loop_pipeline322_b);
    assign i_mul_i_i_i_191_loop_pipeline322_q = i_mul_i_i_i_191_loop_pipeline322_o[20:0];

    // bgTrunc_i_mul_i_i_i_191_loop_pipeline322_sel_x(BITSELECT,136)@1
    assign bgTrunc_i_mul_i_i_i_191_loop_pipeline322_sel_x_b = i_mul_i_i_i_191_loop_pipeline322_q[19:0];

    // i_reduction_loop_pipeline_011_loop_pipeline332(ADD,100)@1
    assign i_reduction_loop_pipeline_011_loop_pipeline332_a = {1'b0, bgTrunc_i_mul_i_i_i_191_loop_pipeline322_sel_x_b};
    assign i_reduction_loop_pipeline_011_loop_pipeline332_b = {1'b0, bgTrunc_i_mul_i_i_i_172_loop_pipeline323_sel_x_b};
    assign i_reduction_loop_pipeline_011_loop_pipeline332_o = $unsigned(i_reduction_loop_pipeline_011_loop_pipeline332_a) + $unsigned(i_reduction_loop_pipeline_011_loop_pipeline332_b);
    assign i_reduction_loop_pipeline_011_loop_pipeline332_q = i_reduction_loop_pipeline_011_loop_pipeline332_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x(BITSELECT,141)@1
    assign bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b = i_reduction_loop_pipeline_011_loop_pipeline332_q[19:0];

    // redist13_bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b_1(DELAY,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist13_bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b_1_q <= bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b;
        end
    end

    // i_reduction_loop_pipeline_1016_loop_pipeline337(ADD,101)@2
    assign i_reduction_loop_pipeline_1016_loop_pipeline337_a = {1'b0, redist13_bgTrunc_i_reduction_loop_pipeline_011_loop_pipeline332_sel_x_b_1_q};
    assign i_reduction_loop_pipeline_1016_loop_pipeline337_b = {1'b0, redist11_bgTrunc_i_reduction_loop_pipeline_212_loop_pipeline333_sel_x_b_1_q};
    assign i_reduction_loop_pipeline_1016_loop_pipeline337_o = $unsigned(i_reduction_loop_pipeline_1016_loop_pipeline337_a) + $unsigned(i_reduction_loop_pipeline_1016_loop_pipeline337_b);
    assign i_reduction_loop_pipeline_1016_loop_pipeline337_q = i_reduction_loop_pipeline_1016_loop_pipeline337_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_1016_loop_pipeline337_sel_x(BITSELECT,142)@2
    assign bgTrunc_i_reduction_loop_pipeline_1016_loop_pipeline337_sel_x_b = i_reduction_loop_pipeline_1016_loop_pipeline337_q[19:0];

    // i_reduction_loop_pipeline_1518_loop_pipeline339(ADD,104)@2
    assign i_reduction_loop_pipeline_1518_loop_pipeline339_a = {1'b0, bgTrunc_i_reduction_loop_pipeline_1016_loop_pipeline337_sel_x_b};
    assign i_reduction_loop_pipeline_1518_loop_pipeline339_b = {1'b0, bgTrunc_i_reduction_loop_pipeline_1217_loop_pipeline338_sel_x_b};
    assign i_reduction_loop_pipeline_1518_loop_pipeline339_o = $unsigned(i_reduction_loop_pipeline_1518_loop_pipeline339_a) + $unsigned(i_reduction_loop_pipeline_1518_loop_pipeline339_b);
    assign i_reduction_loop_pipeline_1518_loop_pipeline339_q = i_reduction_loop_pipeline_1518_loop_pipeline339_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x(BITSELECT,145)@2
    assign bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b = i_reduction_loop_pipeline_1518_loop_pipeline339_q[19:0];

    // redist12_bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b_1(DELAY,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist12_bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b_1_q <= bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b;
        end
    end

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i23_loop_pipeline262(BLACKBOX,45)@2
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i23_263 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i23_loop_pipeline262 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_in_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i23_loop_pipeline262_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_124_loop_pipeline265(BLACKBOX,49)@2
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_124_266 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_124_loop_pipeline265 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_in_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_124_loop_pipeline265_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_110_loop_pipeline331(ADD,85)@2
    assign i_mul_i_i_i_110_loop_pipeline331_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_124_loop_pipeline265_out_dest_data_out_19_0};
    assign i_mul_i_i_i_110_loop_pipeline331_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i23_loop_pipeline262_out_dest_data_out_18_0};
    assign i_mul_i_i_i_110_loop_pipeline331_o = $unsigned(i_mul_i_i_i_110_loop_pipeline331_a) + $unsigned(i_mul_i_i_i_110_loop_pipeline331_b);
    assign i_mul_i_i_i_110_loop_pipeline331_q = i_mul_i_i_i_110_loop_pipeline331_o[20:0];

    // bgTrunc_i_mul_i_i_i_110_loop_pipeline331_sel_x(BITSELECT,131)@2
    assign bgTrunc_i_mul_i_i_i_110_loop_pipeline331_sel_x_b = i_mul_i_i_i_110_loop_pipeline331_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_225_loop_pipeline268(BLACKBOX,57)@2
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_225_269 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_225_loop_pipeline268 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_in_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_225_loop_pipeline268_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_326_loop_pipeline271(BLACKBOX,58)@2
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_326_272 thei_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_326_loop_pipeline271 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_in_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_326_loop_pipeline271_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_i_39_loop_pipeline330(ADD,91)@2
    assign i_mul_i_i_i_39_loop_pipeline330_a = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_326_loop_pipeline271_out_dest_data_out_21_0};
    assign i_mul_i_i_i_39_loop_pipeline330_b = {1'b0, i_llvm_fpga_ffwd_dest_i20_conv_i1_i_i_225_loop_pipeline268_out_dest_data_out_20_0};
    assign i_mul_i_i_i_39_loop_pipeline330_o = $unsigned(i_mul_i_i_i_39_loop_pipeline330_a) + $unsigned(i_mul_i_i_i_39_loop_pipeline330_b);
    assign i_mul_i_i_i_39_loop_pipeline330_q = i_mul_i_i_i_39_loop_pipeline330_o[20:0];

    // bgTrunc_i_mul_i_i_i_39_loop_pipeline330_sel_x(BITSELECT,137)@2
    assign bgTrunc_i_mul_i_i_i_39_loop_pipeline330_sel_x_b = i_mul_i_i_i_39_loop_pipeline330_q[19:0];

    // i_reduction_loop_pipeline_815_loop_pipeline336(ADD,114)@2
    assign i_reduction_loop_pipeline_815_loop_pipeline336_a = {1'b0, bgTrunc_i_mul_i_i_i_39_loop_pipeline330_sel_x_b};
    assign i_reduction_loop_pipeline_815_loop_pipeline336_b = {1'b0, bgTrunc_i_mul_i_i_i_110_loop_pipeline331_sel_x_b};
    assign i_reduction_loop_pipeline_815_loop_pipeline336_o = $unsigned(i_reduction_loop_pipeline_815_loop_pipeline336_a) + $unsigned(i_reduction_loop_pipeline_815_loop_pipeline336_b);
    assign i_reduction_loop_pipeline_815_loop_pipeline336_q = i_reduction_loop_pipeline_815_loop_pipeline336_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x(BITSELECT,151)@2
    assign bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b = i_reduction_loop_pipeline_815_loop_pipeline336_q[19:0];

    // redist8_bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b_1(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b_1_q <= bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b;
        end
    end

    // i_reduction_loop_pipeline_1419_loop_pipeline340(ADD,103)@3
    assign i_reduction_loop_pipeline_1419_loop_pipeline340_a = {1'b0, redist8_bgTrunc_i_reduction_loop_pipeline_815_loop_pipeline336_sel_x_b_1_q};
    assign i_reduction_loop_pipeline_1419_loop_pipeline340_b = {1'b0, redist12_bgTrunc_i_reduction_loop_pipeline_1518_loop_pipeline339_sel_x_b_1_q};
    assign i_reduction_loop_pipeline_1419_loop_pipeline340_o = $unsigned(i_reduction_loop_pipeline_1419_loop_pipeline340_a) + $unsigned(i_reduction_loop_pipeline_1419_loop_pipeline340_b);
    assign i_reduction_loop_pipeline_1419_loop_pipeline340_q = i_reduction_loop_pipeline_1419_loop_pipeline340_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_1419_loop_pipeline340_sel_x(BITSELECT,144)@3
    assign bgTrunc_i_reduction_loop_pipeline_1419_loop_pipeline340_sel_x_b = i_reduction_loop_pipeline_1419_loop_pipeline340_q[19:0];

    // i_reduction_loop_pipeline_18_loop_pipeline341_cma(CHAINMULTADD,341)@3 + 3
    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_reset = ~ (resetn);
    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena0 = 1'b1;
    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena1 = i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena0;
    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena2 = i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena0;

    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_a0 = bgTrunc_i_reduction_loop_pipeline_1419_loop_pipeline340_sel_x_b;
    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_c0 = i_unnamed_loop_pipeline261_sel_x_b;
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(20),
        .ax_clock("0"),
        .ax_width(20),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(40)
    ) i_reduction_loop_pipeline_18_loop_pipeline341_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena2, i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena1, i_reduction_loop_pipeline_18_loop_pipeline341_cma_ena0 }),
        .aclr({ i_reduction_loop_pipeline_18_loop_pipeline341_cma_reset, i_reduction_loop_pipeline_18_loop_pipeline341_cma_reset }),
        .ay(i_reduction_loop_pipeline_18_loop_pipeline341_cma_a0),
        .ax(i_reduction_loop_pipeline_18_loop_pipeline341_cma_c0),
        .resulta(i_reduction_loop_pipeline_18_loop_pipeline341_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(40), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_loop_pipeline_18_loop_pipeline341_cma_delay ( .xin(i_reduction_loop_pipeline_18_loop_pipeline341_cma_s0), .xout(i_reduction_loop_pipeline_18_loop_pipeline341_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_reduction_loop_pipeline_18_loop_pipeline341_cma_q = i_reduction_loop_pipeline_18_loop_pipeline341_cma_qq[39:0];

    // bgTrunc_i_reduction_loop_pipeline_18_loop_pipeline341_sel_x(BITSELECT,146)@6
    assign bgTrunc_i_reduction_loop_pipeline_18_loop_pipeline341_sel_x_b = i_reduction_loop_pipeline_18_loop_pipeline341_cma_q[19:0];

    // i_llvm_fpga_ffwd_dest_i20_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t6_loop_pipeline244(BLACKBOX,65)@6
    loop_pipeline_i_llvm_fpga_ffwd_dest_i20_A000Z_t6_loop_pipeline245 thei_llvm_fpga_ffwd_dest_i20_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t6_loop_pipeline244 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i20_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t6_loop_pipeline244_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_delay_0 <= '0;
            redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_delay_0 <= redist16_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_3_q;
            redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_q <= redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_delay_0;
        end
    end

    // i_llvm_fpga_push_i20_push8_loop_pipeline343(BLACKBOX,78)@6
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    loop_pipeline_i_llvm_fpga_push_i20_push8_344 thei_llvm_fpga_push_i20_push8_loop_pipeline343 (
        .in_data_in(bgTrunc_i_reduction_loop_pipeline_19_loop_pipeline342_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_feedback_stall_out_8),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i20_push8_loop_pipeline343_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i20_push8_loop_pipeline343_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i20_undef(CONSTANT,27)
    assign c_i20_undef_q = 20'b00000000000000000000;

    // i_llvm_fpga_pop_i20_pop8_loop_pipeline247(BLACKBOX,70)@6
    // out out_feedback_stall_out_8@20000000
    loop_pipeline_i_llvm_fpga_pop_i20_pop8_248 thei_llvm_fpga_pop_i20_pop8_loop_pipeline247 (
        .in_data_in(c_i20_undef_q),
        .in_dir(redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q),
        .in_feedback_in_8(i_llvm_fpga_push_i20_push8_loop_pipeline343_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i20_push8_loop_pipeline343_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_in_aunroll_x_in_c0_eni133_1_5(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_in_aunroll_x_in_c0_eni133_1_5_delay_0 <= '0;
            redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q <= '0;
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni133_1_5_delay_0 <= redist1_sync_in_aunroll_x_in_c0_eni133_1_3_q;
            redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q <= redist2_sync_in_aunroll_x_in_c0_eni133_1_5_delay_0;
        end
    end

    // i_replace_phi_loop_pipeline250(MUX,115)@6
    assign i_replace_phi_loop_pipeline250_s = redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q;
    always @(i_replace_phi_loop_pipeline250_s or i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_data_out or i_llvm_fpga_ffwd_dest_i20_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t6_loop_pipeline244_out_dest_data_out_1_0)
    begin
        unique case (i_replace_phi_loop_pipeline250_s)
            1'b0 : i_replace_phi_loop_pipeline250_q = i_llvm_fpga_pop_i20_pop8_loop_pipeline247_out_data_out;
            1'b1 : i_replace_phi_loop_pipeline250_q = i_llvm_fpga_ffwd_dest_i20_zz13loop_pipelinee3acc_addr_0_sroa_0_0_zz13loop_pipelinee3acc_addr_0_sroa_0_0_sroa_load_elt59_pml_t6_loop_pipeline244_out_dest_data_out_1_0;
            default : i_replace_phi_loop_pipeline250_q = 20'b0;
        endcase
    end

    // i_reduction_loop_pipeline_19_loop_pipeline342(ADD,106)@6
    assign i_reduction_loop_pipeline_19_loop_pipeline342_a = {1'b0, i_replace_phi_loop_pipeline250_q};
    assign i_reduction_loop_pipeline_19_loop_pipeline342_b = {1'b0, bgTrunc_i_reduction_loop_pipeline_18_loop_pipeline341_sel_x_b};
    assign i_reduction_loop_pipeline_19_loop_pipeline342_o = $unsigned(i_reduction_loop_pipeline_19_loop_pipeline342_a) + $unsigned(i_reduction_loop_pipeline_19_loop_pipeline342_b);
    assign i_reduction_loop_pipeline_19_loop_pipeline342_q = i_reduction_loop_pipeline_19_loop_pipeline342_o[20:0];

    // bgTrunc_i_reduction_loop_pipeline_19_loop_pipeline342_sel_x(BITSELECT,147)@6
    assign bgTrunc_i_reduction_loop_pipeline_19_loop_pipeline342_sel_x_b = i_reduction_loop_pipeline_19_loop_pipeline342_q[19:0];

    // redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_delay_0 <= '0;
            redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_delay_0 <= i_first_cleanup_loop_pipeline227_sel_x_b;
            redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_q <= redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_delay_0;
        end
    end

    // i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline40_loop_pipeline382(BLACKBOX,67)@6
    // out out_intel_reserved_ffwd_22_0@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_40_loop_pipeline383 thei_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline40_loop_pipeline382 (
        .in_enable_in(redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_q),
        .in_src_data_in_22_0(bgTrunc_i_reduction_loop_pipeline_19_loop_pipeline342_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline40_loop_pipeline382_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,127)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i20_unnamed_loop_pipeline40_loop_pipeline382_out_intel_reserved_ffwd_22_0;

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_const_31(CONSTANT,120)
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_const_31_q = 8'b00000000;

    // i_llvm_fpga_ffwd_dest_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_05_loop_pipeline251(BLACKBOX,66)@6
    loop_pipeline_i_llvm_fpga_ffwd_dest_i24_A000Z_05_loop_pipeline252 thei_llvm_fpga_ffwd_dest_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_05_loop_pipeline251 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_05_loop_pipeline251_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355(BLACKBOX,79)@6
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    loop_pipeline_i_llvm_fpga_push_i24_zz13eA000Zsh7_loop_pipeline356 thei_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355 (
        .in_data_in(i_pms_cs249_pms_vs_pms_vm_pms_d_compressed_loop_pipeline354_pms_cs249_pms_vs_pms_vm_pms_d_shuffle_join_x_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_feedback_stall_out_7),
        .in_keep_going(redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i24_undef(CONSTANT,28)
    assign c_i24_undef_q = 24'b000000000000000000000000;

    // i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254(BLACKBOX,71)@6
    // out out_feedback_stall_out_7@20000000
    loop_pipeline_i_llvm_fpga_pop_i24_zz13e3A000Zop7_loop_pipeline255 thei_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254 (
        .in_data_in(c_i24_undef_q),
        .in_dir(redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q),
        .in_feedback_in_7(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_push7_loop_pipeline355_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257(MUX,118)@6
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_s = redist2_sync_in_aunroll_x_in_c0_eni133_1_5_q;
    always @(i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_s or i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_data_out or i_llvm_fpga_ffwd_dest_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_05_loop_pipeline251_out_dest_data_out_0_0)
    begin
        unique case (i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_s)
            1'b0 : i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_q = i_llvm_fpga_pop_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_pop7_loop_pipeline254_out_data_out;
            1'b1 : i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_q = i_llvm_fpga_ffwd_dest_i24_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_05_loop_pipeline251_out_dest_data_out_0_0;
            default : i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_q = 24'b0;
        endcase
    end

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_sel_x(BITSELECT,291)@6
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_sel_x_b = {8'b00000000, i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_loop_pipeline257_q[23:0]};

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_select_23(BITSELECT,122)@6
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_select_23_b = i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_sel_x_b[23:0];

    // i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_join(BITJOIN,121)@6
    assign i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_join_q = {i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_const_31_q, i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_select_23_b};

    // i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_const_31(CONSTANT,108)
    assign i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_const_31_q = 12'b000000000000;

    // i_reduction_loop_pipeline_19_zext_loop_pipeline346_sel_x(BITSELECT,289)@6
    assign i_reduction_loop_pipeline_19_zext_loop_pipeline346_sel_x_b = {12'b000000000000, bgTrunc_i_reduction_loop_pipeline_19_loop_pipeline342_sel_x_b[19:0]};

    // i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_select_19(BITSELECT,110)@6
    assign i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_select_19_b = i_reduction_loop_pipeline_19_zext_loop_pipeline346_sel_x_b[19:0];

    // i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_join(BITJOIN,109)@6
    assign i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_join_q = {i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_const_31_q, i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_select_19_b};

    // i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_vec_1_join_x(BITJOIN,287)@6
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_vec_1_join_x_q = {i_zz13loop_pipelinee3acc_addr_0_sroa_0_pm_1_replace_phi_zext_loop_pipeline347_vt_join_q, i_reduction_loop_pipeline_19_zext_loop_pipeline346_vt_join_q};

    // i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select(BITSELECT,342)@6
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_vec_1_join_x_q[55:0];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_b = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[0:0];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_c = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[1:1];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_d = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[10:10];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_e = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[11:11];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_f = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[12:12];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_g = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[13:13];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_h = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[14:14];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_i = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[15:15];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_j = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[16:16];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_k = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[17:17];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_l = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[18:18];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_m = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[19:19];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_n = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[2:2];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_o = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[3:3];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_p = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[4:4];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_q = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[5:5];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_r = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[52:52];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_s = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[53:53];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_t = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[54:54];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_u = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[55:55];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_v = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[6:6];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_w = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[7:7];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_x = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[8:8];
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_y = i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_in[9:9];

    // i_pms_cs249_pms_vs_pms_vm_pms_d_compressed_loop_pipeline354_pms_cs249_pms_vs_pms_vm_pms_d_shuffle_join_x(BITJOIN,288)@6
    assign i_pms_cs249_pms_vs_pms_vm_pms_d_compressed_loop_pipeline354_pms_cs249_pms_vs_pms_vm_pms_d_shuffle_join_x_q = {i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_u, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_t, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_s, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_r, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_m, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_l, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_k, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_j, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_i, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_h, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_g, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_f, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_e, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_d, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_y, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_x, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_w, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_v, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_q, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_p, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_o, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_n, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_c, i_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_loop_pipeline351_pms_cs249_pms_vs_pms_vm_pms_d_bitvec_select_0_x_merged_bit_select_b};

    // i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline41_loop_pipeline385(BLACKBOX,68)@6
    // out out_intel_reserved_ffwd_23_0@20000000
    loop_pipeline_i_llvm_fpga_ffwd_source_i2A000Z_41_loop_pipeline386 thei_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline41_loop_pipeline385 (
        .in_enable_in(redist7_i_first_cleanup_loop_pipeline227_sel_x_b_2_q),
        .in_src_data_in_23_0(i_pms_cs249_pms_vs_pms_vm_pms_d_compressed_loop_pipeline354_pms_cs249_pms_vs_pms_vm_pms_d_shuffle_join_x_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_in_aunroll_x_in_i_valid_5_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline41_loop_pipeline385_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,154)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i24_unnamed_loop_pipeline41_loop_pipeline385_out_intel_reserved_ffwd_23_0;

    // i_masked_loop_pipeline388(LOGICAL,84)@4 + 1
    assign i_masked_loop_pipeline388_qi = i_notcmp_loop_pipeline367_q & i_first_cleanup_loop_pipeline227_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_loop_pipeline388_delay ( .xin(i_masked_loop_pipeline388_qi), .xout(i_masked_loop_pipeline388_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_i_masked_loop_pipeline388_q_2(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_masked_loop_pipeline388_q_2_q <= '0;
        end
        else
        begin
            redist14_i_masked_loop_pipeline388_q_2_q <= i_masked_loop_pipeline388_q;
        end
    end

    // sync_out_aunroll_x(GPOUT,293)@6
    assign out_c0_exi237_0 = GND_q;
    assign out_c0_exi237_1 = redist17_i_llvm_fpga_pipeline_keep_going_loop_pipeline229_out_data_out_5_q;
    assign out_c0_exi237_2 = redist14_i_masked_loop_pipeline388_q_2_q;
    assign out_o_valid = redist6_sync_in_aunroll_x_in_i_valid_5_q;
    assign out_unnamed_loop_pipeline0 = GND_q;

endmodule
