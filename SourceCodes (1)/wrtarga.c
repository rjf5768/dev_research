; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrtarga.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrtarga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.djpeg_dest_struct = type { void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, %struct._IO_FILE*, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.tga_dest_struct = type { %struct.djpeg_dest_struct, i8*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.tga_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 64)
  %12 = bitcast i8* %11 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %12, %struct.tga_dest_struct** %3, align 8
  %13 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %14, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_tga, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %15, align 8
  %16 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %17, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_tga, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %18, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %19)
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 29
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %22, %25
  %27 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 1
  %31 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %31, i32 0, i32 0
  %33 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %32, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = bitcast %struct.jpeg_decompress_struct* %34 to %struct.jpeg_common_struct*
  %36 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %37 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = call i8* %33(%struct.jpeg_common_struct* noundef %35, i32 noundef 1, i64 noundef %40)
  %42 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %43 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 1
  %46 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %46, i32 0, i32 2
  %48 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %47, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  %51 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8** %48(%struct.jpeg_common_struct* noundef %50, i32 noundef 1, i32 noundef %53, i32 noundef 1)
  %55 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %56 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %56, i32 0, i32 4
  store i8** %54, i8*** %57, align 8
  %58 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %59 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %59, i32 0, i32 5
  store i32 1, i32* %60, align 8
  %61 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %3, align 8
  %62 = bitcast %struct.tga_dest_struct* %61 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %62
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_tga(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  %5 = alloca %struct.tga_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  %9 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %10 = bitcast %struct.djpeg_dest_struct* %9 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %10, %struct.tga_dest_struct** %5, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  call void @write_header(%struct.jpeg_decompress_struct* noundef %16, %struct.djpeg_dest_struct* noundef %17, i32 noundef 0)
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 19
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %5, align 8
  %24 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %24, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_gray, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %25, align 8
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %5, align 8
  %28 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %28, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  br label %142

31:                                               ; preds = %2
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %129

36:                                               ; preds = %31
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 19
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %122

41:                                               ; preds = %36
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 31
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 256
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 5
  store i32 1039, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %57 = bitcast %union.anon* %56 to [8 x i32]*
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 0
  store i32 %52, i32* %58, align 4
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 0
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %62, align 8
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %65 = bitcast %struct.jpeg_decompress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* noundef %65)
  br label %66

66:                                               ; preds = %47, %41
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %68 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %69 = load i32, i32* %6, align 4
  call void @write_header(%struct.jpeg_decompress_struct* noundef %67, %struct.djpeg_dest_struct* noundef %68, i32 noundef %69)
  %70 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %5, align 8
  %71 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %71, i32 0, i32 3
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %72, align 8
  store %struct._IO_FILE* %73, %struct._IO_FILE** %8, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %115, %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 32
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %90 = call i32 @putc(i32 noundef %88, %struct._IO_FILE* noundef %89)
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 32
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %102 = call i32 @putc(i32 noundef %100, %struct._IO_FILE* noundef %101)
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 32
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %114 = call i32 @putc(i32 noundef %112, %struct._IO_FILE* noundef %113)
  br label %115

115:                                              ; preds = %78
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %74, !llvm.loop !4

118:                                              ; preds = %74
  %119 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %5, align 8
  %120 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %120, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %121, align 8
  br label %128

122:                                              ; preds = %36
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %124 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  call void @write_header(%struct.jpeg_decompress_struct* noundef %123, %struct.djpeg_dest_struct* noundef %124, i32 noundef 0)
  %125 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %5, align 8
  %126 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %126, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %127, align 8
  br label %128

128:                                              ; preds = %122, %118
  br label %141

129:                                              ; preds = %31
  %130 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %130, i32 0, i32 0
  %132 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %131, align 8
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %132, i32 0, i32 5
  store i32 1034, i32* %133, align 8
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %135, align 8
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i32 0, i32 0
  %138 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %137, align 8
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %140 = bitcast %struct.jpeg_decompress_struct* %139 to %struct.jpeg_common_struct*
  call void %138(%struct.jpeg_common_struct* noundef %140)
  br label %141

141:                                              ; preds = %129, %128
  br label %142

