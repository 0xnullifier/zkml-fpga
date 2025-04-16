# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../../src/tb_msm.cpp ../../../../../src/msm.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /tools/Xilinx/Vitis/2024.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${XILINX_VCXX}/libexec
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --gcc-toolchain=/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --gcc-toolchain=/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_msm.o: ../../../../../src/tb_msm.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../../src/tb_msm.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -DALLOW_EMPTY_HLS_STREAM_READS -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb_msm.d

$(ObjDir)/msm.o: ../../../../../src/msm.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../../src/msm.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++14 ${CCFLAG} -c -MMD -DALLOW_EMPTY_HLS_STREAM_READS  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/msm.d
