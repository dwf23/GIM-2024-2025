; ModuleID = 'C:/testing_comm/spi_directio/vitis_files/spi_master_logic/spi_master_logic/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::directio<int, 1>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_spi_master_logic_ir(%"class.hls::directio<int, 1>"* noalias nonnull dereferenceable(4) %data_out, %"class.hls::directio<int, 1>"* noalias nonnull dereferenceable(4) %data_in) local_unnamed_addr #0 {
entry:
  %data_out_copy = alloca i32, align 512
  %data_in_copy = alloca i32, align 512
  call fastcc void @copy_in(%"class.hls::directio<int, 1>"* nonnull %data_out, i32* nonnull align 512 %data_out_copy, %"class.hls::directio<int, 1>"* nonnull %data_in, i32* nonnull align 512 %data_in_copy)
  call void @apatb_spi_master_logic_hw(i32* %data_out_copy, i32* %data_in_copy)
  call void @copy_back(%"class.hls::directio<int, 1>"* %data_out, i32* %data_out_copy, %"class.hls::directio<int, 1>"* %data_in, i32* %data_in_copy)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio.16"(i32* align 512 %1, %"class.hls::directio<int, 1>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio.16"(i32* align 512 %3, %"class.hls::directio<int, 1>"* %2)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %2, i32* align 512 %3)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* noalias %dst, i32* noalias align 512 %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::directio<int, 1>"* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.11"(%"class.hls::directio<int, 1>"* nonnull %dst, i32* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.11"(%"class.hls::directio<int, 1>"* noalias, i32* noalias align 512) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::directio<int, 1>"
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
  %oldret = insertvalue %"class.hls::directio<int, 1>" undef, i32 %8, 0
  store %"class.hls::directio<int, 1>" %oldret, %"class.hls::directio<int, 1>"* %2
  %9 = bitcast %"class.hls::directio<int, 1>"* %2 to i8*
  %10 = bitcast %"class.hls::directio<int, 1>"* %0 to i8*
  call void @fpga_direct_store_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio.16"(i32* noalias align 512 %dst, %"class.hls::directio<int, 1>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq %"class.hls::directio<int, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.19"(i32* nonnull align 512 %dst, %"class.hls::directio<int, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.19"(i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::directio<int, 1>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<int, 1>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<int, 1>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<int, 1>"* %1 to i8*
  call void @fpga_direct_load_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<int, 1>", %"class.hls::directio<int, 1>"* %2
  %9 = call i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<int, 1>s"(%"class.hls::directio<int, 1>" %8)
  store i32 %9, i32* %3
  %10 = bitcast i32* %3 to i8*
  %11 = bitcast i32* %0 to i8*
  call void @fpga_direct_store_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<int, 1>s"(%"class.hls::directio<int, 1>" %A) #5 {
  %A.0 = extractvalue %"class.hls::directio<int, 1>" %A, 0
  ret i32 %A.0
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_spi_master_logic_hw(i32*, i32*)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %2, i32* align 512 %3)
  ret void
}

declare void @spi_master_logic_hw_stub(%"class.hls::directio<int, 1>"* noalias nonnull, %"class.hls::directio<int, 1>"* noalias nonnull)

define void @spi_master_logic_hw_stub_wrapper(i32*, i32*) #6 {
entry:
  %2 = call i8* @malloc(i64 4)
  %3 = bitcast i8* %2 to %"class.hls::directio<int, 1>"*
  %4 = call i8* @malloc(i64 4)
  %5 = bitcast i8* %4 to %"class.hls::directio<int, 1>"*
  call void @copy_out(%"class.hls::directio<int, 1>"* %3, i32* %0, %"class.hls::directio<int, 1>"* %5, i32* %1)
  call void @spi_master_logic_hw_stub(%"class.hls::directio<int, 1>"* %3, %"class.hls::directio<int, 1>"* %5)
  call void @copy_in(%"class.hls::directio<int, 1>"* %3, i32* %0, %"class.hls::directio<int, 1>"* %5, i32* %1)
  call void @free(i8* %2)
  call void @free(i8* %4)
  ret void
}

declare i1 @fpga_direct_valid_4(i8*)

declare void @fpga_direct_store_4(i8*, i8*)

declare void @fpga_direct_load_4(i8*, i8*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="directiocpy_hls" }
attributes #5 = { alwaysinline nounwind readnone willreturn }
attributes #6 = { "fpga.wrapper.func"="stub" }

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
