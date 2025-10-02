; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdppm.c'
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
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, i8*, i8*, i64, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.ppm_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 80)
  %12 = bitcast i8* %11 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %12, %struct.ppm_source_struct** %3, align 8
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %3, align 8
  %14 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %14, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15, align 8
  %16 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %3, align 8
  %17 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %17, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_ppm, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %18, align 8
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %3, align 8
  %20 = bitcast %struct.ppm_source_struct* %19 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %20
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_ppm(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %15 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %16 = bitcast %struct.cjpeg_source_struct* %15 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %16, %struct.ppm_source_struct** %5, align 8
  %17 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %18 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %18, i32 0, i32 3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %21 = call i32 @getc(%struct._IO_FILE* noundef %20)
  %22 = icmp ne i32 %21, 80
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 1027, i32* %27, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %34 = bitcast %struct.jpeg_compress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %34)
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %37 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %37, i32 0, i32 3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %38, align 8
  %40 = call i32 @getc(%struct._IO_FILE* noundef %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %42 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %43 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %43, i32 0, i32 3
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %46 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %41, %struct._IO_FILE* noundef %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %48 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %49 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %49, i32 0, i32 3
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %52 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %47, %struct._IO_FILE* noundef %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %54 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %55 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %55, i32 0, i32 3
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %56, align 8
  %58 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %53, %struct._IO_FILE* noundef %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ule i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %35
  %62 = load i32, i32* %8, align 4
  %63 = icmp ule i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp ule i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64, %61, %35
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 5
  store i32 1027, i32* %71, align 8
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 0
  %76 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %75, align 8
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %78 = bitcast %struct.jpeg_compress_struct* %77 to %struct.jpeg_common_struct*
  call void %76(%struct.jpeg_common_struct* noundef %78)
  br label %79

79:                                               ; preds = %67, %64
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 11
  store i32 8, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %253 [
    i32 50, label %89
    i32 51, label %122
    i32 53, label %155
    i32 54, label %204
  ]

89:                                               ; preds = %79
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 8
  store i32 1, i32* %91, align 8
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 9
  store i32 1, i32* %93, align 4
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %95, align 8
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 5
  store i32 1029, i32* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 6
  %103 = bitcast %union.anon* %102 to [8 x i32]*
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %103, i64 0, i64 0
  store i32 %98, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 6
  %110 = bitcast %union.anon* %109 to [8 x i32]*
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %110, i64 0, i64 1
  store i32 %105, i32* %111, align 4
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %113, align 8
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i32 0, i32 1
  %116 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %115, align 8
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %118 = bitcast %struct.jpeg_compress_struct* %117 to %struct.jpeg_common_struct*
  call void %116(%struct.jpeg_common_struct* noundef %118, i32 noundef 1)
  %119 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %120 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %120, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %121, align 8
  store i32 0, i32* %10, align 4
  br label %265

122:                                              ; preds = %79
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 8
  store i32 3, i32* %124, align 8
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %125, i32 0, i32 9
  store i32 2, i32* %126, align 4
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 5
  store i32 1031, i32* %130, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %133 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 0
  %134 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %133, align 8
  %135 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %134, i32 0, i32 6
  %136 = bitcast %union.anon* %135 to [8 x i32]*
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %136, i64 0, i64 0
  store i32 %131, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %139, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %140, align 8
  %142 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 6
  %143 = bitcast %union.anon* %142 to [8 x i32]*
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %143, i64 0, i64 1
  store i32 %138, i32* %144, align 4
  %145 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %146 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %145, i32 0, i32 0
  %147 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %146, align 8
  %148 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %147, i32 0, i32 1
  %149 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %148, align 8
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %151 = bitcast %struct.jpeg_compress_struct* %150 to %struct.jpeg_common_struct*
  call void %149(%struct.jpeg_common_struct* noundef %151, i32 noundef 1)
  %152 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %153 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %153, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_text_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %154, align 8
  store i32 0, i32* %10, align 4
  br label %265

155:                                              ; preds = %79
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 8
  store i32 1, i32* %157, align 8
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %159 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %158, i32 0, i32 9
  store i32 1, i32* %159, align 4
  %160 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %160, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %161, align 8
  %163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 5
  store i32 1028, i32* %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %166 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 0
  %167 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %166, align 8
  %168 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %167, i32 0, i32 6
  %169 = bitcast %union.anon* %168 to [8 x i32]*
  %170 = getelementptr inbounds [8 x i32], [8 x i32]* %169, i64 0, i64 0
  store i32 %164, i32* %170, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %173 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %172, i32 0, i32 0
  %174 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %173, align 8
  %175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %174, i32 0, i32 6
  %176 = bitcast %union.anon* %175 to [8 x i32]*
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %176, i64 0, i64 1
  store i32 %171, i32* %177, align 4
  %178 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %179 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %178, i32 0, i32 0
  %180 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %179, align 8
  %181 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %180, i32 0, i32 1
  %182 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %181, align 8
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %184 = bitcast %struct.jpeg_compress_struct* %183 to %struct.jpeg_common_struct*
  call void %182(%struct.jpeg_common_struct* noundef %184, i32 noundef 1)
  %185 = load i32, i32* %9, align 4
  %186 = icmp ugt i32 %185, 255
  br i1 %186, label %187, label %191

187:                                              ; preds = %155
  %188 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %189 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %189, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %190, align 8
  br label %203

191:                                              ; preds = %155
  %192 = load i32, i32* %9, align 4
  %193 = icmp eq i32 %192, 255
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %196 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %196, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %197, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %202

198:                                              ; preds = %191
  %199 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %200 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %200, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %201, align 8
  br label %202

202:                                              ; preds = %198, %194
  br label %203

203:                                              ; preds = %202, %187
  br label %265

204:                                              ; preds = %79
  %205 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %206 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %205, i32 0, i32 8
  store i32 3, i32* %206, align 8
  %207 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %208 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %207, i32 0, i32 9
  store i32 2, i32* %208, align 4
  %209 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %210 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %209, i32 0, i32 0
  %211 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %210, align 8
  %212 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %211, i32 0, i32 5
  store i32 1030, i32* %212, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 0
  %216 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %215, align 8
  %217 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %216, i32 0, i32 6
  %218 = bitcast %union.anon* %217 to [8 x i32]*
  %219 = getelementptr inbounds [8 x i32], [8 x i32]* %218, i64 0, i64 0
  store i32 %213, i32* %219, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %222 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %221, i32 0, i32 0
  %223 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %222, align 8
  %224 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %223, i32 0, i32 6
  %225 = bitcast %union.anon* %224 to [8 x i32]*
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %225, i64 0, i64 1
  store i32 %220, i32* %226, align 4
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %228 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %227, i32 0, i32 0
  %229 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %228, align 8
  %230 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %229, i32 0, i32 1
  %231 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %230, align 8
  %232 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %233 = bitcast %struct.jpeg_compress_struct* %232 to %struct.jpeg_common_struct*
  call void %231(%struct.jpeg_common_struct* noundef %233, i32 noundef 1)
  %234 = load i32, i32* %9, align 4
  %235 = icmp ugt i32 %234, 255
  br i1 %235, label %236, label %240

236:                                              ; preds = %204
  %237 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %238 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %238, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_word_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %239, align 8
  br label %252

240:                                              ; preds = %204
  %241 = load i32, i32* %9, align 4
  %242 = icmp eq i32 %241, 255
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %245 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %245, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_raw_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %246, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %251

247:                                              ; preds = %240
  %248 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %249 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %249, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_scaled_rgb_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %250, align 8
  br label %251

251:                                              ; preds = %247, %243
  br label %252

252:                                              ; preds = %251, %236
  br label %265

253:                                              ; preds = %79
  %254 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %255 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %254, i32 0, i32 0
  %256 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %255, align 8
  %257 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %256, i32 0, i32 5
  store i32 1027, i32* %257, align 8
  %258 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %259 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %258, i32 0, i32 0
  %260 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %259, align 8
  %261 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %260, i32 0, i32 0
  %262 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %261, align 8
  %263 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %264 = bitcast %struct.jpeg_compress_struct* %263 to %struct.jpeg_common_struct*
  call void %262(%struct.jpeg_common_struct* noundef %264)
  br label %265

265:                                              ; preds = %253, %252, %203, %122, %89
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %296

268:                                              ; preds = %265
  %269 = load i32, i32* %7, align 4
  %270 = zext i32 %269 to i64
  %271 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %272 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = mul i64 %270, %274
  %276 = load i32, i32* %9, align 4
  %277 = icmp ule i32 %276, 255
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i64 1, i64 2
  %280 = mul i64 %275, %279
  %281 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %282 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %281, i32 0, i32 3
  store i64 %280, i64* %282, align 8
  %283 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %284 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %283, i32 0, i32 1
  %285 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %284, align 8
  %286 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %285, i32 0, i32 0
  %287 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %286, align 8
  %288 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %289 = bitcast %struct.jpeg_compress_struct* %288 to %struct.jpeg_common_struct*
  %290 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %291 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = call i8* %287(%struct.jpeg_common_struct* noundef %289, i32 noundef 1, i64 noundef %292)
  %294 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %295 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  br label %296

296:                                              ; preds = %268, %265
  %297 = load i32, i32* %11, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %313

299:                                              ; preds = %296
  %300 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %301 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %304 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %303, i32 0, i32 2
  store i8* %302, i8** %304, align 8
  %305 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %306 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %305, i32 0, i32 2
  %307 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %308 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %308, i32 0, i32 4
  store i8** %306, i8*** %309, align 8
  %310 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %311 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %311, i32 0, i32 5
  store i32 1, i32* %312, align 8
  br label %333

313:                                              ; preds = %296
  %314 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %315 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %314, i32 0, i32 1
  %316 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %315, align 8
  %317 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %316, i32 0, i32 2
  %318 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %317, align 8
  %319 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %320 = bitcast %struct.jpeg_compress_struct* %319 to %struct.jpeg_common_struct*
  %321 = load i32, i32* %7, align 4
  %322 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %323 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 8
  %325 = mul i32 %321, %324
  %326 = call i8** %318(%struct.jpeg_common_struct* noundef %320, i32 noundef 1, i32 noundef %325, i32 noundef 1)
  %327 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %328 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %328, i32 0, i32 4
  store i8** %326, i8*** %329, align 8
  %330 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %331 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %331, i32 0, i32 5
  store i32 1, i32* %332, align 8
  br label %333

333:                                              ; preds = %313, %299
  %334 = load i32, i32* %12, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %377

336:                                              ; preds = %333
  %337 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %338 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %337, i32 0, i32 1
  %339 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %338, align 8
  %340 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %339, i32 0, i32 0
  %341 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %340, align 8
  %342 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %343 = bitcast %struct.jpeg_compress_struct* %342 to %struct.jpeg_common_struct*
  %344 = load i32, i32* %9, align 4
  %345 = zext i32 %344 to i64
  %346 = add nsw i64 %345, 1
  %347 = mul i64 %346, 1
  %348 = call i8* %341(%struct.jpeg_common_struct* noundef %343, i32 noundef 1, i64 noundef %347)
  %349 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %350 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %349, i32 0, i32 4
  store i8* %348, i8** %350, align 8
  %351 = load i32, i32* %9, align 4
  %352 = udiv i32 %351, 2
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %354

354:                                              ; preds = %373, %336
  %355 = load i64, i64* %13, align 8
  %356 = load i32, i32* %9, align 4
  %357 = zext i32 %356 to i64
  %358 = icmp sle i64 %355, %357
  br i1 %358, label %359, label %376

359:                                              ; preds = %354
  %360 = load i64, i64* %13, align 8
  %361 = mul nsw i64 %360, 255
  %362 = load i64, i64* %14, align 8
  %363 = add nsw i64 %361, %362
  %364 = load i32, i32* %9, align 4
  %365 = zext i32 %364 to i64
  %366 = sdiv i64 %363, %365
  %367 = trunc i64 %366 to i8
  %368 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %369 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %368, i32 0, i32 4
  %370 = load i8*, i8** %369, align 8
  %371 = load i64, i64* %13, align 8
  %372 = getelementptr inbounds i8, i8* %370, i64 %371
  store i8 %367, i8* %372, align 1
  br label %373

373:                                              ; preds = %359
  %374 = load i64, i64* %13, align 8
  %375 = add nsw i64 %374, 1
  store i64 %375, i64* %13, align 8
  br label %354, !llvm.loop !4

376:                                              ; preds = %354
  br label %377

377:                                              ; preds = %376, %333
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_ppm(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
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
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 42, i32* %16, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
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
  br i1 %38, label %7, label %39, !llvm.loop !6

39:                                               ; preds = %37
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 48
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 57
  br i1 %44, label %45, label %57

45:                                               ; preds = %42, %39
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 1026, i32* %49, align 8
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
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
  br label %60, !llvm.loop !7

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_text_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %10 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %11 = bitcast %struct.cjpeg_source_struct* %10 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %11, %struct.ppm_source_struct** %5, align 8
  %12 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %13, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  store %struct._IO_FILE* %15, %struct._IO_FILE** %6, align 8
  %16 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %17 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %20 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %41, %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %35 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %33, %struct._IO_FILE* noundef %34)
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %9, align 4
  br label %28, !llvm.loop !8

44:                                               ; preds = %28
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_text_rgb_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %10 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %11 = bitcast %struct.cjpeg_source_struct* %10 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %11, %struct.ppm_source_struct** %5, align 8
  %12 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %13, i32 0, i32 3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  store %struct._IO_FILE* %15, %struct._IO_FILE** %6, align 8
  %16 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %17 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %20 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %59, %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %35 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %33, %struct._IO_FILE* noundef %34)
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %44 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %42, %struct._IO_FILE* noundef %43)
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %53 = call i32 @read_pbm_integer(%struct.jpeg_compress_struct* noundef %51, %struct._IO_FILE* noundef %52)
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %31
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %9, align 4
  br label %28, !llvm.loop !9

