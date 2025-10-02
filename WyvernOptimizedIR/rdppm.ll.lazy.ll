; ModuleID = './rdppm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdppm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjpeg_source_struct = type { void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, %struct._IO_FILE*, i8**, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 80) #3
  %8 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)**
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %8, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)**
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %10, align 8
  %11 = bitcast i8* %7 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_ppm(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4) #3
  %.not = icmp eq i32 %5, 80
  br i1 %.not, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 1027, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* noundef %14) #3
  br label %15

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @getc(%struct._IO_FILE* noundef %17) #3
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %20)
  %22 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %23)
  %25 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %26)
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %15
  %30 = icmp eq i32 %24, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = icmp eq i32 %27, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %31, %29, %15
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i64 0, i32 5
  store i32 1027, i32* %36, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i64 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %39, align 8
  %41 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* noundef %41) #3
  br label %42

42:                                               ; preds = %33, %31
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  store i32 8, i32* %43, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  store i32 %21, i32* %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  store i32 %24, i32* %45, align 4
  switch i32 %18, label %138 [
    i32 50, label %46
    i32 51, label %64
    i32 53, label %82
    i32 54, label %110
  ]

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i64 0, i32 5
  store i32 1029, i32* %51, align 8
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %52, align 8
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i64 0, i32 6, i32 0, i64 0
  store i32 %21, i32* %54, align 4
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i64 0, i32 6, i32 0, i64 1
  store i32 %24, i32* %57, align 4
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %58, align 8
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i64 0, i32 1
  %61 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %60, align 8
  %62 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* noundef %62, i32 noundef 1) #3
  %63 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %63, align 8
  br label %147

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 3, i32* %65, align 8
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 2, i32* %66, align 4
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i64 0, i32 5
  store i32 1031, i32* %69, align 8
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i64 0, i32 6, i32 0, i64 0
  store i32 %21, i32* %72, align 4
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i64 0, i32 6, i32 0, i64 1
  store i32 %24, i32* %75, align 4
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %76, align 8
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i64 0, i32 1
  %79 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %78, align 8
  %80 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* noundef %80, i32 noundef 1) #3
  %81 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %81, align 8
  br label %147

82:                                               ; preds = %42
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 1, i32* %83, align 8
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %85, align 8
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i64 0, i32 5
  store i32 1028, i32* %87, align 8
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %88, align 8
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i64 0, i32 6, i32 0, i64 0
  store i32 %21, i32* %90, align 4
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %91, align 8
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i64 0, i32 6, i32 0, i64 1
  store i32 %24, i32* %93, align 4
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %95 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %94, align 8
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %95, i64 0, i32 1
  %97 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %96, align 8
  %98 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %97(%struct.jpeg_common_struct* noundef %98, i32 noundef 1) #3
  %99 = icmp ugt i32 %27, 255
  br i1 %99, label %100, label %102

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %101, align 8
  br label %109

102:                                              ; preds = %82
  %103 = icmp eq i32 %27, 255
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %105, align 8
  br label %108

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %107, align 8
  br label %108

108:                                              ; preds = %106, %104
  %.02 = phi i32 [ 1, %104 ], [ 0, %106 ]
  %.01 = phi i32 [ 0, %104 ], [ 1, %106 ]
  br label %109

109:                                              ; preds = %108, %100
  %.13 = phi i32 [ 0, %100 ], [ %.02, %108 ]
  %.1 = phi i32 [ 1, %100 ], [ %.01, %108 ]
  br label %147

110:                                              ; preds = %42
  %111 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 3, i32* %111, align 8
  %112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 2, i32* %112, align 4
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %113, align 8
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i64 0, i32 5
  store i32 1030, i32* %115, align 8
  %116 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %116, align 8
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i64 0, i32 6, i32 0, i64 0
  store i32 %21, i32* %118, align 4
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %119, align 8
  %121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i64 0, i32 6, i32 0, i64 1
  store i32 %24, i32* %121, align 4
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i64 0, i32 1
  %125 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %124, align 8
  %126 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %125(%struct.jpeg_common_struct* noundef %126, i32 noundef 1) #3
  %127 = icmp ugt i32 %27, 255
  br i1 %127, label %128, label %130

128:                                              ; preds = %110
  %129 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %129, align 8
  br label %137

130:                                              ; preds = %110
  %131 = icmp eq i32 %27, 255
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %133, align 8
  br label %136

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %135, align 8
  br label %136

136:                                              ; preds = %134, %132
  %.24 = phi i32 [ 1, %132 ], [ 0, %134 ]
  %.2 = phi i32 [ 0, %132 ], [ 1, %134 ]
  br label %137

