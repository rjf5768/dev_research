; ModuleID = './wrbmp.ll'
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
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.bmp_dest_struct = type { %struct.djpeg_dest_struct, i32, %struct.jvirt_sarray_control*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %5, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8* %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i64 noundef 80) #5
  %9 = bitcast i8* %8 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @start_output_bmp, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %9, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 16
  %11 = bitcast i8* %10 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)* @finish_output_bmp, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %11, align 8
  %12 = getelementptr inbounds i8, i8* %8, i64 48
  %13 = bitcast i8* %12 to i32*
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %19, align 8
  br label %44

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %26 = load i32, i32* %25, align 4
  %.not2 = icmp eq i32 %26, 0
  br i1 %.not2, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, i8* %8, i64 8
  %29 = bitcast i8* %28 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_gray_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %29, align 8
  br label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, i8* %8, i64 8
  %32 = bitcast i8* %31 to void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)* @put_pixel_rows, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  br label %43

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i64 0, i32 5
  store i32 1005, i32* %37, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i64 0, i32 0
  %41 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %40, align 8
  %42 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %41(%struct.jpeg_common_struct* noundef %42) #5
  br label %43

43:                                               ; preds = %34, %33
  br label %44

44:                                               ; preds = %43, %17
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %0) #5
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %46, %48
  %50 = getelementptr inbounds i8, i8* %8, i64 64
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %54, %44
  %.0 = phi i32 [ %49, %44 ], [ %55, %54 ]
  %53 = and i32 %.0, 3
  %.not = icmp eq i32 %53, 0
  br i1 %.not, label %56, label %54

54:                                               ; preds = %52
  %55 = add i32 %.0, 1
  br label %52, !llvm.loop !4

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, i8* %8, i64 68
  %58 = bitcast i8* %57 to i32*
  store i32 %.0, i32* %58, align 4
  %59 = getelementptr inbounds i8, i8* %8, i64 64
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 8
  %62 = sub i32 %.0, %61
  %63 = getelementptr inbounds i8, i8* %8, i64 72
  %64 = bitcast i8* %63 to i32*
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %66 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %66, i64 0, i32 4
  %68 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %67, align 8
  %69 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.jvirt_sarray_control* %68(%struct.jpeg_common_struct* noundef %69, i32 noundef 1, i32 noundef 0, i32 noundef %.0, i32 noundef %71, i32 noundef 1) #5
  %73 = getelementptr inbounds i8, i8* %8, i64 56
  %74 = bitcast i8* %73 to %struct.jvirt_sarray_control**
  store %struct.jvirt_sarray_control* %72, %struct.jvirt_sarray_control** %74, align 8
  %75 = getelementptr inbounds i8, i8* %8, i64 76
  %76 = bitcast i8* %75 to i32*
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %78 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %77, align 8
  %.not1 = icmp eq %struct.jpeg_progress_mgr* %78, null
  br i1 %.not1, label %86, label %79

79:                                               ; preds = %56
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %81 = bitcast %struct.jpeg_progress_mgr** %80 to %struct.cdjpeg_progress_mgr**
  %82 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %81, align 8
  %83 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %82, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %56
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %88 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %87, align 8
  %89 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %88, i64 0, i32 2
  %90 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %89, align 8
  %91 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %92 = call i8** %90(%struct.jpeg_common_struct* noundef %91, i32 noundef 1, i32 noundef %.0, i32 noundef 1) #5
  %93 = getelementptr inbounds i8, i8* %8, i64 32
  %94 = bitcast i8* %93 to i8***
  store i8** %92, i8*** %94, align 8
  %95 = getelementptr inbounds i8, i8* %8, i64 40
  %96 = bitcast i8* %95 to i32*
  store i32 1, i32* %96, align 8
  %97 = bitcast i8* %8 to %struct.djpeg_dest_struct*
  ret %struct.djpeg_dest_struct* %97
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @start_output_bmp(%struct.jpeg_decompress_struct* nocapture noundef %0, %struct.djpeg_dest_struct* nocapture noundef %1) #1 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_bmp(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef readonly %1) #0 {
  %3 = bitcast %struct.djpeg_dest_struct* %1 to %struct.bmp_dest_struct*
  %4 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %7 = bitcast %struct.jpeg_progress_mgr** %6 to %struct.cdjpeg_progress_mgr**
  %8 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1
  %10 = bitcast %struct.djpeg_dest_struct* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %2
  call void @write_os2_header(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %3)
  br label %14

