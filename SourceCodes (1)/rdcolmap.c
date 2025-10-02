; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdcolmap.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdcolmap.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_color_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 2
  %9 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %8, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  %12 = call i8** %9(%struct.jpeg_common_struct* noundef %11, i32 noundef 1, i32 noundef 256, i32 noundef 3)
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 32
  store i8** %12, i8*** %14, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 31
  store i32 0, i32* %16, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = call i32 @getc(%struct._IO_FILE* noundef %17)
  switch i32 %18, label %25 [
    i32 71, label %19
    i32 80, label %22
  ]

19:                                               ; preds = %2
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @read_gif_map(%struct.jpeg_decompress_struct* noundef %20, %struct._IO_FILE* noundef %21)
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @read_ppm_map(%struct.jpeg_decompress_struct* noundef %23, %struct._IO_FILE* noundef %24)
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 5
  store i32 1038, i32* %29, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %33, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %35 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* noundef %36)
  br label %37

37:                                               ; preds = %25, %22, %19
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_gif_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [13 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 13
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i32 @getc(%struct._IO_FILE* noundef %15)
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = icmp eq i32 %16, -1
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 1038, i32* %25, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %32)
  br label %33

33:                                               ; preds = %21, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %11, !llvm.loop !4

37:                                               ; preds = %11
  %38 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 73
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 70
  br i1 %44, label %45, label %57

45:                                               ; preds = %41, %37
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 1038, i32* %49, align 8
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %56 = bitcast %struct.jpeg_decompress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* noundef %56)
  br label %57

57:                                               ; preds = %45, %41
  %58 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 10
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %64, align 8
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 5
  store i32 1038, i32* %66, align 8
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 0
  %71 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %70, align 8
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %72 to %struct.jpeg_common_struct*
  call void %71(%struct.jpeg_common_struct* noundef %73)
  br label %74

74:                                               ; preds = %62, %57
  %75 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 10
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 7
  %78 = shl i32 2, %77
  store i32 %78, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %118, %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %121