137:                                              ; preds = %136, %128
  %.35 = phi i32 [ 0, %128 ], [ %.24, %136 ]
  %.3 = phi i32 [ 1, %128 ], [ %.2, %136 ]
  br label %147

138:                                              ; preds = %42
  %139 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %139, align 8
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i64 0, i32 5
  store i32 1027, i32* %141, align 8
  %142 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %142, align 8
  %144 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i64 0, i32 0
  %145 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %144, align 8
  %146 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %145(%struct.jpeg_common_struct* noundef %146) #3
  br label %147

147:                                              ; preds = %138, %137, %109, %64, %46
  %.not8 = phi i1 [ false, %138 ], [ false, %137 ], [ false, %109 ], [ true, %64 ], [ true, %46 ]
  %.46 = phi i32 [ 0, %138 ], [ %.35, %137 ], [ %.13, %109 ], [ 0, %64 ], [ 0, %46 ]
  %.4 = phi i32 [ 1, %138 ], [ %.3, %137 ], [ %.1, %109 ], [ 1, %64 ], [ 1, %46 ]
  br i1 %.not8, label %170, label %148

148:                                              ; preds = %147
  %149 = zext i32 %21 to i64
  %150 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %149, %152
  %154 = icmp ult i32 %27, 256
  %155 = select i1 %154, i64 1, i64 2
  %156 = mul i64 %153, %155
  %157 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %158 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %157 to i64*
  store i64 %156, i64* %158, align 8
  %159 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %160 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %159, align 8
  %161 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %160, i64 0, i32 0
  %162 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %161, align 8
  %163 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %164 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %165 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %164 to i64*
  %166 = load i64, i64* %165, align 8
  %167 = call i8* %162(%struct.jpeg_common_struct* noundef %163, i32 noundef 1, i64 noundef %166) #3
  %168 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %169 = bitcast %struct.cjpeg_source_struct* %168 to i8**
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %148, %147
  %.not9 = icmp eq i32 %.46, 0
  br i1 %.not9, label %181, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %173 = bitcast %struct.cjpeg_source_struct* %172 to i8**
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 1
  %176 = bitcast i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %175 to i8**
  store i8* %174, i8** %176, align 8
  %177 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 1
  %178 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %179 = bitcast i8*** %178 to i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)***
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %177, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*** %179, align 8
  %180 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 5
  store i32 1, i32* %180, align 8
  br label %193

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %183 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %182, align 8
  %184 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %183, i64 0, i32 2
  %185 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %184, align 8
  %186 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %187 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = mul i32 %21, %188
  %190 = call i8** %185(%struct.jpeg_common_struct* noundef %186, i32 noundef 1, i32 noundef %189, i32 noundef 1) #3
  %191 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  store i8** %190, i8*** %191, align 8
  %192 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 5
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %181, %171
  %.not10 = icmp eq i32 %.4, 0
  br i1 %.not10, label %222, label %194

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %196 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %195, align 8
  %197 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %196, i64 0, i32 0
  %198 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %197, align 8
  %199 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %200 = zext i32 %27 to i64
  %201 = add nuw nsw i64 %200, 1
  %202 = call i8* %198(%struct.jpeg_common_struct* noundef %199, i32 noundef 1, i64 noundef %201) #3
  %203 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %204 = bitcast %struct._IO_FILE** %203 to i8**
  store i8* %202, i8** %204, align 8
  %205 = lshr i32 %27, 1
  %206 = zext i32 %205 to i64
  br label %207

207:                                              ; preds = %219, %194
  %.0 = phi i64 [ 0, %194 ], [ %220, %219 ]
  %208 = zext i32 %27 to i64
  %.not11 = icmp ugt i64 %.0, %208
  br i1 %.not11, label %221, label %209

209:                                              ; preds = %207
  %210 = mul nsw i64 %.0, 255
  %211 = add nuw nsw i64 %210, %206
  %212 = zext i32 %27 to i64
  %213 = udiv i64 %211, %212
  %214 = trunc i64 %213 to i8
  %215 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %216 = bitcast %struct._IO_FILE** %215 to i8**
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 %.0
  store i8 %214, i8* %218, align 1
  br label %219

219:                                              ; preds = %209
  %220 = add nuw nsw i64 %.0, 1
  br label %207, !llvm.loop !4

221:                                              ; preds = %207
  br label %222

222:                                              ; preds = %221, %193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @finish_input_ppm(%struct.jpeg_compress_struct* nocapture noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #1 {
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  br label %3

3:                                                ; preds = %24, %2
  %4 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 42, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* noundef %14) #3
  br label %15

15:                                               ; preds = %6, %3
  br label %16