13:                                               ; preds = %2
  call void @write_bmp_header(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %3)
  br label %14

14:                                               ; preds = %13, %12
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %55, %14
  %.01 = phi i32 [ %16, %14 ], [ %56, %55 ]
  %.not3 = icmp eq i32 %.01, 0
  br i1 %.not3, label %57, label %18

18:                                               ; preds = %17
  %.not6 = icmp eq %struct.cdjpeg_progress_mgr* %8, null
  br i1 %.not6, label %32, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %21, %.01
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %8, i64 0, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %8, i64 0, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = bitcast %struct.cdjpeg_progress_mgr* %8 to void (%struct.jpeg_common_struct*)**
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %31) #5
  br label %32

32:                                               ; preds = %19, %18
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i64 0, i32 7
  %36 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %35, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %38 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 1
  %39 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %38 to %struct.jvirt_sarray_control**
  %40 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %39, align 8
  %41 = add i32 %.01, -1
  %42 = call i8** %36(%struct.jpeg_common_struct* noundef %37, %struct.jvirt_sarray_control* noundef %40, i32 noundef %41, i32 noundef 1, i32 noundef 0) #5
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %3, i64 0, i32 4
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %51, %32
  %.02 = phi i8* [ %43, %32 ], [ %52, %51 ]
  %.0 = phi i32 [ %45, %32 ], [ %53, %51 ]
  %.not7 = icmp eq i32 %.0, 0
  br i1 %.not7, label %54, label %47

47:                                               ; preds = %46
  %48 = load i8, i8* %.02, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 @putc(i32 noundef %49, %struct._IO_FILE* noundef %5) #5
  br label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, i8* %.02, i64 1
  %53 = add i32 %.0, -1
  br label %46, !llvm.loop !6

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = add i32 %.01, -1
  br label %17, !llvm.loop !7

57:                                               ; preds = %17
  %.not4 = icmp eq %struct.cdjpeg_progress_mgr* %8, null
  br i1 %.not4, label %62, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %8, i64 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = call i32 @fflush(%struct._IO_FILE* noundef %5) #5
  %64 = call i32 @ferror(%struct._IO_FILE* noundef %5) #5
  %.not5 = icmp eq i32 %64, 0
  br i1 %.not5, label %74, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %66, align 8
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i64 0, i32 5
  store i32 36, i32* %68, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i64 0, i32 0
  %72 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %71, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %72(%struct.jpeg_common_struct* noundef %73) #5
  br label %74

