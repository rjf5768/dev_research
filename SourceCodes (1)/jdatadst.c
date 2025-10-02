; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdatadst.c'
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
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %7, align 8
  %9 = icmp eq %struct.jpeg_destination_mgr* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  %13 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %13, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %14, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  %18 = call i8* %15(%struct.jpeg_common_struct* noundef %17, i32 noundef 0, i64 noundef 56)
  %19 = bitcast i8* %18 to %struct.jpeg_destination_mgr*
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  store %struct.jpeg_destination_mgr* %19, %struct.jpeg_destination_mgr** %21, align 8
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 5
  %25 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %24, align 8
  %26 = bitcast %struct.jpeg_destination_mgr* %25 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %26, %struct.my_destination_mgr** %5, align 8
  %27 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %5, align 8
  %28 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %28, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @init_destination, void (%struct.jpeg_compress_struct*)** %29, align 8
  %30 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %5, align 8
  %31 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %31, i32 0, i32 3
  store i32 (%struct.jpeg_compress_struct*)* @empty_output_buffer, i32 (%struct.jpeg_compress_struct*)** %32, align 8
  %33 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %5, align 8
  %34 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %34, i32 0, i32 4
  store void (%struct.jpeg_compress_struct*)* @term_destination, void (%struct.jpeg_compress_struct*)** %35, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %5, align 8
  %38 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %37, i32 0, i32 1
  store %struct._IO_FILE* %36, %struct._IO_FILE** %38, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_destination(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 5
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %5, align 8
  %7 = bitcast %struct.jpeg_destination_mgr* %6 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %7, %struct.my_destination_mgr** %3, align 8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 0
  %12 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %11, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  %15 = call i8* %12(%struct.jpeg_common_struct* noundef %14, i32 noundef 1, i64 noundef 4096)
  %16 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %17 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %19 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %22 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %25 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %25, i32 0, i32 1
  store i64 4096, i64* %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @empty_output_buffer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 5
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %5, align 8
  %7 = bitcast %struct.jpeg_destination_mgr* %6 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %7, %struct.my_destination_mgr** %3, align 8
  %8 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %9 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %12 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %11, i32 0, i32 1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i64 @fwrite(i8* noundef %10, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef %13)
  %15 = icmp ne i64 %14, 4096
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 36, i32* %20, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %27)
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %30 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %33 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %36 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %36, i32 0, i32 1
  store i64 4096, i64* %37, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @term_destination(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_destination_mgr*, align 8
  %4 = alloca i64, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 5
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %6, align 8
  %8 = bitcast %struct.jpeg_destination_mgr* %7 to %struct.my_destination_mgr*
  store %struct.my_destination_mgr* %8, %struct.my_destination_mgr** %3, align 8
  %9 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %10 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 4096, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %22 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %21, i32 0, i32 1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = call i64 @fwrite(i8* noundef %19, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %23)
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %16
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 36, i32* %31, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %38)
  br label %39

39:                                               ; preds = %27, %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %42 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %41, i32 0, i32 1
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %42, align 8
  %44 = call i32 @fflush(%struct._IO_FILE* noundef %43)
  %45 = load %struct.my_destination_mgr*, %struct.my_destination_mgr** %3, align 8
  %46 = getelementptr inbounds %struct.my_destination_mgr, %struct.my_destination_mgr* %45, i32 0, i32 1
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = call i32 @ferror(%struct._IO_FILE* noundef %47) #3
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %52, align 8
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 5
  store i32 36, i32* %54, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 0
  %59 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %58, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %61 = bitcast %struct.jpeg_compress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* noundef %61)
  br label %62

62:                                               ; preds = %50, %40
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