16:                                               ; preds = %15
  %17 = icmp eq i32 %4, 32
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %4, 9
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = icmp eq i32 %4, 10
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %4, 13
  br label %24

24:                                               ; preds = %22, %20, %18, %16
  %25 = phi i1 [ true, %20 ], [ true, %18 ], [ true, %16 ], [ %23, %22 ]
  br i1 %25, label %3, label %26, !llvm.loop !6

26:                                               ; preds = %24
  %27 = icmp slt i32 %4, 48
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = icmp sgt i32 %4, 57
  br i1 %29, label %30, label %39

30:                                               ; preds = %28, %26
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i64 0, i32 5
  store i32 1026, i32* %33, align 8
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i64 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %36, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* noundef %38) #3
  br label %39

39:                                               ; preds = %30, %28
  %40 = add nsw i32 %4, -48
  br label %41

41:                                               ; preds = %48, %39
  %.0 = phi i32 [ %40, %39 ], [ %51, %48 ]
  %42 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %43 = icmp sgt i32 %42, 47
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = icmp slt i32 %42, 58
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i1 [ false, %41 ], [ %45, %44 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = mul i32 %.0, 10
  %50 = add nsw i32 %42, -48
  %51 = add i32 %49, %50
  br label %41, !llvm.loop !7

52:                                               ; preds = %46
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_text_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %6 = bitcast %struct._IO_FILE** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %9 = load i8**, i8*** %8, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %19, %2
  %.01 = phi i8* [ %10, %2 ], [ %20, %19 ]
  %.0 = phi i32 [ %12, %2 ], [ %21, %19 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %22, label %14

14:                                               ; preds = %13
  %15 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %4)
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %7, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %.01, align 1
  br label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %.01, i64 1
  %21 = add i32 %.0, -1
  br label %13, !llvm.loop !8

22:                                               ; preds = %13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_text_rgb_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %6 = bitcast %struct._IO_FILE** %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %9 = load i8**, i8*** %8, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %29, %2
  %.01 = phi i8* [ %10, %2 ], [ %30, %29 ]
  %.0 = phi i32 [ %12, %2 ], [ %31, %29 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %32, label %14

14:                                               ; preds = %13
  %15 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %4)
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %7, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %18, i8* %.01, align 1
  %20 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %4)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %7, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %23, i8* %19, align 1
  %25 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %4)
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %7, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %24, align 1
  br label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds i8, i8* %.01, i64 3
  %31 = add i32 %.0, -1
  br label %13, !llvm.loop !9

32:                                               ; preds = %13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_word_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %4 = bitcast %struct._IO_FILE** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %7 = bitcast %struct.cjpeg_source_struct* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %10 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i64 @fread(i8* noundef %8, i64 noundef 1, i64 noundef %11, %struct._IO_FILE* noundef %13) #3
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %16 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 5
  store i32 42, i32* %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* noundef %27) #3
  br label %28

28:                                               ; preds = %19, %2
  %29 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %33 = bitcast %struct.cjpeg_source_struct* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %48, %28
  %.02 = phi i8* [ %31, %28 ], [ %49, %48 ]
  %.01 = phi i8* [ %34, %28 ], [ %50, %48 ]
  %.0 = phi i32 [ %36, %28 ], [ %51, %48 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %52, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds i8, i8* %.01, i64 1
  %40 = load i8, i8* %.01, align 1
  %41 = zext i8 %40 to i64
  %42 = load i8, i8* %39, align 1
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 8
  %45 = or i64 %44, %41
  %46 = getelementptr inbounds i8, i8* %5, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %.02, align 1
  br label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, i8* %.02, i64 1
  %50 = getelementptr inbounds i8, i8* %.01, i64 2
  %51 = add i32 %.0, -1
  br label %37, !llvm.loop !10

52:                                               ; preds = %37
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_raw_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %4 = bitcast %struct.cjpeg_source_struct* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %7 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i64 @fread(i8* noundef %5, i64 noundef 1, i64 noundef %8, %struct._IO_FILE* noundef %10) #3
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %13 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 42, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #3
  br label %25

25:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_scaled_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %4 = bitcast %struct._IO_FILE** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %7 = bitcast %struct.cjpeg_source_struct* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %10 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i64 @fread(i8* noundef %8, i64 noundef 1, i64 noundef %11, %struct._IO_FILE* noundef %13) #3
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %16 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 5
  store i32 42, i32* %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* noundef %27) #3
  br label %28

