; ModuleID = './jdatadst.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdatadst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, %struct._IO_FILE*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %3, align 8
  %5 = icmp eq %struct.jpeg_destination_mgr* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i64 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %9, align 8
  %11 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %12 = call i8* %10(%struct.jpeg_common_struct* noundef %11, i32 noundef 0, i64 noundef 56) #3
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %14 = bitcast %struct.jpeg_destination_mgr** %13 to i8**
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %17 = bitcast %struct.jpeg_destination_mgr** %16 to %struct.my_destination_mgr**
  %18 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %18, i64 0, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @init_destination, void (%struct.jpeg_compress_struct*)** %19, align 8
  %20 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %18, i64 0, i32 0, i32 3
  store i32 (%struct.jpeg_compress_struct*)* @empty_output_buffer, i32 (%struct.jpeg_compress_struct*)** %20, align 8
  %21 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %18, i64 0, i32 0, i32 4
  store void (%struct.jpeg_compress_struct*)* @term_destination, void (%struct.jpeg_compress_struct*)** %21, align 8
  %22 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %18, i64 0, i32 1
  store %struct._IO_FILE* %1, %struct._IO_FILE** %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_destination(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %3 = bitcast %struct.jpeg_destination_mgr** %2 to %struct.my_destination_mgr**
  %4 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %10 = call i8* %8(%struct.jpeg_common_struct* noundef %9, i32 noundef 1, i64 noundef 4096) #3
  %11 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 0, i32 1
  store i64 4096, i64* %13, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @empty_output_buffer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %3 = bitcast %struct.jpeg_destination_mgr** %2 to %struct.my_destination_mgr**
  %4 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = call i64 @fwrite(i8* noundef %6, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef %8) #3
  %.not = icmp eq i64 %9, 4096
  br i1 %.not, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 5
  store i32 36, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #3
  br label %19

19:                                               ; preds = %10, %1
  %20 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 0, i32 1
  store i64 4096, i64* %23, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_destination(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %3 = bitcast %struct.jpeg_destination_mgr** %2 to %struct.my_destination_mgr**
  %4 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = sub i64 4096, %6
  %.not = icmp eq i64 %6, 4096
  br i1 %.not, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i64 @fwrite(i8* noundef %10, i64 noundef 1, i64 noundef %7, %struct._IO_FILE* noundef %12) #3
  %.not2 = icmp eq i64 %13, %7
  br i1 %.not2, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 5
  store i32 36, i32* %17, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %22) #3
  br label %23

23:                                               ; preds = %14, %8
  br label %24

24:                                               ; preds = %23, %1
  %25 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i32 @fflush(%struct._IO_FILE* noundef %26) #3
  %28 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %4, i64 0, i32 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %30 = call i32 @ferror(%struct._IO_FILE* noundef %29) #3
  %.not1 = icmp eq i32 %30, 0
  br i1 %.not1, label %40, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 5
  store i32 36, i32* %34, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i64 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %37, align 8
  %39 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* noundef %39) #3
  br label %40

40:                                               ; preds = %31, %24
  ret void
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
