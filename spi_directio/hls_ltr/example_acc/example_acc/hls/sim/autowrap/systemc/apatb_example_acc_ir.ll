; ModuleID = 'C:/GIM/hls_ltr/example_acc/example_acc/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 7, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 7, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::directio<bool, 0>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_example_acc_ir(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* nocapture readonly %w1, %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* nocapture readonly %w2, %"class.hls::directio<bool, 0>"* noalias nonnull dereferenceable(1) %alpha_transmit_line) local_unnamed_addr #0 {
entry:
  %alpha_transmit_line_copy = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::directio<bool, 0>"* nonnull %alpha_transmit_line, i1* nonnull align 512 %alpha_transmit_line_copy)
  call void @apatb_example_acc_hw(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* %w1, %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* %w2, i1* %alpha_transmit_line_copy)
  call void @copy_back(%"class.hls::directio<bool, 0>"* %alpha_transmit_line, i1* %alpha_transmit_line_copy)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::directio<bool, 0>"* noalias, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 0>.hls::directio"(i1* align 512 %1, %"class.hls::directio<bool, 0>"* %0)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 0>.hls::directio"(i1* noalias align 512 %dst, %"class.hls::directio<bool, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq %"class.hls::directio<bool, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 0>"(i1* nonnull align 512 %dst, %"class.hls::directio<bool, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 0>"(i1* noalias align 512, %"class.hls::directio<bool, 0>"* noalias) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<bool, 0>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<bool, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<bool, 0>"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<bool, 0>", %"class.hls::directio<bool, 0>"* %2
  %9 = call i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<bool, 0>s"(%"class.hls::directio<bool, 0>" %8)
  store i1 %9, i1* %3
  %10 = bitcast i1* %3 to i8*
  %11 = bitcast i1* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::directio<bool, 0>"* noalias, i1* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 0>.hls::directio.10"(%"class.hls::directio<bool, 0>"* %0, i1* align 512 %1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 0>.hls::directio.10"(%"class.hls::directio<bool, 0>"* noalias %dst, i1* noalias align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::directio<bool, 0>"* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 0>.13"(%"class.hls::directio<bool, 0>"* nonnull %dst, i1* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 0>.13"(%"class.hls::directio<bool, 0>"* noalias, i1* noalias align 512) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %3 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = bitcast i1* %3 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %oldret = insertvalue %"class.hls::directio<bool, 0>" undef, i1 %10, 0
  store %"class.hls::directio<bool, 0>" %oldret, %"class.hls::directio<bool, 0>"* %2
  %11 = bitcast %"class.hls::directio<bool, 0>"* %2 to i8*
  %12 = bitcast %"class.hls::directio<bool, 0>"* %0 to i8*
  call void @fpga_direct_store_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<bool, 0>s"(%"class.hls::directio<bool, 0>" %A) #5 {
  %A.0 = extractvalue %"class.hls::directio<bool, 0>" %A, 0
  ret i1 %A.0
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_example_acc_hw(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"*, i1*)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::directio<bool, 0>"* noalias, i1* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 0>.hls::directio.10"(%"class.hls::directio<bool, 0>"* %0, i1* align 512 %1)
  ret void
}

declare void @example_acc_hw_stub(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* nocapture readonly, %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* nocapture readonly, %"class.hls::directio<bool, 0>"* noalias nonnull)

define void @example_acc_hw_stub_wrapper(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"*, i1*) #6 {
entry:
  %3 = call i8* @malloc(i64 1)
  %4 = bitcast i8* %3 to %"class.hls::directio<bool, 0>"*
  call void @copy_out(%"class.hls::directio<bool, 0>"* %4, i1* %2)
  call void @example_acc_hw_stub(%"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* %0, %"struct.ap_fixed<16, 7, AP_TRN, AP_WRAP, 0>"* %1, %"class.hls::directio<bool, 0>"* %4)
  call void @copy_in(%"class.hls::directio<bool, 0>"* %4, i1* %2)
  call void @free(i8* %3)
  ret void
}

declare i1 @fpga_direct_valid_1(i8*)

declare void @fpga_direct_store_1(i8*, i8*)

declare void @fpga_direct_load_1(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="directiocpy_hls" }
attributes #4 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone willreturn }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
