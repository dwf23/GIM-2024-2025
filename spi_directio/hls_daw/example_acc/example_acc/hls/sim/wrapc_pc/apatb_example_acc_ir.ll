; ModuleID = 'C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/example_acc/example_acc/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::directio<int>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define i32 @apatb_example_acc_ir(i32 %w1, i32 %w2, %"class.hls::directio<int>"* noalias nonnull dereferenceable(4) %data_out, i1 zeroext %start) local_unnamed_addr #0 {
entry:
  %data_out_copy = alloca i32, align 512
  call fastcc void @copy_in(%"class.hls::directio<int>"* nonnull %data_out, i32* nonnull align 512 %data_out_copy)
  %0 = call i32 @apatb_example_acc_hw(i32 %w1, i32 %w2, i32* %data_out_copy, i1 %start)
  call void @copy_back(%"class.hls::directio<int>"* %data_out, i32* %data_out_copy)
  ret i32 %0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::directio<int>"* noalias, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int>.hls::directio"(i32* align 512 %1, %"class.hls::directio<int>"* %0)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<int>.hls::directio"(i32* noalias align 512 %dst, %"class.hls::directio<int>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq %"class.hls::directio<int>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<int>"(i32* nonnull align 512 %dst, %"class.hls::directio<int>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<int>"(i32* noalias align 512, %"class.hls::directio<int>"* noalias) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<int>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<int>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<int>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<int>"* %1 to i8*
  call void @fpga_direct_load_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<int>", %"class.hls::directio<int>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<int>s"(%"class.hls::directio<int>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_direct_store_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::directio<int>"* noalias, i32* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int>.hls::directio.5"(%"class.hls::directio<int>"* %0, i32* align 512 %1)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<int>.hls::directio.5"(%"class.hls::directio<int>"* noalias %dst, i32* noalias align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::directio<int>"* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<int>.8"(%"class.hls::directio<int>"* nonnull %dst, i32* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<int>.8"(%"class.hls::directio<int>"* noalias, i32* noalias align 512) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::directio<int>"
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
  %oldret = insertvalue %"class.hls::directio<int>" undef, i32 %8, 0
  store %"class.hls::directio<int>" %oldret, %"class.hls::directio<int>"* %2
  %9 = bitcast %"class.hls::directio<int>"* %2 to i8*
  %10 = bitcast %"class.hls::directio<int>"* %0 to i8*
  call void @fpga_direct_store_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<int>s"(%"class.hls::directio<int>" %A) #5 {
  %A.0 = extractvalue %"class.hls::directio<int>" %A, 0
  ret i32 %A.0
}

declare i32 @apatb_example_acc_hw(i32, i32, i32*, i1)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::directio<int>"* noalias, i32* noalias align 512) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int>.hls::directio.5"(%"class.hls::directio<int>"* %0, i32* align 512 %1)
  ret void
}

define i32 @example_acc_hw_stub_wrapper(i32, i32, i32*, i1) #6 {
entry:
  %4 = alloca %"class.hls::directio<int>"
  call void @copy_out(%"class.hls::directio<int>"* %4, i32* %2)
  %5 = call i32 @example_acc_hw_stub(i32 %0, i32 %1, %"class.hls::directio<int>"* %4, i1 %3)
  call void @copy_in(%"class.hls::directio<int>"* %4, i32* %2)
  ret i32 %5
}

declare i32 @example_acc_hw_stub(i32, i32, %"class.hls::directio<int>"* noalias nonnull, i1 zeroext)

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
