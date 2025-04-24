; ModuleID = '/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs/msm_2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: noinline
define void @apatb_msm_ir(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %x_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %y_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %z_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "maxi" %t_array, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %scalar_array, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="26" "maxi" %result_x, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="26" "maxi" %result_y, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="26" "maxi" %result_z, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="26" "maxi" %result_t, i32 %degree) local_unnamed_addr #0 {
entry:
  %x_array_copy = alloca i256, align 512
  %y_array_copy = alloca i256, align 512
  %z_array_copy = alloca i256, align 512
  %t_array_copy = alloca i256, align 512
  %scalar_array_copy = alloca i256, align 512
  %0 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %result_x to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %1 = call i8* @malloc(i64 851968)
  %result_x_copy = bitcast i8* %1 to [26 x [1024 x i256]]*
  %2 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %result_y to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %3 = call i8* @malloc(i64 851968)
  %result_y_copy = bitcast i8* %3 to [26 x [1024 x i256]]*
  %4 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %result_z to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %5 = call i8* @malloc(i64 851968)
  %result_z_copy = bitcast i8* %5 to [26 x [1024 x i256]]*
  %6 = bitcast [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %result_t to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %7 = call i8* @malloc(i64 851968)
  %result_t_copy = bitcast i8* %7 to [26 x [1024 x i256]]*
  call fastcc void @copy_in(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %x_array, i256* nonnull align 512 %x_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %y_array, i256* nonnull align 512 %y_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %z_array, i256* nonnull align 512 %z_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %t_array, i256* nonnull align 512 %t_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* nonnull %scalar_array, i256* nonnull align 512 %scalar_array_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [26 x [1024 x i256]]* %result_x_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* nonnull %2, [26 x [1024 x i256]]* %result_y_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* nonnull %4, [26 x [1024 x i256]]* %result_z_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* nonnull %6, [26 x [1024 x i256]]* %result_t_copy)
  call void @apatb_msm_hw(i256* %x_array_copy, i256* %y_array_copy, i256* %z_array_copy, i256* %t_array_copy, i256* %scalar_array_copy, [26 x [1024 x i256]]* %result_x_copy, [26 x [1024 x i256]]* %result_y_copy, [26 x [1024 x i256]]* %result_z_copy, [26 x [1024 x i256]]* %result_t_copy, i32 %degree)
  call void @copy_back(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %x_array, i256* %x_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %y_array, i256* %y_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %z_array, i256* %z_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %t_array, i256* %t_array_copy, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %scalar_array, i256* %scalar_array_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %0, [26 x [1024 x i256]]* %result_x_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %2, [26 x [1024 x i256]]* %result_y_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %4, [26 x [1024 x i256]]* %result_z_copy, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %6, [26 x [1024 x i256]]* %result_t_copy)
  call void @free(i8* %1)
  call void @free(i8* %3)
  call void @free(i8* %5)
  call void @free(i8* %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "unpacked"="2", i256* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "unpacked"="4", i256* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "unpacked"="6", i256* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* readonly "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly "unpacked"="10", [26 x [1024 x i256]]* "unpacked"="11", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly "unpacked"="12", [26 x [1024 x i256]]* "unpacked"="13", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly "unpacked"="14", [26 x [1024 x i256]]* "unpacked"="15", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly "unpacked"="16", [26 x [1024 x i256]]* "unpacked"="17") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(i256* align 512 %1, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(i256* align 512 %3, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(i256* align 512 %5, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(i256* align 512 %7, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(i256* align 512 %9, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([26 x [1024 x i256]]* %11, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %10)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([26 x [1024 x i256]]* %13, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %12)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([26 x [1024 x i256]]* %15, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %14)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([26 x [1024 x i256]]* %17, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %16)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]], [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]], [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 1024)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"], [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"], [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="2", i256* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="4", i256* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="6", i256* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="8", i256* noalias nocapture readonly align 512 "unpacked"="9.0", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="10", [26 x [1024 x i256]]* readonly "unpacked"="11", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="12", [26 x [1024 x i256]]* readonly "unpacked"="13", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="14", [26 x [1024 x i256]]* readonly "unpacked"="15", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="16", [26 x [1024 x i256]]* readonly "unpacked"="17") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.57"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.57"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %2, i256* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.57"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %4, i256* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.57"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %6, i256* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.57"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %8, i256* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %10, [26 x [1024 x i256]]* %11)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %12, [26 x [1024 x i256]]* %13)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %14, [26 x [1024 x i256]]* %15)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %16, [26 x [1024 x i256]]* %17)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.57"(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i256* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"(i256* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #4 {
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

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"([26 x [1024 x i256]]* %dst, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [26 x [1024 x i256]]* %dst, null
  %1 = icmp eq [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.93"([26 x [1024 x i256]]* nonnull %dst, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 26)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.93"([26 x [1024 x i256]]* %dst, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [26 x [1024 x i256]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [26 x [1024 x i256]], [26 x [1024 x i256]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]], [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.96"([1024 x i256]* %3, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 1024)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.96"([1024 x i256]* %dst, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [1024 x i256]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"], [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [1024 x i256], [1024 x i256]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %4, i256* %3, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, [26 x [1024 x i256]]* readonly %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [26 x [1024 x i256]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.103"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [26 x [1024 x i256]]* nonnull %src, i64 26)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.103"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, [26 x [1024 x i256]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [26 x [1024 x i256]]* %src, null
  %1 = icmp eq [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]], [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [26 x [1024 x i256]], [26 x [1024 x i256]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.106"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [1024 x i256]* %3, i64 1024)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.106"([1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, [1024 x i256]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x i256]* %src, null
  %1 = icmp eq [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [1024 x i256], [1024 x i256]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"], [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i256, i256* %3, align 32
  store i256 %4, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_msm_hw(i256*, i256*, i256*, i256*, i256*, [26 x [1024 x i256]]*, [26 x [1024 x i256]]*, [26 x [1024 x i256]]*, [26 x [1024 x i256]]*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="0", i256* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="2", i256* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="4", i256* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="6", i256* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* "unpacked"="8", i256* noalias nocapture readonly align 512 "unpacked"="9.0", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="10", [26 x [1024 x i256]]* readonly "unpacked"="11", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="12", [26 x [1024 x i256]]* readonly "unpacked"="13", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="14", [26 x [1024 x i256]]* readonly "unpacked"="15", [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* "unpacked"="16", [26 x [1024 x i256]]* readonly "unpacked"="17") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %10, [26 x [1024 x i256]]* %11)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %12, [26 x [1024 x i256]]* %13)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %14, [26 x [1024 x i256]]* %15)
  call fastcc void @"onebyonecpy_hls.p0a26a1024struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>.100"([26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %16, [26 x [1024 x i256]]* %17)
  ret void
}

declare void @msm_hw_stub(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull, i32)

define void @msm_hw_stub_wrapper(i256*, i256*, i256*, i256*, i256*, [26 x [1024 x i256]]*, [26 x [1024 x i256]]*, [26 x [1024 x i256]]*, [26 x [1024 x i256]]*, i32) #5 {
entry:
  %10 = call i8* @malloc(i64 32)
  %11 = bitcast i8* %10 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %12 = call i8* @malloc(i64 32)
  %13 = bitcast i8* %12 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %14 = call i8* @malloc(i64 32)
  %15 = bitcast i8* %14 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %16 = call i8* @malloc(i64 32)
  %17 = bitcast i8* %16 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %18 = call i8* @malloc(i64 32)
  %19 = bitcast i8* %18 to %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"*
  %20 = call i8* @malloc(i64 851968)
  %21 = bitcast i8* %20 to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %22 = call i8* @malloc(i64 851968)
  %23 = bitcast i8* %22 to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %24 = call i8* @malloc(i64 851968)
  %25 = bitcast i8* %24 to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  %26 = call i8* @malloc(i64 851968)
  %27 = bitcast i8* %26 to [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]*
  call void @copy_out(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %11, i256* %0, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %13, i256* %1, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %15, i256* %2, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %17, i256* %3, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %19, i256* %4, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %21, [26 x [1024 x i256]]* %5, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %23, [26 x [1024 x i256]]* %6, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %25, [26 x [1024 x i256]]* %7, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %27, [26 x [1024 x i256]]* %8)
  %28 = bitcast [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %21 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %29 = bitcast [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %23 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %30 = bitcast [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %25 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  %31 = bitcast [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %27 to [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]*
  call void @msm_hw_stub(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %11, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %13, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %15, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %17, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %19, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %28, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %29, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %30, [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]* %31, i32 %9)
  call void @copy_in(%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %11, i256* %0, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %13, i256* %1, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %15, i256* %2, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %17, i256* %3, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"* %19, i256* %4, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %21, [26 x [1024 x i256]]* %5, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %23, [26 x [1024 x i256]]* %6, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %25, [26 x [1024 x i256]]* %7, [26 x [1024 x %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>"]]* %27, [26 x [1024 x i256]]* %8)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  call void @free(i8* %16)
  call void @free(i8* %18)
  call void @free(i8* %20)
  call void @free(i8* %22)
  call void @free(i8* %24)
  call void @free(i8* %26)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
