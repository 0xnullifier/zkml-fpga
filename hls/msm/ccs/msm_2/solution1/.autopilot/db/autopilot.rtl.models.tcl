set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME msm_entry_proc}
  {SRCNAME data_loader MODELNAME data_loader RTLNAME msm_data_loader
    SUBMODULES {
      {MODELNAME msm_flow_control_loop_pipe RTLNAME msm_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME msm_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME pippenger_control_Pipeline_PARTITION_SCALAR MODELNAME pippenger_control_Pipeline_PARTITION_SCALAR RTLNAME msm_pippenger_control_Pipeline_PARTITION_SCALAR
    SUBMODULES {
      {MODELNAME msm_flow_control_loop_pipe_sequential_init RTLNAME msm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME msm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME edwards_point_add MODELNAME edwards_point_add RTLNAME msm_edwards_point_add
    SUBMODULES {
      {MODELNAME msm_mul_256ns_256ns_512_5_1 RTLNAME msm_mul_256ns_256ns_512_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME msm_mul_256ns_254ns_509_5_1 RTLNAME msm_mul_256ns_254ns_509_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME msm_mul_256s_256s_256_5_1 RTLNAME msm_mul_256s_256s_256_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME msm_mul_256s_254ns_256_5_1 RTLNAME msm_mul_256s_254ns_256_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP MODELNAME pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP RTLNAME msm_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP}
  {SRCNAME aggregate_and_output_results MODELNAME aggregate_and_output_results RTLNAME msm_aggregate_and_output_results}
  {SRCNAME pippenger_control MODELNAME pippenger_control RTLNAME msm_pippenger_control
    SUBMODULES {
      {MODELNAME msm_pippenger_control_scalar_partition_buffer_RAM_T2P_BRAM_1R1W RTLNAME msm_pippenger_control_scalar_partition_buffer_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME msm_pippenger_control_buckets_x_RAM_T2P_URAM_1R1W RTLNAME msm_pippenger_control_buckets_x_RAM_T2P_URAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL uram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME WriteBack MODELNAME WriteBack RTLNAME msm_WriteBack}
  {SRCNAME msm MODELNAME msm RTLNAME msm IS_TOP 1
    SUBMODULES {
      {MODELNAME msm_fifo_w64_d4_S RTLNAME msm_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_x_c_U}
      {MODELNAME msm_fifo_w64_d4_S RTLNAME msm_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_y_c_U}
      {MODELNAME msm_fifo_w64_d4_S RTLNAME msm_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_z_c_U}
      {MODELNAME msm_fifo_w64_d4_S RTLNAME msm_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME result_t_c_U}
      {MODELNAME msm_fifo_w256_d64_A RTLNAME msm_fifo_w256_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_point_stream_U}
      {MODELNAME msm_fifo_w256_d64_A RTLNAME msm_fifo_w256_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME y_point_stream_U}
      {MODELNAME msm_fifo_w256_d64_A RTLNAME msm_fifo_w256_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_point_stream_U}
      {MODELNAME msm_fifo_w256_d2_S RTLNAME msm_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME t_point_stream_U}
      {MODELNAME msm_fifo_w256_d64_A RTLNAME msm_fifo_w256_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME scalar_point_stream_U}
      {MODELNAME msm_fifo_w1024_d64_A RTLNAME msm_fifo_w1024_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME point_result_stream_U}
      {MODELNAME msm_start_for_WriteBack_U0 RTLNAME msm_start_for_WriteBack_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_WriteBack_U0_U}
      {MODELNAME msm_start_for_pippenger_control_U0 RTLNAME msm_start_for_pippenger_control_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pippenger_control_U0_U}
      {MODELNAME msm_gmem0_m_axi RTLNAME msm_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME msm_gmem1_m_axi RTLNAME msm_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME msm_gmem2_m_axi RTLNAME msm_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME msm_gmem3_m_axi RTLNAME msm_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME msm_control_s_axi RTLNAME msm_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
