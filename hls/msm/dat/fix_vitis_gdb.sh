#!/bin/bash
# Save current LD_LIBRARY_PATH
OLD_LD_LIBRARY_PATH=$LD_LIBRARY_PATH

# Remove Vitis paths from LD_LIBRARY_PATH temporarily
export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | tr ':' '\n' | grep -v "Xilinx/Vitis" | tr '\n' ':')

# Run Vitis HLS with system libraries taking precedence
vitis_hls "$@" --classic

# Restore original LD_LIBRARY_PATH when done
export LD_LIBRARY_PATH=$OLD_LD_LIBRARY_PATH
