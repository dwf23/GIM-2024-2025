; ModuleID = 'C:/GIM/HongYe/GIM-2024-2025/xor_dis_cpp/xor_distributed_hyw/xor_distributed_hyw/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::stream<pkt, 0>" = type { %struct.pkt }
%struct.pkt = type { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_accelerator_controller_ir([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %w1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %bias_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* nocapture readonly %training, %"class.hls::stream<pkt, 0>"* noalias nocapture nonnull dereferenceable(8) %data_out, %"class.hls::stream<pkt, 0>"* noalias nocapture nonnull readonly dereferenceable(8) %data_in, i1 zeroext %expecting_input) local_unnamed_addr #1 {
entry:
  %w1_copy = alloca [2 x [2 x i16]], align 512
  %bias_1_copy = alloca [2 x i16], align 512
  %data_out_copy = alloca i64, align 512
  call void @llvm.sideeffect() #11 [ "stream_interface"(i64* %data_out_copy, i32 0) ]
  %data_in_copy = alloca i64, align 512
  %0 = bitcast [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %w1 to [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %bias_1 to [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [2 x [2 x i16]]* nonnull align 512 %w1_copy, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [2 x i16]* nonnull align 512 %bias_1_copy, %"class.hls::stream<pkt, 0>"* nonnull %data_out, i64* nonnull align 512 %data_out_copy, %"class.hls::stream<pkt, 0>"* nonnull %data_in, i64* nonnull align 512 %data_in_copy)
  call void @apatb_accelerator_controller_hw([2 x [2 x i16]]* %w1_copy, [2 x i16]* %bias_1_copy, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %training, i64* %data_out_copy, i64* %data_in_copy, i1 %expecting_input)
  call void @copy_back([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %0, [2 x [2 x i16]]* %w1_copy, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %1, [2 x i16]* %bias_1_copy, %"class.hls::stream<pkt, 0>"* %data_out, i64* %data_out_copy, %"class.hls::stream<pkt, 0>"* %data_in, i64* %data_in_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="0", [2 x [2 x i16]]* noalias align 512 "unpacked"="1", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="2", [2 x i16]* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<pkt, 0>"* noalias "unpacked"="4", i64* noalias align 512 "unpacked"="5", %"class.hls::stream<pkt, 0>"* noalias "unpacked"="6", i64* noalias align 512 "unpacked"="7") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.138"([2 x [2 x i16]]* align 512 %1, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x i16]* align 512 %3, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>"(i64* align 512 %5, %"class.hls::stream<pkt, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.110"(i64* align 512 %7, %"class.hls::stream<pkt, 0>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [2 x [2 x i16]]* noalias readonly align 512 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [2 x [2 x i16]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [2 x [2 x i16]]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, [2 x [2 x i16]]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2 x [2 x i16]]* %src, null
  %1 = icmp eq [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [2 x [2 x i16]], [2 x [2 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [2 x i16]* %3, i64 2)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, [2 x i16]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2 x i16]* %src, null
  %1 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [2 x i16], [2 x i16]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.106"([2 x i16]* %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>"(i64* noalias align 512 %dst, %"class.hls::stream<pkt, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq i64* %dst, null
  %1 = icmp eq %"class.hls::stream<pkt, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>"(i64* nonnull align 512 %dst, %"class.hls::stream<pkt, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>"(i64* noalias nocapture align 512, %"class.hls::stream<pkt, 0>"* noalias nocapture) unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<pkt, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<pkt, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<pkt, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<pkt, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<pkt, 0>", %"class.hls::stream<pkt, 0>"* %2
  %9 = call i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<pkt, 0>s.151"(%"class.hls::stream<pkt, 0>" %8)
  store i64 %9, i64* %3
  %10 = bitcast i64* %3 to i8*
  %11 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="0", [2 x [2 x i16]]* noalias readonly align 512 "unpacked"="1", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [2 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hls::stream<pkt, 0>"* noalias "unpacked"="4", i64* noalias align 512 "unpacked"="5", %"class.hls::stream<pkt, 0>"* noalias "unpacked"="6", i64* noalias align 512 "unpacked"="7") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %0, [2 x [2 x i16]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.98"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %2, [2 x i16]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.128"(%"class.hls::stream<pkt, 0>"* %4, i64* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.117"(%"class.hls::stream<pkt, 0>"* %6, i64* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.98"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [2 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.101"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [2 x i16]* %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.101"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [2 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2 x i16], [2 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.106"([2 x i16]* nocapture "unpacked"="0.0" %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2 x i16], [2 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.110"(i64* noalias align 512 %dst, %"class.hls::stream<pkt, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq i64* %dst, null
  %1 = icmp eq %"class.hls::stream<pkt, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>.113"(i64* nonnull align 512 %dst, %"class.hls::stream<pkt, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>.113"(i64* noalias nocapture align 512, %"class.hls::stream<pkt, 0>"* noalias nocapture) unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<pkt, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<pkt, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<pkt, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<pkt, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<pkt, 0>", %"class.hls::stream<pkt, 0>"* %2
  %9 = call fastcc i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<pkt, 0>s"(%"class.hls::stream<pkt, 0>" %8)
  store i64 %9, i64* %3
  %10 = bitcast i64* %3 to i8*
  %11 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline argmemonly norecurse nounwind readnone willreturn
define internal fastcc i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<pkt, 0>s"(%"class.hls::stream<pkt, 0>" %A) unnamed_addr #8 {
  %A.0 = extractvalue %"class.hls::stream<pkt, 0>" %A, 0
  %A.0.0 = extractvalue %struct.pkt %A.0, 0
  %A.0.0.0 = extractvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0.0 to i32
  %A.0.0.1 = extractvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %A.0.0, 1
  %A.0.0.1.0 = extractvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.1.0.0, 0
  %2 = zext i16 %A.0.0.1.0.0.0 to i32
  %3 = shl nuw i32 %2, 16
  %4 = or i32 %3, %1
  %5 = zext i32 %4 to i64
  %A.0.1 = extractvalue %struct.pkt %A.0, 1
  %6 = zext i32 %A.0.1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  ret i64 %8
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.117"(%"class.hls::stream<pkt, 0>"* noalias %dst, i64* noalias align 512 %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<pkt, 0>"* %dst, null
  %1 = icmp eq i64* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>.120"(%"class.hls::stream<pkt, 0>"* nonnull %dst, i64* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>.120"(%"class.hls::stream<pkt, 0>"* noalias nocapture, i64* noalias nocapture align 512) unnamed_addr #6 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<pkt, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %9 = call fastcc { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<pkt, 0>s.i64"(i64 %8)
  %newret = extractvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %9, 0
  %oldret1 = insertvalue %struct.pkt undef, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %newret, 0
  %newret2 = extractvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %9, 1
  %oldret3 = insertvalue %struct.pkt %oldret1, i32 %newret2, 1
  %oldret = insertvalue %"class.hls::stream<pkt, 0>" undef, %struct.pkt %oldret3, 0
  store %"class.hls::stream<pkt, 0>" %oldret, %"class.hls::stream<pkt, 0>"* %3
  %10 = bitcast %"class.hls::stream<pkt, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<pkt, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline argmemonly norecurse nounwind readnone willreturn
define internal fastcc { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<pkt, 0>s.i64"(i64 %A) unnamed_addr #8 {
  %1 = trunc i64 %A to i32
  %2 = trunc i64 %A to i16
  %.0 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<16, true>" %.0, 0
  %.02 = insertvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %.01, 0
  %.03 = insertvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] undef, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %.02, 0
  %3 = lshr i32 %1, 16
  %4 = trunc i32 %3 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %4, 0
  %.05 = insertvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<16, true>" %.04, 0
  %.06 = insertvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %.05, 0
  %.1 = insertvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %.03, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %.06, 1
  %5 = lshr i64 %A, 32
  %6 = trunc i64 %5 to i32
  %newret = insertvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } undef, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %.1, 0
  %newret2 = insertvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %newret, i32 %6, 1
  ret { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %newret2
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.128"(%"class.hls::stream<pkt, 0>"* noalias %dst, i64* noalias align 512 %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<pkt, 0>"* %dst, null
  %1 = icmp eq i64* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>.131"(%"class.hls::stream<pkt, 0>"* nonnull %dst, i64* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<pkt, 0>.131"(%"class.hls::stream<pkt, 0>"* noalias nocapture, i64* noalias nocapture align 512) unnamed_addr #6 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<pkt, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %9 = call { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<pkt, 0>s.i64.150"(i64 %8)
  %newret = extractvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %9, 0
  %oldret1 = insertvalue %struct.pkt undef, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %newret, 0
  %newret2 = extractvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %9, 1
  %oldret3 = insertvalue %struct.pkt %oldret1, i32 %newret2, 1
  %oldret = insertvalue %"class.hls::stream<pkt, 0>" undef, %struct.pkt %oldret3, 0
  store %"class.hls::stream<pkt, 0>" %oldret, %"class.hls::stream<pkt, 0>"* %3
  %10 = bitcast %"class.hls::stream<pkt, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<pkt, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } @"_llvm.fpga.unpack.bits.s_class.hls::stream<pkt, 0>s.i64.150"(i64 %A) #9 {
  %1 = trunc i64 %A to i32
  %2 = trunc i64 %A to i16
  %.0 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %2, 0
  %.01 = insertvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<16, true>" %.0, 0
  %.02 = insertvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %.01, 0
  %.03 = insertvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] undef, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %.02, 0
  %3 = lshr i32 %1, 16
  %4 = trunc i32 %3 to i16
  %.04 = insertvalue %"struct.ssdm_int<16, true>" undef, i16 %4, 0
  %.05 = insertvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" undef, %"struct.ssdm_int<16, true>" %.04, 0
  %.06 = insertvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" undef, %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %.05, 0
  %.1 = insertvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %.03, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %.06, 1
  %5 = lshr i64 %A, 32
  %6 = trunc i64 %5 to i32
  %newret = insertvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } undef, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %.1, 0
  %newret2 = insertvalue { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %newret, i32 %6, 1
  ret { [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], i32 } %newret2
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i64 @"_llvm.fpga.pack.bits.i64.s_class.hls::stream<pkt, 0>s.151"(%"class.hls::stream<pkt, 0>" %A) #9 {
  %A.0 = extractvalue %"class.hls::stream<pkt, 0>" %A, 0
  %A.0.0 = extractvalue %struct.pkt %A.0, 0
  %A.0.0.0 = extractvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %A.0.0.0, 0
  %A.0.0.0.0.0 = extractvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %A.0.0.0.0, 0
  %A.0.0.0.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.0.0.0, 0
  %1 = zext i16 %A.0.0.0.0.0.0 to i32
  %A.0.0.1 = extractvalue [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] %A.0.0, 1
  %A.0.0.1.0 = extractvalue %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" %A.0.0.1, 0
  %A.0.0.1.0.0 = extractvalue %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" %A.0.0.1.0, 0
  %A.0.0.1.0.0.0 = extractvalue %"struct.ssdm_int<16, true>" %A.0.0.1.0.0, 0
  %2 = zext i16 %A.0.0.1.0.0.0 to i32
  %3 = shl nuw i32 %2, 16
  %4 = or i32 %3, %1
  %5 = zext i32 %4 to i64
  %A.0.1 = extractvalue %struct.pkt %A.0, 1
  %6 = zext i32 %A.0.1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  ret i64 %8
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.138"([2 x [2 x i16]]* noalias align 512 %dst, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2 x [2 x i16]]* %dst, null
  %1 = icmp eq [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.141"([2 x [2 x i16]]* nonnull %dst, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.141"([2 x [2 x i16]]* %dst, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %1 = icmp eq [2 x [2 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [2 x [2 x i16]], [2 x [2 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.144"([2 x i16]* %3, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 2)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.144"([2 x i16]* %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  %1 = icmp eq [2 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [2 x i16], [2 x i16]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %4, i16* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_accelerator_controller_hw([2 x [2 x i16]]*, [2 x i16]*, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*, i64*, i64*, i1)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="0", [2 x [2 x i16]]* noalias readonly align 512 "unpacked"="1", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [2 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hls::stream<pkt, 0>"* noalias "unpacked"="4", i64* noalias align 512 "unpacked"="5", %"class.hls::stream<pkt, 0>"* noalias "unpacked"="6", i64* noalias align 512 "unpacked"="7") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<pkt, 0>.128"(%"class.hls::stream<pkt, 0>"* %4, i64* align 512 %5)
  ret void
}

define void @accelerator_controller_hw_stub_wrapper([2 x [2 x i16]]*, [2 x i16]*, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*, i64*, i64*, i1) #10 {
entry:
  %6 = alloca [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]
  %7 = alloca [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]
  %8 = alloca %"class.hls::stream<pkt, 0>"
  %9 = alloca %"class.hls::stream<pkt, 0>"
  call void @copy_out([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %6, [2 x [2 x i16]]* %0, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7, [2 x i16]* %1, %"class.hls::stream<pkt, 0>"* %8, i64* %3, %"class.hls::stream<pkt, 0>"* %9, i64* %4)
  %10 = bitcast [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %6 to [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %11 = bitcast [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  call void @accelerator_controller_hw_stub([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %11, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %2, %"class.hls::stream<pkt, 0>"* %8, %"class.hls::stream<pkt, 0>"* %9, i1 %5)
  call void @copy_in([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %6, [2 x [2 x i16]]* %0, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %7, [2 x i16]* %1, %"class.hls::stream<pkt, 0>"* %8, i64* %3, %"class.hls::stream<pkt, 0>"* %9, i64* %4)
  ret void
}

declare void @accelerator_controller_hw_stub([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* nocapture readonly, %"class.hls::stream<pkt, 0>"* noalias nocapture nonnull, %"class.hls::stream<pkt, 0>"* noalias nocapture nonnull readonly, i1 zeroext)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { alwaysinline argmemonly norecurse nounwind readnone willreturn }
attributes #9 = { alwaysinline nounwind readnone willreturn }
attributes #10 = { "fpga.wrapper.func"="stub" }
attributes #11 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
