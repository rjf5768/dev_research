; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdbmp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdbmp.c"
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
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct._bmp_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 88)
  %12 = bitcast i8* %11 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %12, %struct._bmp_source_struct** %3, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %3, align 8
  %15 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %14, i32 0, i32 1
  store %struct.jpeg_compress_struct* %13, %struct.jpeg_compress_struct** %15, align 8
  %16 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %3, align 8
  %17 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %17, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %18, align 8
  %19 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %3, align 8
  %20 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %20, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %21, align 8
  %22 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %3, align 8
  %23 = bitcast %struct._bmp_source_struct* %22 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %23
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_bmp(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._bmp_source_struct*, align 8
  %6 = alloca [14 x i8], align 1
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %21 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %22 = bitcast %struct.cjpeg_source_struct* %21 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %22, %struct._bmp_source_struct** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %23 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %24 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %25 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %25, i32 0, i32 3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %26, align 8
  %28 = call i64 @fread(i8* noundef %23, i64 noundef 1, i64 noundef 14, %struct._IO_FILE* noundef %27)
  %29 = icmp eq i64 %28, 14
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
  %43 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 8
  %50 = add i32 %45, %49
  %51 = icmp ne i32 %50, 19778
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 5
  store i32 1007, i32* %56, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %58, align 8
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 0
  %61 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %60, align 8
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %63 = bitcast %struct.jpeg_compress_struct* %62 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* noundef %63)
  br label %64

64:                                               ; preds = %52, %42
  %65 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 10
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 11
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = shl i64 %72, 8
  %74 = add nsw i64 %68, %73
  %75 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 12
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = shl i64 %78, 16
  %80 = add nsw i64 %74, %79
  %81 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 13
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = shl i64 %84, 24
  %86 = add nsw i64 %80, %85
  store i64 %86, i64* %8, align 8
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %88 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %89 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %89, i32 0, i32 3
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %90, align 8
  %92 = call i64 @fread(i8* noundef %87, i64 noundef 1, i64 noundef 4, %struct._IO_FILE* noundef %91)
  %93 = icmp eq i64 %92, 4
  br i1 %93, label %106, label %94

94:                                               ; preds = %64
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %96, align 8
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i32 0, i32 5
  store i32 42, i32* %98, align 8
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 0
  %103 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %102, align 8
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %105 = bitcast %struct.jpeg_compress_struct* %104 to %struct.jpeg_common_struct*
  call void %103(%struct.jpeg_common_struct* noundef %105)
  br label %106

106:                                              ; preds = %94, %64
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %108 = load i8, i8* %107, align 16
  %109 = zext i8 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = shl i64 %114, 8
  %116 = add nsw i64 %110, %115
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 2
  %118 = load i8, i8* %117, align 2
  %119 = zext i8 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = shl i64 %120, 16
  %122 = add nsw i64 %116, %121
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 3
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = shl i64 %126, 24
  %128 = add nsw i64 %122, %127
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp slt i64 %129, 12
  br i1 %130, label %134, label %131

131:                                              ; preds = %106
  %132 = load i64, i64* %9, align 8
  %133 = icmp sgt i64 %132, 64
  br i1 %133, label %134, label %146

134:                                              ; preds = %131, %106
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %135, i32 0, i32 0
  %137 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %136, align 8
  %138 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %137, i32 0, i32 5
  store i32 1003, i32* %138, align 8
  %139 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %139, i32 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %140, align 8
  %142 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i32 0, i32 0
  %143 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %142, align 8
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %145 = bitcast %struct.jpeg_compress_struct* %144 to %struct.jpeg_common_struct*
  call void %143(%struct.jpeg_common_struct* noundef %145)
  br label %146

146:                                              ; preds = %134, %131
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %148 = getelementptr inbounds i8, i8* %147, i64 4
  %149 = load i64, i64* %9, align 8
  %150 = sub nsw i64 %149, 4
  %151 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %152 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %152, i32 0, i32 3
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %153, align 8
  %155 = call i64 @fread(i8* noundef %148, i64 noundef 1, i64 noundef %150, %struct._IO_FILE* noundef %154)
  %156 = load i64, i64* %9, align 8
  %157 = sub nsw i64 %156, 4
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %171, label %159

159:                                              ; preds = %146
  %160 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %160, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %161, align 8
  %163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 5
  store i32 42, i32* %163, align 8
  %164 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %164, i32 0, i32 0
  %166 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %165, align 8
  %167 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %166, i32 0, i32 0
  %168 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %167, align 8
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %170 = bitcast %struct.jpeg_compress_struct* %169 to %struct.jpeg_common_struct*
  call void %168(%struct.jpeg_common_struct* noundef %170)
  br label %171

171:                                              ; preds = %159, %146
  %172 = load i64, i64* %9, align 8
  %173 = trunc i64 %172 to i32
  switch i32 %173, label %570 [
    i32 12, label %174
    i32 40, label %298
    i32 64, label %298
  ]

