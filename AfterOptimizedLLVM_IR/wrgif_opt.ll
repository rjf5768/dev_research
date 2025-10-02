; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrgif.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/wrgif.c"
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
%struct.gif_dest_struct = type { %struct.djpeg_dest_struct, %struct.jpeg_decompress_struct*, i32, i16, i32, i64, i32, i16, i32, i16, i16, i16, i16*, i64*, i32, [256 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.gif_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 384)
  %12 = bitcast i8* %11 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %12, %struct.gif_dest_struct** %3, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %15 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %14, i32 0, i32 1
  store %struct.jpeg_decompress_struct* %13, %struct.jpeg_decompress_struct** %15, align 8
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %17, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_gif, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %18, align 8
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %20, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %21, align 8
  %22 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %23, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_gif, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %24, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 1014, i32* %38, align 8
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = bitcast %struct.jpeg_decompress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %45)
  br label %46

46:                                               ; preds = %34, %29, %1
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 42
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 8
  br i1 %55, label %56, label %67

56:                                               ; preds = %51, %46
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 19
  store i32 1, i32* %58, align 4
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 22
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 256
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 22
  store i32 256, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %68)
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 29
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %75, align 8
  %77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 5
  store i32 1012, i32* %77, align 8
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %79, align 8
  %81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i32 0, i32 0
  %82 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %81, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %84 = bitcast %struct.jpeg_decompress_struct* %83 to %struct.jpeg_common_struct*
  call void %82(%struct.jpeg_common_struct* noundef %84)
  br label %85

85:                                               ; preds = %73, %67
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 1
  %88 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %87, align 8
  %89 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %88, i32 0, i32 2
  %90 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %89, align 8
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %92 = bitcast %struct.jpeg_decompress_struct* %91 to %struct.jpeg_common_struct*
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 26
  %95 = load i32, i32* %94, align 8
  %96 = call i8** %90(%struct.jpeg_common_struct* noundef %92, i32 noundef 1, i32 noundef %95, i32 noundef 1)
  %97 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %98 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %98, i32 0, i32 4
  store i8** %96, i8*** %99, align 8
  %100 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %101 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %101, i32 0, i32 5
  store i32 1, i32* %102, align 8
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 1
  %105 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %104, align 8
  %106 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %105, i32 0, i32 0
  %107 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %106, align 8
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %109 = bitcast %struct.jpeg_decompress_struct* %108 to %struct.jpeg_common_struct*
  %110 = call i8* %107(%struct.jpeg_common_struct* noundef %109, i32 noundef 1, i64 noundef 10006)
  %111 = bitcast i8* %110 to i16*
  %112 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %113 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %112, i32 0, i32 12
  store i16* %111, i16** %113, align 8
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 1
  %116 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %115, align 8
  %117 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %116, i32 0, i32 1
  %118 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %117, align 8
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %120 = bitcast %struct.jpeg_decompress_struct* %119 to %struct.jpeg_common_struct*
  %121 = call i8* %118(%struct.jpeg_common_struct* noundef %120, i32 noundef 1, i64 noundef 40024)
  %122 = bitcast i8* %121 to i64*
  %123 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %124 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %123, i32 0, i32 13
  store i64* %122, i64** %124, align 8
  %125 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %126 = bitcast %struct.gif_dest_struct* %125 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %126
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_gif(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  %5 = alloca %struct.gif_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  %6 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %7 = bitcast %struct.djpeg_dest_struct* %6 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %7, %struct.gif_dest_struct** %5, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 31
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 32
  %19 = load i8**, i8*** %18, align 8
  call void @emit_header(%struct.gif_dest_struct* noundef %13, i32 noundef %16, i8** noundef %19)
  br label %22

20:                                               ; preds = %2
  %21 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  call void @emit_header(%struct.gif_dest_struct* noundef %21, i32 noundef 256, i8** noundef null)
  br label %22

22:                                               ; preds = %20, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca %struct.djpeg_dest_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gif_dest_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %5, align 8
  %11 = bitcast %struct.djpeg_dest_struct* %10 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %11, %struct.gif_dest_struct** %7, align 8
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %7, align 8
  %13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %13, i32 0, i32 4
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 26
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %30, %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  call void @compress_byte(%struct.gif_dest_struct* noundef %25, i32 noundef %29)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %9, align 4
  br label %21, !llvm.loop !4

33:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_gif(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.djpeg_dest_struct*, align 8
  %5 = alloca %struct.gif_dest_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.djpeg_dest_struct* %1, %struct.djpeg_dest_struct** %4, align 8
  %6 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %4, align 8
  %7 = bitcast %struct.djpeg_dest_struct* %6 to %struct.gif_dest_struct*
  store %struct.gif_dest_struct* %7, %struct.gif_dest_struct** %5, align 8
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  call void @compress_term(%struct.gif_dest_struct* noundef %8)
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  %10 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %10, i32 0, i32 3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %12)
  %14 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  %15 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %15, i32 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @putc(i32 noundef 59, %struct._IO_FILE* noundef %17)
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %20, i32 0, i32 3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  %24 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %5, align 8
  %25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %25, i32 0, i32 3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %26, align 8
  %28 = call i32 @ferror(%struct._IO_FILE* noundef %27) #4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 36, i32* %34, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %38, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* noundef %41)
  br label %42

42:                                               ; preds = %30, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @emit_header(%struct.gif_dest_struct* noundef %0, i32 noundef %1, i8** noundef %2) #0 {
  %4 = alloca %struct.gif_dest_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %14 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %13, i32 0, i32 1
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 42
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 256
  br i1 %20, label %21, label %48

21:                                               ; preds = %3
  %22 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %22, i32 0, i32 1
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 1039, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %30 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %29, i32 0, i32 1
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %35 = bitcast %union.anon* %34 to [8 x i32]*
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 0
  store i32 %28, i32* %36, align 4
  %37 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %38 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %37, i32 0, i32 1
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %45 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %44, i32 0, i32 1
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %45, align 8
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %47)
  br label %48

