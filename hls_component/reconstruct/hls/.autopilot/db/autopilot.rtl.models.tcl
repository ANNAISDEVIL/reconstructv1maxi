set SynModuleInfo {
  {SRCNAME dataflow_in_loop_VITIS_LOOP_152_1.1_Block_newFuncRoot_proc MODELNAME dataflow_in_loop_VITIS_LOOP_152_1_1_Block_newFuncRoot_proc RTLNAME reconstruct_dataflow_in_loop_VITIS_LOOP_152_1_1_Block_newFuncRoot_proc}
  {SRCNAME getLocalImages_single MODELNAME getLocalImages_single RTLNAME reconstruct_getLocalImages_single
    SUBMODULES {
      {MODELNAME reconstruct_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME reconstruct_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME reconstruct_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_sitofp_32ns_32_4_no_dsp_1 RTLNAME reconstruct_sitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_sparsemux_7_2_32_1_1 RTLNAME reconstruct_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME reconstruct_getLocalImages_single_mask_table_ROM_AUTO_1R RTLNAME reconstruct_getLocalImages_single_mask_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_getLocalImages_single_one_half_table_ROM_AUTO_1R RTLNAME reconstruct_getLocalImages_single_one_half_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Image_extract_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2 MODELNAME Image_extract_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2 RTLNAME reconstruct_Image_extract_Pipeline_VITIS_LOOP_36_1_VITIS_LOOP_37_2
    SUBMODULES {
      {MODELNAME reconstruct_flow_control_loop_pipe_sequential_init RTLNAME reconstruct_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME reconstruct_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Image_extract MODELNAME Image_extract RTLNAME reconstruct_Image_extract}
  {SRCNAME conv_kernel_Pipeline_VITIS_LOOP_104_1 MODELNAME conv_kernel_Pipeline_VITIS_LOOP_104_1 RTLNAME reconstruct_conv_kernel_Pipeline_VITIS_LOOP_104_1
    SUBMODULES {
      {MODELNAME reconstruct_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME reconstruct_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_sparsemux_63_5_32_1_1 RTLNAME reconstruct_sparsemux_63_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME conv_kernel MODELNAME conv_kernel RTLNAME reconstruct_conv_kernel}
  {SRCNAME post_process MODELNAME post_process RTLNAME reconstruct_post_process
    SUBMODULES {
      {MODELNAME reconstruct_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME reconstruct_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_VITIS_LOOP_152_1.1 MODELNAME dataflow_in_loop_VITIS_LOOP_152_1_1 RTLNAME reconstruct_dataflow_in_loop_VITIS_LOOP_152_1_1
    SUBMODULES {
      {MODELNAME reconstruct_dataflow_in_loop_VITIS_LOOP_152_1_1_curr_localImage_RAM_AUTO_1R1W_memcore RTLNAME reconstruct_dataflow_in_loop_VITIS_LOOP_152_1_1_curr_localImage_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_dataflow_in_loop_VITIS_LOOP_152_1_1_curr_localImage_RAM_AUTO_1R1W RTLNAME reconstruct_dataflow_in_loop_VITIS_LOOP_152_1_1_curr_localImage_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_fifo_w64_d4_S RTLNAME reconstruct_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME call_ret_U}
      {MODELNAME reconstruct_fifo_w256_d4_S RTLNAME reconstruct_fifo_w256_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME localImages_U}
      {MODELNAME reconstruct_fifo_w32_d3_S RTLNAME reconstruct_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME curr_imageProjs_U}
      {MODELNAME reconstruct_fifo_w32_d2_S RTLNAME reconstruct_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME projSumUsed_U}
      {MODELNAME reconstruct_fifo_w32_d2_S RTLNAME reconstruct_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sum_U}
    }
  }
  {SRCNAME reconstruct MODELNAME reconstruct RTLNAME reconstruct IS_TOP 1
    SUBMODULES {
      {MODELNAME reconstruct_ap_bound RTLNAME reconstruct_ap_bound BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ap_bound_U}
      {MODELNAME reconstruct_atomLocations_m_axi RTLNAME reconstruct_atomLocations_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_imageProjs_local_m_axi RTLNAME reconstruct_imageProjs_local_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_imageProjs_m_axi RTLNAME reconstruct_imageProjs_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_fullImage_m_axi RTLNAME reconstruct_fullImage_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_emissions_m_axi RTLNAME reconstruct_emissions_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_control_s_axi RTLNAME reconstruct_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME reconstruct_scalar_data_s_axi RTLNAME reconstruct_scalar_data_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