174:                                              ; preds = %171
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 4
  %176 = load i8, i8* %175, align 4
  %177 = zext i8 %176 to i32
  %178 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 5
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, 8
  %182 = add i32 %177, %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %10, align 8
  %184 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 6
  %185 = load i8, i8* %184, align 2
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 7
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %189, 8
  %191 = add i32 %186, %190
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %11, align 8
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 8
  %194 = load i8, i8* %193, align 8
  %195 = zext i8 %194 to i32
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 9
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = shl i32 %198, 8
  %200 = add i32 %195, %199
  store i32 %200, i32* %12, align 4
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 10
  %202 = load i8, i8* %201, align 2
  %203 = zext i8 %202 to i32
  %204 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 11
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl i32 %206, 8
  %208 = add i32 %203, %207
  %209 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %210 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  %211 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %212 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  switch i32 %213, label %270 [
    i32 8, label %214
    i32 24, label %242
  ]

214:                                              ; preds = %174
  store i32 3, i32* %17, align 4
  %215 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %216 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %215, i32 0, i32 0
  %217 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %216, align 8
  %218 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %217, i32 0, i32 5
  store i32 1011, i32* %218, align 8
  %219 = load i64, i64* %10, align 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %222 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %221, i32 0, i32 0
  %223 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %222, align 8
  %224 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %223, i32 0, i32 6
  %225 = bitcast %union.anon* %224 to [8 x i32]*
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %225, i64 0, i64 0
  store i32 %220, i32* %226, align 4
  %227 = load i64, i64* %11, align 8
  %228 = trunc i64 %227 to i32
  %229 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %230 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %229, i32 0, i32 0
  %231 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %230, align 8
  %232 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %231, i32 0, i32 6
  %233 = bitcast %union.anon* %232 to [8 x i32]*
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %233, i64 0, i64 1
  store i32 %228, i32* %234, align 4
  %235 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %236 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %235, i32 0, i32 0
  %237 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %236, align 8
  %238 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %237, i32 0, i32 1
  %239 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %238, align 8
  %240 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %241 = bitcast %struct.jpeg_compress_struct* %240 to %struct.jpeg_common_struct*
  call void %239(%struct.jpeg_common_struct* noundef %241, i32 noundef 1)
  br label %282

242:                                              ; preds = %174
  %243 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %244 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %243, i32 0, i32 0
  %245 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %244, align 8
  %246 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %245, i32 0, i32 5
  store i32 1010, i32* %246, align 8
  %247 = load i64, i64* %10, align 8
  %248 = trunc i64 %247 to i32
  %249 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %250 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %249, i32 0, i32 0
  %251 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %250, align 8
  %252 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %251, i32 0, i32 6
  %253 = bitcast %union.anon* %252 to [8 x i32]*
  %254 = getelementptr inbounds [8 x i32], [8 x i32]* %253, i64 0, i64 0
  store i32 %248, i32* %254, align 4
  %255 = load i64, i64* %11, align 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %258 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %257, i32 0, i32 0
  %259 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %258, align 8
  %260 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %259, i32 0, i32 6
  %261 = bitcast %union.anon* %260 to [8 x i32]*
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* %261, i64 0, i64 1
  store i32 %256, i32* %262, align 4
  %263 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %264 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %263, i32 0, i32 0
  %265 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %264, align 8
  %266 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %265, i32 0, i32 1
  %267 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %266, align 8
  %268 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %269 = bitcast %struct.jpeg_compress_struct* %268 to %struct.jpeg_common_struct*
  call void %267(%struct.jpeg_common_struct* noundef %269, i32 noundef 1)
  br label %282

270:                                              ; preds = %174
  %271 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %272 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %271, i32 0, i32 0
  %273 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %272, align 8
  %274 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %273, i32 0, i32 5
  store i32 1002, i32* %274, align 8
  %275 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %276 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %275, i32 0, i32 0
  %277 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %276, align 8
  %278 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %277, i32 0, i32 0
  %279 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %278, align 8
  %280 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %281 = bitcast %struct.jpeg_compress_struct* %280 to %struct.jpeg_common_struct*
  call void %279(%struct.jpeg_common_struct* noundef %281)
  br label %282

282:                                              ; preds = %270, %242, %214
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 1
  br i1 %284, label %285, label %297

285:                                              ; preds = %282
  %286 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %287 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %286, i32 0, i32 0
  %288 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %287, align 8
  %289 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %288, i32 0, i32 5
  store i32 1004, i32* %289, align 8
  %290 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %291 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %290, i32 0, i32 0
  %292 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %291, align 8
  %293 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %292, i32 0, i32 0
  %294 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %293, align 8
  %295 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %296 = bitcast %struct.jpeg_compress_struct* %295 to %struct.jpeg_common_struct*
  call void %294(%struct.jpeg_common_struct* noundef %296)
  br label %297

297:                                              ; preds = %285, %282
  br label %582

