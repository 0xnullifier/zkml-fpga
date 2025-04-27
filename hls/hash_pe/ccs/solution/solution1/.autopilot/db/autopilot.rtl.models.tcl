set SynModuleInfo {
  {SRCNAME poseidon_hash MODELNAME poseidon_hash RTLNAME poseidon_hash IS_TOP 1
    SUBMODULES {
      {MODELNAME poseidon_hash_gmem1_m_axi RTLNAME poseidon_hash_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME poseidon_hash_control_s_axi RTLNAME poseidon_hash_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME poseidon_hash_control_r_s_axi RTLNAME poseidon_hash_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME poseidon_hash_flow_control_loop_pipe RTLNAME poseidon_hash_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME poseidon_hash_flow_control_loop_pipe_U}
    }
  }
}
