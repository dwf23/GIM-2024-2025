; ModuleID = 'C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/example_acc/example_acc/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::directio<ap_uint<1> >" = type { %"struct.ap_uint<1>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define i32 @apatb_example_acc_ir(%"class.hls::directio<ap_uint<1> >"* noalias nonnull dereferenceable(1) %data_in, i1 zeroext %start) local_unnamed_addr #0 {
entry:
  %data_in_copy = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::directio<ap_uint<1> >"* nonnull %data_in, i1* nonnull align 512 %data_in_copy)
  %0 = call i32 @apatb_example_acc_hw(i1* %data_in_copy, i1 %start)
  call void @copy_back(%"class.hls::directio<ap_uint<1> >"* %data_in, i1* %data_in_copy)
  ret i32 %0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::directio<ap_uint<1> >"* noalias, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1> >.hls::directio"(i1* align 512 %1, %"class.hls::directio<ap_uint<1> >"* %0)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1> >.hls::directio"(i1* noalias align 512 %dst, %"class.hls::directio<ap_uint<1> >"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_uint<1> >"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1> >"(i1* nonnull align 512 %dst, %"class.hls::directio<ap_uint<1> >"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1> >"(i1* noalias align 512, %"class.hls::directio<ap_uint<1> >"* noalias) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<1> >"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_uint<1> >"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_uint<1> >"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_uint<1> >"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_uint<1> >", %"class.hls::directio<ap_uint<1> >"* %2
  %9 = call i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<ap_uint<1> >s"(%"class.hls::directio<ap_uint<1> >" %8)
  store i1 %9, i1* %3
  %10 = bitcast i1* %3 to i8*
  %11 = bitcast i1* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::directio<ap_uint<1> >"* noalias, i1* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1> >.hls::directio.9"(%"class.hls::directio<ap_uint<1> >"* %0, i1* align 512 %1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1> >.hls::directio.9"(%"class.hls::directio<ap_uint<1> >"* noalias %dst, i1* noalias align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_uint<1> >"* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1> >.12"(%"class.hls::directio<ap_uint<1> >"* nonnull %dst, i1* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<1> >.12"(%"class.hls::directio<ap_uint<1> >"* noalias, i1* noalias align 512) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<1> >"
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
  %11 = call i1 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<1> >s.i1"(i1 %10)
  %oldret3 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %11, 0
  %oldret2 = insertvalue %"struct.ap_int_base<1, false>" undef, %"struct.ssdm_int<1, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<1>" undef, %"struct.ap_int_base<1, false>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_uint<1> >" undef, %"struct.ap_uint<1>" %oldret1, 0
  store %"class.hls::directio<ap_uint<1> >" %oldret, %"class.hls::directio<ap_uint<1> >"* %2
  %12 = bitcast %"class.hls::directio<ap_uint<1> >"* %2 to i8*
  %13 = bitcast %"class.hls::directio<ap_uint<1> >"* %0 to i8*
  call void @fpga_direct_store_1(i8* %12, i8* %13)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<1> >s.i1"(i1 %A) #5 {
  %.0 = insertvalue %"struct.ssdm_int<1, false>" undef, i1 %A, 0
  %oldret = extractvalue %"struct.ssdm_int<1, false>" %.0, 0
  ret i1 %oldret
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<ap_uint<1> >s"(%"class.hls::directio<ap_uint<1> >" %A) #5 {
  %A.0 = extractvalue %"class.hls::directio<ap_uint<1> >" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<1>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<1, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<1, false>" %A.0.0.0, 0
  ret i1 %A.0.0.0.0
}

declare i32 @apatb_example_acc_hw(i1*, i1)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::directio<ap_uint<1> >"* noalias, i1* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<1> >.hls::directio.9"(%"class.hls::directio<ap_uint<1> >"* %0, i1* align 512 %1)
  ret void
}

define i32 @example_acc_hw_stub_wrapper(i1*, i1) #6 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<1> >"
  call void @copy_out(%"class.hls::directio<ap_uint<1> >"* %2, i1* %0)
  %3 = call i32 @example_acc_hw_stub(%"class.hls::directio<ap_uint<1> >"* %2, i1 %1)
  call void @copy_in(%"class.hls::directio<ap_uint<1> >"* %2, i1* %0)
  ret i32 %3
}

declare i32 @example_acc_hw_stub(%"class.hls::directio<ap_uint<1> >"* noalias nonnull, i1 zeroext)

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