298:                                              ; preds = %171, %171
  %299 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 4
  %300 = load i8, i8* %299, align 4
  %301 = zext i8 %300 to i32
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 5
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = shl i64 %306, 8
  %308 = add nsw i64 %302, %307
  %309 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 6
  %310 = load i8, i8* %309, align 2
  %311 = zext i8 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = shl i64 %312, 16
  %314 = add nsw i64 %308, %313
  %315 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 7
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = sext i32 %317 to i64
  %319 = shl i64 %318, 24
  %320 = add nsw i64 %314, %319
  store i64 %320, i64* %10, align 8
  %321 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 8
  %322 = load i8, i8* %321, align 8
  %323 = zext i8 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 9
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = sext i32 %327 to i64
  %329 = shl i64 %328, 8
  %330 = add nsw i64 %324, %329
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 10
  %332 = load i8, i8* %331, align 2
  %333 = zext i8 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = shl i64 %334, 16
  %336 = add nsw i64 %330, %335
  %337 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 11
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = sext i32 %339 to i64
  %341 = shl i64 %340, 24
  %342 = add nsw i64 %336, %341
  store i64 %342, i64* %11, align 8
  %343 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 12
  %344 = load i8, i8* %343, align 4
  %345 = zext i8 %344 to i32
  %346 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 13
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = shl i32 %348, 8
  %350 = add i32 %345, %349
  store i32 %350, i32* %12, align 4
  %351 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 14
  %352 = load i8, i8* %351, align 2
  %353 = zext i8 %352 to i32
  %354 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 15
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = shl i32 %356, 8
  %358 = add i32 %353, %357
  %359 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %360 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %359, i32 0, i32 6
  store i32 %358, i32* %360, align 8
  %361 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 16
  %362 = load i8, i8* %361, align 16
  %363 = zext i8 %362 to i32
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 17
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = shl i64 %368, 8
  %370 = add nsw i64 %364, %369
  %371 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 18
  %372 = load i8, i8* %371, align 2
  %373 = zext i8 %372 to i32
  %374 = sext i32 %373 to i64
  %375 = shl i64 %374, 16
  %376 = add nsw i64 %370, %375
  %377 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 19
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = sext i32 %379 to i64
  %381 = shl i64 %380, 24
  %382 = add nsw i64 %376, %381
  store i64 %382, i64* %13, align 8
  %383 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 24
  %384 = load i8, i8* %383, align 8
  %385 = zext i8 %384 to i32
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 25
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = sext i32 %389 to i64
  %391 = shl i64 %390, 8
  %392 = add nsw i64 %386, %391
  %393 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 26
  %394 = load i8, i8* %393, align 2
  %395 = zext i8 %394 to i32
  %396 = sext i32 %395 to i64
  %397 = shl i64 %396, 16
  %398 = add nsw i64 %392, %397
  %399 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 27
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = sext i32 %401 to i64
  %403 = shl i64 %402, 24
  %404 = add nsw i64 %398, %403
  store i64 %404, i64* %14, align 8
  %405 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 28
  %406 = load i8, i8* %405, align 4
  %407 = zext i8 %406 to i32
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 29
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = sext i32 %411 to i64
  %413 = shl i64 %412, 8
  %414 = add nsw i64 %408, %413
  %415 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 30
  %416 = load i8, i8* %415, align 2
  %417 = zext i8 %416 to i32
  %418 = sext i32 %417 to i64
  %419 = shl i64 %418, 16
  %420 = add nsw i64 %414, %419
  %421 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 31
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = sext i32 %423 to i64
  %425 = shl i64 %424, 24
  %426 = add nsw i64 %420, %425
  store i64 %426, i64* %15, align 8
  %427 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 32
  %428 = load i8, i8* %427, align 16
  %429 = zext i8 %428 to i32
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 33
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  %434 = sext i32 %433 to i64
  %435 = shl i64 %434, 8
  %436 = add nsw i64 %430, %435
  %437 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 34
  %438 = load i8, i8* %437, align 2
  %439 = zext i8 %438 to i32
  %440 = sext i32 %439 to i64
  %441 = shl i64 %440, 16
  %442 = add nsw i64 %436, %441
  %443 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 35
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i32
  %446 = sext i32 %445 to i64
  %447 = shl i64 %446, 24
  %448 = add nsw i64 %442, %447
  store i64 %448, i64* %16, align 8
  %449 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %450 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %449, i32 0, i32 6
  %451 = load i32, i32* %450, align 8
  switch i32 %451, label %508 [
    i32 8, label %452
    i32 24, label %480
  ]

