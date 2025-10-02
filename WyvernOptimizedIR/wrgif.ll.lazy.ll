; ModuleID = './wrgif.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 384) #5
  %8 = getelementptr inbounds i8, i8* %7, i64 48
  %9 = bitcast i8* %8 to %struct.jpeg_decompress_struct**
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_gif, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %12, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_gif, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %16 = load i32, i32* %15, align 8
  %.not = icmp eq i32 %16, 1
  br i1 %.not, label %29, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %19 = load i32, i32* %18, align 8
  %.not3 = icmp eq i32 %19, 2
  br i1 %.not3, label %29, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i64 0, i32 5
  store i32 1014, i32* %23, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i64 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* noundef %28) #5
  br label %29

29:                                               ; preds = %20, %17, %1
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %31 = load i32, i32* %30, align 8
  %.not1 = icmp eq i32 %31, 1
  br i1 %.not1, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 42
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 8
  br i1 %35, label %36, label %44

36:                                               ; preds = %32, %29
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 22
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 256
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 22
  store i32 256, i32* %42, align 8
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %32
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %0) #5
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  %46 = load i32, i32* %45, align 4
  %.not2 = icmp eq i32 %46, 1
  br i1 %.not2, label %56, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i64 0, i32 5
  store i32 1012, i32* %50, align 8
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i64 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* noundef %55) #5
  br label %56

56:                                               ; preds = %47, %44
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %58 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %58, i64 0, i32 2
  %60 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %59, align 8
  %61 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %63 = load i32, i32* %62, align 8
  %64 = call i8** %60(%struct.jpeg_common_struct* noundef %61, i32 noundef 1, i32 noundef %63, i32 noundef 1) #5
  %65 = getelementptr inbounds i8, i8* %7, i64 32
  %66 = bitcast i8* %65 to i8***
  store i8** %64, i8*** %66, align 8
  %67 = getelementptr inbounds i8, i8* %7, i64 40
  %68 = bitcast i8* %67 to i32*
  store i32 1, i32* %68, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %70 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %70, i64 0, i32 0
  %72 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %71, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %74 = call i8* %72(%struct.jpeg_common_struct* noundef %73, i32 noundef 1, i64 noundef 10006) #5
  %75 = getelementptr inbounds i8, i8* %7, i64 104
  %76 = bitcast i8* %75 to i8**
  store i8* %74, i8** %76, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %78 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %78, i64 0, i32 1
  %80 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %79, align 8
  %81 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %82 = call i8* %80(%struct.jpeg_common_struct* noundef %81, i32 noundef 1, i64 noundef 40024) #5
  %83 = getelementptr inbounds i8, i8* %7, i64 112
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8
  %85 = bitcast i8* %7 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %85
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_gif(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = bitcast %struct.djpeg_dest_struct* %1 to %struct.gif_dest_struct*
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 31
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %10 = load i8**, i8*** %9, align 8
  call void @emit_header(%struct.gif_dest_struct* noundef %3, i32 noundef %8, i8** noundef %10)
  br label %12

11:                                               ; preds = %2
  call void @emit_header(%struct.gif_dest_struct* noundef %3, i32 noundef 256, i8** noundef null)
  br label %12

12:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.djpeg_dest_struct* noundef %1, i32 noundef %2) #0 {
  %4 = bitcast %struct.djpeg_dest_struct* %1 to %struct.gif_dest_struct*
  %5 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %6 = load i8**, i8*** %5, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %9 = load i32, i32* %8, align 8
  br label %10

