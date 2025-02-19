; ModuleID = 'C:/Users/linds/OneDrive/Desktop/2024-2025_Semester_1/GIM/GIM-2024-2025/spi_directio2/spi_master/spi_master/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::directio<bool, 3>" = type { i1 }
%"class.hls::directio<int, 1>" = type { i32 }

; Function Attrs: noinline
define void @apatb_spi_master_ir(%"class.hls::directio<bool, 3>"* noalias nonnull dereferenceable(1) %sclk, %"class.hls::directio<bool, 3>"* noalias nonnull dereferenceable(1) %cs, %"class.hls::directio<bool, 3>"* noalias nonnull dereferenceable(1) %mosi, %"class.hls::directio<bool, 3>"* noalias nonnull dereferenceable(1) %miso, %"class.hls::directio<int, 1>"* noalias nonnull dereferenceable(4) %data_out, %"class.hls::directio<int, 1>"* noalias nonnull dereferenceable(4) %data_in, i1* noalias nonnull dereferenceable(1) %flag) local_unnamed_addr #0 {
entry:
  %sclk_copy = alloca i1, align 512
  %cs_copy = alloca i1, align 512
  %mosi_copy = alloca i1, align 512
  %miso_copy = alloca i1, align 512
  %data_out_copy = alloca i32, align 512
  %data_in_copy = alloca i32, align 512
  %flag_copy = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::directio<bool, 3>"* nonnull %sclk, i1* nonnull align 512 %sclk_copy, %"class.hls::directio<bool, 3>"* nonnull %cs, i1* nonnull align 512 %cs_copy, %"class.hls::directio<bool, 3>"* nonnull %mosi, i1* nonnull align 512 %mosi_copy, %"class.hls::directio<bool, 3>"* nonnull %miso, i1* nonnull align 512 %miso_copy, %"class.hls::directio<int, 1>"* nonnull %data_out, i32* nonnull align 512 %data_out_copy, %"class.hls::directio<int, 1>"* nonnull %data_in, i32* nonnull align 512 %data_in_copy, i1* nonnull %flag, i1* nonnull align 512 %flag_copy)
  call void @apatb_spi_master_hw(i1* %sclk_copy, i1* %cs_copy, i1* %mosi_copy, i1* %miso_copy, i32* %data_out_copy, i32* %data_in_copy, i1* %flag_copy)
  call void @copy_back(%"class.hls::directio<bool, 3>"* %sclk, i1* %sclk_copy, %"class.hls::directio<bool, 3>"* %cs, i1* %cs_copy, %"class.hls::directio<bool, 3>"* %mosi, i1* %mosi_copy, %"class.hls::directio<bool, 3>"* %miso, i1* %miso_copy, %"class.hls::directio<int, 1>"* %data_out, i32* %data_out_copy, %"class.hls::directio<int, 1>"* %data_in, i32* %data_in_copy, i1* %flag, i1* %flag_copy)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, i1* noalias readonly, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio.39"(i1* align 512 %1, %"class.hls::directio<bool, 3>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio.39"(i1* align 512 %3, %"class.hls::directio<bool, 3>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio.39"(i1* align 512 %5, %"class.hls::directio<bool, 3>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio.39"(i1* align 512 %7, %"class.hls::directio<bool, 3>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio.20"(i32* align 512 %9, %"class.hls::directio<int, 1>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio.20"(i32* align 512 %11, %"class.hls::directio<int, 1>"* %10)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %13, i1* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512 %dst, i1* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = bitcast i1* %src to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, i1* noalias, i1* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %10, i32* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %12, i1* align 512 %13)
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* noalias %dst, i32* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<int, 1>"* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.15"(%"class.hls::directio<int, 1>"* nonnull %dst, i32* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.15"(%"class.hls::directio<int, 1>"* noalias, i32* noalias align 512) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio.20"(i32* noalias align 512 %dst, %"class.hls::directio<int, 1>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq %"class.hls::directio<int, 1>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.23"(i32* nonnull align 512 %dst, %"class.hls::directio<int, 1>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<int, 1>.23"(i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias) unnamed_addr #5 {
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
define internal i32 @"_llvm.fpga.pack.bits.i32.s_class.hls::directio<int, 1>s"(%"class.hls::directio<int, 1>" %A) #6 {
  %A.0 = extractvalue %"class.hls::directio<int, 1>" %A, 0
  ret i32 %A.0
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* noalias %dst, i1* noalias align 512 %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::directio<bool, 3>"* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 3>.34"(%"class.hls::directio<bool, 3>"* nonnull %dst, i1* nonnull align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 3>.34"(%"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<bool, 3>"
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
  %oldret = insertvalue %"class.hls::directio<bool, 3>" undef, i1 %10, 0
  store %"class.hls::directio<bool, 3>" %oldret, %"class.hls::directio<bool, 3>"* %2
  %11 = bitcast %"class.hls::directio<bool, 3>"* %2 to i8*
  %12 = bitcast %"class.hls::directio<bool, 3>"* %0 to i8*
  call void @fpga_direct_store_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio.39"(i1* noalias align 512 %dst, %"class.hls::directio<bool, 3>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq %"class.hls::directio<bool, 3>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 3>.42"(i1* nonnull align 512 %dst, %"class.hls::directio<bool, 3>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @"directiocpy_hls.p0class.hls::directio<bool, 3>.42"(i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias) unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::directio<bool, 3>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::directio<bool, 3>"* %1 to i8*
  %5 = call i1 @fpga_direct_valid_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::directio<bool, 3>"* %2 to i8*
  %7 = bitcast %"class.hls::directio<bool, 3>"* %1 to i8*
  call void @fpga_direct_load_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::directio<bool, 3>", %"class.hls::directio<bool, 3>"* %2
  %9 = call i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<bool, 3>s"(%"class.hls::directio<bool, 3>" %8)
  store i1 %9, i1* %3
  %10 = bitcast i1* %3 to i8*
  %11 = bitcast i1* %0 to i8*
  call void @fpga_direct_store_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i1 @"_llvm.fpga.pack.bits.i1.s_class.hls::directio<bool, 3>s"(%"class.hls::directio<bool, 3>" %A) #6 {
  %A.0 = extractvalue %"class.hls::directio<bool, 3>" %A, 0
  ret i1 %A.0
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_spi_master_hw(i1*, i1*, i1*, i1*, i32*, i32*, i1*)

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<bool, 3>"* noalias, i1* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, %"class.hls::directio<int, 1>"* noalias, i32* noalias align 512, i1* noalias, i1* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %0, i1* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<bool, 3>.hls::directio"(%"class.hls::directio<bool, 3>"* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::directio<int, 1>.hls::directio"(%"class.hls::directio<int, 1>"* %10, i32* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %12, i1* align 512 %13)
  ret void
}

declare void @spi_master_hw_stub(%"class.hls::directio<bool, 3>"* noalias nonnull, %"class.hls::directio<bool, 3>"* noalias nonnull, %"class.hls::directio<bool, 3>"* noalias nonnull, %"class.hls::directio<bool, 3>"* noalias nonnull, %"class.hls::directio<int, 1>"* noalias nonnull, %"class.hls::directio<int, 1>"* noalias nonnull, i1* noalias nonnull)

define void @spi_master_hw_stub_wrapper(i1*, i1*, i1*, i1*, i32*, i32*, i1*) #7 {
entry:
  %7 = call i8* @malloc(i64 1)
  %8 = bitcast i8* %7 to %"class.hls::directio<bool, 3>"*
  %9 = call i8* @malloc(i64 1)
  %10 = bitcast i8* %9 to %"class.hls::directio<bool, 3>"*
  %11 = call i8* @malloc(i64 1)
  %12 = bitcast i8* %11 to %"class.hls::directio<bool, 3>"*
  %13 = call i8* @malloc(i64 1)
  %14 = bitcast i8* %13 to %"class.hls::directio<bool, 3>"*
  %15 = call i8* @malloc(i64 4)
  %16 = bitcast i8* %15 to %"class.hls::directio<int, 1>"*
  %17 = call i8* @malloc(i64 4)
  %18 = bitcast i8* %17 to %"class.hls::directio<int, 1>"*
  call void @copy_out(%"class.hls::directio<bool, 3>"* %8, i1* %0, %"class.hls::directio<bool, 3>"* %10, i1* %1, %"class.hls::directio<bool, 3>"* %12, i1* %2, %"class.hls::directio<bool, 3>"* %14, i1* %3, %"class.hls::directio<int, 1>"* %16, i32* %4, %"class.hls::directio<int, 1>"* %18, i32* %5, i1* null, i1* %6)
  call void @spi_master_hw_stub(%"class.hls::directio<bool, 3>"* %8, %"class.hls::directio<bool, 3>"* %10, %"class.hls::directio<bool, 3>"* %12, %"class.hls::directio<bool, 3>"* %14, %"class.hls::directio<int, 1>"* %16, %"class.hls::directio<int, 1>"* %18, i1* %6)
  call void @copy_in(%"class.hls::directio<bool, 3>"* %8, i1* %0, %"class.hls::directio<bool, 3>"* %10, i1* %1, %"class.hls::directio<bool, 3>"* %12, i1* %2, %"class.hls::directio<bool, 3>"* %14, i1* %3, %"class.hls::directio<int, 1>"* %16, i32* %4, %"class.hls::directio<int, 1>"* %18, i32* %5, i1* null, i1* %6)
  call void @free(i8* %7)
  call void @free(i8* %9)
  call void @free(i8* %11)
  call void @free(i8* %13)
  call void @free(i8* %15)
  call void @free(i8* %17)
  ret void
}

declare i1 @fpga_direct_valid_1(i8*)

declare i1 @fpga_direct_valid_4(i8*)

declare void @fpga_direct_store_1(i8*, i8*)

declare void @fpga_direct_load_1(i8*, i8*)

declare void @fpga_direct_store_4(i8*, i8*)

declare void @fpga_direct_load_4(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="directiocpy_hls" }
attributes #6 = { alwaysinline nounwind readnone willreturn }
attributes #7 = { "fpga.wrapper.func"="stub" }

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