452:                                              ; preds = %298
  store i32 4, i32* %17, align 4
  %453 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %454 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %453, i32 0, i32 0
  %455 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %454, align 8
  %456 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %455, i32 0, i32 5
  store i32 1009, i32* %456, align 8
  %457 = load i64, i64* %10, align 8
  %458 = trunc i64 %457 to i32
  %459 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %460 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %459, i32 0, i32 0
  %461 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %460, align 8
  %462 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %461, i32 0, i32 6
  %463 = bitcast %union.anon* %462 to [8 x i32]*
  %464 = getelementptr inbounds [8 x i32], [8 x i32]* %463, i64 0, i64 0
  store i32 %458, i32* %464, align 4
  %465 = load i64, i64* %11, align 8
  %466 = trunc i64 %465 to i32
  %467 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %468 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %467, i32 0, i32 0
  %469 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %468, align 8
  %470 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %469, i32 0, i32 6
  %471 = bitcast %union.anon* %470 to [8 x i32]*
  %472 = getelementptr inbounds [8 x i32], [8 x i32]* %471, i64 0, i64 1
  store i32 %466, i32* %472, align 4
  %473 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %474 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %473, i32 0, i32 0
  %475 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %474, align 8
  %476 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %475, i32 0, i32 1
  %477 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %476, align 8
  %478 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %479 = bitcast %struct.jpeg_compress_struct* %478 to %struct.jpeg_common_struct*
  call void %477(%struct.jpeg_common_struct* noundef %479, i32 noundef 1)
  br label %520

480:                                              ; preds = %298
  %481 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %482 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %481, i32 0, i32 0
  %483 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %482, align 8
  %484 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %483, i32 0, i32 5
  store i32 1008, i32* %484, align 8
  %485 = load i64, i64* %10, align 8
  %486 = trunc i64 %485 to i32
  %487 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %488 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %487, i32 0, i32 0
  %489 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %488, align 8
  %490 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %489, i32 0, i32 6
  %491 = bitcast %union.anon* %490 to [8 x i32]*
  %492 = getelementptr inbounds [8 x i32], [8 x i32]* %491, i64 0, i64 0
  store i32 %486, i32* %492, align 4
  %493 = load i64, i64* %11, align 8
  %494 = trunc i64 %493 to i32
  %495 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %496 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %495, i32 0, i32 0
  %497 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %496, align 8
  %498 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %497, i32 0, i32 6
  %499 = bitcast %union.anon* %498 to [8 x i32]*
  %500 = getelementptr inbounds [8 x i32], [8 x i32]* %499, i64 0, i64 1
  store i32 %494, i32* %500, align 4
  %501 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %502 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %501, i32 0, i32 0
  %503 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %502, align 8
  %504 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %503, i32 0, i32 1
  %505 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %504, align 8
  %506 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %507 = bitcast %struct.jpeg_compress_struct* %506 to %struct.jpeg_common_struct*
  call void %505(%struct.jpeg_common_struct* noundef %507, i32 noundef 1)
  br label %520

508:                                              ; preds = %298
  %509 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %510 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %509, i32 0, i32 0
  %511 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %510, align 8
  %512 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %511, i32 0, i32 5
  store i32 1002, i32* %512, align 8
  %513 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %514 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %513, i32 0, i32 0
  %515 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %514, align 8
  %516 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %515, i32 0, i32 0
  %517 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %516, align 8
  %518 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %519 = bitcast %struct.jpeg_compress_struct* %518 to %struct.jpeg_common_struct*
  call void %517(%struct.jpeg_common_struct* noundef %519)
  br label %520

520:                                              ; preds = %508, %480, %452
  %521 = load i32, i32* %12, align 4
  %522 = icmp ne i32 %521, 1
  br i1 %522, label %523, label %535

523:                                              ; preds = %520
  %524 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %525 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %524, i32 0, i32 0
  %526 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %525, align 8
  %527 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %526, i32 0, i32 5
  store i32 1004, i32* %527, align 8
  %528 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %529 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %528, i32 0, i32 0
  %530 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %529, align 8
  %531 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %530, i32 0, i32 0
  %532 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %531, align 8
  %533 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %534 = bitcast %struct.jpeg_compress_struct* %533 to %struct.jpeg_common_struct*
  call void %532(%struct.jpeg_common_struct* noundef %534)
  br label %535

535:                                              ; preds = %523, %520
  %536 = load i64, i64* %13, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %550

538:                                              ; preds = %535
  %539 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %540 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %539, i32 0, i32 0
  %541 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %540, align 8
  %542 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %541, i32 0, i32 5
  store i32 1006, i32* %542, align 8
  %543 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %544 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %543, i32 0, i32 0
  %545 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %544, align 8
  %546 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %545, i32 0, i32 0
  %547 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %546, align 8
  %548 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %549 = bitcast %struct.jpeg_compress_struct* %548 to %struct.jpeg_common_struct*
  call void %547(%struct.jpeg_common_struct* noundef %549)
  br label %550

550:                                              ; preds = %538, %535
  %551 = load i64, i64* %14, align 8
  %552 = icmp sgt i64 %551, 0
  br i1 %552, label %553, label %569

553:                                              ; preds = %550
  %554 = load i64, i64* %15, align 8
  %555 = icmp sgt i64 %554, 0
  br i1 %555, label %556, label %569

