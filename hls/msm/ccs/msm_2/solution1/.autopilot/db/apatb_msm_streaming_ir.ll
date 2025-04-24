; ModuleID = '/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs/msm_2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_msm_streaming_ir(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" "partition" %x_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" "partition" %y_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" "partition" %z_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" "partition" %t_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" "partition" %scalar_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "maxi" %result_x, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "maxi" %result_y, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "maxi" %result_z, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "maxi" %result_t, i32 %degree) local_unnamed_addr #1 {
entry:
  %0 = bitcast %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %x_array to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %_0 = call i8* @malloc(i64 8192)
  %_1 = call i8* @malloc(i64 8192)
  %_2 = call i8* @malloc(i64 8192)
  %_3 = call i8* @malloc(i64 8192)
  %x_array_copy_0 = bitcast i8* %_0 to [256 x i256]*
  %x_array_copy_1 = bitcast i8* %_1 to [256 x i256]*
  %x_array_copy_2 = bitcast i8* %_2 to [256 x i256]*
  %x_array_copy_3 = bitcast i8* %_3 to [256 x i256]*
  %_010 = getelementptr [256 x i256], [256 x i256]* %x_array_copy_0, i64 0, i64 0
  %_111 = getelementptr [256 x i256], [256 x i256]* %x_array_copy_1, i64 0, i64 0
  %_212 = getelementptr [256 x i256], [256 x i256]* %x_array_copy_2, i64 0, i64 0
  %_313 = getelementptr [256 x i256], [256 x i256]* %x_array_copy_3, i64 0, i64 0
  %1 = bitcast %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %y_array to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %_014 = call i8* @malloc(i64 8192)
  %_115 = call i8* @malloc(i64 8192)
  %_216 = call i8* @malloc(i64 8192)
  %_317 = call i8* @malloc(i64 8192)
  %y_array_copy_0 = bitcast i8* %_014 to [256 x i256]*
  %y_array_copy_1 = bitcast i8* %_115 to [256 x i256]*
  %y_array_copy_2 = bitcast i8* %_216 to [256 x i256]*
  %y_array_copy_3 = bitcast i8* %_317 to [256 x i256]*
  %_018 = getelementptr [256 x i256], [256 x i256]* %y_array_copy_0, i64 0, i64 0
  %_119 = getelementptr [256 x i256], [256 x i256]* %y_array_copy_1, i64 0, i64 0
  %_220 = getelementptr [256 x i256], [256 x i256]* %y_array_copy_2, i64 0, i64 0
  %_321 = getelementptr [256 x i256], [256 x i256]* %y_array_copy_3, i64 0, i64 0
  %2 = bitcast %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %z_array to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %_022 = call i8* @malloc(i64 8192)
  %_123 = call i8* @malloc(i64 8192)
  %_224 = call i8* @malloc(i64 8192)
  %_325 = call i8* @malloc(i64 8192)
  %z_array_copy_0 = bitcast i8* %_022 to [256 x i256]*
  %z_array_copy_1 = bitcast i8* %_123 to [256 x i256]*
  %z_array_copy_2 = bitcast i8* %_224 to [256 x i256]*
  %z_array_copy_3 = bitcast i8* %_325 to [256 x i256]*
  %_026 = getelementptr [256 x i256], [256 x i256]* %z_array_copy_0, i64 0, i64 0
  %_127 = getelementptr [256 x i256], [256 x i256]* %z_array_copy_1, i64 0, i64 0
  %_228 = getelementptr [256 x i256], [256 x i256]* %z_array_copy_2, i64 0, i64 0
  %_329 = getelementptr [256 x i256], [256 x i256]* %z_array_copy_3, i64 0, i64 0
  %3 = bitcast %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %t_array to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %_030 = call i8* @malloc(i64 8192)
  %_131 = call i8* @malloc(i64 8192)
  %_232 = call i8* @malloc(i64 8192)
  %_333 = call i8* @malloc(i64 8192)
  %t_array_copy_0 = bitcast i8* %_030 to [256 x i256]*
  %t_array_copy_1 = bitcast i8* %_131 to [256 x i256]*
  %t_array_copy_2 = bitcast i8* %_232 to [256 x i256]*
  %t_array_copy_3 = bitcast i8* %_333 to [256 x i256]*
  %_034 = getelementptr [256 x i256], [256 x i256]* %t_array_copy_0, i64 0, i64 0
  %_135 = getelementptr [256 x i256], [256 x i256]* %t_array_copy_1, i64 0, i64 0
  %_236 = getelementptr [256 x i256], [256 x i256]* %t_array_copy_2, i64 0, i64 0
  %_337 = getelementptr [256 x i256], [256 x i256]* %t_array_copy_3, i64 0, i64 0
  %4 = bitcast %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %scalar_array to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %_038 = call i8* @malloc(i64 8192)
  %_139 = call i8* @malloc(i64 8192)
  %_240 = call i8* @malloc(i64 8192)
  %_341 = call i8* @malloc(i64 8192)
  %scalar_array_copy_0 = bitcast i8* %_038 to [256 x i256]*
  %scalar_array_copy_1 = bitcast i8* %_139 to [256 x i256]*
  %scalar_array_copy_2 = bitcast i8* %_240 to [256 x i256]*
  %scalar_array_copy_3 = bitcast i8* %_341 to [256 x i256]*
  %_042 = getelementptr [256 x i256], [256 x i256]* %scalar_array_copy_0, i64 0, i64 0
  %_143 = getelementptr [256 x i256], [256 x i256]* %scalar_array_copy_1, i64 0, i64 0
  %_244 = getelementptr [256 x i256], [256 x i256]* %scalar_array_copy_2, i64 0, i64 0
  %_345 = getelementptr [256 x i256], [256 x i256]* %scalar_array_copy_3, i64 0, i64 0
  %result_x_copy = alloca i256, align 512
  %result_y_copy = alloca i256, align 512
  %result_z_copy = alloca i256, align 512
  %result_t_copy = alloca i256, align 512
  call void @copy_in([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [256 x i256]* %x_array_copy_0, [256 x i256]* %x_array_copy_1, [256 x i256]* %x_array_copy_2, [256 x i256]* %x_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [256 x i256]* %y_array_copy_0, [256 x i256]* %y_array_copy_1, [256 x i256]* %y_array_copy_2, [256 x i256]* %y_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [256 x i256]* %z_array_copy_0, [256 x i256]* %z_array_copy_1, [256 x i256]* %z_array_copy_2, [256 x i256]* %z_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %3, [256 x i256]* %t_array_copy_0, [256 x i256]* %t_array_copy_1, [256 x i256]* %t_array_copy_2, [256 x i256]* %t_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %4, [256 x i256]* %scalar_array_copy_0, [256 x i256]* %scalar_array_copy_1, [256 x i256]* %scalar_array_copy_2, [256 x i256]* %scalar_array_copy_3, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %result_x, i256* nonnull align 512 %result_x_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %result_y, i256* nonnull align 512 %result_y_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %result_z, i256* nonnull align 512 %result_z_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %result_t, i256* nonnull align 512 %result_t_copy)
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_010, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_111, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_212, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_313, i32 999, i32 1, i32 1, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_010, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_111, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_212, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_313, i32 998, i32 1, i32 0, i1 false) ], !dbg !47
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_018, i32 999, i32 1, i32 1, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_119, i32 999, i32 1, i32 1, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_220, i32 999, i32 1, i32 1, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_321, i32 999, i32 1, i32 1, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_018, i32 998, i32 1, i32 0, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_119, i32 998, i32 1, i32 0, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_220, i32 998, i32 1, i32 0, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_321, i32 998, i32 1, i32 0, i1 false) ], !dbg !1189
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_026, i32 999, i32 1, i32 1, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_127, i32 999, i32 1, i32 1, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_228, i32 999, i32 1, i32 1, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_329, i32 999, i32 1, i32 1, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_026, i32 998, i32 1, i32 0, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_127, i32 998, i32 1, i32 0, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_228, i32 998, i32 1, i32 0, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_329, i32 998, i32 1, i32 0, i1 false) ], !dbg !1190
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_034, i32 999, i32 1, i32 1, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_135, i32 999, i32 1, i32 1, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_236, i32 999, i32 1, i32 1, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_337, i32 999, i32 1, i32 1, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_034, i32 998, i32 1, i32 0, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_135, i32 998, i32 1, i32 0, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_236, i32 998, i32 1, i32 0, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_337, i32 998, i32 1, i32 0, i1 false) ], !dbg !1191
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_042, i32 999, i32 1, i32 1, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_143, i32 999, i32 1, i32 1, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_244, i32 999, i32 1, i32 1, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_345, i32 999, i32 1, i32 1, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_042, i32 998, i32 1, i32 0, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_143, i32 998, i32 1, i32 0, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_244, i32 998, i32 1, i32 0, i1 false) ], !dbg !1192
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i256* %_345, i32 998, i32 1, i32 0, i1 false) ], !dbg !1192
  call void @apatb_msm_streaming_hw([256 x i256]* %x_array_copy_0, [256 x i256]* %x_array_copy_1, [256 x i256]* %x_array_copy_2, [256 x i256]* %x_array_copy_3, [256 x i256]* %y_array_copy_0, [256 x i256]* %y_array_copy_1, [256 x i256]* %y_array_copy_2, [256 x i256]* %y_array_copy_3, [256 x i256]* %z_array_copy_0, [256 x i256]* %z_array_copy_1, [256 x i256]* %z_array_copy_2, [256 x i256]* %z_array_copy_3, [256 x i256]* %t_array_copy_0, [256 x i256]* %t_array_copy_1, [256 x i256]* %t_array_copy_2, [256 x i256]* %t_array_copy_3, [256 x i256]* %scalar_array_copy_0, [256 x i256]* %scalar_array_copy_1, [256 x i256]* %scalar_array_copy_2, [256 x i256]* %scalar_array_copy_3, i256* %result_x_copy, i256* %result_y_copy, i256* %result_z_copy, i256* %result_t_copy, i32 %degree)
  call void @copy_back([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %0, [256 x i256]* %x_array_copy_0, [256 x i256]* %x_array_copy_1, [256 x i256]* %x_array_copy_2, [256 x i256]* %x_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %1, [256 x i256]* %y_array_copy_0, [256 x i256]* %y_array_copy_1, [256 x i256]* %y_array_copy_2, [256 x i256]* %y_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %2, [256 x i256]* %z_array_copy_0, [256 x i256]* %z_array_copy_1, [256 x i256]* %z_array_copy_2, [256 x i256]* %z_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %3, [256 x i256]* %t_array_copy_0, [256 x i256]* %t_array_copy_1, [256 x i256]* %t_array_copy_2, [256 x i256]* %t_array_copy_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %4, [256 x i256]* %scalar_array_copy_0, [256 x i256]* %scalar_array_copy_1, [256 x i256]* %scalar_array_copy_2, [256 x i256]* %scalar_array_copy_3, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %result_x, i256* %result_x_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %result_y, i256* %result_y_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %result_z, i256* %result_z_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %result_t, i256* %result_t_copy)
  call void @free(i8* %_0)
  call void @free(i8* %_1)
  call void @free(i8* %_2)
  call void @free(i8* %_3)
  call void @free(i8* %_014)
  call void @free(i8* %_115)
  call void @free(i8* %_216)
  call void @free(i8* %_317)
  call void @free(i8* %_022)
  call void @free(i8* %_123)
  call void @free(i8* %_224)
  call void @free(i8* %_325)
  call void @free(i8* %_030)
  call void @free(i8* %_131)
  call void @free(i8* %_232)
  call void @free(i8* %_333)
  call void @free(i8* %_038)
  call void @free(i8* %_139)
  call void @free(i8* %_240)
  call void @free(i8* %_341)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i256* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i256, i256* %src, align 512
  store i256 %1, i256* %dst.0.0.04, align 32
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.172"(i256* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i256, i256* %src.0.0.03, align 32
  store i256 %1, i256* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.199"([256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, [256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, [256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, [256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #4 {
entry:
  %0 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %1 = udiv i64 %for.loop.idx2, 4
  %2 = urem i64 %for.loop.idx2, 4
  %src.addr.0.0.05 = getelementptr [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"], [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06_0 = getelementptr [256 x i256], [256 x i256]* %dst_0, i64 0, i64 %1
  %dst.addr.0.0.06_1 = getelementptr [256 x i256], [256 x i256]* %dst_1, i64 0, i64 %1
  %dst.addr.0.0.06_2 = getelementptr [256 x i256], [256 x i256]* %dst_2, i64 0, i64 %1
  %dst.addr.0.0.06_3 = getelementptr [256 x i256], [256 x i256]* %dst_3, i64 0, i64 %1
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  switch i64 %2, label %dst.addr.0.0.06.case.3 [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i256 %3, i256* %dst.addr.0.0.06_0, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i256 %3, i256* %dst.addr.0.0.06_1, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i256 %3, i256* %dst.addr.0.0.06_2, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  %4 = icmp eq i64 %2, 3
  call void @llvm.assume(i1 %4)
  store i256 %3, i256* %dst.addr.0.0.06_3, align 32
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, [256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, [256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, [256 x i256]* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.199"([256 x i256]* %dst_0, [256 x i256]* %dst_1, [256 x i256]* %dst_2, [256 x i256]* %dst_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="0" "unpacked"="0", [256 x i256]* nocapture "orig.arg.no"="1" "unpacked"="1.0.0" %_0, [256 x i256]* nocapture "orig.arg.no"="1" "unpacked"="1.0.1" %_1, [256 x i256]* nocapture "orig.arg.no"="1" "unpacked"="1.0.2" %_2, [256 x i256]* nocapture "orig.arg.no"="1" "unpacked"="1.0.3" %_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="2" "unpacked"="2", [256 x i256]* nocapture "orig.arg.no"="3" "unpacked"="3.0.0" %_01, [256 x i256]* nocapture "orig.arg.no"="3" "unpacked"="3.0.1" %_12, [256 x i256]* nocapture "orig.arg.no"="3" "unpacked"="3.0.2" %_23, [256 x i256]* nocapture "orig.arg.no"="3" "unpacked"="3.0.3" %_34, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="4" "unpacked"="4", [256 x i256]* nocapture "orig.arg.no"="5" "unpacked"="5.0.0" %_05, [256 x i256]* nocapture "orig.arg.no"="5" "unpacked"="5.0.1" %_16, [256 x i256]* nocapture "orig.arg.no"="5" "unpacked"="5.0.2" %_27, [256 x i256]* nocapture "orig.arg.no"="5" "unpacked"="5.0.3" %_38, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="6" "unpacked"="6", [256 x i256]* nocapture "orig.arg.no"="7" "unpacked"="7.0.0" %_09, [256 x i256]* nocapture "orig.arg.no"="7" "unpacked"="7.0.1" %_110, [256 x i256]* nocapture "orig.arg.no"="7" "unpacked"="7.0.2" %_211, [256 x i256]* nocapture "orig.arg.no"="7" "unpacked"="7.0.3" %_312, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="8" "unpacked"="8", [256 x i256]* nocapture "orig.arg.no"="9" "unpacked"="9.0.0" %_013, [256 x i256]* nocapture "orig.arg.no"="9" "unpacked"="9.0.1" %_114, [256 x i256]* nocapture "orig.arg.no"="9" "unpacked"="9.0.2" %_215, [256 x i256]* nocapture "orig.arg.no"="9" "unpacked"="9.0.3" %_316, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="10" "unpacked"="10", i256* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="12" "unpacked"="12", i256* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="13.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="14" "unpacked"="14", i256* noalias nocapture align 512 "orig.arg.no"="15" "unpacked"="15.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "orig.arg.no"="16" "unpacked"="16", i256* noalias nocapture align 512 "orig.arg.no"="17" "unpacked"="17.0") #5 {
entry:
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([256 x i256]* %_0, [256 x i256]* %_1, [256 x i256]* %_2, [256 x i256]* %_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([256 x i256]* %_01, [256 x i256]* %_12, [256 x i256]* %_23, [256 x i256]* %_34, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %1)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([256 x i256]* %_05, [256 x i256]* %_16, [256 x i256]* %_27, [256 x i256]* %_38, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %2)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([256 x i256]* %_09, [256 x i256]* %_110, [256 x i256]* %_211, [256 x i256]* %_312, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %3)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([256 x i256]* %_013, [256 x i256]* %_114, [256 x i256]* %_215, [256 x i256]* %_316, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.172"(i256* align 512 %6, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.172"(i256* align 512 %8, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.172"(i256* align 512 %10, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.172"(i256* align 512 %12, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.192"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i64 "orig.arg.no"="2" "unpacked"="2" %num) #4 {
entry:
  %0 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %1 = udiv i64 %for.loop.idx2, 4
  %2 = urem i64 %for.loop.idx2, 4
  %src.addr.0.0.05_0 = getelementptr [256 x i256], [256 x i256]* %src_0, i64 0, i64 %1
  %src.addr.0.0.05_1 = getelementptr [256 x i256], [256 x i256]* %src_1, i64 0, i64 %1
  %src.addr.0.0.05_2 = getelementptr [256 x i256], [256 x i256]* %src_2, i64 0, i64 %1
  %src.addr.0.0.05_3 = getelementptr [256 x i256], [256 x i256]* %src_3, i64 0, i64 %1
  %dst.addr.0.0.06 = getelementptr [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"], [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i64 %2, label %src.addr.0.0.05.case.3 [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %_0 = load i256, i256* %src.addr.0.0.05_0, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %_1 = load i256, i256* %src.addr.0.0.05_1, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %_2 = load i256, i256* %src.addr.0.0.05_2, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %3 = icmp eq i64 %2, 3
  call void @llvm.assume(i1 %3)
  %_3 = load i256, i256* %src.addr.0.0.05_3, align 32
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %4 = phi i256 [ %_0, %src.addr.0.0.05.case.0 ], [ %_1, %src.addr.0.0.05.case.1 ], [ %_2, %src.addr.0.0.05.case.2 ], [ %_3, %src.addr.0.0.05.case.3 ]
  store i256 %4, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.189"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3) #2 {
entry:
  %0 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.192"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [256 x i256]* %src_0, [256 x i256]* %src_1, [256 x i256]* %src_2, [256 x i256]* %src_3, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0", [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %_0, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %_1, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %_2, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="2" "unpacked"="2", [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.0" %_01, [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.1" %_12, [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.2" %_23, [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.3" %_34, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="4" "unpacked"="4", [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.0" %_05, [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.1" %_16, [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.2" %_27, [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.3" %_38, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="6" "unpacked"="6", [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.0" %_09, [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.1" %_110, [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.2" %_211, [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.3" %_312, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="8" "unpacked"="8", [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.0" %_013, [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.1" %_114, [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.2" %_215, [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.3" %_316, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="10" "unpacked"="10", i256* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="12" "unpacked"="12", i256* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="13.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="14" "unpacked"="14", i256* noalias nocapture readonly align 512 "orig.arg.no"="15" "unpacked"="15.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="16" "unpacked"="16", i256* noalias nocapture readonly align 512 "orig.arg.no"="17" "unpacked"="17.0") #6 {
entry:
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.189"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %0, [256 x i256]* %_0, [256 x i256]* %_1, [256 x i256]* %_2, [256 x i256]* %_3)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.189"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %1, [256 x i256]* %_01, [256 x i256]* %_12, [256 x i256]* %_23, [256 x i256]* %_34)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.189"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %2, [256 x i256]* %_05, [256 x i256]* %_16, [256 x i256]* %_27, [256 x i256]* %_38)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.189"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %3, [256 x i256]* %_09, [256 x i256]* %_110, [256 x i256]* %_211, [256 x i256]* %_312)
  call void @"onebyonecpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.189"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %4, [256 x i256]* %_013, [256 x i256]* %_114, [256 x i256]* %_215, [256 x i256]* %_316)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %5, i256* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %7, i256* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %9, i256* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %11, i256* align 512 %12)
  ret void
}

declare void @apatb_msm_streaming_hw([256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, i256*, i256*, i256*, i256*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0", [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %_0, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %_1, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %_2, [256 x i256]* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %_3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="2" "unpacked"="2", [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.0" %_01, [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.1" %_12, [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.2" %_23, [256 x i256]* nocapture readonly "orig.arg.no"="3" "unpacked"="3.0.3" %_34, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="4" "unpacked"="4", [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.0" %_05, [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.1" %_16, [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.2" %_27, [256 x i256]* nocapture readonly "orig.arg.no"="5" "unpacked"="5.0.3" %_38, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="6" "unpacked"="6", [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.0" %_09, [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.1" %_110, [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.2" %_211, [256 x i256]* nocapture readonly "orig.arg.no"="7" "unpacked"="7.0.3" %_312, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="8" "unpacked"="8", [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.0" %_013, [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.1" %_114, [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.2" %_215, [256 x i256]* nocapture readonly "orig.arg.no"="9" "unpacked"="9.0.3" %_316, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="10" "unpacked"="10", i256* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="12" "unpacked"="12", i256* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="13.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="14" "unpacked"="14", i256* noalias nocapture readonly align 512 "orig.arg.no"="15" "unpacked"="15.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "orig.arg.no"="16" "unpacked"="16", i256* noalias nocapture readonly align 512 "orig.arg.no"="17" "unpacked"="17.0") #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %5, i256* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %7, i256* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %9, i256* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %11, i256* align 512 %12)
  ret void
}

declare void @msm_streaming_hw_stub(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull, i32)

define void @msm_streaming_hw_stub_wrapper([256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, [256 x i256]*, i256*, i256*, i256*, i256*, i32) #7 {
entry:
  %25 = call i8* @malloc(i64 32768)
  %26 = bitcast i8* %25 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %27 = call i8* @malloc(i64 32768)
  %28 = bitcast i8* %27 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %29 = call i8* @malloc(i64 32768)
  %30 = bitcast i8* %29 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %31 = call i8* @malloc(i64 32768)
  %32 = bitcast i8* %31 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %33 = call i8* @malloc(i64 32768)
  %34 = bitcast i8* %33 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %35 = call i8* @malloc(i64 32)
  %36 = bitcast i8* %35 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %37 = call i8* @malloc(i64 32)
  %38 = bitcast i8* %37 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %39 = call i8* @malloc(i64 32)
  %40 = bitcast i8* %39 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %41 = call i8* @malloc(i64 32)
  %42 = bitcast i8* %41 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  call void @copy_out([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %26, [256 x i256]* %0, [256 x i256]* %1, [256 x i256]* %2, [256 x i256]* %3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %28, [256 x i256]* %4, [256 x i256]* %5, [256 x i256]* %6, [256 x i256]* %7, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %30, [256 x i256]* %8, [256 x i256]* %9, [256 x i256]* %10, [256 x i256]* %11, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %32, [256 x i256]* %12, [256 x i256]* %13, [256 x i256]* %14, [256 x i256]* %15, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %34, [256 x i256]* %16, [256 x i256]* %17, [256 x i256]* %18, [256 x i256]* %19, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %36, i256* %20, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %38, i256* %21, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %40, i256* %22, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %42, i256* %23)
  %43 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %26 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %44 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %28 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %45 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %30 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %46 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %32 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %47 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %34 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  call void @msm_streaming_hw_stub(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %43, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %44, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %45, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %46, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %47, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %36, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %38, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %40, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %42, i32 %24)
  call void @copy_in([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %26, [256 x i256]* %0, [256 x i256]* %1, [256 x i256]* %2, [256 x i256]* %3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %28, [256 x i256]* %4, [256 x i256]* %5, [256 x i256]* %6, [256 x i256]* %7, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %30, [256 x i256]* %8, [256 x i256]* %9, [256 x i256]* %10, [256 x i256]* %11, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %32, [256 x i256]* %12, [256 x i256]* %13, [256 x i256]* %14, [256 x i256]* %15, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %34, [256 x i256]* %16, [256 x i256]* %17, [256 x i256]* %18, [256 x i256]* %19, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %36, i256* %20, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %38, i256* %21, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %40, i256* %22, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %42, i256* %23)
  call void @free(i8* %25)
  call void @free(i8* %27)
  call void @free(i8* %29)
  call void @free(i8* %31)
  call void @free(i8* %33)
  call void @free(i8* %35)
  call void @free(i8* %37)
  call void @free(i8* %39)
  call void @free(i8* %41)
  ret void
}

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind willreturn }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !15, !23, !31, !39}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0.0", [1024 x i256]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=4"}
!10 = !{!11, !12, !13, !14}
!11 = !{!"0.0.0", [256 x i256]* null}
!12 = !{!"0.0.1", [256 x i256]* null}
!13 = !{!"0.0.2", [256 x i256]* null}
!14 = !{!"0.0.3", [256 x i256]* null}
!15 = !{!16, !8, !18}
!16 = !{!17}
!17 = !{!"1.0", [1024 x i256]* null}
!18 = !{!19, !20, !21, !22}
!19 = !{!"1.0.0", [256 x i256]* null}
!20 = !{!"1.0.1", [256 x i256]* null}
!21 = !{!"1.0.2", [256 x i256]* null}
!22 = !{!"1.0.3", [256 x i256]* null}
!23 = !{!24, !8, !26}
!24 = !{!25}
!25 = !{!"2.0", [1024 x i256]* null}
!26 = !{!27, !28, !29, !30}
!27 = !{!"2.0.0", [256 x i256]* null}
!28 = !{!"2.0.1", [256 x i256]* null}
!29 = !{!"2.0.2", [256 x i256]* null}
!30 = !{!"2.0.3", [256 x i256]* null}
!31 = !{!32, !8, !34}
!32 = !{!33}
!33 = !{!"3.0", [1024 x i256]* null}
!34 = !{!35, !36, !37, !38}
!35 = !{!"3.0.0", [256 x i256]* null}
!36 = !{!"3.0.1", [256 x i256]* null}
!37 = !{!"3.0.2", [256 x i256]* null}
!38 = !{!"3.0.3", [256 x i256]* null}
!39 = !{!40, !8, !42}
!40 = !{!41}
!41 = !{!"4.0", [1024 x i256]* null}
!42 = !{!43, !44, !45, !46}
!43 = !{!"4.0.0", [256 x i256]* null}
!44 = !{!"4.0.1", [256 x i256]* null}
!45 = !{!"4.0.2", [256 x i256]* null}
!46 = !{!"4.0.3", [256 x i256]* null}
!47 = !DILocation(line: 715, column: 9, scope: !48)
!48 = distinct !DISubprogram(name: "msm_streaming", linkageName: "_Z13msm_streamingP7ap_uintILi256EES1_S1_S1_S1_S1_S1_S1_S1_i", scope: !49, file: !49, line: 697, type: !50, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: false, unit: !114, variables: !4)
!49 = !DIFile(filename: "../src/msm.cpp", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52, !52, !52, !52, !52, !52, !52, !52, !77}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "element_t", file: !54, line: 37, baseType: !55)
!54 = !DIFile(filename: "../src/msm.hpp", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<256>", file: !56, line: 183, size: 256, flags: DIFlagTypePassByValue, elements: !57, templateParams: !113, identifier: "_ZTS7ap_uintILi256EE")
!56 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/ap_int.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!57 = !{!58, !93, !98, !102, !107}
!58 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !55, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<256, false>", file: !60, line: 124, size: 256, flags: DIFlagTypePassByValue, elements: !61, templateParams: !91, identifier: "_ZTS11ap_int_baseILi256ELb0EE")
!60 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/etc/ap_int_base.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!61 = !{!62, !80, !82, !84}
!62 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !59, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<256, false>", file: !64, line: 519, size: 256, flags: DIFlagTypePassByValue, elements: !65, templateParams: !75, identifier: "_ZTS8ssdm_intILi256ELb0EE")
!64 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/etc/ap_common.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!65 = !{!66, !68, !72}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !63, file: !64, line: 521, baseType: !67, size: 256, align: 256)
!67 = !DIBasicType(name: "uint256", size: 256, encoding: DW_ATE_unsigned)
!68 = !DISubprogram(name: "ssdm_int", scope: !63, file: !64, line: 522, type: !69, isLocal: false, isDefinition: false, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!72 = !DISubprogram(name: "ssdm_int", scope: !63, file: !64, line: 523, type: !73, isLocal: false, isDefinition: false, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !71, !67}
!75 = !{!76, !78}
!76 = !DITemplateValueParameter(name: "_AP_N", type: !77, value: i32 256)
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DITemplateValueParameter(name: "_AP_S", type: !79, value: i8 0)
!79 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !59, file: !60, line: 148, baseType: !81, flags: DIFlagStaticMember, extraData: i32 256)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !59, file: !60, line: 149, baseType: !83, flags: DIFlagStaticMember, extraData: i1 false)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!84 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi256ELb0EEaSERKS0_", scope: !59, file: !60, line: 479, type: !85, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !88, !89}
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !59, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!91 = !{!92, !78}
!92 = !DITemplateValueParameter(name: "_AP_W", type: !77, value: i32 256)
!93 = !DISubprogram(name: "ap_uint", scope: !55, file: !56, line: 298, type: !94, isLocal: false, isDefinition: false, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96, !97}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!97 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!98 = !DISubprogram(name: "ap_uint", scope: !55, file: !56, line: 299, type: !99, isLocal: false, isDefinition: false, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !96, !101}
!101 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!102 = !DISubprogram(name: "ap_uint", scope: !55, file: !56, line: 300, type: !103, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !96, !105}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !64, line: 613, baseType: !106)
!106 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!107 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi256EEaSERKS0_", scope: !55, file: !56, line: 311, type: !108, isLocal: false, isDefinition: false, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !96, !111}
!110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !55, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!113 = !{!92}
!114 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !115, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !134, globals: !215, imports: !271)
!115 = !DIFile(filename: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs/msm_2/solution1/.autopilot/db/msm.pp.0.cpp", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!116 = !{!117, !127}
!117 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ap_q_mode", file: !118, line: 54, size: 32, elements: !119, identifier: "_ZTS9ap_q_mode")
!118 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/etc/ap_decl.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DIEnumerator(name: "AP_RND", value: 0)
!121 = !DIEnumerator(name: "AP_RND_ZERO", value: 1)
!122 = !DIEnumerator(name: "AP_RND_MIN_INF", value: 2)
!123 = !DIEnumerator(name: "AP_RND_INF", value: 3)
!124 = !DIEnumerator(name: "AP_RND_CONV", value: 4)
!125 = !DIEnumerator(name: "AP_TRN", value: 5)
!126 = !DIEnumerator(name: "AP_TRN_ZERO", value: 6)
!127 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ap_o_mode", file: !118, line: 76, size: 32, elements: !128, identifier: "_ZTS9ap_o_mode")
!128 = !{!129, !130, !131, !132, !133}
!129 = !DIEnumerator(name: "AP_SAT", value: 0)
!130 = !DIEnumerator(name: "AP_SAT_ZERO", value: 1)
!131 = !DIEnumerator(name: "AP_SAT_SYM", value: 2)
!132 = !DIEnumerator(name: "AP_WRAP", value: 3)
!133 = !DIEnumerator(name: "AP_WRAP_SM", value: 4)
!134 = !{!53, !77, !135, !136, !117, !127, !139, !154, !181, !208}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>", file: !140, line: 110, size: 256, flags: DIFlagTypePassByValue, elements: !141, templateParams: !149, identifier: "_ZTS13ap_fixed_baseILi256ELi256ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!140 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/etc/ap_fixed_base.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!141 = !{!142, !143, !144, !145, !147}
!142 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !139, baseType: !63)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !139, file: !140, line: 115, baseType: !81, flags: DIFlagStaticMember, extraData: i32 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "iwidth", scope: !139, file: !140, line: 116, baseType: !81, flags: DIFlagStaticMember, extraData: i32 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "qmode", scope: !139, file: !140, line: 117, baseType: !146, flags: DIFlagStaticMember, extraData: i32 5)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !139, file: !140, line: 118, baseType: !148, flags: DIFlagStaticMember, extraData: i32 3)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!149 = !{!92, !150, !78, !151, !152, !153}
!150 = !DITemplateValueParameter(name: "_AP_I", type: !77, value: i32 256)
!151 = !DITemplateValueParameter(name: "_AP_Q", type: !117, value: i32 5)
!152 = !DITemplateValueParameter(name: "_AP_O", type: !127, value: i32 3)
!153 = !DITemplateValueParameter(name: "_AP_N", type: !77, value: i32 0)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !60, line: 124, size: 32, flags: DIFlagTypePassByValue, elements: !155, templateParams: !179, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!155 = !{!156, !170, !171, !172}
!156 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !154, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !64, line: 511, size: 32, flags: DIFlagTypePassByValue, elements: !158, templateParams: !167, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!158 = !{!159, !160, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !157, file: !64, line: 513, baseType: !77, size: 32)
!160 = !DISubprogram(name: "ssdm_int", scope: !157, file: !64, line: 514, type: !161, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!164 = !DISubprogram(name: "ssdm_int", scope: !157, file: !64, line: 515, type: !165, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !163, !77}
!167 = !{!168, !169}
!168 = !DITemplateValueParameter(name: "_AP_N", type: !77, value: i32 32)
!169 = !DITemplateValueParameter(name: "_AP_S", type: !79, value: i8 1)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !154, file: !60, line: 148, baseType: !81, flags: DIFlagStaticMember, extraData: i32 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !154, file: !60, line: 149, baseType: !83, flags: DIFlagStaticMember, extraData: i1 true)
!172 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !154, file: !60, line: 479, type: !173, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!179 = !{!180, !169}
!180 = !DITemplateValueParameter(name: "_AP_W", type: !77, value: i32 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<257, true>", file: !60, line: 124, size: 512, flags: DIFlagTypePassByValue, elements: !182, templateParams: !206, identifier: "_ZTS11ap_int_baseILi257ELb1EE")
!182 = !{!183, !197, !198, !199}
!183 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !181, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<257, true>", file: !64, line: 511, size: 512, flags: DIFlagTypePassByValue, elements: !185, templateParams: !195, identifier: "_ZTS8ssdm_intILi257ELb1EE")
!185 = !{!186, !188, !192}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !184, file: !64, line: 513, baseType: !187, size: 257, align: 512)
!187 = !DIBasicType(name: "int257", size: 257, encoding: DW_ATE_signed)
!188 = !DISubprogram(name: "ssdm_int", scope: !184, file: !64, line: 514, type: !189, isLocal: false, isDefinition: false, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!192 = !DISubprogram(name: "ssdm_int", scope: !184, file: !64, line: 515, type: !193, isLocal: false, isDefinition: false, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !191, !187}
!195 = !{!196, !169}
!196 = !DITemplateValueParameter(name: "_AP_N", type: !77, value: i32 257)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !181, file: !60, line: 148, baseType: !81, flags: DIFlagStaticMember, extraData: i32 257)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !181, file: !60, line: 149, baseType: !83, flags: DIFlagStaticMember, extraData: i1 true)
!199 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi257ELb1EEaSERKS0_", scope: !181, file: !60, line: 479, type: !200, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !181, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!206 = !{!207, !169}
!207 = !DITemplateValueParameter(name: "_AP_W", type: !77, value: i32 257)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !181, file: !60, line: 146, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !210, file: !60, line: 62, baseType: !213)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<33, true>", file: !60, line: 61, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !211, identifier: "_ZTS6retvalILi33ELb1EE")
!211 = !{!212, !169}
!212 = !DITemplateValueParameter(name: "_AP_N", type: !77, value: i32 33)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !118, line: 187, baseType: !214)
!214 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!215 = !{!216, !230, !232, !234, !236, !238, !240, !243, !245, !247, !249, !251}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "base_field", linkageName: "_ZL10base_field", scope: !114, file: !54, line: 40, type: !218, isLocal: true, isDefinition: true)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", file: !220, line: 192, size: 256, flags: DIFlagTypePassByValue, elements: !221, templateParams: !229, identifier: "_ZTS9ap_ufixedILi256ELi256EL9ap_q_mode5EL9ap_o_mode3ELi0EE")
!220 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/ap_fixed.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !219, baseType: !139)
!223 = !DISubprogram(name: "operator=", linkageName: "_ZN9ap_ufixedILi256ELi256EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", scope: !219, file: !220, line: 322, type: !224, isLocal: false, isDefinition: false, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !227, !228}
!226 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !219, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!228 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !218, size: 64)
!229 = !{!92, !150, !151, !152, !153}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!231 = distinct !DIGlobalVariable(name: "SCALAR_ITERATION_BIT", scope: !114, file: !54, line: 27, type: !81, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression(DW_OP_constu, 26, DW_OP_stack_value))
!233 = distinct !DIGlobalVariable(name: "NUM_WINDOWS", scope: !114, file: !54, line: 42, type: !81, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression(DW_OP_constu, 1023, DW_OP_stack_value))
!235 = distinct !DIGlobalVariable(name: "MASK", scope: !114, file: !54, line: 45, type: !81, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression(DW_OP_constu, 10, DW_OP_stack_value))
!237 = distinct !DIGlobalVariable(name: "LOG_BUCKET_SIZE", scope: !114, file: !54, line: 43, type: !81, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression(DW_OP_constu, 1024, DW_OP_stack_value))
!239 = distinct !DIGlobalVariable(name: "BUCKET_SIZE", scope: !114, file: !54, line: 44, type: !81, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "x_point_stream", linkageName: "x_point_stream", scope: !48, file: !49, line: 729, type: !242, isLocal: true, isDefinition: true)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "y_point_stream", linkageName: "y_point_stream", scope: !48, file: !49, line: 730, type: !242, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "z_point_stream", linkageName: "z_point_stream", scope: !48, file: !49, line: 731, type: !242, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "t_point_stream", linkageName: "t_point_stream", scope: !48, file: !49, line: 732, type: !242, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "scalar_point_stream", linkageName: "scalar_point_stream", scope: !48, file: !49, line: 733, type: !242, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "point_result_stream", scope: !48, file: !49, line: 735, type: !253, isLocal: true, isDefinition: true)
!253 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "stream<EdwardsPoint, 0>", scope: !255, file: !254, line: 53, size: 1024, flags: DIFlagTypePassByReference, elements: !256, templateParams: !268, identifier: "_ZTSN3hls6streamI12EdwardsPointLi0EEE")
!254 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/common/technology/autopilot/hls_stream_39.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!255 = !DINamespace(name: "hls", scope: null)
!256 = !{!257, !264}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !253, file: !254, line: 155, baseType: !258, size: 1024, flags: DIFlagPublic)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "EdwardsPoint", file: !54, line: 56, size: 1024, flags: DIFlagTypePassByValue, elements: !259, identifier: "_ZTS12EdwardsPoint")
!259 = !{!260, !261, !262, !263}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !258, file: !54, line: 58, baseType: !53, size: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !258, file: !54, line: 59, baseType: !53, size: 256, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !258, file: !54, line: 60, baseType: !53, size: 256, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !258, file: !54, line: 61, baseType: !53, size: 256, offset: 768)
!264 = !DISubprogram(name: "set_name", linkageName: "_ZN3hls6streamI12EdwardsPointLi0EE8set_nameEPKc", scope: !253, file: !254, line: 152, type: !265, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !267, !136}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!268 = !{!269, !270}
!269 = !DITemplateTypeParameter(name: "__STREAM_T__", type: !258)
!270 = !DITemplateValueParameter(name: "DEPTH", type: !77, value: i32 0)
!271 = !{!272, !279, !283, !290, !294, !299, !301, !305, !309, !313, !326, !330, !334, !338, !342, !347, !351, !355, !359, !363, !371, !375, !379, !381, !385, !389, !394, !400, !404, !408, !410, !418, !422, !429, !431, !435, !439, !443, !447, !452, !456, !461, !462, !463, !464, !466, !467, !468, !469, !470, !471, !472, !474, !475, !476, !477, !478, !479, !480, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !612, !616, !620, !637, !640, !645, !654, !659, !663, !667, !671, !675, !677, !679, !683, !689, !693, !699, !705, !707, !711, !715, !719, !723, !730, !732, !736, !740, !744, !746, !750, !754, !758, !760, !762, !766, !774, !778, !782, !786, !788, !794, !796, !802, !806, !810, !814, !818, !822, !826, !828, !830, !834, !838, !842, !844, !848, !852, !854, !856, !860, !864, !868, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !889, !893, !896, !899, !902, !904, !906, !908, !912, !915, !918, !921, !924, !926, !931, !935, !938, !941, !943, !945, !947, !949, !952, !955, !958, !961, !964, !966, !968, !970, !974, !978, !983, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1017, !1023, !1028, !1032, !1034, !1036, !1038, !1040, !1047, !1051, !1055, !1059, !1063, !1067, !1072, !1076, !1078, !1082, !1088, !1092, !1097, !1099, !1101, !1105, !1109, !1111, !1113, !1115, !1117, !1121, !1123, !1125, !1129, !1133, !1137, !1141, !1145, !1149, !1151, !1155, !1159, !1163, !1167, !1169, !1171, !1175, !1179, !1180, !1181, !1182, !1183, !1184}
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !274, file: !278, line: 52)
!273 = !DINamespace(name: "std", scope: null)
!274 = !DISubprogram(name: "abs", scope: !275, file: !275, line: 980, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!276 = !DISubroutineType(types: !277)
!277 = !{!77, !77}
!278 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !280, file: !282, line: 127)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !275, line: 63, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 59, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!282 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstdlib", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !284, file: !282, line: 128)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !275, line: 71, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !286, identifier: "_ZTS6ldiv_t")
!286 = !{!287, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !285, file: !275, line: 69, baseType: !288, size: 64)
!288 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !285, file: !275, line: 70, baseType: !288, size: 64, offset: 64)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !291, file: !282, line: 130)
!291 = !DISubprogram(name: "abort", scope: !275, file: !275, line: 730, type: !292, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!292 = !DISubroutineType(types: !293)
!293 = !{null}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !295, file: !282, line: 134)
!295 = !DISubprogram(name: "atexit", scope: !275, file: !275, line: 734, type: !296, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DISubroutineType(types: !297)
!297 = !{!77, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !300, file: !282, line: 137)
!300 = !DISubprogram(name: "at_quick_exit", scope: !275, file: !275, line: 739, type: !296, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !302, file: !282, line: 140)
!302 = !DISubprogram(name: "atof", scope: !275, file: !275, line: 102, type: !303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!97, !136}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !306, file: !282, line: 141)
!306 = !DISubprogram(name: "atoi", scope: !275, file: !275, line: 105, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{!77, !136}
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !310, file: !282, line: 142)
!310 = !DISubprogram(name: "atol", scope: !275, file: !275, line: 108, type: !311, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{!288, !136}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !314, file: !282, line: 143)
!314 = !DISubprogram(name: "bsearch", scope: !275, file: !275, line: 960, type: !315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{!135, !317, !317, !319, !319, !322}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !320, line: 62, baseType: !321)
!320 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!321 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !275, line: 948, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!77, !317, !317}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !327, file: !282, line: 144)
!327 = !DISubprogram(name: "calloc", scope: !275, file: !275, line: 675, type: !328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!135, !319, !319}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !331, file: !282, line: 145)
!331 = !DISubprogram(name: "div", scope: !275, file: !275, line: 992, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!280, !77, !77}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !335, file: !282, line: 146)
!335 = !DISubprogram(name: "exit", scope: !275, file: !275, line: 756, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !77}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !339, file: !282, line: 147)
!339 = !DISubprogram(name: "free", scope: !275, file: !275, line: 687, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !135}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !343, file: !282, line: 148)
!343 = !DISubprogram(name: "getenv", scope: !275, file: !275, line: 773, type: !344, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !136}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !348, file: !282, line: 149)
!348 = !DISubprogram(name: "labs", scope: !275, file: !275, line: 981, type: !349, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!349 = !DISubroutineType(types: !350)
!350 = !{!288, !288}
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !352, file: !282, line: 150)
!352 = !DISubprogram(name: "ldiv", scope: !275, file: !275, line: 994, type: !353, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DISubroutineType(types: !354)
!354 = !{!284, !288, !288}
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !356, file: !282, line: 151)
!356 = !DISubprogram(name: "malloc", scope: !275, file: !275, line: 672, type: !357, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{!135, !319}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !360, file: !282, line: 153)
!360 = !DISubprogram(name: "mblen", scope: !275, file: !275, line: 1062, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DISubroutineType(types: !362)
!362 = !{!77, !136, !319}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !364, file: !282, line: 154)
!364 = !DISubprogram(name: "mbstowcs", scope: !275, file: !275, line: 1073, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!319, !367, !370, !319}
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !372, file: !282, line: 155)
!372 = !DISubprogram(name: "mbtowc", scope: !275, file: !275, line: 1065, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!77, !367, !370, !319}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !376, file: !282, line: 157)
!376 = !DISubprogram(name: "qsort", scope: !275, file: !275, line: 970, type: !377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !135, !319, !319, !322}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !380, file: !282, line: 160)
!380 = !DISubprogram(name: "quick_exit", scope: !275, file: !275, line: 762, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !382, file: !282, line: 163)
!382 = !DISubprogram(name: "rand", scope: !275, file: !275, line: 573, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!77}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !386, file: !282, line: 164)
!386 = !DISubprogram(name: "realloc", scope: !275, file: !275, line: 683, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{!135, !135, !319}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !390, file: !282, line: 165)
!390 = !DISubprogram(name: "srand", scope: !275, file: !275, line: 575, type: !391, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !395, file: !282, line: 166)
!395 = !DISubprogram(name: "strtod", scope: !275, file: !275, line: 118, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{!97, !370, !398}
!398 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !401, file: !282, line: 167)
!401 = !DISubprogram(name: "strtol", linkageName: "__isoc23_strtol", scope: !275, file: !275, line: 215, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!288, !370, !398, !77}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !405, file: !282, line: 168)
!405 = !DISubprogram(name: "strtoul", linkageName: "__isoc23_strtoul", scope: !275, file: !275, line: 219, type: !406, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DISubroutineType(types: !407)
!407 = !{!321, !370, !398, !77}
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !409, file: !282, line: 169)
!409 = !DISubprogram(name: "system", scope: !275, file: !275, line: 923, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !411, file: !282, line: 171)
!411 = !DISubprogram(name: "wcstombs", scope: !275, file: !275, line: 1077, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!319, !414, !415, !319}
!414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !346)
!415 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !419, file: !282, line: 172)
!419 = !DISubprogram(name: "wctomb", scope: !275, file: !275, line: 1069, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!77, !346, !369}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !424, file: !282, line: 200)
!423 = !DINamespace(name: "__gnu_cxx", scope: null)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !275, line: 81, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !426, identifier: "_ZTS7lldiv_t")
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !425, file: !275, line: 79, baseType: !214, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !425, file: !275, line: 80, baseType: !214, size: 64, offset: 64)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !430, file: !282, line: 206)
!430 = !DISubprogram(name: "_Exit", scope: !275, file: !275, line: 768, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !432, file: !282, line: 210)
!432 = !DISubprogram(name: "llabs", scope: !275, file: !275, line: 984, type: !433, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!433 = !DISubroutineType(types: !434)
!434 = !{!214, !214}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !436, file: !282, line: 216)
!436 = !DISubprogram(name: "lldiv", scope: !275, file: !275, line: 998, type: !437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!437 = !DISubroutineType(types: !438)
!438 = !{!424, !214, !214}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !440, file: !282, line: 227)
!440 = !DISubprogram(name: "atoll", scope: !275, file: !275, line: 113, type: !441, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DISubroutineType(types: !442)
!442 = !{!214, !136}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !444, file: !282, line: 228)
!444 = !DISubprogram(name: "strtoll", linkageName: "__isoc23_strtoll", scope: !275, file: !275, line: 238, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{!214, !370, !398, !77}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !448, file: !282, line: 229)
!448 = !DISubprogram(name: "strtoull", linkageName: "__isoc23_strtoull", scope: !275, file: !275, line: 243, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !370, !398, !77}
!451 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !453, file: !282, line: 231)
!453 = !DISubprogram(name: "strtof", scope: !275, file: !275, line: 124, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!454 = !DISubroutineType(types: !455)
!455 = !{!101, !370, !398}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !457, file: !282, line: 232)
!457 = !DISubprogram(name: "strtold", scope: !275, file: !275, line: 127, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !370, !398}
!460 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !424, file: !282, line: 240)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !430, file: !282, line: 242)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !432, file: !282, line: 244)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !465, file: !282, line: 245)
!465 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !423, file: !282, line: 213, type: !437, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !436, file: !282, line: 246)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !440, file: !282, line: 248)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !453, file: !282, line: 249)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !444, file: !282, line: 250)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !448, file: !282, line: 251)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !457, file: !282, line: 252)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !291, file: !473, line: 38)
!473 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/stdlib.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !295, file: !473, line: 39)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !335, file: !473, line: 40)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !300, file: !473, line: 43)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !380, file: !473, line: 46)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !280, file: !473, line: 51)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !284, file: !473, line: 52)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !481, file: !473, line: 54)
!481 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !273, file: !278, line: 102, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !484}
!484 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !302, file: !473, line: 55)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !306, file: !473, line: 56)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !310, file: !473, line: 57)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !314, file: !473, line: 58)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !327, file: !473, line: 59)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !465, file: !473, line: 60)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !339, file: !473, line: 61)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !343, file: !473, line: 62)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !348, file: !473, line: 63)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !352, file: !473, line: 64)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !356, file: !473, line: 65)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !360, file: !473, line: 67)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !364, file: !473, line: 68)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !372, file: !473, line: 69)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !376, file: !473, line: 71)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !382, file: !473, line: 72)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !386, file: !473, line: 73)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !390, file: !473, line: 74)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !395, file: !473, line: 75)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !401, file: !473, line: 76)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !405, file: !473, line: 77)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !409, file: !473, line: 78)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !411, file: !473, line: 80)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !114, entity: !419, file: !473, line: 81)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !510, file: !511, line: 57)
!510 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !512, file: !511, line: 79, size: 64, flags: DIFlagTypePassByReference, elements: !513, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!511 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/exception_ptr.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!512 = !DINamespace(name: "__exception_ptr", scope: !273)
!513 = !{!514, !515, !519, !522, !523, !528, !529, !533, !539, !543, !547, !550, !551, !554, !557}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !510, file: !511, line: 81, baseType: !135, size: 64)
!515 = !DISubprogram(name: "exception_ptr", scope: !510, file: !511, line: 83, type: !516, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !518, !135}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !510, file: !511, line: 85, type: !520, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !518}
!522 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !510, file: !511, line: 86, type: !520, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !510, file: !511, line: 88, type: !524, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!135, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!528 = !DISubprogram(name: "exception_ptr", scope: !510, file: !511, line: 96, type: !520, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!529 = !DISubprogram(name: "exception_ptr", scope: !510, file: !511, line: 98, type: !530, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !518, !532}
!532 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !527, size: 64)
!533 = !DISubprogram(name: "exception_ptr", scope: !510, file: !511, line: 101, type: !534, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !518, !536}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !273, file: !537, line: 242, baseType: !538)
!537 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!538 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!539 = !DISubprogram(name: "exception_ptr", scope: !510, file: !511, line: 105, type: !540, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !518, !542}
!542 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !510, size: 64)
!543 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !510, file: !511, line: 118, type: !544, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !518, !532}
!546 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !510, size: 64)
!547 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !510, file: !511, line: 122, type: !548, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!548 = !DISubroutineType(types: !549)
!549 = !{!546, !518, !542}
!550 = !DISubprogram(name: "~exception_ptr", scope: !510, file: !511, line: 129, type: !520, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!551 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !510, file: !511, line: 132, type: !552, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !518, !546}
!554 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !510, file: !511, line: 144, type: !555, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!555 = !DISubroutineType(types: !556)
!556 = !{!79, !526}
!557 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !510, file: !511, line: 153, type: !558, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !526}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !273, file: !563, line: 88, size: 128, flags: DIFlagTypePassByReference, elements: !564, vtableHolder: !562, identifier: "_ZTSSt9type_info")
!563 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/typeinfo", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!564 = !{!565, !568, !569, !573, !577, !581, !582, !583, !587, !590, !591, !595, !602, !605, !609}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$type_info", scope: !563, file: !563, baseType: !566, size: 64, flags: DIFlagArtificial)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !383, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__name", scope: !562, file: !563, line: 171, baseType: !136, size: 64, offset: 64, flags: DIFlagProtected)
!569 = !DISubprogram(name: "~type_info", scope: !562, file: !563, line: 95, type: !570, isLocal: false, isDefinition: false, scopeLine: 95, containingType: !562, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!573 = !DISubprogram(name: "name", linkageName: "_ZNKSt9type_info4nameEv", scope: !562, file: !563, line: 99, type: !574, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!574 = !DISubroutineType(types: !575)
!575 = !{!136, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!577 = !DISubprogram(name: "before", linkageName: "_ZNKSt9type_info6beforeERKS_", scope: !562, file: !563, line: 115, type: !578, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!578 = !DISubroutineType(types: !579)
!579 = !{!79, !576, !580}
!580 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !561, size: 64)
!581 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt9type_infoeqERKS_", scope: !562, file: !563, line: 120, type: !578, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!582 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt9type_infoneERKS_", scope: !562, file: !563, line: 136, type: !578, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!583 = !DISubprogram(name: "hash_code", linkageName: "_ZNKSt9type_info9hash_codeEv", scope: !562, file: !563, line: 140, type: !584, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!586, !576}
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !273, file: !537, line: 238, baseType: !321)
!587 = !DISubprogram(name: "__is_pointer_p", linkageName: "_ZNKSt9type_info14__is_pointer_pEv", scope: !562, file: !563, line: 152, type: !588, isLocal: false, isDefinition: false, scopeLine: 152, containingType: !562, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!79, !576}
!590 = !DISubprogram(name: "__is_function_p", linkageName: "_ZNKSt9type_info15__is_function_pEv", scope: !562, file: !563, line: 155, type: !588, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !562, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!591 = !DISubprogram(name: "__do_catch", linkageName: "_ZNKSt9type_info10__do_catchEPKS_PPvj", scope: !562, file: !563, line: 163, type: !592, isLocal: false, isDefinition: false, scopeLine: 163, containingType: !562, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!592 = !DISubroutineType(types: !593)
!593 = !{!79, !576, !560, !594, !393}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!595 = !DISubprogram(name: "__do_upcast", linkageName: "_ZNKSt9type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv", scope: !562, file: !563, line: 167, type: !596, isLocal: false, isDefinition: false, scopeLine: 167, containingType: !562, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!596 = !DISubroutineType(types: !597)
!597 = !{!79, !576, !598, !594}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__class_type_info", scope: !601, file: !563, line: 45, flags: DIFlagFwdDecl, identifier: "_ZTSN10__cxxabiv117__class_type_infoE")
!601 = !DINamespace(name: "__cxxabiv1", scope: null)
!602 = !DISubprogram(name: "type_info", scope: !562, file: !563, line: 173, type: !603, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !572, !136}
!605 = !DISubprogram(name: "operator=", linkageName: "_ZNSt9type_infoaSERKS_", scope: !562, file: !563, line: 177, type: !606, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !572, !580}
!608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !562, size: 64)
!609 = !DISubprogram(name: "type_info", scope: !562, file: !563, line: 178, type: !610, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !572, !580}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !512, entity: !613, file: !511, line: 73)
!613 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !273, file: !511, line: 69, type: !614, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !510}
!616 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !617, entity: !618, file: !619, line: 58)
!617 = !DINamespace(name: "__gnu_debug", scope: null)
!618 = !DINamespace(name: "__debug", scope: !273)
!619 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/debug/debug.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !621, file: !636, line: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !622, line: 6, baseType: !623)
!622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !624, line: 21, baseType: !625)
!624 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !626, identifier: "_ZTS11__mbstate_t")
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !625, file: !624, line: 15, baseType: !77, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !625, file: !624, line: 20, baseType: !629, size: 32, offset: 32)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !624, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !630, identifier: "_ZTSN11__mbstate_tUt_E")
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !629, file: !624, line: 18, baseType: !393, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !629, file: !624, line: 19, baseType: !633, size: 32)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 32, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 4)
!636 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cwchar", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !638, file: !636, line: 139)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !639, line: 20, baseType: !393)
!639 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !641, file: !636, line: 141)
!641 = !DISubprogram(name: "btowc", scope: !642, file: !642, line: 309, type: !643, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!642 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!643 = !DISubroutineType(types: !644)
!644 = !{!638, !77}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !646, file: !636, line: 142)
!646 = !DISubprogram(name: "fgetwc", scope: !642, file: !642, line: 935, type: !647, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!647 = !DISubroutineType(types: !648)
!648 = !{!638, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !651, line: 5, baseType: !652)
!651 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !653, line: 49, size: 1728, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!653 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !655, file: !636, line: 143)
!655 = !DISubprogram(name: "fgetws", scope: !642, file: !642, line: 964, type: !656, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!656 = !DISubroutineType(types: !657)
!657 = !{!368, !367, !77, !658}
!658 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !649)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !660, file: !636, line: 144)
!660 = !DISubprogram(name: "fputwc", scope: !642, file: !642, line: 949, type: !661, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubroutineType(types: !662)
!662 = !{!638, !369, !649}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !664, file: !636, line: 145)
!664 = !DISubprogram(name: "fputws", scope: !642, file: !642, line: 971, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!77, !415, !658}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !668, file: !636, line: 146)
!668 = !DISubprogram(name: "fwide", scope: !642, file: !642, line: 725, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!77, !649, !77}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !672, file: !636, line: 147)
!672 = !DISubprogram(name: "fwprintf", scope: !642, file: !642, line: 732, type: !673, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DISubroutineType(types: !674)
!674 = !{!77, !658, !415, null}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !676, file: !636, line: 148)
!676 = !DISubprogram(name: "fwscanf", linkageName: "__isoc23_fwscanf", scope: !642, file: !642, line: 795, type: !673, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !678, file: !636, line: 149)
!678 = !DISubprogram(name: "getwc", scope: !642, file: !642, line: 936, type: !647, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !680, file: !636, line: 150)
!680 = !DISubprogram(name: "getwchar", scope: !642, file: !642, line: 942, type: !681, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{!638}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !684, file: !636, line: 151)
!684 = !DISubprogram(name: "mbrlen", scope: !642, file: !642, line: 332, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DISubroutineType(types: !686)
!686 = !{!319, !370, !319, !687}
!687 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !690, file: !636, line: 152)
!690 = !DISubprogram(name: "mbrtowc", scope: !642, file: !642, line: 321, type: !691, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DISubroutineType(types: !692)
!692 = !{!319, !367, !370, !319, !687}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !694, file: !636, line: 153)
!694 = !DISubprogram(name: "mbsinit", scope: !642, file: !642, line: 317, type: !695, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DISubroutineType(types: !696)
!696 = !{!77, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !700, file: !636, line: 154)
!700 = !DISubprogram(name: "mbsrtowcs", scope: !642, file: !642, line: 362, type: !701, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DISubroutineType(types: !702)
!702 = !{!319, !367, !703, !319, !687}
!703 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !706, file: !636, line: 155)
!706 = !DISubprogram(name: "putwc", scope: !642, file: !642, line: 950, type: !661, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !708, file: !636, line: 156)
!708 = !DISubprogram(name: "putwchar", scope: !642, file: !642, line: 956, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{!638, !369}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !712, file: !636, line: 158)
!712 = !DISubprogram(name: "swprintf", scope: !642, file: !642, line: 742, type: !713, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DISubroutineType(types: !714)
!714 = !{!77, !367, !319, !415, null}
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !716, file: !636, line: 160)
!716 = !DISubprogram(name: "swscanf", linkageName: "__isoc23_swscanf", scope: !642, file: !642, line: 802, type: !717, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!717 = !DISubroutineType(types: !718)
!718 = !{!77, !415, !415, null}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !720, file: !636, line: 161)
!720 = !DISubprogram(name: "ungetwc", scope: !642, file: !642, line: 979, type: !721, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DISubroutineType(types: !722)
!722 = !{!638, !638, !649}
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !724, file: !636, line: 162)
!724 = !DISubprogram(name: "vfwprintf", scope: !642, file: !642, line: 750, type: !725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DISubroutineType(types: !726)
!726 = !{!77, !658, !415, !727}
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !728, line: 48, baseType: !729)
!728 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stdarg.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !115, baseType: !135)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !731, file: !636, line: 164)
!731 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc23_vfwscanf", scope: !642, file: !642, line: 875, type: !725, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !733, file: !636, line: 167)
!733 = !DISubprogram(name: "vswprintf", scope: !642, file: !642, line: 763, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!77, !367, !319, !415, !727}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !737, file: !636, line: 170)
!737 = !DISubprogram(name: "vswscanf", linkageName: "__isoc23_vswscanf", scope: !642, file: !642, line: 882, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!77, !415, !415, !727}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !741, file: !636, line: 172)
!741 = !DISubprogram(name: "vwprintf", scope: !642, file: !642, line: 758, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!77, !415, !727}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !745, file: !636, line: 174)
!745 = !DISubprogram(name: "vwscanf", linkageName: "__isoc23_vwscanf", scope: !642, file: !642, line: 879, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !747, file: !636, line: 176)
!747 = !DISubprogram(name: "wcrtomb", scope: !642, file: !642, line: 326, type: !748, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!748 = !DISubroutineType(types: !749)
!749 = !{!319, !414, !369, !687}
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !751, file: !636, line: 177)
!751 = !DISubprogram(name: "wcscat", scope: !642, file: !642, line: 121, type: !752, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!752 = !DISubroutineType(types: !753)
!753 = !{!368, !367, !415}
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !755, file: !636, line: 178)
!755 = !DISubprogram(name: "wcscmp", scope: !642, file: !642, line: 130, type: !756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!756 = !DISubroutineType(types: !757)
!757 = !{!77, !416, !416}
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !759, file: !636, line: 179)
!759 = !DISubprogram(name: "wcscoll", scope: !642, file: !642, line: 155, type: !756, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !761, file: !636, line: 180)
!761 = !DISubprogram(name: "wcscpy", scope: !642, file: !642, line: 98, type: !752, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !763, file: !636, line: 181)
!763 = !DISubprogram(name: "wcscspn", scope: !642, file: !642, line: 212, type: !764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubroutineType(types: !765)
!765 = !{!319, !416, !416}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !767, file: !636, line: 182)
!767 = !DISubprogram(name: "wcsftime", scope: !642, file: !642, line: 1043, type: !768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubroutineType(types: !769)
!769 = !{!319, !367, !319, !415, !770}
!770 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !642, line: 94, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !775, file: !636, line: 183)
!775 = !DISubprogram(name: "wcslen", scope: !642, file: !642, line: 247, type: !776, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!776 = !DISubroutineType(types: !777)
!777 = !{!319, !416}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !779, file: !636, line: 184)
!779 = !DISubprogram(name: "wcsncat", scope: !642, file: !642, line: 125, type: !780, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DISubroutineType(types: !781)
!781 = !{!368, !367, !415, !319}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !783, file: !636, line: 185)
!783 = !DISubprogram(name: "wcsncmp", scope: !642, file: !642, line: 133, type: !784, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DISubroutineType(types: !785)
!785 = !{!77, !416, !416, !319}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !787, file: !636, line: 186)
!787 = !DISubprogram(name: "wcsncpy", scope: !642, file: !642, line: 103, type: !780, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !789, file: !636, line: 187)
!789 = !DISubprogram(name: "wcsrtombs", scope: !642, file: !642, line: 368, type: !790, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DISubroutineType(types: !791)
!791 = !{!319, !414, !792, !319, !687}
!792 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !795, file: !636, line: 188)
!795 = !DISubprogram(name: "wcsspn", scope: !642, file: !642, line: 216, type: !764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !797, file: !636, line: 189)
!797 = !DISubprogram(name: "wcstod", scope: !642, file: !642, line: 402, type: !798, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!798 = !DISubroutineType(types: !799)
!799 = !{!97, !415, !800}
!800 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !803, file: !636, line: 191)
!803 = !DISubprogram(name: "wcstof", scope: !642, file: !642, line: 407, type: !804, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DISubroutineType(types: !805)
!805 = !{!101, !415, !800}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !807, file: !636, line: 193)
!807 = !DISubprogram(name: "wcstok", scope: !642, file: !642, line: 242, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!368, !367, !415, !800}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !811, file: !636, line: 194)
!811 = !DISubprogram(name: "wcstol", linkageName: "__isoc23_wcstol", scope: !642, file: !642, line: 500, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!288, !415, !800, !77}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !815, file: !636, line: 195)
!815 = !DISubprogram(name: "wcstoul", linkageName: "__isoc23_wcstoul", scope: !642, file: !642, line: 503, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{!321, !415, !800, !77}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !819, file: !636, line: 196)
!819 = !DISubprogram(name: "wcsxfrm", scope: !642, file: !642, line: 159, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!319, !367, !415, !319}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !823, file: !636, line: 197)
!823 = !DISubprogram(name: "wctob", scope: !642, file: !642, line: 313, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!77, !638}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !827, file: !636, line: 198)
!827 = !DISubprogram(name: "wmemcmp", scope: !642, file: !642, line: 283, type: !784, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !829, file: !636, line: 199)
!829 = !DISubprogram(name: "wmemcpy", scope: !642, file: !642, line: 287, type: !780, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !831, file: !636, line: 200)
!831 = !DISubprogram(name: "wmemmove", scope: !642, file: !642, line: 292, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!368, !368, !416, !319}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !835, file: !636, line: 201)
!835 = !DISubprogram(name: "wmemset", scope: !642, file: !642, line: 296, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubroutineType(types: !837)
!837 = !{!368, !368, !369, !319}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !839, file: !636, line: 202)
!839 = !DISubprogram(name: "wprintf", scope: !642, file: !642, line: 739, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{!77, !415, null}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !843, file: !636, line: 203)
!843 = !DISubprogram(name: "wscanf", linkageName: "__isoc23_wscanf", scope: !642, file: !642, line: 799, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !845, file: !636, line: 204)
!845 = !DISubprogram(name: "wcschr", scope: !642, file: !642, line: 189, type: !846, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!846 = !DISubroutineType(types: !847)
!847 = !{!368, !416, !369}
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !849, file: !636, line: 205)
!849 = !DISubprogram(name: "wcspbrk", scope: !642, file: !642, line: 226, type: !850, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!850 = !DISubroutineType(types: !851)
!851 = !{!368, !416, !416}
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !853, file: !636, line: 206)
!853 = !DISubprogram(name: "wcsrchr", scope: !642, file: !642, line: 199, type: !846, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !855, file: !636, line: 207)
!855 = !DISubprogram(name: "wcsstr", scope: !642, file: !642, line: 237, type: !850, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !857, file: !636, line: 208)
!857 = !DISubprogram(name: "wmemchr", scope: !642, file: !642, line: 278, type: !858, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DISubroutineType(types: !859)
!859 = !{!368, !416, !369, !319}
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !861, file: !636, line: 248)
!861 = !DISubprogram(name: "wcstold", scope: !642, file: !642, line: 409, type: !862, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DISubroutineType(types: !863)
!863 = !{!460, !415, !800}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !865, file: !636, line: 257)
!865 = !DISubprogram(name: "wcstoll", linkageName: "__isoc23_wcstoll", scope: !642, file: !642, line: 508, type: !866, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!866 = !DISubroutineType(types: !867)
!867 = !{!214, !415, !800, !77}
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !869, file: !636, line: 258)
!869 = !DISubprogram(name: "wcstoull", linkageName: "__isoc23_wcstoull", scope: !642, file: !642, line: 513, type: !870, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!870 = !DISubroutineType(types: !871)
!871 = !{!451, !415, !800, !77}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !861, file: !636, line: 264)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !865, file: !636, line: 265)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !869, file: !636, line: 266)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !803, file: !636, line: 280)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !731, file: !636, line: 283)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !737, file: !636, line: 286)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !745, file: !636, line: 289)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !861, file: !636, line: 293)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !865, file: !636, line: 294)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !869, file: !636, line: 295)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !883, file: !888, line: 48)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !884, line: 24, baseType: !885)
!884 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !886, line: 37, baseType: !887)
!886 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!887 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!888 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstdint", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !890, file: !888, line: 49)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !884, line: 25, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !886, line: 39, baseType: !892)
!892 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !894, file: !888, line: 50)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !884, line: 26, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !886, line: 41, baseType: !77)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !897, file: !888, line: 51)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !884, line: 27, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !886, line: 44, baseType: !288)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !900, file: !888, line: 53)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !901, line: 47, baseType: !887)
!901 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !903, file: !888, line: 54)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !901, line: 49, baseType: !288)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !905, file: !888, line: 55)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !901, line: 50, baseType: !288)
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !907, file: !888, line: 56)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !901, line: 51, baseType: !288)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !909, file: !888, line: 58)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !910, line: 25, baseType: !911)
!910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-least.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !886, line: 52, baseType: !885)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !913, file: !888, line: 59)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !910, line: 26, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !886, line: 54, baseType: !891)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !916, file: !888, line: 60)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !910, line: 27, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !886, line: 56, baseType: !895)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !919, file: !888, line: 61)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !910, line: 28, baseType: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !886, line: 58, baseType: !898)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !922, file: !888, line: 63)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !901, line: 90, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !886, line: 72, baseType: !288)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !925, file: !888, line: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !901, line: 76, baseType: !288)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !927, file: !888, line: 66)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !928, line: 24, baseType: !929)
!928 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !886, line: 38, baseType: !930)
!930 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !932, file: !888, line: 67)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !928, line: 25, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !886, line: 40, baseType: !934)
!934 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !936, file: !888, line: 68)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !928, line: 26, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !886, line: 42, baseType: !393)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !939, file: !888, line: 69)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !928, line: 27, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !886, line: 45, baseType: !321)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !942, file: !888, line: 71)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !901, line: 60, baseType: !930)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !944, file: !888, line: 72)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !901, line: 62, baseType: !321)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !946, file: !888, line: 73)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !901, line: 63, baseType: !321)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !948, file: !888, line: 74)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !901, line: 64, baseType: !321)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !950, file: !888, line: 76)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !910, line: 31, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !886, line: 53, baseType: !929)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !953, file: !888, line: 77)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !910, line: 32, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !886, line: 55, baseType: !933)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !956, file: !888, line: 78)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !910, line: 33, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !886, line: 57, baseType: !937)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !959, file: !888, line: 79)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !910, line: 34, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !886, line: 59, baseType: !940)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !962, file: !888, line: 81)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !901, line: 91, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !886, line: 73, baseType: !321)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !965, file: !888, line: 82)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !901, line: 79, baseType: !321)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !586, file: !967, line: 44)
!967 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/ext/new_allocator.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !969, file: !967, line: 45)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !273, file: !537, line: 239, baseType: !288)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !971, file: !973, line: 53)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !972, line: 51, size: 768, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!972 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!973 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/clocale", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !975, file: !973, line: 54)
!975 = !DISubprogram(name: "setlocale", scope: !972, file: !972, line: 122, type: !976, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!976 = !DISubroutineType(types: !977)
!977 = !{!346, !77, !136}
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !979, file: !973, line: 55)
!979 = !DISubprogram(name: "localeconv", scope: !972, file: !972, line: 125, type: !980, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!980 = !DISubroutineType(types: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !984, file: !986, line: 64)
!984 = !DISubprogram(name: "isalnum", scope: !985, file: !985, line: 108, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!986 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cctype", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !988, file: !986, line: 65)
!988 = !DISubprogram(name: "isalpha", scope: !985, file: !985, line: 109, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !990, file: !986, line: 66)
!990 = !DISubprogram(name: "iscntrl", scope: !985, file: !985, line: 110, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !992, file: !986, line: 67)
!992 = !DISubprogram(name: "isdigit", scope: !985, file: !985, line: 111, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !994, file: !986, line: 68)
!994 = !DISubprogram(name: "isgraph", scope: !985, file: !985, line: 113, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !996, file: !986, line: 69)
!996 = !DISubprogram(name: "islower", scope: !985, file: !985, line: 112, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !998, file: !986, line: 70)
!998 = !DISubprogram(name: "isprint", scope: !985, file: !985, line: 114, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1000, file: !986, line: 71)
!1000 = !DISubprogram(name: "ispunct", scope: !985, file: !985, line: 115, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1002, file: !986, line: 72)
!1002 = !DISubprogram(name: "isspace", scope: !985, file: !985, line: 116, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1004, file: !986, line: 73)
!1004 = !DISubprogram(name: "isupper", scope: !985, file: !985, line: 117, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1006, file: !986, line: 74)
!1006 = !DISubprogram(name: "isxdigit", scope: !985, file: !985, line: 118, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1008, file: !986, line: 75)
!1008 = !DISubprogram(name: "tolower", scope: !985, file: !985, line: 122, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1010, file: !986, line: 76)
!1010 = !DISubprogram(name: "toupper", scope: !985, file: !985, line: 125, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1012, file: !986, line: 87)
!1012 = !DISubprogram(name: "isblank", scope: !985, file: !985, line: 130, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1014, file: !1016, line: 98)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1015, line: 7, baseType: !652)
!1015 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!1016 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstdio", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1018, file: !1016, line: 99)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1019, line: 85, baseType: !1020)
!1019 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1021, line: 14, baseType: !1022)
!1021 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1021, line: 10, size: 128, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1024, file: !1016, line: 101)
!1024 = !DISubprogram(name: "clearerr", scope: !1019, file: !1019, line: 850, type: !1025, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1029, file: !1016, line: 102)
!1029 = !DISubprogram(name: "fclose", scope: !1019, file: !1019, line: 184, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!77, !1027}
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1033, file: !1016, line: 103)
!1033 = !DISubprogram(name: "feof", scope: !1019, file: !1019, line: 852, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1035, file: !1016, line: 104)
!1035 = !DISubprogram(name: "ferror", scope: !1019, file: !1019, line: 854, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1037, file: !1016, line: 105)
!1037 = !DISubprogram(name: "fflush", scope: !1019, file: !1019, line: 236, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1039, file: !1016, line: 106)
!1039 = !DISubprogram(name: "fgetc", scope: !1019, file: !1019, line: 575, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1041, file: !1016, line: 107)
!1041 = !DISubprogram(name: "fgetpos", scope: !1019, file: !1019, line: 819, type: !1042, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!77, !1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1027)
!1045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1048, file: !1016, line: 108)
!1048 = !DISubprogram(name: "fgets", scope: !1019, file: !1019, line: 654, type: !1049, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!346, !414, !77, !1044}
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1052, file: !1016, line: 109)
!1052 = !DISubprogram(name: "fopen", scope: !1019, file: !1019, line: 264, type: !1053, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1027, !370, !370}
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1056, file: !1016, line: 110)
!1056 = !DISubprogram(name: "fprintf", scope: !1019, file: !1019, line: 357, type: !1057, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!77, !1044, !370, null}
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1060, file: !1016, line: 111)
!1060 = !DISubprogram(name: "fputc", scope: !1019, file: !1019, line: 611, type: !1061, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!77, !77, !1027}
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1064, file: !1016, line: 112)
!1064 = !DISubprogram(name: "fputs", scope: !1019, file: !1019, line: 707, type: !1065, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!77, !370, !1044}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1068, file: !1016, line: 113)
!1068 = !DISubprogram(name: "fread", scope: !1019, file: !1019, line: 728, type: !1069, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!319, !1071, !319, !319, !1044}
!1071 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1073, file: !1016, line: 114)
!1073 = !DISubprogram(name: "freopen", scope: !1019, file: !1019, line: 271, type: !1074, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1027, !370, !370, !1044}
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1077, file: !1016, line: 115)
!1077 = !DISubprogram(name: "fscanf", linkageName: "__isoc23_fscanf", scope: !1019, file: !1019, line: 442, type: !1057, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1079, file: !1016, line: 116)
!1079 = !DISubprogram(name: "fseek", scope: !1019, file: !1019, line: 769, type: !1080, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!77, !1027, !288, !77}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1083, file: !1016, line: 117)
!1083 = !DISubprogram(name: "fsetpos", scope: !1019, file: !1019, line: 825, type: !1084, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!77, !1027, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1089, file: !1016, line: 118)
!1089 = !DISubprogram(name: "ftell", scope: !1019, file: !1019, line: 775, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!288, !1027}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1093, file: !1016, line: 119)
!1093 = !DISubprogram(name: "fwrite", scope: !1019, file: !1019, line: 735, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!319, !1096, !319, !319, !1044}
!1096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !317)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1098, file: !1016, line: 120)
!1098 = !DISubprogram(name: "getc", scope: !1019, file: !1019, line: 576, type: !1030, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1100, file: !1016, line: 121)
!1100 = !DISubprogram(name: "getchar", scope: !1019, file: !1019, line: 582, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1102, file: !1016, line: 126)
!1102 = !DISubprogram(name: "perror", scope: !1019, file: !1019, line: 868, type: !1103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !136}
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1106, file: !1016, line: 127)
!1106 = !DISubprogram(name: "printf", scope: !1019, file: !1019, line: 363, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!77, !370, null}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1110, file: !1016, line: 128)
!1110 = !DISubprogram(name: "putc", scope: !1019, file: !1019, line: 612, type: !1061, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1112, file: !1016, line: 129)
!1112 = !DISubprogram(name: "putchar", scope: !1019, file: !1019, line: 618, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1114, file: !1016, line: 130)
!1114 = !DISubprogram(name: "puts", scope: !1019, file: !1019, line: 714, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1116, file: !1016, line: 131)
!1116 = !DISubprogram(name: "remove", scope: !1019, file: !1019, line: 158, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1118, file: !1016, line: 132)
!1118 = !DISubprogram(name: "rename", scope: !1019, file: !1019, line: 160, type: !1119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!77, !136, !136}
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1122, file: !1016, line: 133)
!1122 = !DISubprogram(name: "rewind", scope: !1019, file: !1019, line: 780, type: !1025, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1124, file: !1016, line: 134)
!1124 = !DISubprogram(name: "scanf", linkageName: "__isoc23_scanf", scope: !1019, file: !1019, line: 445, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1126, file: !1016, line: 135)
!1126 = !DISubprogram(name: "setbuf", scope: !1019, file: !1019, line: 334, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !1044, !414}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1130, file: !1016, line: 136)
!1130 = !DISubprogram(name: "setvbuf", scope: !1019, file: !1019, line: 339, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!77, !1044, !414, !77, !319}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1134, file: !1016, line: 137)
!1134 = !DISubprogram(name: "sprintf", scope: !1019, file: !1019, line: 365, type: !1135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!77, !414, !370, null}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1138, file: !1016, line: 138)
!1138 = !DISubprogram(name: "sscanf", linkageName: "__isoc23_sscanf", scope: !1019, file: !1019, line: 447, type: !1139, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!77, !370, !370, null}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1142, file: !1016, line: 139)
!1142 = !DISubprogram(name: "tmpfile", scope: !1019, file: !1019, line: 194, type: !1143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!1027}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1146, file: !1016, line: 141)
!1146 = !DISubprogram(name: "tmpnam", scope: !1019, file: !1019, line: 211, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!346, !346}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1150, file: !1016, line: 143)
!1150 = !DISubprogram(name: "ungetc", scope: !1019, file: !1019, line: 721, type: !1061, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1152, file: !1016, line: 144)
!1152 = !DISubprogram(name: "vfprintf", scope: !1019, file: !1019, line: 372, type: !1153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!77, !1044, !370, !727}
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1156, file: !1016, line: 145)
!1156 = !DISubprogram(name: "vprintf", scope: !1019, file: !1019, line: 378, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!77, !370, !727}
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1160, file: !1016, line: 146)
!1160 = !DISubprogram(name: "vsprintf", scope: !1019, file: !1019, line: 380, type: !1161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!77, !414, !370, !727}
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !1164, file: !1016, line: 175)
!1164 = !DISubprogram(name: "snprintf", scope: !1019, file: !1019, line: 385, type: !1165, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!77, !414, !319, !370, null}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !1168, file: !1016, line: 176)
!1168 = !DISubprogram(name: "vfscanf", linkageName: "__isoc23_vfscanf", scope: !1019, file: !1019, line: 511, type: !1153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !1170, file: !1016, line: 177)
!1170 = !DISubprogram(name: "vscanf", linkageName: "__isoc23_vscanf", scope: !1019, file: !1019, line: 516, type: !1157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !1172, file: !1016, line: 178)
!1172 = !DISubprogram(name: "vsnprintf", scope: !1019, file: !1019, line: 389, type: !1173, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!77, !414, !319, !370, !727}
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !423, entity: !1176, file: !1016, line: 179)
!1176 = !DISubprogram(name: "vsscanf", linkageName: "__isoc23_vsscanf", scope: !1019, file: !1019, line: 519, type: !1177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!77, !370, !370, !727}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1164, file: !1016, line: 185)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1168, file: !1016, line: 186)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1170, file: !1016, line: 187)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1172, file: !1016, line: 188)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1176, file: !1016, line: 189)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !273, entity: !1185, file: !1188, line: 56)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1186, line: 40, baseType: !1187)
!1186 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/__stddef_max_align_t.h", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 35, size: 128, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!1188 = !DIFile(filename: "/tools/Xilinx/Vitis/2024.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstddef", directory: "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs")
!1189 = !DILocation(line: 716, column: 9, scope: !48)
!1190 = !DILocation(line: 717, column: 9, scope: !48)
!1191 = !DILocation(line: 719, column: 9, scope: !48)
!1192 = !DILocation(line: 718, column: 9, scope: !48)