10:                                               ; preds = %14, %3
  %.01 = phi i8* [ %7, %3 ], [ %15, %14 ]
  %.0 = phi i32 [ %9, %3 ], [ %16, %14 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %17, label %11

11:                                               ; preds = %10
  %12 = load i8, i8* %.01, align 1
  %13 = zext i8 %12 to i32
  call void @compress_byte(%struct.gif_dest_struct* noundef %4, i32 noundef %13)
  br label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, i8* %.01, i64 1
  %16 = add i32 %.0, -1
  br label %10, !llvm.loop !4

17:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_gif(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* noundef %1) #0 {
  %3 = bitcast %struct.djpeg_dest_struct* %1 to %struct.gif_dest_struct*
  call void @compress_term(%struct.gif_dest_struct* noundef %3)
  %4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %5) #5
  %7 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = call i32 @putc(i32 noundef 59, %struct._IO_FILE* noundef %8) #5
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11) #5
  %13 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i32 @ferror(%struct._IO_FILE* noundef %14) #5
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %25, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 36, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #5
  br label %25

25:                                               ; preds = %16, %2
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @emit_header(%struct.gif_dest_struct* noundef %0, i32 noundef %1, i8** noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i64 0, i32 42
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, -8
  %9 = icmp sgt i32 %1, 256
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 5
  store i32 1039, i32* %15, align 8
  %16 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 6, i32 0, i64 0
  store i32 %1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %28 = bitcast %struct.jpeg_decompress_struct** %27 to %struct.jpeg_common_struct**
  %29 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %28, align 8
  call void %26(%struct.jpeg_common_struct* noundef %29) #5
  br label %30

30:                                               ; preds = %10, %3
  br label %31

31:                                               ; preds = %34, %30
  %.02 = phi i32 [ 1, %30 ], [ %35, %34 ]
  %32 = shl i32 1, %.02
  %33 = icmp slt i32 %32, %1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = add nuw nsw i32 %.02, 1
  br label %31, !llvm.loop !6

36:                                               ; preds = %31
  %37 = shl i32 1, %.02
  %38 = icmp ult i32 %.02, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %39
  %.01 = phi i32 [ 2, %39 ], [ %.02, %40 ]
  %42 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %42, align 8
  %44 = call i32 @putc(i32 noundef 71, %struct._IO_FILE* noundef %43) #5
  %45 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %45, align 8
  %47 = call i32 @putc(i32 noundef 73, %struct._IO_FILE* noundef %46) #5
  %48 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  %50 = call i32 @putc(i32 noundef 70, %struct._IO_FILE* noundef %49) #5
  %51 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %51, align 8
  %53 = call i32 @putc(i32 noundef 56, %struct._IO_FILE* noundef %52) #5
  %54 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %54, align 8
  %56 = call i32 @putc(i32 noundef 55, %struct._IO_FILE* noundef %55) #5
  %57 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %59 = call i32 @putc(i32 noundef 97, %struct._IO_FILE* noundef %58) #5
  %60 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i64 0, i32 26
  %63 = load i32, i32* %62, align 8
  call void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef %63)
  %64 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %64, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i64 0, i32 27
  %67 = load i32, i32* %66, align 4
  call void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef %67)
  %68 = shl i32 %.02, 4
  %69 = add i32 %68, -16
  %70 = add nsw i32 %.02, -1
  %71 = or i32 %69, %70
  %72 = or i32 %71, 128
  %73 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %73, align 8
  %75 = call i32 @putc(i32 noundef %72, %struct._IO_FILE* noundef %74) #5
  %76 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %76, align 8
  %78 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %77) #5
  %79 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %79, align 8
  %81 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %80) #5
  br label %82

82:                                               ; preds = %141, %41
  %.0 = phi i32 [ 0, %41 ], [ %142, %141 ]
  %83 = icmp slt i32 %.0, %37
  br i1 %83, label %84, label %143

84:                                               ; preds = %82
  %85 = icmp slt i32 %.0, %1
  br i1 %85, label %86, label %139