83:                                               ; preds = %79
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %85 = call i32 @getc(%struct._IO_FILE* noundef %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %87 = call i32 @getc(%struct._IO_FILE* noundef %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %89 = call i32 @getc(%struct._IO_FILE* noundef %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %110

98:                                               ; preds = %95, %92, %83
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 5
  store i32 1038, i32* %102, align 8
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %104, align 8
  %106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i32 0, i32 0
  %107 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %106, align 8
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %109 = bitcast %struct.jpeg_decompress_struct* %108 to %struct.jpeg_common_struct*
  call void %107(%struct.jpeg_common_struct* noundef %109)
  br label %110

110:                                              ; preds = %98, %95
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 0
  %114 = load i32, i32* %9, align 4
  %115 = shl i32 %114, 0
  %116 = load i32, i32* %10, align 4
  %117 = shl i32 %116, 0
  call void @add_map_entry(%struct.jpeg_decompress_struct* noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117)
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %79, !llvm.loop !6

121:                                              ; preds = %79
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_ppm_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %15 = call i32 @getc(%struct._IO_FILE* noundef %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %16, %struct._IO_FILE* noundef %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %21 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %19, %struct._IO_FILE* noundef %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %24 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %22, %struct._IO_FILE* noundef %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ule i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ule i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %27, %2
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 1038, i32* %37, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 0
  %42 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %41, align 8
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %44 = bitcast %struct.jpeg_decompress_struct* %43 to %struct.jpeg_common_struct*
  call void %42(%struct.jpeg_common_struct* noundef %44)
  br label %45

45:                                               ; preds = %33, %30
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 255
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 1038, i32* %52, align 8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %57 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %56, align 8
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %59 = bitcast %struct.jpeg_decompress_struct* %58 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* noundef %59)
  br label %60

60:                                               ; preds = %48, %45
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %144 [
    i32 51, label %62
    i32 54, label %94
  ]

62:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %90, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %75 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %73, %struct._IO_FILE* noundef %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %78 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %76, %struct._IO_FILE* noundef %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %81 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %79, %struct._IO_FILE* noundef %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  call void @add_map_entry(%struct.jpeg_decompress_struct* noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85)
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %68, !llvm.loop !7

89:                                               ; preds = %68
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %63, !llvm.loop !8

93:                                               ; preds = %63
  br label %156

94:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %140, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %143

99:                                               ; preds = %95
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %136, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %100
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %106 = call i32 @pbm_getc(%struct._IO_FILE* noundef %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %108 = call i32 @pbm_getc(%struct._IO_FILE* noundef %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %110 = call i32 @pbm_getc(%struct._IO_FILE* noundef %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %119, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %131

119:                                              ; preds = %116, %113, %104
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 0
  %122 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %121, align 8
  %123 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %122, i32 0, i32 5
  store i32 1038, i32* %123, align 8
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 0
  %126 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %125, align 8
  %127 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %126, i32 0, i32 0
  %128 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %127, align 8
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %130 = bitcast %struct.jpeg_decompress_struct* %129 to %struct.jpeg_common_struct*
  call void %128(%struct.jpeg_common_struct* noundef %130)
  br label %131

131:                                              ; preds = %119, %116
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  call void @add_map_entry(%struct.jpeg_decompress_struct* noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135)
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %100, !llvm.loop !9

139:                                              ; preds = %100
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %95, !llvm.loop !10

143:                                              ; preds = %95
  br label %156

144:                                              ; preds = %60
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %146 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 0
  %147 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %146, align 8
  %148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %147, i32 0, i32 5
  store i32 1038, i32* %148, align 8
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 0
  %151 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %150, align 8
  %152 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %151, i32 0, i32 0
  %153 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %152, align 8
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %155 = bitcast %struct.jpeg_decompress_struct* %154 to %struct.jpeg_common_struct*
  call void %153(%struct.jpeg_common_struct* noundef %155)
  br label %156

156:                                              ; preds = %144, %143, %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_map_entry(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 32
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 32
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 32
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %11, align 8
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 31
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %65, %4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %112

64:                                               ; preds = %54, %45, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %32, !llvm.loop !11

68:                                               ; preds = %32
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %69, 256
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 5
  store i32 56, i32* %75, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 6
  %80 = bitcast %union.anon* %79 to [8 x i32]*
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %80, i64 0, i64 0
  store i32 256, i32* %81, align 4
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %83, align 8
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i32 0, i32 0
  %86 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %85, align 8
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %88 = bitcast %struct.jpeg_decompress_struct* %87 to %struct.jpeg_common_struct*
  call void %86(%struct.jpeg_common_struct* noundef %88)
  br label %89

89:                                               ; preds = %71, %68
  %90 = load i32, i32* %6, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 %91, i8* %95, align 1
  %96 = load i32, i32* %7, align 4
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 %97, i8* %101, align 1
  %102 = load i32, i32* %8, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 %103, i8* %107, align 1
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 31
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %89, %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = call i32 @pbm_getc(%struct._IO_FILE* noundef %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 1038, i32* %16, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = bitcast %struct.jpeg_decompress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %23)
  br label %24

24:                                               ; preds = %12, %7
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 13
  br label %37

37:                                               ; preds = %34, %31, %28, %25
  %38 = phi i1 [ true, %31 ], [ true, %28 ], [ true, %25 ], [ %36, %34 ]
  br i1 %38, label %7, label %39, !llvm.loop !12

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 48
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 57
  br i1 %44, label %45, label %57

45:                                               ; preds = %42, %39
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 1038, i32* %49, align 8
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %56 = bitcast %struct.jpeg_decompress_struct* %55 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* noundef %56)
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 48
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %69, %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %62 = call i32 @pbm_getc(%struct._IO_FILE* noundef %61)
  store i32 %62, i32* %5, align 4
  %63 = icmp sge i32 %62, 48
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = icmp sle i32 %65, 57
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i1 [ false, %60 ], [ %66, %64 ]
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = mul i32 %70, 10
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 48
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %60, !llvm.loop !13

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbm_getc(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %18, %8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = call i32 @getc(%struct._IO_FILE* noundef %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, -1
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %9, label %20, !llvm.loop !14

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