62:                                               ; preds = %28
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_word_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %11 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %12 = bitcast %struct.cjpeg_source_struct* %11 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %12, %struct.ppm_source_struct** %5, align 8
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %14 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %17 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %20 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %23 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %23, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %26 = call i64 @fread(i8* noundef %18, i64 noundef 1, i64 noundef %21, %struct._IO_FILE* noundef %25)
  %27 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %28 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %2
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 42, i32* %35, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %39, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* noundef %42)
  br label %43

43:                                               ; preds = %31, %2
  %44 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %45 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %45, i32 0, i32 4
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %6, align 8
  %50 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %51 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %78, %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  store i8 %75, i8* %76, align 1
  br label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %9, align 4
  br label %56, !llvm.loop !10

81:                                               ; preds = %56
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_raw_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %6 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %7 = bitcast %struct.cjpeg_source_struct* %6 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %7, %struct.ppm_source_struct** %5, align 8
  %8 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %9 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %12 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %15 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %15, i32 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i64 @fread(i8* noundef %10, i64 noundef 1, i64 noundef %13, %struct._IO_FILE* noundef %17)
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %20 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %2
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 42, i32* %27, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %34 = bitcast %struct.jpeg_compress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %34)
  br label %35

35:                                               ; preds = %23, %2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_scaled_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %10 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %11 = bitcast %struct.cjpeg_source_struct* %10 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %11, %struct.ppm_source_struct** %5, align 8
  %12 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %16 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %19 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %22 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %22, i32 0, i32 3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i64 @fread(i8* noundef %17, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %24)
  %26 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %27 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %2
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 42, i32* %34, align 8
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %38, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* noundef %41)
  br label %42