74:                                               ; preds = %65, %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_gray_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef %1, i32 noundef %2) #0 {
  %4 = bitcast %struct.djpeg_dest_struct* %1 to %struct.bmp_dest_struct*
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 7
  %8 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %7, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 1
  %11 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %10 to %struct.jvirt_sarray_control**
  %12 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %11, align 8
  %13 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %4, i64 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i8** %8(%struct.jpeg_common_struct* noundef %9, %struct.jvirt_sarray_control* noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 1) #5
  %16 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %4, i64 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %28, %3
  %.03 = phi i8* [ %21, %3 ], [ %30, %28 ]
  %.02 = phi i8* [ %22, %3 ], [ %29, %28 ]
  %.01 = phi i32 [ %24, %3 ], [ %31, %28 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %32, label %26

26:                                               ; preds = %25
  %27 = load i8, i8* %.03, align 1
  store i8 %27, i8* %.02, align 1
  br label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, i8* %.02, i64 1
  %30 = getelementptr inbounds i8, i8* %.03, i64 1
  %31 = add i32 %.01, -1
  br label %25, !llvm.loop !8

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 3
  %34 = bitcast %struct._IO_FILE** %33 to i32*
  %35 = load i32, i32* %34, align 8
  br label %36

36:                                               ; preds = %38, %32
  %.1 = phi i8* [ %.02, %32 ], [ %40, %38 ]
  %.0 = phi i32 [ %35, %32 ], [ %39, %38 ]
  %37 = icmp sgt i32 %.0, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = add nsw i32 %.0, -1
  %40 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %.1, align 1
  br label %36, !llvm.loop !9

41:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @put_pixel_rows(%struct.jpeg_decompress_struct* noundef %0, %struct.djpeg_dest_struct* nocapture noundef %1, i32 noundef %2) #0 {
  %4 = bitcast %struct.djpeg_dest_struct* %1 to %struct.bmp_dest_struct*
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 7
  %8 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %7, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %10 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 1
  %11 = bitcast void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %10 to %struct.jvirt_sarray_control**
  %12 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %11, align 8
  %13 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %4, i64 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i8** %8(%struct.jpeg_common_struct* noundef %9, %struct.jvirt_sarray_control* noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef 1) #5
  %16 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %4, i64 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %34, %3
  %.03 = phi i8* [ %21, %3 ], [ %36, %34 ]
  %.02 = phi i8* [ %22, %3 ], [ %35, %34 ]
  %.01 = phi i32 [ %24, %3 ], [ %37, %34 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %38, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds i8, i8* %.03, i64 1
  %28 = load i8, i8* %.03, align 1
  %29 = getelementptr inbounds i8, i8* %.02, i64 2
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %.03, i64 2
  %31 = load i8, i8* %27, align 1
  %32 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %31, i8* %32, align 1
  %33 = load i8, i8* %30, align 1
  store i8 %33, i8* %.02, align 1
  br label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, i8* %.02, i64 3
  %36 = getelementptr inbounds i8, i8* %.03, i64 3
  %37 = add i32 %.01, -1
  br label %25, !llvm.loop !10

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %1, i64 1, i32 3
  %40 = bitcast %struct._IO_FILE** %39 to i32*
  %41 = load i32, i32* %40, align 8
  br label %42

42:                                               ; preds = %44, %38
  %.1 = phi i8* [ %.02, %38 ], [ %46, %44 ]
  %.0 = phi i32 [ %41, %38 ], [ %45, %44 ]
  %43 = icmp sgt i32 %.0, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = add nsw i32 %.0, -1
  %46 = getelementptr inbounds i8, i8* %.1, i64 1
  store i8 0, i8* %.1, align 1
  br label %42, !llvm.loop !11

47:                                               ; preds = %42
  ret void
}

declare dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @write_os2_header(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* nocapture noundef readonly %1) #0 {
  %3 = alloca [14 x i8], align 1
  %4 = alloca [12 x i8], align 1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %10 = load i32, i32* %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %.01 = phi i8 [ 8, %11 ], [ 24, %12 ]
  %.0 = phi i32 [ 256, %11 ], [ 0, %12 ]
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %13
  %.12 = phi i8 [ %.01, %13 ], [ 8, %14 ]
  %.1 = phi i32 [ %.0, %13 ], [ 256, %14 ]
  %16 = mul nsw i32 %.1, 3
  %17 = add nsw i32 %16, 26
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %21, %24
  %26 = add nsw i64 %25, %18
  %27 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %27, i8 0, i64 14, i1 false)
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %28, i8 0, i64 12, i1 false)
  %29 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  store i8 66, i8* %29, align 1
  %30 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 1
  store i8 77, i8* %30, align 1
  %31 = trunc i64 %26 to i8
  %32 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 2
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %26, 8
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 3
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %26, 16
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 4
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %26, 24
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 5
  store i8 %40, i8* %41, align 1
  %42 = trunc i32 %17 to i8
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 10
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 8
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 11
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %17, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 12
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %17, 24
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 13
  store i8 %51, i8* %52, align 1
  %53 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  store i8 12, i8* %53, align 1
  %54 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %56 = load i32, i32* %55, align 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 4
  store i8 %57, i8* %58, align 1
  %59 = lshr i32 %56, 8
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 5
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %63 = load i32, i32* %62, align 4
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 6
  store i8 %64, i8* %65, align 1
  %66 = lshr i32 %63, 8
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 7
  store i8 %67, i8* %68, align 1
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 8
  store i8 1, i8* %69, align 1
  %70 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 9
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 10
  store i8 %.12, i8* %71, align 1
  %72 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 11
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %74 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 0, i32 3
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %74, align 8
  %76 = call i64 @fwrite(i8* noundef nonnull %73, i64 noundef 1, i64 noundef 14, %struct._IO_FILE* noundef %75) #5
  %.not = icmp eq i64 %76, 14
  br i1 %.not, label %86, label %77