48:                                               ; preds = %21, %3
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %49, !llvm.loop !6

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 2, i32* %9, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %67 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %67, i32 0, i32 3
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %68, align 8
  %70 = call i32 @putc(i32 noundef 71, %struct._IO_FILE* noundef %69)
  %71 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %72 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %72, i32 0, i32 3
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %73, align 8
  %75 = call i32 @putc(i32 noundef 73, %struct._IO_FILE* noundef %74)
  %76 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %77 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %77, i32 0, i32 3
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %78, align 8
  %80 = call i32 @putc(i32 noundef 70, %struct._IO_FILE* noundef %79)
  %81 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %82 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %82, i32 0, i32 3
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %83, align 8
  %85 = call i32 @putc(i32 noundef 56, %struct._IO_FILE* noundef %84)
  %86 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %87 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %87, i32 0, i32 3
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %88, align 8
  %90 = call i32 @putc(i32 noundef 55, %struct._IO_FILE* noundef %89)
  %91 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %92 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %92, i32 0, i32 3
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %93, align 8
  %95 = call i32 @putc(i32 noundef 97, %struct._IO_FILE* noundef %94)
  %96 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %97 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %98 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %97, i32 0, i32 1
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %98, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 26
  %101 = load i32, i32* %100, align 8
  call void @put_word(%struct.gif_dest_struct* noundef %96, i32 noundef %101)
  %102 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %103 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %104 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %103, i32 0, i32 1
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %104, align 8
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 27
  %107 = load i32, i32* %106, align 4
  call void @put_word(%struct.gif_dest_struct* noundef %102, i32 noundef %107)
  store i32 128, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 %109, 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %119 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %119, i32 0, i32 3
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %120, align 8
  %122 = call i32 @putc(i32 noundef %117, %struct._IO_FILE* noundef %121)
  %123 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %124 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %124, i32 0, i32 3
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %125, align 8
  %127 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %126)
  %128 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %129 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %129, i32 0, i32 3
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %130, align 8
  %132 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %131)
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %225, %65
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %228

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %222

141:                                              ; preds = %137
  %142 = load i8**, i8*** %6, align 8
  %143 = icmp ne i8** %142, null
  br i1 %143, label %144, label %210

144:                                              ; preds = %141
  %145 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %146 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %145, i32 0, i32 1
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %146, align 8
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %197