556:                                              ; preds = %553
  %557 = load i64, i64* %14, align 8
  %558 = sdiv i64 %557, 100
  %559 = trunc i64 %558 to i16
  %560 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %561 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %560, i32 0, i32 33
  store i16 %559, i16* %561, align 2
  %562 = load i64, i64* %15, align 8
  %563 = sdiv i64 %562, 100
  %564 = trunc i64 %563 to i16
  %565 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %566 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %565, i32 0, i32 34
  store i16 %564, i16* %566, align 8
  %567 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %568 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %567, i32 0, i32 32
  store i8 2, i8* %568, align 4
  br label %569

569:                                              ; preds = %556, %553, %550
  br label %582

570:                                              ; preds = %171
  %571 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %572 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %571, i32 0, i32 0
  %573 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %572, align 8
  %574 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %573, i32 0, i32 5
  store i32 1003, i32* %574, align 8
  %575 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %576 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %575, i32 0, i32 0
  %577 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %576, align 8
  %578 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %577, i32 0, i32 0
  %579 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %578, align 8
  %580 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %581 = bitcast %struct.jpeg_compress_struct* %580 to %struct.jpeg_common_struct*
  call void %579(%struct.jpeg_common_struct* noundef %581)
  br label %582

582:                                              ; preds = %570, %569, %297
  %583 = load i64, i64* %8, align 8
  %584 = load i64, i64* %9, align 8
  %585 = add nsw i64 %584, 14
  %586 = sub nsw i64 %583, %585
  store i64 %586, i64* %18, align 8
  %587 = load i32, i32* %17, align 4
  %588 = icmp sgt i32 %587, 0
  br i1 %588, label %589, label %632

589:                                              ; preds = %582
  %590 = load i64, i64* %16, align 8
  %591 = icmp sle i64 %590, 0
  br i1 %591, label %592, label %593

592:                                              ; preds = %589
  store i64 256, i64* %16, align 8
  br label %609

593:                                              ; preds = %589
  %594 = load i64, i64* %16, align 8
  %595 = icmp sgt i64 %594, 256
  br i1 %595, label %596, label %608

596:                                              ; preds = %593
  %597 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %598 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %597, i32 0, i32 0
  %599 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %598, align 8
  %600 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %599, i32 0, i32 5
  store i32 1001, i32* %600, align 8
  %601 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %602 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %601, i32 0, i32 0
  %603 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %602, align 8
  %604 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %603, i32 0, i32 0
  %605 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %604, align 8
  %606 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %607 = bitcast %struct.jpeg_compress_struct* %606 to %struct.jpeg_common_struct*
  call void %605(%struct.jpeg_common_struct* noundef %607)
  br label %608

608:                                              ; preds = %596, %593
  br label %609

609:                                              ; preds = %608, %592
  %610 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %611 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %610, i32 0, i32 1
  %612 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %611, align 8
  %613 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %612, i32 0, i32 2
  %614 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %613, align 8
  %615 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %616 = bitcast %struct.jpeg_compress_struct* %615 to %struct.jpeg_common_struct*
  %617 = load i64, i64* %16, align 8
  %618 = trunc i64 %617 to i32
  %619 = call i8** %614(%struct.jpeg_common_struct* noundef %616, i32 noundef 1, i32 noundef %618, i32 noundef 3)
  %620 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %621 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %620, i32 0, i32 2
  store i8** %619, i8*** %621, align 8
  %622 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %623 = load i64, i64* %16, align 8
  %624 = trunc i64 %623 to i32
  %625 = load i32, i32* %17, align 4
  call void @read_colormap(%struct._bmp_source_struct* noundef %622, i32 noundef %624, i32 noundef %625)
  %626 = load i64, i64* %16, align 8
  %627 = load i32, i32* %17, align 4
  %628 = sext i32 %627 to i64
  %629 = mul nsw i64 %626, %628
  %630 = load i64, i64* %18, align 8
  %631 = sub nsw i64 %630, %629
  store i64 %631, i64* %18, align 8
  br label %632

632:                                              ; preds = %609, %582
  %633 = load i64, i64* %18, align 8
  %634 = icmp slt i64 %633, 0
  br i1 %634, label %635, label %647

635:                                              ; preds = %632
  %636 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %637 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %636, i32 0, i32 0
  %638 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %637, align 8
  %639 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %638, i32 0, i32 5
  store i32 1003, i32* %639, align 8
  %640 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %641 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %640, i32 0, i32 0
  %642 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %641, align 8
  %643 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %642, i32 0, i32 0
  %644 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %643, align 8
  %645 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %646 = bitcast %struct.jpeg_compress_struct* %645 to %struct.jpeg_common_struct*
  call void %644(%struct.jpeg_common_struct* noundef %646)
  br label %647

647:                                              ; preds = %635, %632
  br label %648

648:                                              ; preds = %652, %647
  %649 = load i64, i64* %18, align 8
  %650 = add nsw i64 %649, -1
  store i64 %650, i64* %18, align 8
  %651 = icmp sge i64 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %648
  %653 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %654 = call i32 @read_byte(%struct._bmp_source_struct* noundef %653)
  br label %648, !llvm.loop !4

