; ModuleID = 'C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/example_acc/example_acc/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::directio<ap_uint<32> >" = type { %"struct.ap_uint<32>" }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define i32 @apatb_example_acc_ir(%"struct.ap_uint<32>"* nocapture readonly %w1, %"struct.ap_uint<32>"* nocapture readonly %w2, %"class.hls::directio<ap_uint<32> >"* noalias nonnull dereferenceable(4) %data_out, i1 zeroext %start) local_unnamed_addr #0 {
entry:
  %data_out_copy = alloca i32, align 512
  call fastcc void @copy_in(%"class.hls::directio<ap_uint<32> >"* nonnull %data_out, i32* nonnull align 512 %data_out_copy)
  %0 = call i32 @apatb_example_acc_hw(%"struct.ap_uint<32>"* %w1, %"struct.ap_uint<32>"* %w2, i32* %data_out_copy, i1 %start)
  call void @copy_back(%"class.hls::directio<ap_uint<32> >"* %data_out, i32* %data_out_copy)
  ret i32 %0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::directio<ap_uint<32> >"* noalias, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<32> >.hls::directio"(i32* align 512 %1, %"class.hls::directio<ap_uint<32> >"* %0)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<32> >.hls::directio"(i32* noalias align 512 %dst, %"class.hls::directio<ap_uint<32> >"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq %"class.hls::directio<ap_uint<32> >"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<32> >"(i32* nonnull align 512 %dst, %"class.hls::directio<ap_uint<32> >"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<32> >"(i32* noalias align 512, %"class.hls::directio<ap_uint<32> >"* noalias) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<32> >"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<ap_uint<32> >"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<ap_uint<32> >"* %2 to i8*
  %7 = bitcast %"class.hls::directio<ap_uint<32> >"* %1 to i8*
  call void @fpga_direct_load_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<ap_uint<32> >", %"class.hls::directio<ap_uint<32> >"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<ap_uint<32> >s"(%"class.hls::directio<ap_uint<32> >" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_direct_store_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::directio<ap_uint<32> >"* noalias, i32* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<32> >.hls::directio.5"(%"class.hls::directio<ap_uint<32> >"* %0, i32* align 512 %1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<32> >.hls::directio.5"(%"class.hls::directio<ap_uint<32> >"* noalias %dst, i32* noalias align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::directio<ap_uint<32> >"* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<32> >.8"(%"class.hls::directio<ap_uint<32> >"* nonnull %dst, i32* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<ap_uint<32> >.8"(%"class.hls::directio<ap_uint<32> >"* noalias, i32* noalias align 512) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<ap_uint<32> >"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_direct_valid_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %3 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_direct_load_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %3
  %9 = call i32 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<32> >s.i32"(i32 %8)
  %oldret3 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %9, 0
  %oldret2 = insertvalue %"struct.ap_int_base<32, false>" undef, %"struct.ssdm_int<32, false>" %oldret3, 0
  %oldret1 = insertvalue %"struct.ap_uint<32>" undef, %"struct.ap_int_base<32, false>" %oldret2, 0
  %oldret = insertvalue %"class.hls::directio<ap_uint<32> >" undef, %"struct.ap_uint<32>" %oldret1, 0
  store %"class.hls::directio<ap_uint<32> >" %oldret, %"class.hls::directio<ap_uint<32> >"* %2
  %10 = bitcast %"class.hls::directio<ap_uint<32> >"* %2 to i8*
  %11 = bitcast %"class.hls::directio<ap_uint<32> >"* %0 to i8*
  call void @fpga_direct_store_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @"_llvm.fpga.unpack.bits.s_class.hls::directio<ap_uint<32> >s.i32"(i32 %A) #5 {
  %.0 = insertvalue %"struct.ssdm_int<32, false>" undef, i32 %A, 0
  %oldret = extractvalue %"struct.ssdm_int<32, false>" %.0, 0
  ret i32 %oldret
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<ap_uint<32> >s"(%"class.hls::directio<ap_uint<32> >" %A) #5 {
  %A.0 = extractvalue %"class.hls::directio<ap_uint<32> >" %A, 0
  %A.0.0 = extractvalue %"struct.ap_uint<32>" %A.0, 0
  %A.0.0.0 = extractvalue %"struct.ap_int_base<32, false>" %A.0.0, 0
  %A.0.0.0.0 = extractvalue %"struct.ssdm_int<32, false>" %A.0.0.0, 0
  ret i32 %A.0.0.0.0
}

declare i32 @apatb_example_acc_hw(%"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, i32*, i1)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::directio<ap_uint<32> >"* noalias, i32* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<ap_uint<32> >.hls::directio.5"(%"class.hls::directio<ap_uint<32> >"* %0, i32* align 512 %1)
  ret void
}

define i32 @example_acc_hw_stub_wrapper(%"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, i32*, i1) #6 {
entry:
  %4 = alloca %"class.hls::directio<ap_uint<32> >"
  call void @copy_out(%"class.hls::directio<ap_uint<32> >"* %4, i32* %2)
  %5 = call i32 @example_acc_hw_stub(%"struct.ap_uint<32>"* %0, %"struct.ap_uint<32>"* %1, %"class.hls::directio<ap_uint<32> >"* %4, i1 %3)
  call void @copy_in(%"class.hls::directio<ap_uint<32> >"* %4, i32* %2)
  ret i32 %5
}

declare i32 @example_acc_hw_stub(%"struct.ap_uint<32>"* nocapture readonly, %"struct.ap_uint<32>"* nocapture readonly, %"class.hls::directio<ap_uint<32> >"* noalias nonnull, i1 zeroext)

declare i1 @fpga_direct_valid_4(i8*)

declare void @fpga_direct_store_4(i8*, i8*)

declare void @fpga_direct_load_4(i8*, i8*)

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
