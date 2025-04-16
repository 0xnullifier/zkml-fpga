; ModuleID = '/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs/msm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<384>" = type { %"struct.ap_int_base<384, false>" }
%"struct.ap_int_base<384, false>" = type { %"struct.ssdm_int<384, false>" }
%"struct.ssdm_int<384, false>" = type { i384 }

; Function Attrs: noinline
define void @apatb_msm_ir(%"struct.ap_uint<384>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="200" "maxi" %x_array, %"struct.ap_uint<384>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="200" "maxi" %y_array, %"struct.ap_uint<384>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="200" "maxi" %scalar_array, %"struct.ap_uint<384>"* noalias nocapture nonnull dereferenceable(64) %result_x, %"struct.ap_uint<384>"* noalias nocapture nonnull dereferenceable(64) %result_y, i32 %degree) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_uint<384>"* %x_array to [200 x %"struct.ap_uint<384>"]*
  %1 = call i8* @malloc(i64 12800)
  %x_array_copy = bitcast i8* %1 to [200 x i384]*
  %2 = bitcast %"struct.ap_uint<384>"* %y_array to [200 x %"struct.ap_uint<384>"]*
  %3 = call i8* @malloc(i64 12800)
  %y_array_copy = bitcast i8* %3 to [200 x i384]*
  %4 = bitcast %"struct.ap_uint<384>"* %scalar_array to [200 x %"struct.ap_uint<384>"]*
  %5 = call i8* @malloc(i64 12800)
  %scalar_array_copy = bitcast i8* %5 to [200 x i384]*
  %result_x_copy = alloca i384, align 512
  %result_y_copy = alloca i384, align 512
  call fastcc void @copy_in([200 x %"struct.ap_uint<384>"]* nonnull %0, [200 x i384]* %x_array_copy, [200 x %"struct.ap_uint<384>"]* nonnull %2, [200 x i384]* %y_array_copy, [200 x %"struct.ap_uint<384>"]* nonnull %4, [200 x i384]* %scalar_array_copy, %"struct.ap_uint<384>"* nonnull %result_x, i384* nonnull align 512 %result_x_copy, %"struct.ap_uint<384>"* nonnull %result_y, i384* nonnull align 512 %result_y_copy)
  call void @apatb_msm_hw([200 x i384]* %x_array_copy, [200 x i384]* %y_array_copy, [200 x i384]* %scalar_array_copy, i384* %result_x_copy, i384* %result_y_copy, i32 %degree)
  call void @copy_back([200 x %"struct.ap_uint<384>"]* %0, [200 x i384]* %x_array_copy, [200 x %"struct.ap_uint<384>"]* %2, [200 x i384]* %y_array_copy, [200 x %"struct.ap_uint<384>"]* %4, [200 x i384]* %scalar_array_copy, %"struct.ap_uint<384>"* %result_x, i384* %result_x_copy, %"struct.ap_uint<384>"* %result_y, i384* %result_y_copy)
  call void @free(i8* %1)
  call void @free(i8* %3)
  call void @free(i8* %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([200 x %"struct.ap_uint<384>"]* readonly "unpacked"="0", [200 x i384]* nocapture "unpacked"="1.0", [200 x %"struct.ap_uint<384>"]* readonly "unpacked"="2", [200 x i384]* nocapture "unpacked"="3.0", [200 x %"struct.ap_uint<384>"]* readonly "unpacked"="4", [200 x i384]* nocapture "unpacked"="5.0", %"struct.ap_uint<384>"* readonly "unpacked"="6", i384* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_uint<384>"* readonly "unpacked"="8", i384* noalias nocapture align 512 "unpacked"="9.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>"([200 x i384]* %1, [200 x %"struct.ap_uint<384>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>"([200 x i384]* %3, [200 x %"struct.ap_uint<384>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>"([200 x i384]* %5, [200 x %"struct.ap_uint<384>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>.59"(i384* align 512 %7, %"struct.ap_uint<384>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>.59"(i384* align 512 %9, %"struct.ap_uint<384>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([200 x %"struct.ap_uint<384>"]* "unpacked"="0", [200 x i384]* nocapture readonly "unpacked"="1.0", [200 x %"struct.ap_uint<384>"]* "unpacked"="2", [200 x i384]* nocapture readonly "unpacked"="3.0", [200 x %"struct.ap_uint<384>"]* "unpacked"="4", [200 x i384]* nocapture readonly "unpacked"="5.0", %"struct.ap_uint<384>"* "unpacked"="6", i384* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_uint<384>"* "unpacked"="8", i384* noalias nocapture readonly align 512 "unpacked"="9.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>.68"([200 x %"struct.ap_uint<384>"]* %0, [200 x i384]* %1)
  call fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>.68"([200 x %"struct.ap_uint<384>"]* %2, [200 x i384]* %3)
  call fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>.68"([200 x %"struct.ap_uint<384>"]* %4, [200 x i384]* %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>"(%"struct.ap_uint<384>"* %6, i384* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>"(%"struct.ap_uint<384>"* %8, i384* align 512 %9)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>"(%"struct.ap_uint<384>"* noalias "unpacked"="0" %dst, i384* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<384>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<384>", %"struct.ap_uint<384>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i384, i384* %src, align 512
  store i384 %1, i384* %dst.0.0.04, align 64
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>.59"(i384* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<384>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<384>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<384>", %"struct.ap_uint<384>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i384, i384* %src.0.0.03, align 64
  store i384 %1, i384* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>.68"([200 x %"struct.ap_uint<384>"]* "unpacked"="0" %dst, [200 x i384]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [200 x %"struct.ap_uint<384>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a200struct.ap_uint<384>.71"([200 x %"struct.ap_uint<384>"]* nonnull %dst, [200 x i384]* %src, i64 200)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a200struct.ap_uint<384>.71"([200 x %"struct.ap_uint<384>"]* "unpacked"="0" %dst, [200 x i384]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [200 x %"struct.ap_uint<384>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [200 x i384], [200 x i384]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [200 x %"struct.ap_uint<384>"], [200 x %"struct.ap_uint<384>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i384, i384* %src.addr.0.0.05, align 64
  store i384 %1, i384* %dst.addr.0.0.06, align 64
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a200struct.ap_uint<384>"([200 x i384]* nocapture "unpacked"="0.0" %dst, [200 x %"struct.ap_uint<384>"]* readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [200 x %"struct.ap_uint<384>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a200struct.ap_uint<384>.78"([200 x i384]* %dst, [200 x %"struct.ap_uint<384>"]* nonnull %src, i64 200)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a200struct.ap_uint<384>.78"([200 x i384]* nocapture "unpacked"="0.0" %dst, [200 x %"struct.ap_uint<384>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [200 x %"struct.ap_uint<384>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [200 x %"struct.ap_uint<384>"], [200 x %"struct.ap_uint<384>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [200 x i384], [200 x i384]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i384, i384* %src.addr.0.0.05, align 64
  store i384 %1, i384* %dst.addr.0.0.06, align 64
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_msm_hw([200 x i384]*, [200 x i384]*, [200 x i384]*, i384*, i384*, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([200 x %"struct.ap_uint<384>"]* "unpacked"="0", [200 x i384]* nocapture readonly "unpacked"="1.0", [200 x %"struct.ap_uint<384>"]* "unpacked"="2", [200 x i384]* nocapture readonly "unpacked"="3.0", [200 x %"struct.ap_uint<384>"]* "unpacked"="4", [200 x i384]* nocapture readonly "unpacked"="5.0", %"struct.ap_uint<384>"* "unpacked"="6", i384* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_uint<384>"* "unpacked"="8", i384* noalias nocapture readonly align 512 "unpacked"="9.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>"(%"struct.ap_uint<384>"* %6, i384* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<384>"(%"struct.ap_uint<384>"* %8, i384* align 512 %9)
  ret void
}

declare void @msm_hw_stub(%"struct.ap_uint<384>"* noalias nocapture nonnull readonly, %"struct.ap_uint<384>"* noalias nocapture nonnull readonly, %"struct.ap_uint<384>"* noalias nocapture nonnull readonly, %"struct.ap_uint<384>"* noalias nocapture nonnull, %"struct.ap_uint<384>"* noalias nocapture nonnull, i32)

define void @msm_hw_stub_wrapper([200 x i384]*, [200 x i384]*, [200 x i384]*, i384*, i384*, i32) #5 {
entry:
  %6 = call i8* @malloc(i64 12800)
  %7 = bitcast i8* %6 to [200 x %"struct.ap_uint<384>"]*
  %8 = call i8* @malloc(i64 12800)
  %9 = bitcast i8* %8 to [200 x %"struct.ap_uint<384>"]*
  %10 = call i8* @malloc(i64 12800)
  %11 = bitcast i8* %10 to [200 x %"struct.ap_uint<384>"]*
  %12 = call i8* @malloc(i64 64)
  %13 = bitcast i8* %12 to %"struct.ap_uint<384>"*
  %14 = call i8* @malloc(i64 64)
  %15 = bitcast i8* %14 to %"struct.ap_uint<384>"*
  call void @copy_out([200 x %"struct.ap_uint<384>"]* %7, [200 x i384]* %0, [200 x %"struct.ap_uint<384>"]* %9, [200 x i384]* %1, [200 x %"struct.ap_uint<384>"]* %11, [200 x i384]* %2, %"struct.ap_uint<384>"* %13, i384* %3, %"struct.ap_uint<384>"* %15, i384* %4)
  %16 = bitcast [200 x %"struct.ap_uint<384>"]* %7 to %"struct.ap_uint<384>"*
  %17 = bitcast [200 x %"struct.ap_uint<384>"]* %9 to %"struct.ap_uint<384>"*
  %18 = bitcast [200 x %"struct.ap_uint<384>"]* %11 to %"struct.ap_uint<384>"*
  call void @msm_hw_stub(%"struct.ap_uint<384>"* %16, %"struct.ap_uint<384>"* %17, %"struct.ap_uint<384>"* %18, %"struct.ap_uint<384>"* %13, %"struct.ap_uint<384>"* %15, i32 %5)
  call void @copy_in([200 x %"struct.ap_uint<384>"]* %7, [200 x i384]* %0, [200 x %"struct.ap_uint<384>"]* %9, [200 x i384]* %1, [200 x %"struct.ap_uint<384>"]* %11, [200 x i384]* %2, %"struct.ap_uint<384>"* %13, i384* %3, %"struct.ap_uint<384>"* %15, i384* %4)
  call void @free(i8* %6)
  call void @free(i8* %8)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
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
