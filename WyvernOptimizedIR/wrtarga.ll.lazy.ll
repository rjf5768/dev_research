; ModuleID = './wrtarga.ll'
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

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 64) #4
  %8 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_tga, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %8, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_tga, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %10, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %0) #4
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  %14 = load i32, i32* %13, align 4
  %15 = mul i32 %12, %14
  %16 = getelementptr inbounds i8, i8* %7, i64 56
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i64 0, i32 0
  %21 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %20, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %23 = getelementptr inbounds i8, i8* %7, i64 56
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = call i8* %21(%struct.jpeg_common_struct* noundef %22, i32 noundef 1, i64 noundef %26) #4
  %28 = getelementptr inbounds i8, i8* %7, i64 48
  %29 = bitcast i8* %28 to i8**
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %31 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %31, i64 0, i32 2
  %33 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %32, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %35 = getelementptr inbounds i8, i8* %7, i64 56
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = call i8** %33(%struct.jpeg_common_struct* noundef %34, i32 noundef 1, i32 noundef %37, i32 noundef 1) #4
  %39 = getelementptr inbounds i8, i8* %7, i64 32
  %40 = bitcast i8* %39 to i8***
  store i8** %38, i8*** %40, align 8
  %41 = getelementptr inbounds i8, i8* %7, i64 40
  %42 = bitcast i8* %41 to i32*
  store i32 1, i32* %42, align 8
  %43 = bitcast i8* %7 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %43
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_tga(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  call void @write_header(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef 0)
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %8 = load i32, i32* %7, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_gray, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %10, align 8
  br label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %12, align 8
  br label %13

13:                                               ; preds = %11, %9
  br label %86

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %20 = load i32, i32* %19, align 4
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %73, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 31
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 256
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 5
  store i32 1039, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 6, i32 0, i64 0
  store i32 %23, i32* %31, align 4
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %36) #4
  br label %37

37:                                               ; preds = %25, %21
  call void @write_header(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %23)
  %38 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %38, align 8
  br label %40

40:                                               ; preds = %69, %37
  %.0 = phi i32 [ 0, %37 ], [ %70, %69 ]
  %41 = icmp slt i32 %.0, %23
  br i1 %41, label %42, label %71

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 @putc(i32 noundef %50, %struct._IO_FILE* noundef %39) #4
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = zext i32 %.0 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 @putc(i32 noundef %59, %struct._IO_FILE* noundef %39) #4
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %62 = load i8**, i8*** %61, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = zext i32 %.0 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 @putc(i32 noundef %67, %struct._IO_FILE* noundef %39) #4
  br label %69

69:                                               ; preds = %42
  %70 = add nuw nsw i32 %.0, 1
  br label %40, !llvm.loop !4

71:                                               ; preds = %40
  %72 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %72, align 8
  br label %75

73:                                               ; preds = %18
  call void @write_header(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef 0)
  %74 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 1
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %74, align 8
  br label %75

75:                                               ; preds = %73, %71
  br label %85

76:                                               ; preds = %14
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i64 0, i32 5
  store i32 1034, i32* %79, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i64 0, i32 0
  %83 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %82, align 8
  %84 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %83(%struct.jpeg_common_struct* noundef %84) #4
  br label %85

85:                                               ; preds = %76, %75
  br label %86

86:                                               ; preds = %85, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_tga(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = call i32 @fflush(%struct._IO_FILE* noundef %4) #4
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i32 @ferror(%struct._IO_FILE* noundef %7) #4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 5
  store i32 36, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %15, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* noundef %17) #4
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @write_header(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [18 x i8], align 16
  %5 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(18) %5, i8 0, i64 18, i1 false)
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 1
  store i8 1, i8* %8, align 1
  %9 = trunc i32 %2 to i8
  %10 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 5
  store i8 %9, i8* %10, align 1
  %11 = lshr i32 %2, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 6
  store i8 %12, i8* %13, align 2
  %14 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 7
  store i8 24, i8* %14, align 1
  br label %15

