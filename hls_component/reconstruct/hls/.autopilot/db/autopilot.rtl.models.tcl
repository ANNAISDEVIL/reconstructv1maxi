set SynModuleInfo {
  {SRCNAME getLocalImages_Pipeline_copy_loop MODELNAME getLocalImages_Pipeline_copy_loop RTLNAME reconstruct_getLocalImages_Pipeline_copy_loop
    SUBMODULES {
      {MODELNAME reconstruct_flow_control_loop_pipe_sequential_init RTLNAME reconstruct_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME reconstruct_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME getLocalImages_Pipeline_process_loop MODELNAME getLocalImages_Pipeline_process_loop RTLNAME reconstruct_getLocalImages_Pipeline_process_loop
    SUBMODULES {
      {MODELNAME reconstruct_dsub_64ns_64ns_64_7_full_dsp_1 RTLNAME reconstruct_dsub_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_dmul_64ns_64ns_64_7_max_dsp_1 RTLNAME reconstruct_dmul_64ns_64ns_64_7_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_sitodp_32ns_64_6_no_dsp_1 RTLNAME reconstruct_sitodp_32ns_64_6_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_sparsemux_201_7_64_1_1 RTLNAME reconstruct_sparsemux_201_7_64_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME reconstruct_sparsemux_7_2_64_1_1 RTLNAME reconstruct_sparsemux_7_2_64_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME reconstruct_getLocalImages_Pipeline_process_loop_mask_table_ROM_AUTO_1R RTLNAME reconstruct_getLocalImages_Pipeline_process_loop_mask_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_getLocalImages_Pipeline_process_loop_one_half_table_ROM_AUTO_1R RTLNAME reconstruct_getLocalImages_Pipeline_process_loop_one_half_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME getLocalImages MODELNAME getLocalImages RTLNAME reconstruct_getLocalImages}
  {SRCNAME applyProjectors MODELNAME applyProjectors RTLNAME reconstruct_applyProjectors
    SUBMODULES {
      {MODELNAME reconstruct_dadd_64ns_64ns_64_7_full_dsp_1 RTLNAME reconstruct_dadd_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_ddiv_64ns_64ns_64_59_no_dsp_1 RTLNAME reconstruct_ddiv_64ns_64ns_64_59_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 58 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME reconstruct_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_mul_32s_32s_32_2_1 RTLNAME reconstruct_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_mul_61s_32s_61_5_1 RTLNAME reconstruct_mul_61s_32s_61_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME reconstruct_srem_32ns_32s_32_36_1 RTLNAME reconstruct_srem_32ns_32s_32_36_1 BINDTYPE op TYPE srem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME reconstruct MODELNAME reconstruct RTLNAME reconstruct IS_TOP 1
    SUBMODULES {
      {MODELNAME reconstruct_fifo_w256_d2_S RTLNAME reconstruct_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME localImages_U}
      {MODELNAME reconstruct_imageProjs_local_m_axi RTLNAME reconstruct_imageProjs_local_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_imageProjs_m_axi RTLNAME reconstruct_imageProjs_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_imageProjs_local_size_m_axi RTLNAME reconstruct_imageProjs_local_size_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_fullImage_m_axi RTLNAME reconstruct_fullImage_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_emissions_m_axi RTLNAME reconstruct_emissions_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME reconstruct_control_s_axi RTLNAME reconstruct_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME reconstruct_scalar_data_s_axi RTLNAME reconstruct_scalar_data_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