42:                                               ; preds = %30, %2
  %43 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %44 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  %49 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %50 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %69, %42
  %56 = load i32, i32* %9, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 %66, i8* %67, align 1
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, -1
  store i32 %71, i32* %9, align 4
  br label %55, !llvm.loop !11

72:                                               ; preds = %55
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_word_rgb_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %11 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %12 = bitcast %struct.cjpeg_source_struct* %11 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %12, %struct.ppm_source_struct** %5, align 8
  %13 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %14 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %13, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %17 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %20 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %23 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %23, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %26 = call i64 @fread(i8* noundef %18, i64 noundef 1, i64 noundef %21, %struct._IO_FILE* noundef %25)
  %27 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %28 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %2
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 42, i32* %35, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %39, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* noundef %42)
  br label %43

43:                                               ; preds = %31, %2
  %44 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %45 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %45, i32 0, i32 4
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %6, align 8
  %50 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %51 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %114, %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %56
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  %84 = load i8, i8* %82, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  %98 = load i8, i8* %96, align 1
  %99 = zext i8 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  %102 = load i8, i8* %100, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %6, align 8
  store i8 %111, i8* %112, align 1
  br label %114

114:                                              ; preds = %59
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, -1
  store i32 %116, i32* %9, align 4
  br label %56, !llvm.loop !12

117:                                              ; preds = %56
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_scaled_rgb_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct.ppm_source_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %10 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %11 = bitcast %struct.cjpeg_source_struct* %10 to %struct.ppm_source_struct*
  store %struct.ppm_source_struct* %11, %struct.ppm_source_struct** %5, align 8
  %12 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %16 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %19 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %22 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %22, i32 0, i32 3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i64 @fread(i8* noundef %17, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %24)
  %26 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %27 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %2
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 42, i32* %34, align 8
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %38, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* noundef %41)
  br label %42

42:                                               ; preds = %30, %2
  %43 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %44 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  %49 = load %struct.ppm_source_struct*, %struct.ppm_source_struct** %5, align 8
  %50 = getelementptr inbounds %struct.ppm_source_struct, %struct.ppm_source_struct* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %89, %42
  %56 = load i32, i32* %9, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %58
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, -1
  store i32 %91, i32* %9, align 4
  br label %55, !llvm.loop !13

92:                                               ; preds = %55
  ret i32 1
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

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

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