86:                                               ; preds = %84
  %.not = icmp eq i8** %2, null
  br i1 %.not, label %131, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %88, align 8
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i64 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load i8*, i8** %2, align 8
  %95 = zext i32 %.0 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = lshr i32 %98, %8
  %100 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %100, align 8
  %102 = call i32 @putc(i32 noundef %99, %struct._IO_FILE* noundef %101) #5
  %103 = getelementptr inbounds i8*, i8** %2, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = zext i32 %.0 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = lshr i32 %108, %8
  %110 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %110, align 8
  %112 = call i32 @putc(i32 noundef %109, %struct._IO_FILE* noundef %111) #5
  %113 = getelementptr inbounds i8*, i8** %2, i64 2
  %114 = load i8*, i8** %113, align 8
  %115 = zext i32 %.0 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = lshr i32 %118, %8
  %120 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %120, align 8
  %122 = call i32 @putc(i32 noundef %119, %struct._IO_FILE* noundef %121) #5
  br label %130

123:                                              ; preds = %87
  %124 = load i8*, i8** %2, align 8
  %125 = zext i32 %.0 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = lshr i32 %128, %8
  call void @put_3bytes(%struct.gif_dest_struct* noundef %0, i32 noundef %129)
  br label %130

130:                                              ; preds = %123, %93
  br label %138

131:                                              ; preds = %86
  %132 = mul nsw i32 %.0, 255
  %133 = add nsw i32 %1, -1
  %134 = sdiv i32 %133, 2
  %135 = add nsw i32 %132, %134
  %136 = add nsw i32 %1, -1
  %137 = sdiv i32 %135, %136
  call void @put_3bytes(%struct.gif_dest_struct* noundef %0, i32 noundef %137)
  br label %138

138:                                              ; preds = %131, %130
  br label %140

139:                                              ; preds = %84
  call void @put_3bytes(%struct.gif_dest_struct* noundef %0, i32 noundef 0)
  br label %140

140:                                              ; preds = %139, %138
  br label %141

141:                                              ; preds = %140
  %142 = add nuw nsw i32 %.0, 1
  br label %82, !llvm.loop !7

