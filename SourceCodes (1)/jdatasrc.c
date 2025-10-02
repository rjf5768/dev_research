; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdatasrc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdatasrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, %struct._IO_FILE*, i8*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 5
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %7, align 8
  %9 = icmp eq %struct.jpeg_source_mgr* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 1
  %13 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %13, i32 0, i32 0
  %15 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %14, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  %18 = call i8* %15(%struct.jpeg_common_struct* noundef %17, i32 noundef 0, i64 noundef 80)
  %19 = bitcast i8* %18 to %struct.jpeg_source_mgr*
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 5
  store %struct.jpeg_source_mgr* %19, %struct.jpeg_source_mgr** %21, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 5
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %23, align 8
  %25 = bitcast %struct.jpeg_source_mgr* %24 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %25, %struct.my_source_mgr** %5, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i32 0, i32 0
  %30 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %29, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  %33 = call i8* %30(%struct.jpeg_common_struct* noundef %32, i32 noundef 0, i64 noundef 4096)
  %34 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %35 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %10, %2
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 5
  %39 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %38, align 8
  %40 = bitcast %struct.jpeg_source_mgr* %39 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %40, %struct.my_source_mgr** %5, align 8
  %41 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %42 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @init_source, void (%struct.jpeg_decompress_struct*)** %43, align 8
  %44 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %45 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %45, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @fill_input_buffer, i32 (%struct.jpeg_decompress_struct*)** %46, align 8
  %47 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %48 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %48, i32 0, i32 4
  store void (%struct.jpeg_decompress_struct*, i64)* @skip_input_data, void (%struct.jpeg_decompress_struct*, i64)** %49, align 8
  %50 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %51 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %51, i32 0, i32 5
  store i32 (%struct.jpeg_decompress_struct*, i32)* @jpeg_resync_to_restart, i32 (%struct.jpeg_decompress_struct*, i32)** %52, align 8
  %53 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %54 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %54, i32 0, i32 6
  store void (%struct.jpeg_decompress_struct*)* @term_source, void (%struct.jpeg_decompress_struct*)** %55, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %57 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %58 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %57, i32 0, i32 1
  store %struct._IO_FILE* %56, %struct._IO_FILE** %58, align 8
  %59 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %60 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %63 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %63, i32 0, i32 0
  store i8* null, i8** %64, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_source(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 5
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %5, align 8
  %7 = bitcast %struct.jpeg_source_mgr* %6 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %7, %struct.my_source_mgr** %3, align 8
  %8 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %9 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %8, i32 0, i32 3
  store i32 1, i32* %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fill_input_buffer(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_source_mgr*, align 8
  %4 = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 5
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %6, align 8
  %8 = bitcast %struct.jpeg_source_mgr* %7 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %8, %struct.my_source_mgr** %3, align 8
  %9 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %10 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %12, i32 0, i32 1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i64 @fread(i8* noundef %11, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %1
  %19 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %20 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 41, i32* %27, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %34)
  br label %35

35:                                               ; preds = %23, %18
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 5
  store i32 116, i32* %39, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 1
  %44 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %43, align 8
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* noundef %46, i32 noundef -1)
  %47 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %48 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 -1, i8* %50, align 1
  %51 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %52 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 -39, i8* %54, align 1
  store i64 2, i64* %4, align 8
  br label %55

55:                                               ; preds = %35, %1
  %56 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %57 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %60 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %64 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %67 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_input_data(%struct.jpeg_decompress_struct* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.my_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 5
  %8 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %7, align 8
  %9 = bitcast %struct.jpeg_source_mgr* %8 to %struct.my_source_mgr*
  store %struct.my_source_mgr* %9, %struct.my_source_mgr** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %20, %12
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %16 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %22 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %28 = call i32 @fill_input_buffer(%struct.jpeg_decompress_struct* noundef %27)
  br label %13, !llvm.loop !4

29:                                               ; preds = %13
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %32 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %30
  store i8* %35, i8** %33, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.my_source_mgr*, %struct.my_source_mgr** %5, align 8
  %38 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %36
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @term_source(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
