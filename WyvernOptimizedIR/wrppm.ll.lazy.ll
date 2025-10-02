; ModuleID = './wrppm.ll'
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

@.str = private unnamed_addr constant [15 x i8] c"P5\0A%ld %ld\0A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"P6\0A%ld %ld\0A%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 80) #3
  %8 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_ppm, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %8, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_ppm, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %10, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %0) #3
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %14 = load i32, i32* %13, align 8
  %15 = mul i32 %12, %14
  %16 = getelementptr inbounds i8, i8* %7, i64 72
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 8
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds i8, i8* %7, i64 64
  %20 = bitcast i8* %19 to i64*
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %22 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %22, i64 0, i32 0
  %24 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %23, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %26 = getelementptr inbounds i8, i8* %7, i64 64
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = call i8* %24(%struct.jpeg_common_struct* noundef %25, i32 noundef 1, i64 noundef %28) #3
  %30 = getelementptr inbounds i8, i8* %7, i64 48
  %31 = bitcast i8* %30 to i8**
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %33 = load i32, i32* %32, align 4
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %67, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %36 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %36, i64 0, i32 2
  %38 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %37, align 8
  %39 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %41, %43
  %45 = call i8** %38(%struct.jpeg_common_struct* noundef %39, i32 noundef 1, i32 noundef %44, i32 noundef 1) #3
  %46 = getelementptr inbounds i8, i8* %7, i64 32
  %47 = bitcast i8* %46 to i8***
  store i8** %45, i8*** %47, align 8
  %48 = getelementptr inbounds i8, i8* %7, i64 40
  %49 = bitcast i8* %48 to i32*
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %51 = load i32, i32* %50, align 4
  %.not1 = icmp eq i32 %51, 0
  br i1 %.not1, label %52, label %55

52:                                               ; preds = %34
  %53 = getelementptr inbounds i8, i8* %7, i64 8
  %54 = bitcast i8* %53 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @copy_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %54, align 8
  br label %66

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, i8* %7, i64 8
  %61 = bitcast i8* %60 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_gray, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %61, align 8
  br label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds i8, i8* %7, i64 8
  %64 = bitcast i8* %63 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_demapped_rgb, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %52
  br label %80

67:                                               ; preds = %1
  %68 = getelementptr inbounds i8, i8* %7, i64 48
  %69 = bitcast i8* %68 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %7, i64 56
  %72 = bitcast i8* %71 to i8**
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds i8, i8* %7, i64 56
  %74 = getelementptr inbounds i8, i8* %7, i64 32
  %75 = bitcast i8* %74 to i8**
  store i8* %73, i8** %75, align 8
  %76 = getelementptr inbounds i8, i8* %7, i64 40
  %77 = bitcast i8* %76 to i32*
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds i8, i8* %7, i64 8
  %79 = bitcast i8* %78 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %79, align 8
  br label %80

80:                                               ; preds = %67, %66
  %81 = bitcast i8* %7 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %81
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_ppm(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  switch i32 %4, label %25 [
    i32 1, label %5
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 noundef %10, i64 noundef %13, i32 noundef 255) #3
  br label %34

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 noundef %20, i64 noundef %23, i32 noundef 255) #3
  br label %34

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 5
  store i32 1025, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %33) #3
  br label %34

34:                                               ; preds = %25, %15, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_ppm(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = call i32 @fflush(%struct._IO_FILE* noundef %4) #3
  %6 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i32 @ferror(%struct._IO_FILE* noundef %7) #3
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
  call void %16(%struct.jpeg_common_struct* noundef %17) #3
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @copy_pixel_rows(%struct.jpeg_decompress_struct* nocapture noundef readnone %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %8 = bitcast %struct.djpeg_dest_struct* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 3
  %11 = bitcast %struct._IO_FILE** %10 to i32*
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %16, %3
  %.02 = phi i8* [ %9, %3 ], [ %17, %16 ]
  %.01 = phi i8* [ %6, %3 ], [ %18, %16 ]
  %.0 = phi i32 [ %12, %3 ], [ %19, %16 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %20, label %14

14:                                               ; preds = %13
  %15 = load i8, i8* %.01, align 1
  store i8 %15, i8* %.02, align 1
  br label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i64 1
  %18 = getelementptr inbounds i8, i8* %.01, i64 1
  %19 = add i32 %.0, -1
  br label %13, !llvm.loop !4

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %22 = bitcast %struct.djpeg_dest_struct* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 2
  %25 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %27, align 8
  %29 = call i64 @fwrite(i8* noundef %23, i64 noundef 1, i64 noundef %26, %struct._IO_FILE* noundef %28) #3
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
  %.02 = phi i8* [ %12, %3 ], [ %22, %21 ]
  %.01 = phi i8* [ %9, %3 ], [ %23, %21 ]
  %.0 = phi i32 [ %14, %3 ], [ %24, %21 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %25, label %16

16:                                               ; preds = %15
  %17 = load i8, i8* %.01, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i8, i8* %6, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %.02, align 1
  br label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %.02, i64 1
  %23 = getelementptr inbounds i8, i8* %.01, i64 1
  %24 = add i32 %.0, -1
  br label %15, !llvm.loop !6

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %27 = bitcast %struct.djpeg_dest_struct* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 2
  %30 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %34 = call i64 @fwrite(i8* noundef %28, i64 noundef 1, i64 noundef %31, %struct._IO_FILE* noundef %33) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_demapped_rgb(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %5, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8*, i8** %5, i64 2
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %12 = load i8**, i8*** %11, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %15 = bitcast %struct.djpeg_dest_struct* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %18 = load i32, i32* %17, align 8
  br label %19

19:                                               ; preds = %33, %3
  %.02 = phi i8* [ %16, %3 ], [ %34, %33 ]
  %.01 = phi i8* [ %13, %3 ], [ %35, %33 ]
  %.0 = phi i32 [ %18, %3 ], [ %36, %33 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %37, label %20

20:                                               ; preds = %19
  %21 = load i8, i8* %.01, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds i8, i8* %6, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %24, i8* %.02, align 1
  %26 = zext i8 %21 to i64
  %27 = getelementptr inbounds i8, i8* %8, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %.02, i64 2
  store i8 %28, i8* %25, align 1
  %30 = zext i8 %21 to i64
  %31 = getelementptr inbounds i8, i8* %10, i64 %30
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %29, align 1
  br label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds i8, i8* %.02, i64 3
  %35 = getelementptr inbounds i8, i8* %.01, i64 1
  %36 = add i32 %.0, -1
  br label %19, !llvm.loop !7

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %39 = bitcast %struct.djpeg_dest_struct* %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 2
  %42 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %46 = call i64 @fwrite(i8* noundef %40, i64 noundef 1, i64 noundef %43, %struct._IO_FILE* noundef %45) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* nocapture noundef readnone %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %5 = bitcast %struct.djpeg_dest_struct* %4 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 2
  %8 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i64 @fwrite(i8* noundef %6, i64 noundef 1, i64 noundef %9, %struct._IO_FILE* noundef %11) #3
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
