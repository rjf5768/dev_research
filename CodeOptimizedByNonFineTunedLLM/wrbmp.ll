; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrbmp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrbmp.c"
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
%struct.bmp_dest_struct = type { %struct.djpeg_dest_struct, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmp_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 0
  %12 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %11, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %13 to %struct.jpeg_common_struct*
  %15 = call i8* %12(%struct.jpeg_common_struct* noundef %14, i32 noundef 1, i64 noundef 80)
  %16 = bitcast i8* %15 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %16, %struct.bmp_dest_struct** %5, align 8
  %17 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %18 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %18, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_bmp, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %19, align 8
  %20 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %21 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %21, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_bmp, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %25 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %32 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %32, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %33, align 8
  br label %66

34:                                               ; preds = %2
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 19
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %46 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %46, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %47, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %50 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %50, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %65

53:                                               ; preds = %34
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 5
  store i32 1005, i32* %57, align 8
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %59, align 8
  %61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 0
  %62 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %61, align 8
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %64 = bitcast %struct.jpeg_decompress_struct* %63 to %struct.jpeg_common_struct*
  call void %62(%struct.jpeg_common_struct* noundef %64)
  br label %65

65:                                               ; preds = %53, %52
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %67)
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 26
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 29
  %73 = load i32, i32* %72, align 4
  %74 = mul i32 %70, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %77 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %82, %66
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 3
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %78, !llvm.loop !4

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %88 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %91 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = sub i32 %89, %92
  %94 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %95 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 1
  %98 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %97, align 8
  %99 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %98, i32 0, i32 4
  %100 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %99, align 8
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %102 = bitcast %struct.jpeg_decompress_struct* %101 to %struct.jpeg_common_struct*
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 27
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.jvirt_sarray_control* %100(%struct.jpeg_common_struct* noundef %102, i32 noundef 1, i32 noundef 0, i32 noundef %103, i32 noundef %106, i32 noundef 1)
  %108 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %109 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %108, i32 0, i32 2
  store %struct.jvirt_sarray_control* %107, %struct.jvirt_sarray_control** %109, align 8
  %110 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %111 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %110, i32 0, i32 6
  store i32 0, i32* %111, align 4
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 2
  %114 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %113, align 8
  %115 = icmp ne %struct.jpeg_progress_mgr* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %85
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 2
  %119 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %118, align 8
  %120 = bitcast %struct.jpeg_progress_mgr* %119 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %120, %struct.cdjpeg_progress_mgr** %7, align 8
  %121 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %122 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %85
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 1
  %128 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %127, align 8
  %129 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %128, i32 0, i32 2
  %130 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %129, align 8
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %132 = bitcast %struct.jpeg_decompress_struct* %131 to %struct.jpeg_common_struct*
  %133 = load i32, i32* %6, align 4
  %134 = call i8** %130(%struct.jpeg_common_struct* noundef %132, i32 noundef 1, i32 noundef %133, i32 noundef 1)
  %135 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %136 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %136, i32 0, i32 4
  store i8** %134, i8*** %137, align 8
  %138 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %139 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %139, i32 0, i32 5
  store i32 1, i32* %140, align 8
  %141 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %142 = bitcast %struct.bmp_dest_struct* %141 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %142
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_bmp(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_bmp(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  %5 = alloca %struct.bmp_dest_struct*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  %12 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %13 = bitcast %struct.djpeg_dest_struct* %12 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %13, %struct.bmp_dest_struct** %5, align 8
  %14 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %15 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %15, i32 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  store %struct._IO_FILE* %17, %struct._IO_FILE** %6, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 2
  %20 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %19, align 8
  %21 = bitcast %struct.jpeg_progress_mgr* %20 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %21, %struct.cdjpeg_progress_mgr** %11, align 8
  %22 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %23 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %28 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  call void @write_os2_header(%struct.jpeg_decompress_struct* noundef %27, %struct.bmp_dest_struct* noundef %28)
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %31 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  call void @write_bmp_header(%struct.jpeg_decompress_struct* noundef %30, %struct.bmp_dest_struct* noundef %31)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 27
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %101, %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %104

39:                                               ; preds = %36
  %40 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %11, align 8
  %41 = icmp ne %struct.cdjpeg_progress_mgr* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 27
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %11, align 8
  %50 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 27
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %11, align 8
  %57 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %11, align 8
  %60 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to void (%struct.jpeg_common_struct*)**
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %62, align 8
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %65 = bitcast %struct.jpeg_decompress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* noundef %65)
  br label %66

66:                                               ; preds = %42, %39
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 1
  %69 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %69, i32 0, i32 7
  %71 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %70, align 8
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %72 to %struct.jpeg_common_struct*
  %74 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %75 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %74, i32 0, i32 2
  %76 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sub i32 %77, 1
  %79 = call i8** %71(%struct.jpeg_common_struct* noundef %73, %struct.jvirt_sarray_control* noundef %76, i32 noundef %78, i32 noundef 1, i32 noundef 0)
  store i8** %79, i8*** %7, align 8
  %80 = load i8**, i8*** %7, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %8, align 8
  %83 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %5, align 8
  %84 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %97, %66
  %87 = load i32, i32* %10, align 4
  %88 = icmp ugt i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %94 = call i32 @putc(i32 noundef %92, %struct._IO_FILE* noundef %93)
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %10, align 4
  br label %86, !llvm.loop !6

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %9, align 4
  br label %36, !llvm.loop !7

104:                                              ; preds = %36
  %105 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %11, align 8
  %106 = icmp ne %struct.cdjpeg_progress_mgr* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %11, align 8
  %109 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %107, %104
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %114 = call i32 @fflush(%struct._IO_FILE* noundef %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %116 = call i32 @ferror(%struct._IO_FILE* noundef %115) #4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 0
  %121 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %120, align 8
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %121, i32 0, i32 5
  store i32 36, i32* %122, align 8
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %124, align 8
  %126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 0
  %127 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %126, align 8
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %129 = bitcast %struct.jpeg_decompress_struct* %128 to %struct.jpeg_common_struct*
  call void %127(%struct.jpeg_common_struct* noundef %129)
  br label %130

130:                                              ; preds = %118, %112
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_gray_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmp_dest_struct*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %14 = bitcast %struct.djpeg_dest_struct* %13 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %14, %struct.bmp_dest_struct** %7, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 7
  %19 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %18, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %22 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %23 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %22, i32 0, i32 2
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %23, align 8
  %25 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %26 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i8** %19(%struct.jpeg_common_struct* noundef %21, %struct.jvirt_sarray_control* noundef %24, i32 noundef %27, i32 noundef 1, i32 noundef 1)
  store i8** %28, i8*** %8, align 8
  %29 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %30 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %34 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %34, i32 0, i32 4
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 26
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %54, %3
  %46 = load i32, i32* %11, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i8, i8* %49, align 1
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  store i8 %51, i8* %52, align 1
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %11, align 4
  br label %45, !llvm.loop !8

57:                                               ; preds = %45
  %58 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %59 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %65, %57
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i8 0, i8* %66, align 1
  br label %61, !llvm.loop !9

68:                                               ; preds = %61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmp_dest_struct*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %14 = bitcast %struct.djpeg_dest_struct* %13 to %struct.bmp_dest_struct*
  store %struct.bmp_dest_struct* %14, %struct.bmp_dest_struct** %7, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 7
  %19 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %18, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %20 to %struct.jpeg_common_struct*
  %22 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %23 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %22, i32 0, i32 2
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %23, align 8
  %25 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %26 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i8** %19(%struct.jpeg_common_struct* noundef %21, %struct.jvirt_sarray_control* noundef %24, i32 noundef %27, i32 noundef 1, i32 noundef 1)
  store i8** %28, i8*** %8, align 8
  %29 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %30 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %34 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %34, i32 0, i32 4
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i8**, i8*** %8, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 26
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %66, %3
  %46 = load i32, i32* %11, align 4
  %47 = icmp ugt i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i8, i8* %49, align 1
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %51, i8* %53, align 1
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  %61 = load i8, i8* %59, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 %61, i8* %63, align 1
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %45, !llvm.loop !10

69:                                               ; preds = %45
  %70 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %7, align 8
  %71 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %77, %69
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %12, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  store i8 0, i8* %78, align 1
  br label %73, !llvm.loop !11

80:                                               ; preds = %73
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @write_os2_header(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.bmp_dest_struct*, align 8
  %5 = alloca [14 x i8], align 1
  %6 = alloca [12 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.bmp_dest_struct* %1, %struct.bmp_dest_struct** %4, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 8, i32* %9, align 4
  store i32 256, i32* %10, align 4
  br label %22

21:                                               ; preds = %15
  store i32 24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %24

23:                                               ; preds = %2
  store i32 8, i32* %9, align 4
  store i32 256, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 3
  %27 = add nsw i32 26, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %31 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 27
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nsw i64 %33, %37
  %39 = add nsw i64 %29, %38
  store i64 %39, i64* %8, align 8
  %40 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 14, i1 false)
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %41, i8 0, i64 12, i1 false)
  %42 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  store i8 66, i8* %42, align 1
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 1
  store i8 77, i8* %43, align 1
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, 255
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 2
  store i8 %46, i8* %47, align 1
  %48 = load i64, i64* %8, align 8
  %49 = ashr i64 %48, 8
  %50 = and i64 %49, 255
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 3
  store i8 %51, i8* %52, align 1
  %53 = load i64, i64* %8, align 8
  %54 = ashr i64 %53, 16
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 4
  store i8 %56, i8* %57, align 1
  %58 = load i64, i64* %8, align 8
  %59 = ashr i64 %58, 24
  %60 = and i64 %59, 255
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 5
  store i8 %61, i8* %62, align 1
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, 255
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 10
  store i8 %65, i8* %66, align 1
  %67 = load i64, i64* %7, align 8
  %68 = ashr i64 %67, 8
  %69 = and i64 %68, 255
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 11
  store i8 %70, i8* %71, align 1
  %72 = load i64, i64* %7, align 8
  %73 = ashr i64 %72, 16
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 12
  store i8 %75, i8* %76, align 1
  %77 = load i64, i64* %7, align 8
  %78 = ashr i64 %77, 24
  %79 = and i64 %78, 255
  %80 = trunc i64 %79 to i8
  %81 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 13
  store i8 %80, i8* %81, align 1
  %82 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  store i8 12, i8* %82, align 1
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %83, align 1
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 26
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 4
  store i8 %88, i8* %89, align 1
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 26
  %92 = load i32, i32* %91, align 8
  %93 = lshr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 5
  store i8 %95, i8* %96, align 1
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 27
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 255
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 6
  store i8 %101, i8* %102, align 1
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 27
  %105 = load i32, i32* %104, align 4
  %106 = lshr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 7
  store i8 %108, i8* %109, align 1
  %110 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 8
  store i8 1, i8* %110, align 1
  %111 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 9
  store i8 0, i8* %111, align 1
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 255
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 10
  store i8 %114, i8* %115, align 1
  %116 = load i32, i32* %9, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 11
  store i8 %119, i8* %120, align 1
  %121 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %122 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %123 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %123, i32 0, i32 3
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %124, align 8
  %126 = call i64 @fwrite(i8* noundef %121, i64 noundef 1, i64 noundef 14, %struct._IO_FILE* noundef %125)
  %127 = icmp ne i64 %126, 14
  br i1 %127, label %128, label %140

128:                                              ; preds = %24
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 0
  %131 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %130, align 8
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %131, i32 0, i32 5
  store i32 36, i32* %132, align 8
  %133 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %133, i32 0, i32 0
  %135 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %134, align 8
  %136 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %135, i32 0, i32 0
  %137 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %136, align 8
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %139 = bitcast %struct.jpeg_decompress_struct* %138 to %struct.jpeg_common_struct*
  call void %137(%struct.jpeg_common_struct* noundef %139)
  br label %140

140:                                              ; preds = %128, %24
  %141 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %142 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %143 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %143, i32 0, i32 3
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %144, align 8
  %146 = call i64 @fwrite(i8* noundef %141, i64 noundef 1, i64 noundef 12, %struct._IO_FILE* noundef %145)
  %147 = icmp ne i64 %146, 12
  br i1 %147, label %148, label %160

148:                                              ; preds = %140
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 0
  %151 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %150, align 8
  %152 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %151, i32 0, i32 5
  store i32 36, i32* %152, align 8
  %153 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %153, i32 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %154, align 8
  %156 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i32 0, i32 0
  %157 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %156, align 8
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %159 = bitcast %struct.jpeg_decompress_struct* %158 to %struct.jpeg_common_struct*
  call void %157(%struct.jpeg_common_struct* noundef %159)
  br label %160

160:                                              ; preds = %148, %140
  %161 = load i32, i32* %10, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %165 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %166 = load i32, i32* %10, align 4
  call void @write_colormap(%struct.jpeg_decompress_struct* noundef %164, %struct.bmp_dest_struct* noundef %165, i32 noundef %166, i32 noundef 3)
  br label %167

167:                                              ; preds = %163, %160
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_bmp_header(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.bmp_dest_struct*, align 8
  %5 = alloca [14 x i8], align 1
  %6 = alloca [40 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.bmp_dest_struct* %1, %struct.bmp_dest_struct** %4, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 8, i32* %9, align 4
  store i32 256, i32* %10, align 4
  br label %22

21:                                               ; preds = %15
  store i32 24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %24

23:                                               ; preds = %2
  store i32 8, i32* %9, align 4
  store i32 256, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 54, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %31 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 27
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nsw i64 %33, %37
  %39 = add nsw i64 %29, %38
  store i64 %39, i64* %8, align 8
  %40 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 14, i1 false)
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 40, i1 false)
  %42 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  store i8 66, i8* %42, align 1
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 1
  store i8 77, i8* %43, align 1
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, 255
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 2
  store i8 %46, i8* %47, align 1
  %48 = load i64, i64* %8, align 8
  %49 = ashr i64 %48, 8
  %50 = and i64 %49, 255
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 3
  store i8 %51, i8* %52, align 1
  %53 = load i64, i64* %8, align 8
  %54 = ashr i64 %53, 16
  %55 = and i64 %54, 255
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 4
  store i8 %56, i8* %57, align 1
  %58 = load i64, i64* %8, align 8
  %59 = ashr i64 %58, 24
  %60 = and i64 %59, 255
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 5
  store i8 %61, i8* %62, align 1
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, 255
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 10
  store i8 %65, i8* %66, align 1
  %67 = load i64, i64* %7, align 8
  %68 = ashr i64 %67, 8
  %69 = and i64 %68, 255
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 11
  store i8 %70, i8* %71, align 1
  %72 = load i64, i64* %7, align 8
  %73 = ashr i64 %72, 16
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 12
  store i8 %75, i8* %76, align 1
  %77 = load i64, i64* %7, align 8
  %78 = ashr i64 %77, 24
  %79 = and i64 %78, 255
  %80 = trunc i64 %79 to i8
  %81 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 13
  store i8 %80, i8* %81, align 1
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  store i8 40, i8* %82, align 16
  %83 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %83, align 1
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 26
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 4
  store i8 %88, i8* %89, align 4
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 26
  %92 = load i32, i32* %91, align 8
  %93 = lshr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 5
  store i8 %95, i8* %96, align 1
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 26
  %99 = load i32, i32* %98, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 6
  store i8 %102, i8* %103, align 2
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 26
  %106 = load i32, i32* %105, align 8
  %107 = lshr i32 %106, 24
  %108 = and i32 %107, 255
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 7
  store i8 %109, i8* %110, align 1
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 27
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 255
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 8
  store i8 %115, i8* %116, align 8
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 27
  %119 = load i32, i32* %118, align 4
  %120 = lshr i32 %119, 8
  %121 = and i32 %120, 255
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 9
  store i8 %122, i8* %123, align 1
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 27
  %126 = load i32, i32* %125, align 4
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 10
  store i8 %129, i8* %130, align 2
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 27
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 24
  %135 = and i32 %134, 255
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 11
  store i8 %136, i8* %137, align 1
  %138 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 12
  store i8 1, i8* %138, align 4
  %139 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 13
  store i8 0, i8* %139, align 1
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 14
  store i8 %142, i8* %143, align 2
  %144 = load i32, i32* %9, align 4
  %145 = ashr i32 %144, 8
  %146 = and i32 %145, 255
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 15
  store i8 %147, i8* %148, align 1
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 51
  %151 = load i8, i8* %150, align 8
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %233

154:                                              ; preds = %24
  %155 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %156 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %155, i32 0, i32 52
  %157 = load i16, i16* %156, align 2
  %158 = zext i16 %157 to i32
  %159 = mul nsw i32 %158, 100
  %160 = sext i32 %159 to i64
  %161 = and i64 %160, 255
  %162 = trunc i64 %161 to i8
  %163 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 24
  store i8 %162, i8* %163, align 8
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %165 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 52
  %166 = load i16, i16* %165, align 2
  %167 = zext i16 %166 to i32
  %168 = mul nsw i32 %167, 100
  %169 = sext i32 %168 to i64
  %170 = ashr i64 %169, 8
  %171 = and i64 %170, 255
  %172 = trunc i64 %171 to i8
  %173 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 25
  store i8 %172, i8* %173, align 1
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %175 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 52
  %176 = load i16, i16* %175, align 2
  %177 = zext i16 %176 to i32
  %178 = mul nsw i32 %177, 100
  %179 = sext i32 %178 to i64
  %180 = ashr i64 %179, 16
  %181 = and i64 %180, 255
  %182 = trunc i64 %181 to i8
  %183 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 26
  store i8 %182, i8* %183, align 2
  %184 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %184, i32 0, i32 52
  %186 = load i16, i16* %185, align 2
  %187 = zext i16 %186 to i32
  %188 = mul nsw i32 %187, 100
  %189 = sext i32 %188 to i64
  %190 = ashr i64 %189, 24
  %191 = and i64 %190, 255
  %192 = trunc i64 %191 to i8
  %193 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 27
  store i8 %192, i8* %193, align 1
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 53
  %196 = load i16, i16* %195, align 4
  %197 = zext i16 %196 to i32
  %198 = mul nsw i32 %197, 100
  %199 = sext i32 %198 to i64
  %200 = and i64 %199, 255
  %201 = trunc i64 %200 to i8
  %202 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 28
  store i8 %201, i8* %202, align 4
  %203 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %204 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %203, i32 0, i32 53
  %205 = load i16, i16* %204, align 4
  %206 = zext i16 %205 to i32
  %207 = mul nsw i32 %206, 100
  %208 = sext i32 %207 to i64
  %209 = ashr i64 %208, 8
  %210 = and i64 %209, 255
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 29
  store i8 %211, i8* %212, align 1
  %213 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %214 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %213, i32 0, i32 53
  %215 = load i16, i16* %214, align 4
  %216 = zext i16 %215 to i32
  %217 = mul nsw i32 %216, 100
  %218 = sext i32 %217 to i64
  %219 = ashr i64 %218, 16
  %220 = and i64 %219, 255
  %221 = trunc i64 %220 to i8
  %222 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 30
  store i8 %221, i8* %222, align 2
  %223 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %224 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %223, i32 0, i32 53
  %225 = load i16, i16* %224, align 4
  %226 = zext i16 %225 to i32
  %227 = mul nsw i32 %226, 100
  %228 = sext i32 %227 to i64
  %229 = ashr i64 %228, 24
  %230 = and i64 %229, 255
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 31
  store i8 %231, i8* %232, align 1
  br label %233

233:                                              ; preds = %154, %24
  %234 = load i32, i32* %10, align 4
  %235 = and i32 %234, 255
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 32
  store i8 %236, i8* %237, align 16
  %238 = load i32, i32* %10, align 4
  %239 = ashr i32 %238, 8
  %240 = and i32 %239, 255
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 33
  store i8 %241, i8* %242, align 1
  %243 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0
  %244 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %245 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %245, i32 0, i32 3
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %246, align 8
  %248 = call i64 @fwrite(i8* noundef %243, i64 noundef 1, i64 noundef 14, %struct._IO_FILE* noundef %247)
  %249 = icmp ne i64 %248, 14
  br i1 %249, label %250, label %262

250:                                              ; preds = %233
  %251 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %252 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %251, i32 0, i32 0
  %253 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %252, align 8
  %254 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %253, i32 0, i32 5
  store i32 36, i32* %254, align 8
  %255 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %256 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %255, i32 0, i32 0
  %257 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %256, align 8
  %258 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %257, i32 0, i32 0
  %259 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %258, align 8
  %260 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %261 = bitcast %struct.jpeg_decompress_struct* %260 to %struct.jpeg_common_struct*
  call void %259(%struct.jpeg_common_struct* noundef %261)
  br label %262

262:                                              ; preds = %250, %233
  %263 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %264 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %265 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %265, i32 0, i32 3
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %266, align 8
  %268 = call i64 @fwrite(i8* noundef %263, i64 noundef 1, i64 noundef 40, %struct._IO_FILE* noundef %267)
  %269 = icmp ne i64 %268, 40
  br i1 %269, label %270, label %282

270:                                              ; preds = %262
  %271 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %272 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %271, i32 0, i32 0
  %273 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %272, align 8
  %274 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %273, i32 0, i32 5
  store i32 36, i32* %274, align 8
  %275 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %276 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %275, i32 0, i32 0
  %277 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %276, align 8
  %278 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %277, i32 0, i32 0
  %279 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %278, align 8
  %280 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %281 = bitcast %struct.jpeg_decompress_struct* %280 to %struct.jpeg_common_struct*
  call void %279(%struct.jpeg_common_struct* noundef %281)
  br label %282

282:                                              ; preds = %270, %262
  %283 = load i32, i32* %10, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %287 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %4, align 8
  %288 = load i32, i32* %10, align 4
  call void @write_colormap(%struct.jpeg_decompress_struct* noundef %286, %struct.bmp_dest_struct* noundef %287, i32 noundef %288, i32 noundef 4)
  br label %289

289:                                              ; preds = %285, %282
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @write_colormap(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.bmp_dest_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.bmp_dest_struct* %1, %struct.bmp_dest_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 32
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %9, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 31
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.bmp_dest_struct*, %struct.bmp_dest_struct** %6, align 8
  %20 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %20, i32 0, i32 3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  store %struct._IO_FILE* %22, %struct._IO_FILE** %11, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %123

25:                                               ; preds = %4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 28
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %76

30:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load i8**, i8*** %9, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %45 = call i32 @putc(i32 noundef %43, %struct._IO_FILE* noundef %44)
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %55 = call i32 @putc(i32 noundef %53, %struct._IO_FILE* noundef %54)
  %56 = load i8**, i8*** %9, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %65 = call i32 @putc(i32 noundef %63, %struct._IO_FILE* noundef %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %71

68:                                               ; preds = %35
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %70 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %69)
  br label %71

71:                                               ; preds = %68, %35
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %31, !llvm.loop !12

75:                                               ; preds = %31
  br label %122

76:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %118, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %77
  %82 = load i8**, i8*** %9, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %91 = call i32 @putc(i32 noundef %89, %struct._IO_FILE* noundef %90)
  %92 = load i8**, i8*** %9, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %101 = call i32 @putc(i32 noundef %99, %struct._IO_FILE* noundef %100)
  %102 = load i8**, i8*** %9, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %111 = call i32 @putc(i32 noundef %109, %struct._IO_FILE* noundef %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %117

114:                                              ; preds = %81
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %116 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %115)
  br label %117

117:                                              ; preds = %114, %81
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %77, !llvm.loop !13

121:                                              ; preds = %77
  br label %122

122:                                              ; preds = %121, %75
  br label %147

123:                                              ; preds = %4
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 256
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %130 = call i32 @putc(i32 noundef %128, %struct._IO_FILE* noundef %129)
  %131 = load i32, i32* %12, align 4
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %133 = call i32 @putc(i32 noundef %131, %struct._IO_FILE* noundef %132)
  %134 = load i32, i32* %12, align 4
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %136 = call i32 @putc(i32 noundef %134, %struct._IO_FILE* noundef %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 4
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %141 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %140)
  br label %142

142:                                              ; preds = %139, %127
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %124, !llvm.loop !14

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %122
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i32 0, i32 0
  %154 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %153, align 8
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %154, i32 0, i32 5
  store i32 1039, i32* %155, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 0
  %159 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %158, align 8
  %160 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %159, i32 0, i32 6
  %161 = bitcast %union.anon* %160 to [8 x i32]*
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %161, i64 0, i64 0
  store i32 %156, i32* %162, align 4
  %163 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %163, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %164, align 8
  %166 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 0
  %167 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %166, align 8
  %168 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %169 = bitcast %struct.jpeg_decompress_struct* %168 to %struct.jpeg_common_struct*
  call void %167(%struct.jpeg_common_struct* noundef %169)
  br label %170

170:                                              ; preds = %151, %147
  br label %171

171:                                              ; preds = %188, %170
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %171
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %177 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %176)
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %179 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %178)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %181 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %180)
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 4
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %186 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %185)
  br label %187

187:                                              ; preds = %184, %175
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %171, !llvm.loop !15

191:                                              ; preds = %171
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
