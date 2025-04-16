open_project msm
set_top msm

add_files ../src/msm.cpp -cflags -DALLOW_EMPTY_HLS_STREAM_READS
add_files ../src/msm.hpp -cflags -DALLOW_EMPTY_HLS_STREAM_READS
add_files -tb ../dat/out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../dat/input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../src/tb_msm.cpp -cflags "-Wno-unknown-pragmas -DALLOW_EMPTY_HLS_STREAM_READS" -csimflags "-Wno-unknown-pragmas" 
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 4 -name default
#source "./msm/solution1/directives.tcl"
csynth_design
exit