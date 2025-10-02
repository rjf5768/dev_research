; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrppm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrppm.c"
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
%struct.ppm_dest_struct = type { %struct.djpeg_dest_struct, i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"P5\0A%ld %ld\0A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P6\0A%ld %ld\0A%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.ppm_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 80)
  %12 = bitcast i8* %11 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %12, %struct.ppm_dest_struct** %3, align 8
  %13 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %14 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %14, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_ppm, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %15, align 8
  %16 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %17 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %17, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_ppm, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %18, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %19)
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 28
  %25 = load i32, i32* %24, align 8
  %26 = mul i32 %22, %25
  %27 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %28 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %30 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %35 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 1
  %38 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %38, i32 0, i32 0
  %40 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %39, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  %43 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %44 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i8* %40(%struct.jpeg_common_struct* noundef %42, i32 noundef 1, i64 noundef %45)
  %47 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %48 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %1
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 1
  %56 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %56, i32 0, i32 2
  %58 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %57, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %60 = bitcast %struct.jpeg_decompress_struct* %59 to %struct.jpeg_common_struct*
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 26
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 29
  %66 = load i32, i32* %65, align 4
  %67 = mul i32 %63, %66
  %68 = call i8** %58(%struct.jpeg_common_struct* noundef %60, i32 noundef 1, i32 noundef %67, i32 noundef 1)
  %69 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %70 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %70, i32 0, i32 4
  store i8** %68, i8*** %71, align 8
  %72 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %73 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %73, i32 0, i32 5
  store i32 1, i32* %74, align 8
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 19
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %53
  %80 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %81 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %81, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @copy_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %82, align 8
  br label %97

83:                                               ; preds = %53
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %90 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %90, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_gray, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %91, align 8
  br label %96

92:                                               ; preds = %83
  %93 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %94 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %94, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_rgb, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %79
  br label %115

98:                                               ; preds = %1
  %99 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %100 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %103 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %105 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %104, i32 0, i32 2
  %106 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %107 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %107, i32 0, i32 4
  store i8** %105, i8*** %108, align 8
  %109 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %110 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %110, i32 0, i32 5
  store i32 1, i32* %111, align 8
  %112 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %113 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %113, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %114, align 8
  br label %115

115:                                              ; preds = %98, %97
  %116 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %3, align 8
  %117 = bitcast %struct.ppm_dest_struct* %116 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %117
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_ppm(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  %5 = alloca %struct.ppm_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  %6 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %7 = bitcast %struct.djpeg_dest_struct* %6 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %7, %struct.ppm_dest_struct** %5, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %39 [
    i32 1, label %11
    i32 2, label %25
  ]

11:                                               ; preds = %2
  %12 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %5, align 8
  %13 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %13, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 26
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 27
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 noundef %19, i64 noundef %23, i32 noundef 255)
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %5, align 8
  %27 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %27, i32 0, i32 3
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 26
  %32 = load i32, i32* %31, align 8
  %33 = zext i32 %32 to i64
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 27
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 noundef %33, i64 noundef %37, i32 noundef 255)
  br label %51

39:                                               ; preds = %2
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 1025, i32* %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %48 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %47, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void %48(%struct.jpeg_common_struct* noundef %50)
  br label %51

51:                                               ; preds = %39, %25, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_ppm(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
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
  %12 = call i32 @ferror(%struct._IO_FILE* noundef %11) #3
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
define internal void @copy_pixel_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppm_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %12 = bitcast %struct.djpeg_dest_struct* %11 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %12, %struct.ppm_dest_struct** %7, align 8
  %13 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %14 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %20 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %23 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %36, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %9, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  store i8 %33, i8* %34, align 1
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %10, align 4
  br label %25, !llvm.loop !4

39:                                               ; preds = %25
  %40 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %41 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %44 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %47 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %47, i32 0, i32 3
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  %50 = call i64 @fwrite(i8* noundef %42, i64 noundef 1, i64 noundef %45, %struct._IO_FILE* noundef %49)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_demapped_gray(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppm_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %13 = bitcast %struct.djpeg_dest_struct* %12 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %13, %struct.ppm_dest_struct** %7, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 32
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %20 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %26 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
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
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %11, align 4
  br label %31, !llvm.loop !6

50:                                               ; preds = %31
  %51 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %52 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %55 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %58 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %58, i32 0, i32 3
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %59, align 8
  %61 = call i64 @fwrite(i8* noundef %53, i64 noundef 1, i64 noundef %56, %struct._IO_FILE* noundef %60)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_demapped_rgb(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppm_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %16 = bitcast %struct.djpeg_dest_struct* %15 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %16, %struct.ppm_dest_struct** %7, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 32
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 32
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 32
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %13, align 8
  %32 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %33 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %33, i32 0, i32 4
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  %38 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %39 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 26
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %79, %3
  %45 = load i32, i32* %14, align 4
  %46 = icmp ugt i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %47
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %14, align 4
  br label %44, !llvm.loop !7

82:                                               ; preds = %44
  %83 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %84 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %87 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %90 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %90, i32 0, i32 3
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %91, align 8
  %93 = call i64 @fwrite(i8* noundef %85, i64 noundef 1, i64 noundef %88, %struct._IO_FILE* noundef %92)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppm_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %9 = bitcast %struct.djpeg_dest_struct* %8 to %struct.ppm_dest_struct*
  store %struct.ppm_dest_struct* %9, %struct.ppm_dest_struct** %7, align 8
  %10 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %11 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %14 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ppm_dest_struct*, %struct.ppm_dest_struct** %7, align 8
  %17 = getelementptr inbounds %struct.ppm_dest_struct, %struct.ppm_dest_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %17, i32 0, i32 3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = call i64 @fwrite(i8* noundef %12, i64 noundef 1, i64 noundef %15, %struct._IO_FILE* noundef %19)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