77:                                               ; preds = %15
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %79 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %78, align 8
  %80 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %79, i64 0, i32 5
  store i32 36, i32* %80, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %81, align 8
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i64 0, i32 0
  %84 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %83, align 8
  %85 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %84(%struct.jpeg_common_struct* noundef %85) #5
  br label %86

86:                                               ; preds = %77, %15
  %87 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %88 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 0, i32 3
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %88, align 8
  %90 = call i64 @fwrite(i8* noundef nonnull %87, i64 noundef 1, i64 noundef 12, %struct._IO_FILE* noundef %89) #5
  %.not3 = icmp eq i64 %90, 12
  br i1 %.not3, label %100, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %92, align 8
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i64 0, i32 5
  store i32 36, i32* %94, align 8
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %95, align 8
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i64 0, i32 0
  %98 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %97, align 8
  %99 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %98(%struct.jpeg_common_struct* noundef %99) #5
  br label %100

100:                                              ; preds = %91, %86
  %101 = icmp sgt i32 %.1, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  call void @write_colormap(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %1, i32 noundef %.1, i32 noundef 3)
  br label %103

103:                                              ; preds = %102, %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_bmp_header(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* nocapture noundef readonly %1) #0 {
  %3 = alloca [14 x i8], align 1
  %4 = alloca [40 x i8], align 16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %10 = load i32, i32* %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %11
  %.01 = phi i8 [ 8, %11 ], [ 24, %12 ]
  %.0 = phi i32 [ 256, %11 ], [ 0, %12 ]
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %13
  %.12 = phi i8 [ %.01, %13 ], [ 8, %14 ]
  %.1 = phi i32 [ %.0, %13 ], [ 256, %14 ]
  %16 = shl nsw i32 %.1, 2
  %17 = add nsw i32 %16, 54
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %21, %24
  %26 = add nsw i64 %25, %18
  %27 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %27, i8 0, i64 14, i1 false)
  %28 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  %29 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  store i8 66, i8* %29, align 1
  %30 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 1
  store i8 77, i8* %30, align 1
  %31 = trunc i64 %26 to i8
  %32 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 2
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %26, 8
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 3
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %26, 16
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 4
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %26, 24
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 5
  store i8 %40, i8* %41, align 1
  %42 = trunc i32 %17 to i8
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 10
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 8
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 11
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %17, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 12
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %17, 24
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 13
  store i8 %51, i8* %52, align 1
  %53 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  store i8 40, i8* %53, align 16
  %54 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %56 = load i32, i32* %55, align 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 4
  store i8 %57, i8* %58, align 4
  %59 = lshr i32 %56, 8
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 5
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %63 = load i32, i32* %62, align 8
  %64 = lshr i32 %63, 16
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 6
  store i8 %65, i8* %66, align 2
  %67 = lshr i32 %63, 24
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 7
  store i8 %68, i8* %69, align 1
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %71 = load i32, i32* %70, align 4
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 8
  store i8 %72, i8* %73, align 8
  %74 = lshr i32 %71, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 9
  store i8 %75, i8* %76, align 1
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %78 = load i32, i32* %77, align 4
  %79 = lshr i32 %78, 16
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 10
  store i8 %80, i8* %81, align 2
  %82 = lshr i32 %78, 24
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 11
  store i8 %83, i8* %84, align 1
  %85 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 12
  store i8 1, i8* %85, align 4
  %86 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 13
  store i8 0, i8* %86, align 1
  %87 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 14
  store i8 %.12, i8* %87, align 2
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 15
  store i8 0, i8* %88, align 1
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 51
  %90 = load i8, i8* %89, align 8
  %91 = icmp eq i8 %90, 2
  br i1 %91, label %92, label %129