28:                                               ; preds = %19, %2
  %29 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %33 = bitcast %struct.cjpeg_source_struct* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %43, %28
  %.02 = phi i8* [ %31, %28 ], [ %44, %43 ]
  %.01 = phi i8* [ %34, %28 ], [ %45, %43 ]
  %.0 = phi i32 [ %36, %28 ], [ %46, %43 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %47, label %38

38:                                               ; preds = %37
  %39 = load i8, i8* %.01, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, i8* %5, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %.02, align 1
  br label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, i8* %.02, i64 1
  %45 = getelementptr inbounds i8, i8* %.01, i64 1
  %46 = add i32 %.0, -1
  br label %37, !llvm.loop !11

47:                                               ; preds = %37
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_word_rgb_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %4 = bitcast %struct._IO_FILE** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %7 = bitcast %struct.cjpeg_source_struct* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %10 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i64 @fread(i8* noundef %8, i64 noundef 1, i64 noundef %11, %struct._IO_FILE* noundef %13) #3
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %16 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 5
  store i32 42, i32* %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* noundef %27) #3
  br label %28

28:                                               ; preds = %19, %2
  %29 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %33 = bitcast %struct.cjpeg_source_struct* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %70, %28
  %.02 = phi i8* [ %31, %28 ], [ %71, %70 ]
  %.01 = phi i8* [ %34, %28 ], [ %72, %70 ]
  %.0 = phi i32 [ %36, %28 ], [ %73, %70 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %74, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds i8, i8* %.01, i64 1
  %40 = load i8, i8* %.01, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, i8* %.01, i64 2
  %43 = load i8, i8* %39, align 1
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 8
  %46 = or i64 %45, %41
  %47 = getelementptr inbounds i8, i8* %5, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %48, i8* %.02, align 1
  %50 = getelementptr inbounds i8, i8* %.01, i64 3
  %51 = load i8, i8* %42, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds i8, i8* %.01, i64 4
  %54 = load i8, i8* %50, align 1
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 8
  %57 = or i64 %56, %52
  %58 = getelementptr inbounds i8, i8* %5, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = getelementptr inbounds i8, i8* %.02, i64 2
  store i8 %59, i8* %49, align 1
  %61 = getelementptr inbounds i8, i8* %.01, i64 5
  %62 = load i8, i8* %53, align 1
  %63 = zext i8 %62 to i64
  %64 = load i8, i8* %61, align 1
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 8
  %67 = or i64 %66, %63
  %68 = getelementptr inbounds i8, i8* %5, i64 %67
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %60, align 1
  br label %70

70:                                               ; preds = %38
  %71 = getelementptr inbounds i8, i8* %.02, i64 3
  %72 = getelementptr inbounds i8, i8* %.01, i64 6
  %73 = add i32 %.0, -1
  br label %37, !llvm.loop !12

74:                                               ; preds = %37
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_scaled_rgb_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %4 = bitcast %struct._IO_FILE** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %7 = bitcast %struct.cjpeg_source_struct* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %10 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %14 = call i64 @fread(i8* noundef %8, i64 noundef 1, i64 noundef %11, %struct._IO_FILE* noundef %13) #3
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %16 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 5
  store i32 42, i32* %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* noundef %27) #3
  br label %28

28:                                               ; preds = %19, %2
  %29 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1
  %33 = bitcast %struct.cjpeg_source_struct* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %55, %28
  %.02 = phi i8* [ %31, %28 ], [ %56, %55 ]
  %.01 = phi i8* [ %34, %28 ], [ %57, %55 ]
  %.0 = phi i32 [ %36, %28 ], [ %58, %55 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %59, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds i8, i8* %.01, i64 1
  %40 = load i8, i8* %.01, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, i8* %5, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %43, i8* %.02, align 1
  %45 = getelementptr inbounds i8, i8* %.01, i64 2
  %46 = load i8, i8* %39, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i8, i8* %5, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr inbounds i8, i8* %.02, i64 2
  store i8 %49, i8* %44, align 1
  %51 = load i8, i8* %45, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds i8, i8* %5, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %50, align 1
  br label %55

55:                                               ; preds = %38
  %56 = getelementptr inbounds i8, i8* %.02, i64 3
  %57 = getelementptr inbounds i8, i8* %.01, i64 3
  %58 = add i32 %.0, -1
  br label %37, !llvm.loop !13

59:                                               ; preds = %37
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbm_getc(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %10, %4
  %6 = call i32 @getc(%struct._IO_FILE* noundef %0) #3
  br label %7

7:                                                ; preds = %5
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %10, label %8

8:                                                ; preds = %7
  %9 = icmp ne i32 %6, -1
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i1 [ false, %7 ], [ %9, %8 ]
  br i1 %11, label %5, label %12, !llvm.loop !14

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %1
  %.0 = phi i32 [ %6, %12 ], [ %2, %1 ]
  ret i32 %.0
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