151:                                              ; preds = %144
  %152 = load i8**, i8*** %6, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = load i32, i32* %11, align 4
  %161 = ashr i32 %159, %160
  %162 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %163 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %163, i32 0, i32 3
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %164, align 8
  %166 = call i32 @putc(i32 noundef %161, %struct._IO_FILE* noundef %165)
  %167 = load i8**, i8*** %6, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %11, align 4
  %176 = ashr i32 %174, %175
  %177 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %178 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %178, i32 0, i32 3
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %179, align 8
  %181 = call i32 @putc(i32 noundef %176, %struct._IO_FILE* noundef %180)
  %182 = load i8**, i8*** %6, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i32, i32* %11, align 4
  %191 = ashr i32 %189, %190
  %192 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %193 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %193, i32 0, i32 3
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %194, align 8
  %196 = call i32 @putc(i32 noundef %191, %struct._IO_FILE* noundef %195)
  br label %209

197:                                              ; preds = %144
  %198 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %199 = load i8**, i8*** %6, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = load i32, i32* %11, align 4
  %208 = ashr i32 %206, %207
  call void @put_3bytes(%struct.gif_dest_struct* noundef %198, i32 noundef %208)
  br label %209

209:                                              ; preds = %197, %151
  br label %221

210:                                              ; preds = %141
  %211 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %212 = load i32, i32* %12, align 4
  %213 = mul nsw i32 %212, 255
  %214 = load i32, i32* %5, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sdiv i32 %215, 2
  %217 = add nsw i32 %213, %216
  %218 = load i32, i32* %5, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sdiv i32 %217, %219
  call void @put_3bytes(%struct.gif_dest_struct* noundef %211, i32 noundef %220)
  br label %221

221:                                              ; preds = %210, %209
  br label %224

222:                                              ; preds = %137
  %223 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  call void @put_3bytes(%struct.gif_dest_struct* noundef %223, i32 noundef 0)
  br label %224

224:                                              ; preds = %222, %221
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %12, align 4
  br label %133, !llvm.loop !7

