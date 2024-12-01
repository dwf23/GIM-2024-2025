; ModuleID = 'C:/GIM_XOR/GIM-2024-2025/zhongqi_files/hls_component/accelerator/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 4, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%struct.Inference = type { [4 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]], [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"], [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"] }

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="0", [2 x [2 x i16]]* noalias align 512 "unpacked"="1", [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias readonly "unpacked"="2", [2 x [2 x i16]]* noalias align 512 "unpacked"="3", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="4", [2 x i16]* noalias nocapture align 512 "unpacked"="5.0", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="6", [2 x i16]* noalias nocapture align 512 "unpacked"="7.0") unnamed_addr #0 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.148"([2 x [2 x i16]]* align 512 %1, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.148"([2 x [2 x i16]]* align 512 %3, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.124"([2 x i16]* align 512 %5, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.124"([2 x i16]* align 512 %7, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="0", [2 x [2 x i16]]* noalias readonly align 512 "unpacked"="1", [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="2", [2 x [2 x i16]]* noalias readonly align 512 "unpacked"="3", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [2 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="6", [2 x i16]* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %0, [2 x [2 x i16]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %2, [2 x [2 x i16]]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %4, [2 x i16]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %6, [2 x i16]* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [2 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.120"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [2 x i16]* %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.120"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [2 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.124"([2 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.127"([2 x i16]* %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.127"([2 x i16]* nocapture "unpacked"="0.0" %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
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

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias %dst, [2 x [2 x i16]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, null
  %1 = icmp eq [2 x [2 x i16]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.141"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %dst, [2 x [2 x i16]]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.141"([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %dst, [2 x [2 x i16]]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.144"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst.addr, [2 x i16]* %3, i64 2)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.144"([2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %dst, [2 x i16]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.148"([2 x [2 x i16]]* noalias align 512 %dst, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x [2 x i16]]* %dst, null
  %1 = icmp eq [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.151"([2 x [2 x i16]]* nonnull %dst, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.151"([2 x [2 x i16]]* %dst, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
  call void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.154"([2 x i16]* %3, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %src.addr, i64 2)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>.154"([2 x i16]* %dst, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
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

declare void @apatb_accelerator_hw(%struct.Inference*, [2 x [2 x i16]]*, [2 x [2 x i16]]*, [2 x i16]*, [2 x i16]*, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="0", [2 x [2 x i16]]* noalias readonly align 512 "unpacked"="1", [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* noalias "unpacked"="2", [2 x [2 x i16]]* noalias readonly align 512 "unpacked"="3", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [2 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0", [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="6", [2 x i16]* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #1 {
entry:
  ret void
}

define void @accelerator_hw_stub_wrapper(%struct.Inference*, [2 x [2 x i16]]*, [2 x [2 x i16]]*, [2 x i16]*, [2 x i16]*, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*) #4 {
entry:
  %6 = alloca [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]
  %7 = alloca [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]
  %8 = alloca [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]
  %9 = alloca [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %6, [2 x [2 x i16]]* %1, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %7, [2 x [2 x i16]]* %2, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8, [2 x i16]* %3, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %9, [2 x i16]* %4)
  %10 = bitcast [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %6 to [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %11 = bitcast [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %7 to [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %12 = bitcast [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  %13 = bitcast [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %9 to %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"*
  call void @accelerator_hw_stub(%struct.Inference* %0, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %10, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %11, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %12, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %13, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %5)
  call void @copy_in([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %6, [2 x [2 x i16]]* %1, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %7, [2 x [2 x i16]]* %2, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %8, [2 x i16]* %3, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %9, [2 x i16]* %4)
  ret void
}

declare void @accelerator_hw_stub(%struct.Inference*, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* nocapture readonly)

; Function Attrs: argmemonly noinline willreturn
define void @apatb_accelerator_ir(%struct.Inference* %ret, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %w1, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %w2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %bias_1, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" %bias_2, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* nocapture readonly %training) #5 {
entry:
  %w1_copy = alloca [2 x [2 x i16]], align 512
  %w2_copy = alloca [2 x [2 x i16]], align 512
  %bias_1_copy = alloca [2 x i16], align 512
  %bias_2_copy = alloca [2 x i16], align 512
  %0 = bitcast [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %w1 to [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]*
  %1 = bitcast [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %w2 to [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]*
  %2 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %bias_1 to [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  %3 = bitcast %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %bias_2 to [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %0, [2 x [2 x i16]]* nonnull align 512 %w1_copy, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* nonnull %1, [2 x [2 x i16]]* nonnull align 512 %w2_copy, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [2 x i16]* nonnull align 512 %bias_1_copy, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* nonnull %3, [2 x i16]* nonnull align 512 %bias_2_copy)
  %4 = alloca %struct.Inference
  call void @apatb_accelerator_hw(%struct.Inference* %4, [2 x [2 x i16]]* %w1_copy, [2 x [2 x i16]]* %w2_copy, [2 x i16]* %bias_1_copy, [2 x i16]* %bias_2_copy, %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"* %training)
  %5 = load volatile %struct.Inference, %struct.Inference* %4
  call void @copy_back([2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %0, [2 x [2 x i16]]* %w1_copy, [2 x [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]]* %1, [2 x [2 x i16]]* %w2_copy, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %2, [2 x i16]* %bias_1_copy, [2 x %"struct.ap_fixed<16, 4, AP_TRN, AP_WRAP, 0>"]* %3, [2 x i16]* %bias_2_copy)
  %6 = load volatile %struct.Inference, %struct.Inference* %4
  store %struct.Inference %6, %struct.Inference* %ret
  ret void
}

attributes #0 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