655:                                              ; preds = %648
  %656 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %657 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %656, i32 0, i32 6
  %658 = load i32, i32* %657, align 8
  %659 = icmp eq i32 %658, 24
  br i1 %659, label %660, label %664

660:                                              ; preds = %655
  %661 = load i64, i64* %10, align 8
  %662 = mul nsw i64 %661, 3
  %663 = trunc i64 %662 to i32
  store i32 %663, i32* %19, align 4
  br label %667

664:                                              ; preds = %655
  %665 = load i64, i64* %10, align 8
  %666 = trunc i64 %665 to i32
  store i32 %666, i32* %19, align 4
  br label %667

667:                                              ; preds = %664, %660
  br label %668

668:                                              ; preds = %672, %667
  %669 = load i32, i32* %19, align 4
  %670 = and i32 %669, 3
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %675

672:                                              ; preds = %668
  %673 = load i32, i32* %19, align 4
  %674 = add i32 %673, 1
  store i32 %674, i32* %19, align 4
  br label %668, !llvm.loop !6

675:                                              ; preds = %668
  %676 = load i32, i32* %19, align 4
  %677 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %678 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %677, i32 0, i32 5
  store i32 %676, i32* %678, align 4
  %679 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %680 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %679, i32 0, i32 1
  %681 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %680, align 8
  %682 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %681, i32 0, i32 4
  %683 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %682, align 8
  %684 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %685 = bitcast %struct.jpeg_compress_struct* %684 to %struct.jpeg_common_struct*
  %686 = load i32, i32* %19, align 4
  %687 = load i64, i64* %11, align 8
  %688 = trunc i64 %687 to i32
  %689 = call %struct.jvirt_sarray_control* %683(%struct.jpeg_common_struct* noundef %685, i32 noundef 1, i32 noundef 0, i32 noundef %686, i32 noundef %688, i32 noundef 1)
  %690 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %691 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %690, i32 0, i32 3
  store %struct.jvirt_sarray_control* %689, %struct.jvirt_sarray_control** %691, align 8
  %692 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %693 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %693, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %694, align 8
  %695 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %696 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %695, i32 0, i32 2
  %697 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %696, align 8
  %698 = icmp ne %struct.jpeg_progress_mgr* %697, null
  br i1 %698, label %699, label %708

699:                                              ; preds = %675
  %700 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %701 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %700, i32 0, i32 2
  %702 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %701, align 8
  %703 = bitcast %struct.jpeg_progress_mgr* %702 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %703, %struct.cdjpeg_progress_mgr** %20, align 8
  %704 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %20, align 8
  %705 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %704, i32 0, i32 2
  %706 = load i32, i32* %705, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %705, align 4
  br label %708