92:                                               ; preds = %15
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 52
  %94 = load i16, i16* %93, align 2
  %95 = trunc i16 %94 to i8
  %96 = mul i8 %95, 100
  %97 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 24
  store i8 %96, i8* %97, align 8
  %98 = zext i16 %94 to i64
  %99 = mul nuw nsw i64 %98, 100
  %100 = lshr i64 %99, 8
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 25
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 52
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i64
  %106 = mul nuw nsw i64 %105, 100
  %107 = lshr i64 %106, 16
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 26
  store i8 %108, i8* %109, align 2
  %110 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 27
  store i8 0, i8* %110, align 1
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 53
  %112 = load i16, i16* %111, align 4
  %113 = trunc i16 %112 to i8
  %114 = mul i8 %113, 100
  %115 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 28
  store i8 %114, i8* %115, align 4
  %116 = zext i16 %112 to i64
  %117 = mul nuw nsw i64 %116, 100
  %118 = lshr i64 %117, 8
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 29
  store i8 %119, i8* %120, align 1
  %121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 53
  %122 = load i16, i16* %121, align 4
  %123 = zext i16 %122 to i64
  %124 = mul nuw nsw i64 %123, 100
  %125 = lshr i64 %124, 16
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 30
  store i8 %126, i8* %127, align 2
  %128 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 31
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %92, %15
  %130 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 32
  store i8 0, i8* %130, align 16
  %131 = ashr i32 %.1, 8
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 33
  store i8 %132, i8* %133, align 1
  %134 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %135 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 0, i32 3
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %135, align 8
  %137 = call i64 @fwrite(i8* noundef nonnull %134, i64 noundef 1, i64 noundef 14, %struct._IO_FILE* noundef %136) #5
  %.not = icmp eq i64 %137, 14
  br i1 %.not, label %147, label %138

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %139, align 8
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i64 0, i32 5
  store i32 36, i32* %141, align 8
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %142, align 8
  %144 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i64 0, i32 0
  %145 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %144, align 8
  %146 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %145(%struct.jpeg_common_struct* noundef %146) #5
  br label %147

147:                                              ; preds = %138, %129
  %148 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %149 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 0, i32 3
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %149, align 8
  %151 = call i64 @fwrite(i8* noundef nonnull %148, i64 noundef 1, i64 noundef 40, %struct._IO_FILE* noundef %150) #5
  %.not3 = icmp eq i64 %151, 40
  br i1 %.not3, label %161, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %154 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %153, align 8
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %154, i64 0, i32 5
  store i32 36, i32* %155, align 8
  %156 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %157 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %156, align 8
  %158 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %157, i64 0, i32 0
  %159 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %158, align 8
  %160 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %159(%struct.jpeg_common_struct* noundef %160) #5
  br label %161

161:                                              ; preds = %152, %147
  %162 = icmp sgt i32 %.1, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  call void @write_colormap(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* noundef %1, i32 noundef %.1, i32 noundef 4)
  br label %164