228:                                              ; preds = %133
  %229 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %230 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %230, i32 0, i32 3
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %231, align 8
  %233 = call i32 @putc(i32 noundef 44, %struct._IO_FILE* noundef %232)
  %234 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  call void @put_word(%struct.gif_dest_struct* noundef %234, i32 noundef 0)
  %235 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  call void @put_word(%struct.gif_dest_struct* noundef %235, i32 noundef 0)
  %236 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %237 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %238 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %237, i32 0, i32 1
  %239 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %238, align 8
  %240 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %239, i32 0, i32 26
  %241 = load i32, i32* %240, align 8
  call void @put_word(%struct.gif_dest_struct* noundef %236, i32 noundef %241)
  %242 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %243 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %244 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %243, i32 0, i32 1
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %244, align 8
  %246 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %245, i32 0, i32 27
  %247 = load i32, i32* %246, align 4
  call void @put_word(%struct.gif_dest_struct* noundef %242, i32 noundef %247)
  %248 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %249 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %249, i32 0, i32 3
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %250, align 8
  %252 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %251)
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %255 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %255, i32 0, i32 3
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %256, align 8
  %258 = call i32 @putc(i32 noundef %253, %struct._IO_FILE* noundef %257)
  %259 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %4, align 8
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  call void @compress_init(%struct.gif_dest_struct* noundef %259, i32 noundef %261)
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gif_dest_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %8, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %10)
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 255
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %16 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %16, i32 0, i32 3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i32 @putc(i32 noundef %14, %struct._IO_FILE* noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_3bytes(%struct.gif_dest_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gif_dest_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %7, i32 0, i32 3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %10 = call i32 @putc(i32 noundef %5, %struct._IO_FILE* noundef %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %13, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = call i32 @putc(i32 noundef %11, %struct._IO_FILE* noundef %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %19 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %19, i32 0, i32 3
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %22 = call i32 @putc(i32 noundef %17, %struct._IO_FILE* noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @compress_init(%struct.gif_dest_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gif_dest_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %9 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 2
  store i32 %5, i32* %9, align 8
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  %14 = sub nsw i32 %13, 1
  %15 = trunc i32 %14 to i16
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 3
  store i16 %15, i16* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 1, %19
  %21 = trunc i32 %20 to i16
  %22 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %22, i32 0, i32 9
  store i16 %21, i16* %23, align 4
  %24 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %24, i32 0, i32 9
  %26 = load i16, i16* %25, align 4
  %27 = sext i16 %26 to i32
  %28 = add nsw i32 %27, 1
  %29 = trunc i32 %28 to i16
  %30 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %31 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %30, i32 0, i32 10
  store i16 %29, i16* %31, align 2
  %32 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %33 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %32, i32 0, i32 9
  %34 = load i16, i16* %33, align 4
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, 2
  %37 = trunc i32 %36 to i16
  %38 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %39 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %38, i32 0, i32 11
  store i16 %37, i16* %39, align 8
  %40 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %41 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %40, i32 0, i32 8
  store i32 1, i32* %41, align 8
  %42 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %43 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %42, i32 0, i32 14
  store i32 0, i32* %43, align 8
  %44 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %45 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %47 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %46, i32 0, i32 6
  store i32 0, i32* %47, align 8
  %48 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  call void @clear_hash(%struct.gif_dest_struct* noundef %48)
  %49 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %50 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %51 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %50, i32 0, i32 9
  %52 = load i16, i16* %51, align 4
  call void @output(%struct.gif_dest_struct* noundef %49, i16 noundef signext %52)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @clear_hash(%struct.gif_dest_struct* noundef %0) #0 {
  %2 = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %2, align 8
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 12
  %5 = load i16*, i16** %4, align 8
  %6 = bitcast i16* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 10006, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca %struct.gif_dest_struct*, align 8
  %4 = alloca i16, align 2
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i64
  %7 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = shl i64 %6, %10
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = or i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %48, %2
  %24 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 8
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %30 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  %34 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %35 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %34, i32 0, i32 15
  %36 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %37 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %35, i64 0, i64 %40
  store i8 %33, i8* %41, align 1
  %42 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %43 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 255
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  call void @flush_packet(%struct.gif_dest_struct* noundef %47)
  br label %48

48:                                               ; preds = %46, %28
  %49 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %50 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = ashr i64 %51, 8
  store i64 %52, i64* %50, align 8
  %53 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %54 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 8
  store i32 %56, i32* %54, align 8
  br label %23, !llvm.loop !8

57:                                               ; preds = %23
  %58 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %59 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %58, i32 0, i32 11
  %60 = load i16, i16* %59, align 8
  %61 = sext i16 %60 to i32
  %62 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %63 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %62, i32 0, i32 3
  %64 = load i16, i16* %63, align 4
  %65 = sext i16 %64 to i32
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %57
  %68 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %69 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %73 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %78 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %77, i32 0, i32 3
  store i16 4096, i16* %78, align 4
  br label %88

79:                                               ; preds = %67
  %80 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %81 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = trunc i32 %84 to i16
  %86 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %87 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %86, i32 0, i32 3
  store i16 %85, i16* %87, align 4
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %57
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @flush_packet(%struct.gif_dest_struct* noundef %0) #0 {
  %2 = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %2, align 8
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 14
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %1
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %9 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = trunc i32 %10 to i8
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %14 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %13, i32 0, i32 15
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8 %12, i8* %15, align 4
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 15
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %24 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %24, i32 0, i32 3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i64 @fwrite(i8* noundef %18, i64 noundef 1, i64 noundef %22, %struct._IO_FILE* noundef %26)
  %28 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %29 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %7
  %34 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %35 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %34, i32 0, i32 1
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 5
  store i32 36, i32* %39, align 8
  %40 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %41 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %40, i32 0, i32 1
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %45, align 8
  %47 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %48 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %47, i32 0, i32 1
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %48, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* noundef %50)
  br label %51

51:                                               ; preds = %33, %7
  %52 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %53 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %52, i32 0, i32 14
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %1
  ret void
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @compress_byte(%struct.gif_dest_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gif_dest_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %9 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = trunc i32 %13 to i16
  %15 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %16 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %15, i32 0, i32 7
  store i16 %14, i16* %16, align 4
  %17 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %18 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %17, i32 0, i32 8
  store i32 0, i32* %18, align 8
  br label %155

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 4
  %22 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %22, i32 0, i32 7
  %24 = load i16, i16* %23, align 4
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 5003
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 5003
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %34 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %33, i32 0, i32 7
  %35 = load i16, i16* %34, align 4
  %36 = sext i16 %35 to i64
  %37 = shl i64 %36, 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = or i64 %37, %39
  store i64 %40, i64* %7, align 8
  %41 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %42 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %41, i32 0, i32 12
  %43 = load i16*, i16** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %120

50:                                               ; preds = %32
  %51 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %52 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %51, i32 0, i32 13
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %62 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %61, i32 0, i32 12
  %63 = load i16*, i16** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %63, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %69 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %68, i32 0, i32 7
  store i16 %67, i16* %69, align 4
  br label %155

70:                                               ; preds = %50
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 5003, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %118, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 5003
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %89 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %88, i32 0, i32 12
  %90 = load i16*, i16** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16, i16* %90, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %119

98:                                               ; preds = %87
  %99 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %100 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %99, i32 0, i32 13
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %110 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %109, i32 0, i32 12
  %111 = load i16*, i16** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %117 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %116, i32 0, i32 7
  store i16 %115, i16* %117, align 4
  br label %155

118:                                              ; preds = %98
  br label %78

119:                                              ; preds = %97
  br label %120

120:                                              ; preds = %119, %32
  %121 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %122 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %123 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %122, i32 0, i32 7
  %124 = load i16, i16* %123, align 4
  call void @output(%struct.gif_dest_struct* noundef %121, i16 noundef signext %124)
  %125 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %126 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %125, i32 0, i32 11
  %127 = load i16, i16* %126, align 8
  %128 = sext i16 %127 to i32
  %129 = icmp slt i32 %128, 4096
  br i1 %129, label %130, label %148

130:                                              ; preds = %120
  %131 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %132 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %131, i32 0, i32 11
  %133 = load i16, i16* %132, align 8
  %134 = add i16 %133, 1
  store i16 %134, i16* %132, align 8
  %135 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %136 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %135, i32 0, i32 12
  %137 = load i16*, i16** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %137, i64 %139
  store i16 %133, i16* %140, align 2
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %143 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %142, i32 0, i32 13
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 %141, i64* %147, align 8
  br label %150

148:                                              ; preds = %120
  %149 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  call void @clear_block(%struct.gif_dest_struct* noundef %149)
  br label %150

150:                                              ; preds = %148, %130
  %151 = load i32, i32* %4, align 4
  %152 = trunc i32 %151 to i16
  %153 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %3, align 8
  %154 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %153, i32 0, i32 7
  store i16 %152, i16* %154, align 4
  br label %155

155:                                              ; preds = %150, %108, %60, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @clear_block(%struct.gif_dest_struct* noundef %0) #0 {
  %2 = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %2, align 8
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  call void @clear_hash(%struct.gif_dest_struct* noundef %3)
  %4 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %5 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %4, i32 0, i32 9
  %6 = load i16, i16* %5, align 4
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, 2
  %9 = trunc i32 %8 to i16
  %10 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %10, i32 0, i32 11
  store i16 %9, i16* %11, align 8
  %12 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %14 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %13, i32 0, i32 9
  %15 = load i16, i16* %14, align 4
  call void @output(%struct.gif_dest_struct* noundef %12, i16 noundef signext %15)
  %16 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %22 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 1
  %26 = trunc i32 %25 to i16
  %27 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %28 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %27, i32 0, i32 3
  store i16 %26, i16* %28, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @compress_term(%struct.gif_dest_struct* noundef %0) #0 {
  %2 = alloca %struct.gif_dest_struct*, align 8
  store %struct.gif_dest_struct* %0, %struct.gif_dest_struct** %2, align 8
  %3 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %9 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %10 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %9, i32 0, i32 7
  %11 = load i16, i16* %10, align 4
  call void @output(%struct.gif_dest_struct* noundef %8, i16 noundef signext %11)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %14 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %15 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %14, i32 0, i32 10
  %16 = load i16, i16* %15, align 2
  call void @output(%struct.gif_dest_struct* noundef %13, i16 noundef signext %16)
  %17 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %18 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %12
  %22 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %23 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, 255
  %26 = trunc i64 %25 to i8
  %27 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %28 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %27, i32 0, i32 15
  %29 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %30 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %28, i64 0, i64 %33
  store i8 %26, i8* %34, align 1
  %35 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  %36 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 255
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  call void @flush_packet(%struct.gif_dest_struct* noundef %40)
  br label %41

41:                                               ; preds = %39, %21
  br label %42

42:                                               ; preds = %41, %12
  %43 = load %struct.gif_dest_struct*, %struct.gif_dest_struct** %2, align 8
  call void @flush_packet(%struct.gif_dest_struct* noundef %43)
  ret void
}

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
