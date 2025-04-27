open_project ntt
set_top ntt_2_24

add_files ../src/ntt.cpp -cflags "-Wextra-tokens"
add_files ../src/ntt.hpp -cflags "-Wextra-tokens"
add_files ../src/omega.hpp -cflags "-Wextra-tokens"
add_files -tb ../src/timer.hpp -cflags "-Wextra-tokens"
add_files -tb ../src/ntt_tb.cpp -cflags "-Wno-unknown-pragmas -Wextra-tokens" -csimflags "-Wno-unknown-pragmas -Wextra-tokens" 
add_files -tb ../dat/in_fully_random_2_24.txt
add_files -tb ../dat/out_fully_random_2_24.txt
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 4 -name default
# source "./msm/solution1/directives.tcl"
# csim_design
csynth_design
exit