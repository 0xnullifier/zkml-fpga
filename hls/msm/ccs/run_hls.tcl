open_project msm_2
set_top msm

add_files ../src/msm.cpp 
add_files ../src/msm.hpp 
add_files -tb ../dat/out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../dat/input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../src/tb_msm.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas" 
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 4 -name default
# source "./msm/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -enable_dataflow_profiling
exit