708:                                              ; preds = %699, %675
  %709 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %710 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %709, i32 0, i32 1
  %711 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %710, align 8
  %712 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %711, i32 0, i32 2
  %713 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %712, align 8
  %714 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %715 = bitcast %struct.jpeg_compress_struct* %714 to %struct.jpeg_common_struct*
  %716 = load i64, i64* %10, align 8
  %717 = mul nsw i64 %716, 3
  %718 = trunc i64 %717 to i32
  %719 = call i8** %713(%struct.jpeg_common_struct* noundef %715, i32 noundef 1, i32 noundef %718, i32 noundef 1)
  %720 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %721 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %721, i32 0, i32 4
  store i8** %719, i8*** %722, align 8
  %723 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %724 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %723, i32 0, i32 0
  %725 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %724, i32 0, i32 5
  store i32 1, i32* %725, align 8
  %726 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %727 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %726, i32 0, i32 9
  store i32 2, i32* %727, align 4
  %728 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %729 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %728, i32 0, i32 8
  store i32 3, i32* %729, align 8
  %730 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %731 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %730, i32 0, i32 11
  store i32 8, i32* %731, align 8
  %732 = load i64, i64* %10, align 8
  %733 = trunc i64 %732 to i32
  %734 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %735 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %734, i32 0, i32 6
  store i32 %733, i32* %735, align 8
  %736 = load i64, i64* %11, align 8
  %737 = trunc i64 %736 to i32
  %738 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %739 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %738, i32 0, i32 7
  store i32 %737, i32* %739, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_bmp(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_colormap(%struct._bmp_source_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._bmp_source_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._bmp_source_struct* %0, %struct._bmp_source_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %97 [
    i32 3, label %9
    i32 4, label %52
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %48, %9
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %16 = call i32 @read_byte(%struct._bmp_source_struct* noundef %15)
  %17 = trunc i32 %16 to i8
  %18 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %19 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %18, i32 0, i32 2
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %17, i8* %25, align 1
  %26 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %27 = call i32 @read_byte(%struct._bmp_source_struct* noundef %26)
  %28 = trunc i32 %27 to i8
  %29 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %30 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %28, i8* %36, align 1
  %37 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %38 = call i32 @read_byte(%struct._bmp_source_struct* noundef %37)
  %39 = trunc i32 %38 to i8
  %40 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %41 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %39, i8* %47, align 1
  br label %48

48:                                               ; preds = %14
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %10, !llvm.loop !7

51:                                               ; preds = %10
  br label %115

52:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %93, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %59 = call i32 @read_byte(%struct._bmp_source_struct* noundef %58)
  %60 = trunc i32 %59 to i8
  %61 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %62 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %61, i32 0, i32 2
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %60, i8* %68, align 1
  %69 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %70 = call i32 @read_byte(%struct._bmp_source_struct* noundef %69)
  %71 = trunc i32 %70 to i8
  %72 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %73 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %72, i32 0, i32 2
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 %71, i8* %79, align 1
  %80 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %81 = call i32 @read_byte(%struct._bmp_source_struct* noundef %80)
  %82 = trunc i32 %81 to i8
  %83 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %84 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %82, i8* %90, align 1
  %91 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %92 = call i32 @read_byte(%struct._bmp_source_struct* noundef %91)
  br label %93

93:                                               ; preds = %57
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %53, !llvm.loop !8

96:                                               ; preds = %53
  br label %115

97:                                               ; preds = %3
  %98 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %99 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %98, i32 0, i32 1
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %99, align 8
  %101 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %101, align 8
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 5
  store i32 1001, i32* %103, align 8
  %104 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %105 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %104, i32 0, i32 1
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %105, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 0
  %110 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %109, align 8
  %111 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %4, align 8
  %112 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %111, i32 0, i32 1
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %112, align 8
  %114 = bitcast %struct.jpeg_compress_struct* %113 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* noundef %114)
  br label %115

115:                                              ; preds = %97, %96, %51
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_byte(%struct._bmp_source_struct* noundef %0) #0 {
  %2 = alloca %struct._bmp_source_struct*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._bmp_source_struct* %0, %struct._bmp_source_struct** %2, align 8
  %5 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %2, align 8
  %6 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %6, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = call i32 @getc(%struct._IO_FILE* noundef %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %2, align 8
  %14 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %13, i32 0, i32 1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 42, i32* %18, align 8
  %19 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %2, align 8
  %20 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %19, i32 0, i32 1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %2, align 8
  %27 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %26, i32 0, i32 1
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %27, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %29)
  br label %30

30:                                               ; preds = %12, %1
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._bmp_source_struct*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %13 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %14 = bitcast %struct.cjpeg_source_struct* %13 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %14, %struct._bmp_source_struct** %5, align 8
  %15 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %16 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %16, i32 0, i32 3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  store %struct._IO_FILE* %18, %struct._IO_FILE** %6, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 2
  %21 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %20, align 8
  %22 = bitcast %struct.jpeg_progress_mgr* %21 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %22, %struct.cdjpeg_progress_mgr** %12, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %99, %2
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %23
  %30 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %12, align 8
  %31 = icmp ne %struct.cdjpeg_progress_mgr* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %12, align 8
  %36 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %12, align 8
  %43 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %43, i32 0, i32 2
  store i64 %41, i64* %44, align 8
  %45 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %12, align 8
  %46 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to void (%struct.jpeg_common_struct*)**
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %48, align 8
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %51 = bitcast %struct.jpeg_compress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* noundef %51)
  br label %52

52:                                               ; preds = %32, %29
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 1
  %55 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %55, i32 0, i32 7
  %57 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %56, align 8
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %59 = bitcast %struct.jpeg_compress_struct* %58 to %struct.jpeg_common_struct*
  %60 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %61 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %60, i32 0, i32 3
  %62 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i8** %57(%struct.jpeg_common_struct* noundef %59, %struct.jvirt_sarray_control* noundef %62, i32 noundef %63, i32 noundef 1, i32 noundef 1)
  store i8** %64, i8*** %9, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  %68 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %69 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %95, %52
  %72 = load i32, i32* %11, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %76 = call i32 @getc(%struct._IO_FILE* noundef %75)
  store i32 %76, i32* %7, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 42, i32* %82, align 8
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 0
  %87 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %86, align 8
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %89 = bitcast %struct.jpeg_compress_struct* %88 to %struct.jpeg_common_struct*
  call void %87(%struct.jpeg_common_struct* noundef %89)
  br label %90

90:                                               ; preds = %78, %74
  %91 = load i32, i32* %7, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8 %92, i8* %93, align 1
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, -1
  store i32 %97, i32* %11, align 4
  br label %71, !llvm.loop !9

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %23, !llvm.loop !10

102:                                              ; preds = %23
  %103 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %12, align 8
  %104 = icmp ne %struct.cdjpeg_progress_mgr* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %12, align 8
  %107 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %102
  %111 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %112 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %122 [
    i32 8, label %114
    i32 24, label %118
  ]

114:                                              ; preds = %110
  %115 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %116 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %116, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %117, align 8
  br label %134

118:                                              ; preds = %110
  %119 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %120 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %120, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %121, align 8
  br label %134

122:                                              ; preds = %110
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %123, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %124, align 8
  %126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 5
  store i32 1002, i32* %126, align 8
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 0
  %131 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %130, align 8
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %133 = bitcast %struct.jpeg_compress_struct* %132 to %struct.jpeg_common_struct*
  call void %131(%struct.jpeg_common_struct* noundef %133)
  br label %134

134:                                              ; preds = %122, %118, %114
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %139 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %141 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %141, i32 0, i32 1
  %143 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %142, align 8
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %145 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %146 = call i32 %143(%struct.jpeg_compress_struct* noundef %144, %struct.cjpeg_source_struct* noundef %145)
  ret i32 %146
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._bmp_source_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %12 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %13 = bitcast %struct.cjpeg_source_struct* %12 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %13, %struct._bmp_source_struct** %5, align 8
  %14 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %15 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %14, i32 0, i32 2
  %16 = load i8**, i8*** %15, align 8
  store i8** %16, i8*** %6, align 8
  %17 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %18 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = add i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i32 0, i32 7
  %25 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %24, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  %28 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %29 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %28, i32 0, i32 3
  %30 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %29, align 8
  %31 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %32 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i8** %25(%struct.jpeg_common_struct* noundef %27, %struct.jvirt_sarray_control* noundef %30, i32 noundef %33, i32 noundef 1, i32 noundef 0)
  store i8** %34, i8*** %7, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  %38 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %39 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %39, i32 0, i32 4
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %82, %2
  %48 = load i32, i32* %11, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %50
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %11, align 4
  br label %47, !llvm.loop !11

85:                                               ; preds = %47
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._bmp_source_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %10 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %11 = bitcast %struct.cjpeg_source_struct* %10 to %struct._bmp_source_struct*
  store %struct._bmp_source_struct* %11, %struct._bmp_source_struct** %5, align 8
  %12 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 7
  %20 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %19, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  %23 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %24 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %23, i32 0, i32 3
  %25 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %24, align 8
  %26 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %27 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i8** %20(%struct.jpeg_common_struct* noundef %22, %struct.jvirt_sarray_control* noundef %25, i32 noundef %28, i32 noundef 1, i32 noundef 0)
  store i8** %29, i8*** %6, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  %33 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %5, align 8
  %34 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %34, i32 0, i32 4
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %63, %2
  %43 = load i32, i32* %9, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i8, i8* %46, align 1
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8 %48, i8* %50, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i8, i8* %51, align 1
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %53, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* %56, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %42, !llvm.loop !12

66:                                               ; preds = %42
  ret i32 1
}

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
!15 = distinct !{!15, !5}
!16 = distinct !{!17, !5}
!17 = distinct !{!18, !5}
!18 = distinct !{!19, !5}
!19 = distinct !{!20, !5}
!20 = distinct !{!21, !5}
!22 = distinct !{!23, !5}
!23 = distinct !{!24, !5}
!24 = distinct !{!25, !5}
!25 = distinct !{!26, !5}
!26 = distinct !{!27, !5}
!27 = distinct !{!28, !5}
!28 = distinct !{!29, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!31 = distinct !{!32, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!39 = distinct !{!40, !5}
!40 = distinct !{!41, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!51 = distinct !{!52, !5}
!52 = distinct !{!53, !5}
!53 = distinct !{!54, !5}
!54 = distinct !{!55, !5}
!55 = distinct !{!56, !5}
!56 = distinct !{!57, !5}
!57 = distinct !{!58, !5}
!58 = distinct !{!59, !5}
!59 = distinct !{!60, !5}
!60 = distinct !{!61, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!70 = distinct !{!71, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!79 = distinct !{!80, !5}
!80 = distinct !{!81, !5}
!81 = distinct !{!82, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!84 = distinct !{!85, !5}
!85 = distinct !{!86, !5}
!86 = distinct !{!87, !5}
!87 = distinct !{!88, !5}
!88 = distinct !{!89, !5}
!89 = distinct !{!90, !5}
!90 = distinct !{!91, !5}
!91 = distinct !{!92, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!94 = distinct !{!95, !5}
!95 = distinct !{!96, !5}
!96 = distinct !{!97, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!100 = distinct !{!101, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!103 = distinct !{!104, !5}
!104 = distinct !{!105, !5}
!105 = distinct !{!106, !5}
!106 = distinct !{!107, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!111 = distinct !{!12, !5}
!12 = distinct !{!13, !5}
!13 = distinct !{!14, !5}
!14 = distinct !{!15, !5}
!15 = distinct !{!16, !5}
!16 = distinct !{!17, !5}
!17 = distinct !{!18, !5}
!18 = distinct !{!19, !5}
!19 = distinct !{!20, !5}
!20 = distinct !{!21, !5}
!21 = distinct !{!22, !5}
!22 = distinct !{!23, !5}
!23 = distinct !{!24, !5}
!24 = distinct !{!25, !5}
!25 = distinct !{!26, !5}
!26 = distinct !{!27, !5}
!27 = distinct !{!28, !5}
!28 = distinct !{!29, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!31 = distinct !{!32, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!39 = distinct !{!40, !5}
!40 = distinct !{!41, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
