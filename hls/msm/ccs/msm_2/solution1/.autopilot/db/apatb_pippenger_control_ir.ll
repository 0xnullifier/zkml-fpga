; ModuleID = '/home/terryadavis/utkarsh/zkml-fpga/hls/msm/ccs/msm_2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<256>, 0>" = type { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"class.hls::stream<EdwardsPoint, 0>" = type { %struct.EdwardsPoint }
%struct.EdwardsPoint = type { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_pippenger_control_ir(%"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull dereferenceable(32) %x_stream, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull dereferenceable(32) %y_stream, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull dereferenceable(32) %z_stream, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull dereferenceable(32) %t_stream, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull dereferenceable(32) %scalar_stream, %"class.hls::stream<EdwardsPoint, 0>"* noalias nocapture nonnull dereferenceable(128) %out_stream) local_unnamed_addr #1 {
entry:
  %x_stream_copy = alloca i256, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i256* %x_stream_copy, i32 0) ]
  %y_stream_copy = alloca i256, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i256* %y_stream_copy, i32 0) ]
  %z_stream_copy = alloca i256, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i256* %z_stream_copy, i32 0) ]
  %t_stream_copy = alloca i256, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i256* %t_stream_copy, i32 0) ]
  %scalar_stream_copy = alloca i256, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i256* %scalar_stream_copy, i32 0) ]
  %out_stream_copy = alloca i1024, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1024* %out_stream_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<256>, 0>"* nonnull %x_stream, i256* nonnull align 512 %x_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %y_stream, i256* nonnull align 512 %y_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %z_stream, i256* nonnull align 512 %z_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %t_stream, i256* nonnull align 512 %t_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %scalar_stream, i256* nonnull align 512 %scalar_stream_copy, %"class.hls::stream<EdwardsPoint, 0>"* nonnull %out_stream, i1024* nonnull align 512 %out_stream_copy)
  call void @apatb_pippenger_control_hw(i256* %x_stream_copy, i256* %y_stream_copy, i256* %z_stream_copy, i256* %t_stream_copy, i256* %scalar_stream_copy, i1024* %out_stream_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<256>, 0>"* %x_stream, i256* %x_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* %y_stream, i256* %y_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* %z_stream, i256* %z_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* %t_stream, i256* %t_stream_copy, %"class.hls::stream<ap_uint<256>, 0>"* %scalar_stream, i256* %scalar_stream_copy, %"class.hls::stream<EdwardsPoint, 0>"* %out_stream, i1024* %out_stream_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="2", i256* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="4", i256* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="6", i256* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<EdwardsPoint, 0>"* noalias "unpacked"="10", i1024* noalias align 512 "unpacked"="11") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(i256* align 512 %1, %"class.hls::stream<ap_uint<256>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(i256* align 512 %3, %"class.hls::stream<ap_uint<256>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(i256* align 512 %5, %"class.hls::stream<ap_uint<256>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(i256* align 512 %7, %"class.hls::stream<ap_uint<256>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(i256* align 512 %9, %"class.hls::stream<ap_uint<256>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<EdwardsPoint, 0>.71"(i1024* align 512 %11, %"class.hls::stream<EdwardsPoint, 0>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<EdwardsPoint, 0>"(%"class.hls::stream<EdwardsPoint, 0>"* noalias %dst, i1024* noalias align 512 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<EdwardsPoint, 0>"* %dst, null
  %1 = icmp eq i1024* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<EdwardsPoint, 0>"(%"class.hls::stream<EdwardsPoint, 0>"* nonnull %dst, i1024* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<EdwardsPoint, 0>"(%"class.hls::stream<EdwardsPoint, 0>"* noalias nocapture, i1024* noalias nocapture align 512) unnamed_addr #4 {
entry:
  %2 = alloca i1024
  %3 = alloca %"class.hls::stream<EdwardsPoint, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1024* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_128(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1024* %2 to i8*
  %7 = bitcast i1024* %1 to i8*
  call void @fpga_fifo_pop_128(i8* %6, i8* %7)
  %8 = load volatile i1024, i1024* %2
  %9 = call { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<EdwardsPoint, 0>s.i1024"(i1024 %8)
  %newret = extractvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %9, 0
  %oldret1 = insertvalue %struct.EdwardsPoint undef, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %newret, 0
  %newret2 = extractvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %9, 1
  %oldret3 = insertvalue %struct.EdwardsPoint %oldret1, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %newret2, 1
  %newret4 = extractvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %9, 2
  %oldret5 = insertvalue %struct.EdwardsPoint %oldret3, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %newret4, 2
  %newret6 = extractvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %9, 3
  %oldret7 = insertvalue %struct.EdwardsPoint %oldret5, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %newret6, 3
  %oldret = insertvalue %"class.hls::stream<EdwardsPoint, 0>" undef, %struct.EdwardsPoint %oldret7, 0
  store %"class.hls::stream<EdwardsPoint, 0>" %oldret, %"class.hls::stream<EdwardsPoint, 0>"* %3
  %10 = bitcast %"class.hls::stream<EdwardsPoint, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<EdwardsPoint, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="2", i256* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="4", i256* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="6", i256* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<EdwardsPoint, 0>"* noalias "unpacked"="10", i1024* noalias align 512 "unpacked"="11") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %2, i256* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %4, i256* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %6, i256* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %8, i256* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<EdwardsPoint, 0>"(%"class.hls::stream<EdwardsPoint, 0>"* %10, i1024* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="0" %dst, i256* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<256>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>.40"(%"class.hls::stream<ap_uint<256>, 0>"* nonnull %dst, i256* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>.40"(%"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i256
  %3 = alloca %"class.hls::stream<ap_uint<256>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i256* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i256* %2 to i8*
  %7 = bitcast i256* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile i256, i256* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<256>, 0>" undef, i256 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<256>, 0>" %.ivi, %"class.hls::stream<ap_uint<256>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>"(i256* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<256>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>.50"(i256* align 512 %dst, %"class.hls::stream<ap_uint<256>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<256>, 0>.50"(i256* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<256>, 0>"
  %3 = alloca i256
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_32(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<256>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<256>, 0>", %"class.hls::stream<ap_uint<256>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<256>, 0>" %8, 0, 0, 0, 0
  store i256 %.evi, i256* %3
  %9 = bitcast i256* %3 to i8*
  %10 = bitcast i256* %0 to i8*
  call void @fpga_fifo_push_32(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<EdwardsPoint, 0>.71"(i1024* noalias align 512 %dst, %"class.hls::stream<EdwardsPoint, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i1024* %dst, null
  %1 = icmp eq %"class.hls::stream<EdwardsPoint, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<EdwardsPoint, 0>.74"(i1024* nonnull align 512 %dst, %"class.hls::stream<EdwardsPoint, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<EdwardsPoint, 0>.74"(i1024* noalias nocapture align 512, %"class.hls::stream<EdwardsPoint, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<EdwardsPoint, 0>"
  %3 = alloca i1024
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<EdwardsPoint, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_128(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<EdwardsPoint, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<EdwardsPoint, 0>"* %1 to i8*
  call void @fpga_fifo_pop_128(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<EdwardsPoint, 0>", %"class.hls::stream<EdwardsPoint, 0>"* %2
  %9 = call i1024 @"_llvm.fpga.pack.bits.i1024.s_class.hls::stream<EdwardsPoint, 0>s"(%"class.hls::stream<EdwardsPoint, 0>" %8)
  store i1024 %9, i1024* %3
  %10 = bitcast i1024* %3 to i8*
  %11 = bitcast i1024* %0 to i8*
  call void @fpga_fifo_push_128(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1024 @"_llvm.fpga.pack.bits.i1024.s_class.hls::stream<EdwardsPoint, 0>s"(%"class.hls::stream<EdwardsPoint, 0>" %A) #6 {
  %A.0 = extractvalue %"class.hls::stream<EdwardsPoint, 0>" %A, 0
  %A.0.0 = extractvalue %struct.EdwardsPoint %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ssdm_int<256, false>" %A.0.0.0.0, 0
  %1 = zext i256 %A.0.0.0.0.0 to i1024
  %A.0.1 = extractvalue %struct.EdwardsPoint %A.0, 1
  %A.0.1.0 = extractvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %A.0.1, 0
  %A.0.1.0.0 = extractvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %A.0.1.0, 0
  %A.0.1.0.0.0 = extractvalue %"struct.ssdm_int<256, false>" %A.0.1.0.0, 0
  %2 = zext i256 %A.0.1.0.0.0 to i1024
  %3 = shl nuw nsw i1024 %2, 256
  %4 = or i1024 %3, %1
  %A.0.2 = extractvalue %struct.EdwardsPoint %A.0, 2
  %A.0.2.0 = extractvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %A.0.2, 0
  %A.0.2.0.0 = extractvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %A.0.2.0, 0
  %A.0.2.0.0.0 = extractvalue %"struct.ssdm_int<256, false>" %A.0.2.0.0, 0
  %5 = zext i256 %A.0.2.0.0.0 to i1024
  %6 = shl nuw nsw i1024 %5, 512
  %7 = or i1024 %4, %6
  %A.0.3 = extractvalue %struct.EdwardsPoint %A.0, 3
  %A.0.3.0 = extractvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %A.0.3, 0
  %A.0.3.0.0 = extractvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %A.0.3.0, 0
  %A.0.3.0.0.0 = extractvalue %"struct.ssdm_int<256, false>" %A.0.3.0.0, 0
  %8 = zext i256 %A.0.3.0.0.0 to i1024
  %9 = shl nuw i1024 %8, 768
  %10 = or i1024 %7, %9
  ret i1024 %10
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } @"_llvm.fpga.unpack.bits.s_class.hls::stream<EdwardsPoint, 0>s.i1024"(i1024 %A) #6 {
  %1 = trunc i1024 %A to i256
  %.0 = insertvalue %"struct.ssdm_int<256, false>" undef, i256 %1, 0
  %.01 = insertvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<256, false>" %.0, 0
  %.02 = insertvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %.01, 0
  %2 = lshr i1024 %A, 256
  %3 = trunc i1024 %2 to i256
  %.04 = insertvalue %"struct.ssdm_int<256, false>" undef, i256 %3, 0
  %.05 = insertvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<256, false>" %.04, 0
  %.06 = insertvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %.05, 0
  %4 = lshr i1024 %A, 512
  %5 = trunc i1024 %4 to i256
  %.07 = insertvalue %"struct.ssdm_int<256, false>" undef, i256 %5, 0
  %.08 = insertvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<256, false>" %.07, 0
  %.09 = insertvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %.08, 0
  %6 = lshr i1024 %A, 768
  %7 = trunc i1024 %6 to i256
  %.010 = insertvalue %"struct.ssdm_int<256, false>" undef, i256 %7, 0
  %.011 = insertvalue %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<256, false>" %.010, 0
  %.012 = insertvalue %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<256, 256, false, AP_TRN, AP_WRAP, 0>" %.011, 0
  %newret = insertvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } undef, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %.02, 0
  %newret2 = insertvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %newret, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %.06, 1
  %newret4 = insertvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %newret2, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %.09, 2
  %newret6 = insertvalue { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %newret4, %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" %.012, 3
  ret { %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<256, 256, AP_TRN, AP_WRAP, 0>" } %newret6
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_pippenger_control_hw(i256*, i256*, i256*, i256*, i256*, i1024*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="0", i256* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="2", i256* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="4", i256* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="6", i256* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<256>, 0>"* noalias "unpacked"="8", i256* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<EdwardsPoint, 0>"* noalias "unpacked"="10", i1024* noalias align 512 "unpacked"="11") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %0, i256* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %2, i256* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %4, i256* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %6, i256* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<256>, 0>.37"(%"class.hls::stream<ap_uint<256>, 0>"* %8, i256* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<EdwardsPoint, 0>"(%"class.hls::stream<EdwardsPoint, 0>"* %10, i1024* align 512 %11)
  ret void
}

declare void @pippenger_control_hw_stub(%"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<256>, 0>"* noalias nocapture nonnull, %"class.hls::stream<EdwardsPoint, 0>"* noalias nocapture nonnull)

define void @pippenger_control_hw_stub_wrapper(i256*, i256*, i256*, i256*, i256*, i1024*) #7 {
entry:
  %6 = call i8* @malloc(i64 32)
  %7 = bitcast i8* %6 to %"class.hls::stream<ap_uint<256>, 0>"*
  %8 = call i8* @malloc(i64 32)
  %9 = bitcast i8* %8 to %"class.hls::stream<ap_uint<256>, 0>"*
  %10 = call i8* @malloc(i64 32)
  %11 = bitcast i8* %10 to %"class.hls::stream<ap_uint<256>, 0>"*
  %12 = call i8* @malloc(i64 32)
  %13 = bitcast i8* %12 to %"class.hls::stream<ap_uint<256>, 0>"*
  %14 = call i8* @malloc(i64 32)
  %15 = bitcast i8* %14 to %"class.hls::stream<ap_uint<256>, 0>"*
  %16 = call i8* @malloc(i64 128)
  %17 = bitcast i8* %16 to %"class.hls::stream<EdwardsPoint, 0>"*
  call void @copy_out(%"class.hls::stream<ap_uint<256>, 0>"* %7, i256* %0, %"class.hls::stream<ap_uint<256>, 0>"* %9, i256* %1, %"class.hls::stream<ap_uint<256>, 0>"* %11, i256* %2, %"class.hls::stream<ap_uint<256>, 0>"* %13, i256* %3, %"class.hls::stream<ap_uint<256>, 0>"* %15, i256* %4, %"class.hls::stream<EdwardsPoint, 0>"* %17, i1024* %5)
  call void @pippenger_control_hw_stub(%"class.hls::stream<ap_uint<256>, 0>"* %7, %"class.hls::stream<ap_uint<256>, 0>"* %9, %"class.hls::stream<ap_uint<256>, 0>"* %11, %"class.hls::stream<ap_uint<256>, 0>"* %13, %"class.hls::stream<ap_uint<256>, 0>"* %15, %"class.hls::stream<EdwardsPoint, 0>"* %17)
  call void @copy_in(%"class.hls::stream<ap_uint<256>, 0>"* %7, i256* %0, %"class.hls::stream<ap_uint<256>, 0>"* %9, i256* %1, %"class.hls::stream<ap_uint<256>, 0>"* %11, i256* %2, %"class.hls::stream<ap_uint<256>, 0>"* %13, i256* %3, %"class.hls::stream<ap_uint<256>, 0>"* %15, i256* %4, %"class.hls::stream<EdwardsPoint, 0>"* %17, i1024* %5)
  call void @free(i8* %6)
  call void @free(i8* %8)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  call void @free(i8* %16)
  ret void
}

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { alwaysinline nounwind readnone willreturn }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="256" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="1024" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