164:                                              ; preds = %163, %161
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @write_colormap(%struct.jpeg_decompress_struct* noundef %0, %struct.bmp_dest_struct* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 31
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.bmp_dest_struct, %struct.bmp_dest_struct* %1, i64 0, i32 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %.not = icmp eq i8** %6, null
  br i1 %.not, label %76, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %43, %15
  %.0 = phi i32 [ 0, %15 ], [ %44, %43 ]
  %17 = icmp slt i32 %.0, %8
  br i1 %17, label %18, label %45

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8*, i8** %6, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 @putc(i32 noundef %24, %struct._IO_FILE* noundef %10) #5
  %26 = getelementptr inbounds i8*, i8** %6, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 @putc(i32 noundef %31, %struct._IO_FILE* noundef %10) #5
  %33 = load i8*, i8** %6, align 8
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 @putc(i32 noundef %37, %struct._IO_FILE* noundef %10) #5
  %39 = icmp eq i32 %3, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  br label %42

42:                                               ; preds = %40, %18
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !12

45:                                               ; preds = %16
  br label %75

46:                                               ; preds = %11
  br label %47

47:                                               ; preds = %72, %46
  %.1 = phi i32 [ 0, %46 ], [ %73, %72 ]
  %48 = icmp slt i32 %.1, %8
  br i1 %48, label %49, label %74

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = zext i32 %.1 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 @putc(i32 noundef %54, %struct._IO_FILE* noundef %10) #5
  %56 = load i8*, i8** %6, align 8
  %57 = zext i32 %.1 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 @putc(i32 noundef %60, %struct._IO_FILE* noundef %10) #5
  %62 = load i8*, i8** %6, align 8
  %63 = zext i32 %.1 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 @putc(i32 noundef %66, %struct._IO_FILE* noundef %10) #5
  %68 = icmp eq i32 %3, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  br label %71

71:                                               ; preds = %69, %49
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.1, 1
  br label %47, !llvm.loop !13

74:                                               ; preds = %47
  br label %75

75:                                               ; preds = %74, %45
  %.2 = phi i32 [ %.0, %45 ], [ %.1, %74 ]
  br label %90

76:                                               ; preds = %4
  br label %77

77:                                               ; preds = %87, %76
  %.3 = phi i32 [ 0, %76 ], [ %88, %87 ]
  %78 = icmp ult i32 %.3, 256
  br i1 %78, label %79, label %89

79:                                               ; preds = %77
  %80 = call i32 @putc(i32 noundef %.3, %struct._IO_FILE* noundef %10) #5
  %81 = call i32 @putc(i32 noundef %.3, %struct._IO_FILE* noundef %10) #5
  %82 = call i32 @putc(i32 noundef %.3, %struct._IO_FILE* noundef %10) #5
  %83 = icmp eq i32 %3, 4
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  br label %86

86:                                               ; preds = %84, %79
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.3, 1
  br label %77, !llvm.loop !14

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %75
  %.4 = phi i32 [ %.2, %75 ], [ %.3, %89 ]
  %91 = icmp sgt i32 %.4, %2
  br i1 %91, label %92, label %104

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i64 0, i32 5
  store i32 1039, i32* %95, align 8
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %96, align 8
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i64 0, i32 6, i32 0, i64 0
  store i32 %.4, i32* %98, align 4
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %99, align 8
  %101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i64 0, i32 0
  %102 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %101, align 8
  %103 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %102(%struct.jpeg_common_struct* noundef %103) #5
  br label %104

104:                                              ; preds = %92, %90
  br label %105

105:                                              ; preds = %115, %104
  %.5 = phi i32 [ %.4, %104 ], [ %116, %115 ]
  %106 = icmp slt i32 %.5, %2
  br i1 %106, label %107, label %117

107:                                              ; preds = %105
  %108 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  %109 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  %110 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  %111 = icmp eq i32 %3, 4
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @putc(i32 noundef 0, %struct._IO_FILE* noundef %10) #5
  br label %114

114:                                              ; preds = %112, %107
  br label %115

115:                                              ; preds = %114
  %116 = add nsw i32 %.5, 1
  br label %105, !llvm.loop !15

117:                                              ; preds = %105
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