143:                                              ; preds = %82
  %144 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %144, align 8
  %146 = call i32 @putc(i32 noundef 44, %struct._IO_FILE* noundef %145) #5
  call void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef 0)
  call void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef 0)
  %147 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %147, align 8
  %149 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %148, i64 0, i32 26
  %150 = load i32, i32* %149, align 8
  call void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef %150)
  %151 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %152 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %151, align 8
  %153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %152, i64 0, i32 27
  %154 = load i32, i32* %153, align 4
  call void @put_word(%struct.gif_dest_struct* noundef %0, i32 noundef %154)
  %155 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %155, align 8
  %157 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %156) #5
  %158 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %158, align 8
  %160 = call i32 @putc(i32 noundef %.01, %struct._IO_FILE* noundef %159) #5
  %161 = add nuw nsw i32 %.01, 1
  call void @compress_init(%struct.gif_dest_struct* noundef %0, i32 noundef %161)
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @put_word(%struct.gif_dest_struct* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 255
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @putc(i32 noundef %3, %struct._IO_FILE* noundef %5) #5
  %7 = lshr i32 %1, 8
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @putc(i32 noundef %8, %struct._IO_FILE* noundef %10) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_3bytes(%struct.gif_dest_struct* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = call i32 @putc(i32 noundef %1, %struct._IO_FILE* noundef %4) #5
  %6 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i32 @putc(i32 noundef %1, %struct._IO_FILE* noundef %7) #5
  %9 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 @putc(i32 noundef %1, %struct._IO_FILE* noundef %10) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @compress_init(%struct.gif_dest_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 4
  store i32 %1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 2
  store i32 %1, i32* %4, align 8
  %notmask = shl nsw i32 -1, %1
  %5 = trunc i32 %notmask to i16
  %6 = xor i16 %5, -1
  %7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 3
  store i16 %6, i16* %7, align 4
  %8 = add nsw i32 %1, -1
  %9 = shl i32 1, %8
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 9
  store i16 %10, i16* %11, align 4
  %12 = trunc i32 %9 to i16
  %13 = add i16 %12, 1
  %14 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 10
  store i16 %13, i16* %14, align 2
  %15 = trunc i32 %9 to i16
  %16 = add i16 %15, 2
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 11
  store i16 %16, i16* %17, align 8
  %18 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 8
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 6
  store i32 0, i32* %21, align 8
  call void @clear_hash(%struct.gif_dest_struct* noundef %0)
  %22 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 9
  %23 = load i16, i16* %22, align 4
  call void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %23)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @clear_hash(%struct.gif_dest_struct* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 12
  %3 = bitcast i16** %2 to i8**
  %4 = load i8*, i8** %3, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10006) %4, i8 0, i64 10006, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %1) #0 {
  %3 = sext i16 %1 to i64
  %4 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = zext i32 %5 to i64
  %7 = shl i64 %3, %6
  %8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = or i64 %9, %7
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, %12
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %33, %2
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 7
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 15, i64 %27
  store i8 %23, i8* %28, align 1
  %29 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 254
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  call void @flush_packet(%struct.gif_dest_struct* noundef %0)
  br label %33

33:                                               ; preds = %32, %20
  %34 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = ashr i64 %35, 8
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -8
  store i32 %39, i32* %37, align 8
  br label %16, !llvm.loop !8

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 11
  %42 = load i16, i16* %41, align 8
  %43 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 3
  %44 = load i16, i16* %43, align 4
  %45 = icmp sgt i16 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = icmp eq i32 %49, 12
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 3
  store i16 4096, i16* %52, align 4
  br label %59

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 2
  %55 = load i32, i32* %54, align 8
  %notmask = shl nsw i32 -1, %55
  %56 = trunc i32 %notmask to i16
  %57 = xor i16 %56, -1
  %58 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 3
  store i16 %57, i16* %58, align 4
  br label %59

59:                                               ; preds = %53, %51
  br label %60

60:                                               ; preds = %59, %40
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @flush_packet(%struct.gif_dest_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %3 = load i32, i32* %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = trunc i32 %7 to i8
  %10 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 15, i64 0
  store i8 %9, i8* %10, align 4
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 15, i64 0
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 0, i32 3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i64 @fwrite(i8* noundef nonnull %11, i64 noundef 1, i64 noundef %12, %struct._IO_FILE* noundef %14) #5
  %16 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %.not = icmp eq i64 %15, %18
  br i1 %.not, label %34, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 5
  store i32 36, i32* %24, align 8
  %25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 1
  %32 = bitcast %struct.jpeg_decompress_struct** %31 to %struct.jpeg_common_struct**
  %33 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %32, align 8
  call void %30(%struct.jpeg_common_struct* noundef %33) #5
  br label %34

34:                                               ; preds = %19, %5
  %35 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %34, %1
  ret void
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @compress_byte(%struct.gif_dest_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 8
  %4 = load i32, i32* %3, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %2
  %6 = trunc i32 %1 to i16
  %7 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  store i16 %6, i16* %7, align 4
  %8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 8
  store i32 0, i32* %8, align 8
  br label %100

9:                                                ; preds = %2
  %10 = shl i32 %1, 4
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  %12 = load i16, i16* %11, align 4
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %10, %13
  %15 = icmp sgt i32 %14, 5002
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = add nsw i32 %14, -5003
  br label %18

18:                                               ; preds = %16, %9
  %.01 = phi i32 [ %17, %16 ], [ %14, %9 ]
  %19 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  %20 = load i16, i16* %19, align 4
  %21 = sext i16 %20 to i64
  %22 = shl nsw i64 %21, 8
  %23 = sext i32 %1 to i64
  %24 = or i64 %22, %23
  %25 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 12
  %26 = load i16*, i16** %25, align 8
  %27 = sext i32 %.01 to i64
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16, i16* %28, align 2
  %.not3 = icmp eq i16 %29, 0
  br i1 %.not3, label %78, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 13
  %32 = load i64*, i64** %31, align 8
  %33 = sext i32 %.01 to i64
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, %24
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 12
  %39 = load i16*, i16** %38, align 8
  %40 = sext i32 %.01 to i64
  %41 = getelementptr inbounds i16, i16* %39, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  store i16 %42, i16* %43, align 4
  br label %100

44:                                               ; preds = %30
  %45 = icmp eq i32 %.01, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %48

47:                                               ; preds = %44
  %.neg = add i32 %.01, -5003
  br label %48

48:                                               ; preds = %47, %46
  %.0.neg = phi i32 [ -1, %46 ], [ %.neg, %47 ]
  br label %49

49:                                               ; preds = %76, %48
  %.1 = phi i32 [ %.01, %48 ], [ %.2, %76 ]
  %50 = add i32 %.0.neg, %.1
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = add nsw i32 %50, 5003
  br label %54

54:                                               ; preds = %52, %49
  %.2 = phi i32 [ %53, %52 ], [ %50, %49 ]
  %55 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 12
  %56 = load i16*, i16** %55, align 8
  %57 = sext i32 %.2 to i64
  %58 = getelementptr inbounds i16, i16* %56, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %77

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 13
  %64 = load i64*, i64** %63, align 8
  %65 = sext i32 %.2 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, %24
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 12
  %71 = load i16*, i16** %70, align 8
  %72 = sext i32 %.2 to i64
  %73 = getelementptr inbounds i16, i16* %71, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  store i16 %74, i16* %75, align 4
  br label %100

76:                                               ; preds = %62
  br label %49

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %18
  %.3 = phi i32 [ %.2, %77 ], [ %.01, %18 ]
  %79 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  %80 = load i16, i16* %79, align 4
  call void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %80)
  %81 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 11
  %82 = load i16, i16* %81, align 8
  %83 = icmp slt i16 %82, 4096
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 11
  %86 = load i16, i16* %85, align 8
  %87 = add i16 %86, 1
  store i16 %87, i16* %85, align 8
  %88 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 12
  %89 = load i16*, i16** %88, align 8
  %90 = sext i32 %.3 to i64
  %91 = getelementptr inbounds i16, i16* %89, i64 %90
  store i16 %86, i16* %91, align 2
  %92 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 13
  %93 = load i64*, i64** %92, align 8
  %94 = sext i32 %.3 to i64
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %24, i64* %95, align 8
  br label %97

96:                                               ; preds = %78
  call void @clear_block(%struct.gif_dest_struct* noundef %0)
  br label %97

97:                                               ; preds = %96, %84
  %98 = trunc i32 %1 to i16
  %99 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  store i16 %98, i16* %99, align 4
  br label %100

100:                                              ; preds = %97, %69, %37, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @clear_block(%struct.gif_dest_struct* noundef %0) #0 {
  call void @clear_hash(%struct.gif_dest_struct* noundef %0)
  %2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 9
  %3 = load i16, i16* %2, align 4
  %4 = add i16 %3, 2
  %5 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 11
  store i16 %4, i16* %5, align 8
  call void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %3)
  %6 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 2
  store i32 %7, i32* %8, align 8
  %notmask = shl nsw i32 -1, %7
  %9 = trunc i32 %notmask to i16
  %10 = xor i16 %9, -1
  %11 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 3
  store i16 %10, i16* %11, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @compress_term(%struct.gif_dest_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 8
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 7
  %6 = load i16, i16* %5, align 4
  call void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %6)
  br label %7

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 10
  %9 = load i16, i16* %8, align 2
  call void @output(%struct.gif_dest_struct* noundef %0, i16 noundef signext %9)
  %10 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 15, i64 %20
  store i8 %16, i8* %21, align 1
  %22 = getelementptr inbounds %struct.gif_dest_struct, %struct.gif_dest_struct* %0, i64 0, i32 14
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 254
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  call void @flush_packet(%struct.gif_dest_struct* noundef %0)
  br label %26

26:                                               ; preds = %25, %13
  br label %27

27:                                               ; preds = %26, %7
  call void @flush_packet(%struct.gif_dest_struct* noundef %0)
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
