open_project solution
set_top poseidon_hash

add_files ../src/poseidon.cpp 
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 4 -name default
csynth_design
cosim_design -trace_level all -enable_dataflow_profiling
exit