142:                                              ; preds = %141, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_tga(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  %5 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %5, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* noundef %7)
  %9 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %9, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @ferror(%struct._IO_FILE* noundef %11) #4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 36, i32* %18, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %25)
  br label %26

26:                                               ; preds = %14, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @write_header(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [18 x i8], align 16
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 18, i1 false)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 1
  store i8 1, i8* %12, align 1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 5
  store i8 %15, i8* %16, align 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 6
  store i8 %19, i8* %20, align 2
  %21 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 7
  store i8 24, i8* %21, align 1
  br label %22

22:                                               ; preds = %11, %3
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 26
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 12
  store i8 %27, i8* %28, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 26
  %31 = load i32, i32* %30, align 8
  %32 = lshr i32 %31, 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 13
  store i8 %33, i8* %34, align 1
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 27
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 14
  store i8 %39, i8* %40, align 2
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 27
  %43 = load i32, i32* %42, align 4
  %44 = lshr i32 %43, 8
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 15
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 17
  store i8 32, i8* %47, align 1
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %22
  %53 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 2
  store i8 3, i8* %53, align 2
  %54 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 16
  store i8 8, i8* %54, align 16
  br label %65

55:                                               ; preds = %22
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 2
  store i8 1, i8* %59, align 2
  %60 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 16
  store i8 8, i8* %60, align 16
  br label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 2
  store i8 2, i8* %62, align 2
  %63 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 16
  store i8 24, i8* %63, align 16
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %52
  %66 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  %67 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %68 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %67, i32 0, i32 3
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %68, align 8
  %70 = call i64 @fwrite(i8* noundef %66, i64 noundef 1, i64 noundef 18, %struct._IO_FILE* noundef %69)
  %71 = icmp ne i64 %70, 18
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %74, align 8
  %76 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 5
  store i32 36, i32* %76, align 8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %78, align 8
  %80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i32 0, i32 0
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %80, align 8
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %83 = bitcast %struct.jpeg_decompress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* noundef %83)
  br label %84

84:                                               ; preds = %72, %65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_demapped_gray(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tga_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %13 = bitcast %struct.djpeg_dest_struct* %12 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %13, %struct.tga_dest_struct** %7, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 32
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %20 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %26 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 26
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %47, %3
  %32 = load i32, i32* %11, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %11, align 4
  br label %31, !llvm.loop !6

50:                                               ; preds = %31
  %51 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %52 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %55 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = zext i32 %56 to i64
  %58 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %59 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %59, i32 0, i32 3
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %60, align 8
  %62 = call i64 @fwrite(i8* noundef %53, i64 noundef 1, i64 noundef %57, %struct._IO_FILE* noundef %61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_gray_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tga_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %12 = bitcast %struct.djpeg_dest_struct* %11 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %12, %struct.tga_dest_struct** %7, align 8
  %13 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %14 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %20 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 26
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %36, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %9, align 8
  store i8 %33, i8* %34, align 1
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %10, align 4
  br label %25, !llvm.loop !7

39:                                               ; preds = %25
  %40 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %41 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %44 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %48 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %48, i32 0, i32 3
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %49, align 8
  %51 = call i64 @fwrite(i8* noundef %42, i64 noundef 1, i64 noundef %46, %struct._IO_FILE* noundef %50)
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tga_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %12 = bitcast %struct.djpeg_dest_struct* %11 to %struct.tga_dest_struct*
  store %struct.tga_dest_struct* %12, %struct.tga_dest_struct** %7, align 8
  %13 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %14 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %20 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 26
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %54, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %35, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %47, i8* %49, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %10, align 4
  br label %25, !llvm.loop !8

57:                                               ; preds = %25
  %58 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %59 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %62 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  %65 = load %struct.tga_dest_struct*, %struct.tga_dest_struct** %7, align 8
  %66 = getelementptr inbounds %struct.tga_dest_struct, %struct.tga_dest_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %66, i32 0, i32 3
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %67, align 8
  %69 = call i64 @fwrite(i8* noundef %60, i64 noundef 1, i64 noundef %64, %struct._IO_FILE* noundef %68)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