15:                                               ; preds = %7, %3
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %17 = load i32, i32* %16, align 8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 12
  store i8 %18, i8* %19, align 4
  %20 = lshr i32 %17, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 13
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %24 = load i32, i32* %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 14
  store i8 %25, i8* %26, align 2
  %27 = lshr i32 %24, 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 15
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 17
  store i8 32, i8* %30, align 1
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 2
  store i8 3, i8* %35, align 2
  %36 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 16
  store i8 8, i8* %36, align 16
  br label %46

37:                                               ; preds = %15
  %38 = icmp sgt i32 %2, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 2
  store i8 1, i8* %40, align 2
  %41 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 16
  store i8 8, i8* %41, align 16
  br label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 2
  store i8 2, i8* %43, align 2
  %44 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 16
  store i8 24, i8* %44, align 16
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %34
  %47 = getelementptr inbounds [18 x i8], [18 x i8]* %4, i64 0, i64 0
  %48 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  %50 = call i64 @fwrite(i8* noundef nonnull %47, i64 noundef 1, i64 noundef 18, %struct._IO_FILE* noundef %49) #4
  %.not = icmp eq i64 %50, 18
  br i1 %.not, label %60, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %52, align 8
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i64 0, i32 5
  store i32 36, i32* %54, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i64 0, i32 0
  %58 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %57, align 8
  %59 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* noundef %59) #4
  br label %60

60:                                               ; preds = %51, %46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_demapped_gray(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %8 = load i8**, i8*** %7, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %11 = bitcast %struct.djpeg_dest_struct* %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %14 = load i32, i32* %13, align 8
  br label %15

15:                                               ; preds = %21, %3
  %.02 = phi i8* [ %9, %3 ], [ %23, %21 ]
  %.01 = phi i8* [ %12, %3 ], [ %22, %21 ]
  %.0 = phi i32 [ %14, %3 ], [ %24, %21 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %25, label %16

16:                                               ; preds = %15
  %17 = load i8, i8* %.02, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i8, i8* %6, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %.01, align 1
  br label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %.01, i64 1
  %23 = getelementptr inbounds i8, i8* %.02, i64 1
  %24 = add i32 %.0, -1
  br label %15, !llvm.loop !6

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %27 = bitcast %struct.djpeg_dest_struct* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 1
  %30 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = call i64 @fwrite(i8* noundef %28, i64 noundef 1, i64 noundef %32, %struct._IO_FILE* noundef %34) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_gray_rows(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %8 = bitcast %struct.djpeg_dest_struct* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %11 = load i32, i32* %10, align 8
  br label %12

12:                                               ; preds = %15, %3
  %.02 = phi i8* [ %6, %3 ], [ %17, %15 ]
  %.01 = phi i8* [ %9, %3 ], [ %16, %15 ]
  %.0 = phi i32 [ %11, %3 ], [ %18, %15 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %19, label %13

13:                                               ; preds = %12
  %14 = load i8, i8* %.02, align 1
  store i8 %14, i8* %.01, align 1
  br label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %.01, i64 1
  %17 = getelementptr inbounds i8, i8* %.02, i64 1
  %18 = add i32 %.0, -1
  br label %12, !llvm.loop !7

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %21 = bitcast %struct.djpeg_dest_struct* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 1
  %24 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %23 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %27, align 8
  %29 = call i64 @fwrite(i8* noundef %22, i64 noundef 1, i64 noundef %26, %struct._IO_FILE* noundef %28) #4
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %8 = bitcast %struct.djpeg_dest_struct* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %11 = load i32, i32* %10, align 8
  br label %12

12:                                               ; preds = %21, %3
  %.02 = phi i8* [ %6, %3 ], [ %23, %21 ]
  %.01 = phi i8* [ %9, %3 ], [ %22, %21 ]
  %.0 = phi i32 [ %11, %3 ], [ %24, %21 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %25, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %.02, i64 2
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %.01, align 1
  %16 = getelementptr inbounds i8, i8* %.02, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load i8, i8* %.02, align 1
  %20 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %19, i8* %20, align 1
  br label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, i8* %.01, i64 3
  %23 = getelementptr inbounds i8, i8* %.02, i64 3
  %24 = add i32 %.0, -1
  br label %12, !llvm.loop !8

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %27 = bitcast %struct.djpeg_dest_struct* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 1
  %30 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = call i64 @fwrite(i8* noundef %28, i64 noundef 1, i64 noundef %32, %struct._IO_FILE* noundef %34) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
