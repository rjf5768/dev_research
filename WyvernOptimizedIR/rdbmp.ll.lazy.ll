; ModuleID = './rdbmp.ll'
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
%_wyvern_thunk_type.0 = type { %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct*, i1, %struct.cjpeg_source_struct* }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, i32, i32 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 88) #4
  %8 = getelementptr inbounds i8, i8* %7, i64 48
  %9 = bitcast i8* %8 to %struct.jpeg_compress_struct**
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)**
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 16
  %12 = bitcast i8* %11 to void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)**
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_bmp, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %12, align 8
  %13 = bitcast i8* %7 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %13
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_bmp(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca [14 x i8], align 1
  %4 = alloca [64 x i8], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_start_input_bmp_535745571, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %_wyvern_thunk_arg_gep_, align 8
  %5 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %_wyvern_thunkcall = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %6 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall, i64 0, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = call i64 @fread(i8* noundef nonnull %5, i64 noundef 1, i64 noundef 14, %struct._IO_FILE* noundef %7) #4
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 5
  store i32 42, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #4
  br label %19

19:                                               ; preds = %10, %2
  %20 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or i32 %26, %22
  %.not = icmp eq i32 %27, 19778
  br i1 %.not, label %37, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 5
  store i32 1007, i32* %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %36) #4
  br label %37

37:                                               ; preds = %28, %19
  %38 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 10
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 11
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 8
  %45 = or i64 %44, %40
  %46 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 12
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 16
  %50 = or i64 %45, %49
  %51 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 13
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 24
  %55 = or i64 %50, %54
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %_wyvern_thunkcall9 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %57 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall9, i64 0, i32 0, i32 3
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %57, align 8
  %59 = call i64 @fread(i8* noundef nonnull %56, i64 noundef 1, i64 noundef 4, %struct._IO_FILE* noundef %58) #4
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %70, label %61

61:                                               ; preds = %37
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %62, align 8
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i64 0, i32 5
  store i32 42, i32* %64, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i64 0, i32 0
  %68 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %67, align 8
  %69 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* noundef %69) #4
  br label %70

70:                                               ; preds = %61, %37
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 8
  %78 = or i64 %77, %73
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 2
  %80 = load i8, i8* %79, align 2
  %81 = zext i8 %80 to i64
  %82 = shl nuw nsw i64 %81, 16
  %83 = or i64 %78, %82
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = shl nuw nsw i64 %86, 24
  %88 = or i64 %83, %87
  %89 = icmp ult i64 %88, 12
  br i1 %89, label %92, label %90

90:                                               ; preds = %70
  %91 = icmp ugt i64 %88, 64
  br i1 %91, label %92, label %101

92:                                               ; preds = %90, %70
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %94 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %94, i64 0, i32 5
  store i32 1003, i32* %95, align 8
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %96, align 8
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i64 0, i32 0
  %99 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %98, align 8
  %100 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %99(%struct.jpeg_common_struct* noundef %100) #4
  br label %101

101:                                              ; preds = %92, %90
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 4
  %103 = add nsw i64 %88, -4
  %_wyvern_thunkcall10 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %104 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall10, i64 0, i32 0, i32 3
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %104, align 8
  %106 = call i64 @fread(i8* noundef nonnull %102, i64 noundef 1, i64 noundef %103, %struct._IO_FILE* noundef %105) #4
  %107 = add nsw i64 %88, -4
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i64 0, i32 5
  store i32 42, i32* %112, align 8
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %114 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %113, align 8
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %114, i64 0, i32 0
  %116 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %115, align 8
  %117 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %116(%struct.jpeg_common_struct* noundef %117) #4
  br label %118

118:                                              ; preds = %109, %101
  %119 = trunc i64 %88 to i32
  switch i32 %119, label %412 [
    i32 12, label %120
    i32 40, label %210
    i32 64, label %210
  ]

120:                                              ; preds = %118
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 4
  %122 = load i8, i8* %121, align 4
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 5
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i64
  %127 = shl nuw nsw i64 %126, 8
  %128 = or i64 %127, %123
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 6
  %130 = load i8, i8* %129, align 2
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 7
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = shl nuw nsw i64 %134, 8
  %136 = or i64 %135, %131
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 8
  %138 = load i8, i8* %137, align 8
  %139 = zext i8 %138 to i32
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 9
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 8
  %144 = or i32 %143, %139
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 10
  %146 = load i8, i8* %145, align 2
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 11
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 8
  %152 = or i32 %151, %147
  %_wyvern_thunkcall11 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %153 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall11, i64 0, i32 6
  store i32 %152, i32* %153, align 8
  %_wyvern_thunkcall12 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %154 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall12, i64 0, i32 6
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %190 [
    i32 8, label %156
    i32 24, label %173
  ]

156:                                              ; preds = %120
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %157, align 8
  %159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i64 0, i32 5
  store i32 1011, i32* %159, align 8
  %160 = trunc i64 %128 to i32
  %161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %161, align 8
  %163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i64 0, i32 6, i32 0, i64 0
  store i32 %160, i32* %163, align 4
  %164 = trunc i64 %136 to i32
  %165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %166 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %165, align 8
  %167 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %166, i64 0, i32 6, i32 0, i64 1
  store i32 %164, i32* %167, align 4
  %168 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %168, align 8
  %170 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i64 0, i32 1
  %171 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %170, align 8
  %172 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %171(%struct.jpeg_common_struct* noundef %172, i32 noundef 1) #4
  br label %199

173:                                              ; preds = %120
  %174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %174, align 8
  %176 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i64 0, i32 5
  store i32 1010, i32* %176, align 8
  %177 = trunc i64 %128 to i32
  %178 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %179 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %178, align 8
  %180 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %179, i64 0, i32 6, i32 0, i64 0
  store i32 %177, i32* %180, align 4
  %181 = trunc i64 %136 to i32
  %182 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %183 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %182, align 8
  %184 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %183, i64 0, i32 6, i32 0, i64 1
  store i32 %181, i32* %184, align 4
  %185 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %186 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %185, align 8
  %187 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %186, i64 0, i32 1
  %188 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %187, align 8
  %189 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %188(%struct.jpeg_common_struct* noundef %189, i32 noundef 1) #4
  br label %199

190:                                              ; preds = %120
  %191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %192 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %191, align 8
  %193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %192, i64 0, i32 5
  store i32 1002, i32* %193, align 8
  %194 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %195 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %194, align 8
  %196 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %195, i64 0, i32 0
  %197 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %196, align 8
  %198 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %197(%struct.jpeg_common_struct* noundef %198) #4
  br label %199

199:                                              ; preds = %190, %173, %156
  %.03 = phi i32 [ 0, %190 ], [ 0, %173 ], [ 3, %156 ]
  %.not29 = icmp eq i32 %144, 1
  br i1 %.not29, label %209, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %202 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %201, align 8
  %203 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %202, i64 0, i32 5
  store i32 1004, i32* %203, align 8
  %204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %205 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %204, align 8
  %206 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %205, i64 0, i32 0
  %207 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %206, align 8
  %208 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %207(%struct.jpeg_common_struct* noundef %208) #4
  br label %209

209:                                              ; preds = %200, %199
  br label %421

210:                                              ; preds = %118, %118
  %211 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 4
  %212 = load i8, i8* %211, align 4
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 5
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i64
  %217 = shl nuw nsw i64 %216, 8
  %218 = or i64 %217, %213
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 6
  %220 = load i8, i8* %219, align 2
  %221 = zext i8 %220 to i64
  %222 = shl nuw nsw i64 %221, 16
  %223 = or i64 %218, %222
  %224 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 7
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, 24
  %228 = or i64 %223, %227
  %229 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 8
  %230 = load i8, i8* %229, align 8
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 9
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i64
  %235 = shl nuw nsw i64 %234, 8
  %236 = or i64 %235, %231
  %237 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 10
  %238 = load i8, i8* %237, align 2
  %239 = zext i8 %238 to i64
  %240 = shl nuw nsw i64 %239, 16
  %241 = or i64 %236, %240
  %242 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 11
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i64
  %245 = shl nuw nsw i64 %244, 24
  %246 = or i64 %241, %245
  %247 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 12
  %248 = load i8, i8* %247, align 4
  %249 = zext i8 %248 to i32
  %250 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 13
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = shl nuw nsw i32 %252, 8
  %254 = or i32 %253, %249
  %255 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 14
  %256 = load i8, i8* %255, align 2
  %257 = zext i8 %256 to i32
  %258 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 15
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = shl nuw nsw i32 %260, 8
  %262 = or i32 %261, %257
  %_wyvern_thunkcall13 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %263 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall13, i64 0, i32 6
  store i32 %262, i32* %263, align 8
  %264 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 16
  %265 = load i8, i8* %264, align 16
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 17
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i64
  %270 = shl nuw nsw i64 %269, 8
  %271 = or i64 %270, %266
  %272 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 18
  %273 = load i8, i8* %272, align 2
  %274 = zext i8 %273 to i64
  %275 = shl nuw nsw i64 %274, 16
  %276 = or i64 %271, %275
  %277 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 19
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i64
  %280 = shl nuw nsw i64 %279, 24
  %281 = or i64 %276, %280
  %282 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 24
  %283 = load i8, i8* %282, align 8
  %284 = zext i8 %283 to i64
  %285 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 25
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i64
  %288 = shl nuw nsw i64 %287, 8
  %289 = or i64 %288, %284
  %290 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 26
  %291 = load i8, i8* %290, align 2
  %292 = zext i8 %291 to i64
  %293 = shl nuw nsw i64 %292, 16
  %294 = or i64 %289, %293
  %295 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 27
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i64
  %298 = shl nuw nsw i64 %297, 24
  %299 = or i64 %294, %298
  %300 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 28
  %301 = load i8, i8* %300, align 4
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 29
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i64
  %306 = shl nuw nsw i64 %305, 8
  %307 = or i64 %306, %302
  %308 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 30
  %309 = load i8, i8* %308, align 2
  %310 = zext i8 %309 to i64
  %311 = shl nuw nsw i64 %310, 16
  %312 = or i64 %307, %311
  %313 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 31
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i64
  %316 = shl nuw nsw i64 %315, 24
  %317 = or i64 %312, %316
  %318 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 32
  %319 = load i8, i8* %318, align 16
  %320 = zext i8 %319 to i64
  %321 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 33
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i64
  %324 = shl nuw nsw i64 %323, 8
  %325 = or i64 %324, %320
  %326 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 34
  %327 = load i8, i8* %326, align 2
  %328 = zext i8 %327 to i64
  %329 = shl nuw nsw i64 %328, 16
  %330 = or i64 %325, %329
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 35
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i64
  %334 = shl nuw nsw i64 %333, 24
  %335 = or i64 %330, %334
  %_wyvern_thunkcall14 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %336 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall14, i64 0, i32 6
  %337 = load i32, i32* %336, align 8
  switch i32 %337, label %372 [
    i32 8, label %338
    i32 24, label %355
  ]

338:                                              ; preds = %210
  %339 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %340 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %339, align 8
  %341 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %340, i64 0, i32 5
  store i32 1009, i32* %341, align 8
  %342 = trunc i64 %228 to i32
  %343 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %344 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %343, align 8
  %345 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %344, i64 0, i32 6, i32 0, i64 0
  store i32 %342, i32* %345, align 4
  %346 = trunc i64 %246 to i32
  %347 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %348 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %347, align 8
  %349 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %348, i64 0, i32 6, i32 0, i64 1
  store i32 %346, i32* %349, align 4
  %350 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %351 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %350, align 8
  %352 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %351, i64 0, i32 1
  %353 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %352, align 8
  %354 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %353(%struct.jpeg_common_struct* noundef %354, i32 noundef 1) #4
  br label %381

355:                                              ; preds = %210
  %356 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %357 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %356, align 8
  %358 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %357, i64 0, i32 5
  store i32 1008, i32* %358, align 8
  %359 = trunc i64 %228 to i32
  %360 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %361 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %360, align 8
  %362 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %361, i64 0, i32 6, i32 0, i64 0
  store i32 %359, i32* %362, align 4
  %363 = trunc i64 %246 to i32
  %364 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %365 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %364, align 8
  %366 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %365, i64 0, i32 6, i32 0, i64 1
  store i32 %363, i32* %366, align 4
  %367 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %368 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %367, align 8
  %369 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %368, i64 0, i32 1
  %370 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %369, align 8
  %371 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %370(%struct.jpeg_common_struct* noundef %371, i32 noundef 1) #4
  br label %381

372:                                              ; preds = %210
  %373 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %374 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %373, align 8
  %375 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %374, i64 0, i32 5
  store i32 1002, i32* %375, align 8
  %376 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %377 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %376, align 8
  %378 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %377, i64 0, i32 0
  %379 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %378, align 8
  %380 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %379(%struct.jpeg_common_struct* noundef %380) #4
  br label %381

381:                                              ; preds = %372, %355, %338
  %.14 = phi i32 [ 0, %372 ], [ 0, %355 ], [ 4, %338 ]
  %.not23 = icmp eq i32 %254, 1
  br i1 %.not23, label %391, label %382

382:                                              ; preds = %381
  %383 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %384 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %383, align 8
  %385 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %384, i64 0, i32 5
  store i32 1004, i32* %385, align 8
  %386 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %387 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %386, align 8
  %388 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %387, i64 0, i32 0
  %389 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %388, align 8
  %390 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %389(%struct.jpeg_common_struct* noundef %390) #4
  br label %391

391:                                              ; preds = %382, %381
  %.not24 = icmp eq i64 %281, 0
  br i1 %.not24, label %401, label %392

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %394 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %393, align 8
  %395 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %394, i64 0, i32 5
  store i32 1006, i32* %395, align 8
  %396 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %397 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %396, align 8
  %398 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %397, i64 0, i32 0
  %399 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %398, align 8
  %400 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %399(%struct.jpeg_common_struct* noundef %400) #4
  br label %401

401:                                              ; preds = %392, %391
  %.not25 = icmp eq i64 %299, 0
  br i1 %.not25, label %411, label %402

402:                                              ; preds = %401
  %.not28 = icmp eq i64 %317, 0
  br i1 %.not28, label %411, label %403

403:                                              ; preds = %402
  %404 = udiv i64 %299, 100
  %405 = trunc i64 %404 to i16
  %406 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 33
  store i16 %405, i16* %406, align 2
  %407 = udiv i64 %317, 100
  %408 = trunc i64 %407 to i16
  %409 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 34
  store i16 %408, i16* %409, align 8
  %410 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 32
  store i8 2, i8* %410, align 4
  br label %411

411:                                              ; preds = %403, %402, %401
  br label %421

412:                                              ; preds = %118
  %413 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %414 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %413, align 8
  %415 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %414, i64 0, i32 5
  store i32 1003, i32* %415, align 8
  %416 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %417 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %416, align 8
  %418 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %417, i64 0, i32 0
  %419 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %418, align 8
  %420 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %419(%struct.jpeg_common_struct* noundef %420) #4
  br label %421

421:                                              ; preds = %412, %411, %209
  %.08 = phi i64 [ 0, %412 ], [ %246, %411 ], [ %136, %209 ]
  %.07 = phi i64 [ 0, %412 ], [ %228, %411 ], [ %128, %209 ]
  %.05 = phi i64 [ 0, %412 ], [ %335, %411 ], [ 0, %209 ]
  %.2 = phi i32 [ 0, %412 ], [ %.14, %411 ], [ %.03, %209 ]
  %422 = add nuw nsw i64 %88, 14
  %423 = sub nsw i64 %55, %422
  %424 = icmp sgt i32 %.2, 0
  br i1 %424, label %425, label %453

425:                                              ; preds = %421
  %426 = icmp slt i64 %.05, 1
  br i1 %426, label %427, label %428

427:                                              ; preds = %425
  br label %440

428:                                              ; preds = %425
  %429 = icmp sgt i64 %.05, 256
  br i1 %429, label %430, label %439

430:                                              ; preds = %428
  %431 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %432 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %431, align 8
  %433 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %432, i64 0, i32 5
  store i32 1001, i32* %433, align 8
  %434 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %435 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %434, align 8
  %436 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %435, i64 0, i32 0
  %437 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %436, align 8
  %438 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %437(%struct.jpeg_common_struct* noundef %438) #4
  br label %439

439:                                              ; preds = %430, %428
  br label %440

440:                                              ; preds = %439, %427
  %.16 = phi i64 [ 256, %427 ], [ %.05, %439 ]
  %441 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %442 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %441, align 8
  %443 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %442, i64 0, i32 2
  %444 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %443, align 8
  %445 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %446 = trunc i64 %.16 to i32
  %447 = call i8** %444(%struct.jpeg_common_struct* noundef %445, i32 noundef 1, i32 noundef %446, i32 noundef 3) #4
  %_wyvern_thunkcall15 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %448 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall15, i64 0, i32 2
  store i8** %447, i8*** %448, align 8
  %449 = trunc i64 %.16 to i32
  call void @_wyvern_calleeclone_read_colormap_0500935012(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %449, i32 noundef %.2)
  %450 = sext i32 %.2 to i64
  %451 = mul nsw i64 %.16, %450
  %452 = sub nsw i64 %423, %451
  br label %453

453:                                              ; preds = %440, %421
  %.01 = phi i64 [ %452, %440 ], [ %423, %421 ]
  %454 = icmp slt i64 %.01, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %453
  %456 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %457 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %456, align 8
  %458 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %457, i64 0, i32 5
  store i32 1003, i32* %458, align 8
  %459 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %460 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %459, align 8
  %461 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %460, i64 0, i32 0
  %462 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %461, align 8
  %463 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %462(%struct.jpeg_common_struct* noundef %463) #4
  br label %464

464:                                              ; preds = %455, %453
  br label %465

465:                                              ; preds = %467, %464
  %.12 = phi i64 [ %.01, %464 ], [ %468, %467 ]
  %466 = icmp sgt i64 %.12, 0
  br i1 %466, label %467, label %470

467:                                              ; preds = %465
  %468 = add nsw i64 %.12, -1
  %_wyvern_thunkcall16 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %469 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall16)
  br label %465, !llvm.loop !4

470:                                              ; preds = %465
  %_wyvern_thunkcall17 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %471 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall17, i64 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = icmp eq i32 %472, 24
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  %475 = mul nsw i64 %.07, 3
  br label %477

476:                                              ; preds = %470
  br label %477

477:                                              ; preds = %476, %474
  %.0.in = phi i64 [ %475, %474 ], [ %.07, %476 ]
  %.0 = trunc i64 %.0.in to i32
  br label %478

478:                                              ; preds = %480, %477
  %.1 = phi i32 [ %.0, %477 ], [ %481, %480 ]
  %479 = and i32 %.1, 3
  %.not26 = icmp eq i32 %479, 0
  br i1 %.not26, label %482, label %480

480:                                              ; preds = %478
  %481 = add i32 %.1, 1
  br label %478, !llvm.loop !6

482:                                              ; preds = %478
  %_wyvern_thunkcall18 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %483 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall18, i64 0, i32 5
  store i32 %.1, i32* %483, align 4
  %484 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %485 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %484, align 8
  %486 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %485, i64 0, i32 4
  %487 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %486, align 8
  %488 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %489 = trunc i64 %.08 to i32
  %490 = call %struct.jvirt_sarray_control* %487(%struct.jpeg_common_struct* noundef %488, i32 noundef 1, i32 noundef 0, i32 noundef %.1, i32 noundef %489, i32 noundef 1) #4
  %_wyvern_thunkcall19 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %491 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall19, i64 0, i32 3
  store %struct.jvirt_sarray_control* %490, %struct.jvirt_sarray_control** %491, align 8
  %_wyvern_thunkcall20 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %492 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall20, i64 0, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %492, align 8
  %493 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %494 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %493, align 8
  %.not27 = icmp eq %struct.jpeg_progress_mgr* %494, null
  br i1 %.not27, label %502, label %495

495:                                              ; preds = %482
  %496 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %497 = bitcast %struct.jpeg_progress_mgr** %496 to %struct.cdjpeg_progress_mgr**
  %498 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %497, align 8
  %499 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %498, i64 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %495, %482
  %503 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %504 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %503, align 8
  %505 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %504, i64 0, i32 2
  %506 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %505, align 8
  %507 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %508 = trunc i64 %.07 to i32
  %509 = mul i32 %508, 3
  %510 = call i8** %506(%struct.jpeg_common_struct* noundef %507, i32 noundef 1, i32 noundef %509, i32 noundef 1) #4
  %_wyvern_thunkcall21 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %511 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall21, i64 0, i32 0, i32 4
  store i8** %510, i8*** %511, align 8
  %_wyvern_thunkcall22 = call %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %512 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall22, i64 0, i32 0, i32 5
  store i32 1, i32* %512, align 8
  %513 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 2, i32* %513, align 4
  %514 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 3, i32* %514, align 8
  %515 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  store i32 8, i32* %515, align 8
  %516 = trunc i64 %.07 to i32
  %517 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  store i32 %516, i32* %517, align 8
  %518 = trunc i64 %.08 to i32
  %519 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  store i32 %518, i32* %519, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @finish_input_bmp(%struct.jpeg_compress_struct* nocapture noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #1 {
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @read_colormap(%struct._bmp_source_struct* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %2, label %65 [
    i32 3, label %4
    i32 4, label %34
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %31, %4
  %.0 = phi i32 [ 0, %4 ], [ %32, %31 ]
  %6 = icmp slt i32 %.0, %1
  br i1 %6, label %7, label %33

7:                                                ; preds = %5
  %8 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 2
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 2
  %13 = load i8*, i8** %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 %9, i8* %15, align 1
  %16 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 2
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 %17, i8* %23, align 1
  %24 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %25, i8* %30, align 1
  br label %31

31:                                               ; preds = %7
  %32 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !7

33:                                               ; preds = %5
  br label %80

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %62, %34
  %.1 = phi i32 [ 0, %34 ], [ %63, %62 ]
  %36 = icmp slt i32 %.1, %1
  br i1 %36, label %37, label %64

37:                                               ; preds = %35
  %38 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = zext i32 %.1 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %39, i8* %45, align 1
  %46 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %47, i8* %53, align 1
  %54 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = zext i32 %.1 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 %55, i8* %60, align 1
  %61 = call i32 @read_byte(%struct._bmp_source_struct* noundef %0)
  br label %62

62:                                               ; preds = %37
  %63 = add nuw nsw i32 %.1, 1
  br label %35, !llvm.loop !8

64:                                               ; preds = %35
  br label %80

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 1
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %66, align 8
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i64 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i64 0, i32 5
  store i32 1001, i32* %70, align 8
  %71 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 1
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %71, align 8
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i64 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i64 0, i32 0
  %76 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %75, align 8
  %77 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 1
  %78 = bitcast %struct.jpeg_compress_struct** %77 to %struct.jpeg_common_struct**
  %79 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %78, align 8
  call void %76(%struct.jpeg_common_struct* noundef %79) #4
  br label %80

80:                                               ; preds = %65, %64, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_byte(%struct._bmp_source_struct* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3) #4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 5
  store i32 42, i32* %11, align 8
  %12 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %0, i64 0, i32 1
  %19 = bitcast %struct.jpeg_compress_struct** %18 to %struct.jpeg_common_struct**
  %20 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %19, align 8
  call void %17(%struct.jpeg_common_struct* noundef %20) #4
  br label %21

21:                                               ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = bitcast %struct.cjpeg_source_struct* %1 to %struct._bmp_source_struct*
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %7 = bitcast %struct.jpeg_progress_mgr** %6 to %struct.cdjpeg_progress_mgr**
  %8 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  br label %9

9:                                                ; preds = %56, %2
  %.01 = phi i32 [ 0, %2 ], [ %57, %56 ]
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %.01, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %9
  %.not3 = icmp eq %struct.cdjpeg_progress_mgr* %8, null
  br i1 %.not3, label %24, label %14

14:                                               ; preds = %13
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %8, i64 0, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %8, i64 0, i32 0, i32 2
  store i64 %19, i64* %20, align 8
  %21 = bitcast %struct.cdjpeg_progress_mgr* %8 to void (%struct.jpeg_common_struct*)**
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %21, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* noundef %23) #4
  br label %24

24:                                               ; preds = %14, %13
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %26 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %26, i64 0, i32 7
  %28 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %27, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %30 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %31 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %30 to %struct.jvirt_sarray_control**
  %32 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %31, align 8
  %33 = call i8** %28(%struct.jpeg_common_struct* noundef %29, %struct.jvirt_sarray_control* noundef %32, i32 noundef %.01, i32 noundef 1, i32 noundef 1) #4
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %3, i64 0, i32 5
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %52, %24
  %.02 = phi i8* [ %34, %24 ], [ %53, %52 ]
  %.0 = phi i32 [ %36, %24 ], [ %54, %52 ]
  %.not4 = icmp eq i32 %.0, 0
  br i1 %.not4, label %55, label %38

38:                                               ; preds = %37
  %39 = call i32 @getc(%struct._IO_FILE* noundef %5) #4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i64 0, i32 5
  store i32 42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i64 0, i32 0
  %48 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %47, align 8
  %49 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %48(%struct.jpeg_common_struct* noundef %49) #4
  br label %50

50:                                               ; preds = %41, %38
  %51 = trunc i32 %39 to i8
  store i8 %51, i8* %.02, align 1
  br label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, i8* %.02, i64 1
  %54 = add i32 %.0, -1
  br label %37, !llvm.loop !9

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = add i32 %.01, 1
  br label %9, !llvm.loop !10

58:                                               ; preds = %9
  %.not = icmp eq %struct.cdjpeg_progress_mgr* %8, null
  br i1 %.not, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %8, i64 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 4
  %65 = bitcast i8*** %64 to i32*
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %71 [
    i32 8, label %67
    i32 24, label %69
  ]

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %68, align 8
  br label %80

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %70, align 8
  br label %80

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i64 0, i32 5
  store i32 1002, i32* %74, align 8
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %75, align 8
  %77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i64 0, i32 0
  %78 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %77, align 8
  %79 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* noundef %79) #4
  br label %80

80:                                               ; preds = %71, %69, %67
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %84 = bitcast %struct._IO_FILE** %83 to i32*
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  %86 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %85, align 8
  %87 = call i32 %86(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #4
  ret i32 %87
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 1
  %4 = bitcast i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %3 to i8***
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %7 = bitcast %struct._IO_FILE** %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = add i32 %8, -1
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i64 0, i32 7
  %13 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %16 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15 to %struct.jvirt_sarray_control**
  %17 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %16, align 8
  %18 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %19 = bitcast %struct._IO_FILE** %18 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = call i8** %13(%struct.jpeg_common_struct* noundef %14, %struct.jvirt_sarray_control* noundef %17, i32 noundef %20, i32 noundef 1, i32 noundef 0) #4
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %24 = load i8**, i8*** %23, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %47, %2
  %.02 = phi i8* [ %22, %2 ], [ %49, %47 ]
  %.01 = phi i8* [ %25, %2 ], [ %48, %47 ]
  %.0 = phi i32 [ %27, %2 ], [ %50, %47 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %51, label %29

29:                                               ; preds = %28
  %30 = load i8, i8* %.02, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = zext i8 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %34, i8* %.01, align 1
  %36 = getelementptr inbounds i8*, i8** %5, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = zext i8 %30 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %40, i8* %35, align 1
  %42 = getelementptr inbounds i8*, i8** %5, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = zext i8 %30 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %41, align 1
  br label %47

47:                                               ; preds = %29
  %48 = getelementptr inbounds i8, i8* %.01, i64 3
  %49 = getelementptr inbounds i8, i8* %.02, i64 1
  %50 = add i32 %.0, -1
  br label %28, !llvm.loop !11

51:                                               ; preds = %28
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %4 = bitcast %struct._IO_FILE** %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = add i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i64 0, i32 7
  %10 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %9, align 8
  %11 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %13 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %12 to %struct.jvirt_sarray_control**
  %14 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %13, align 8
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %16 = bitcast %struct._IO_FILE** %15 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = call i8** %10(%struct.jpeg_common_struct* noundef %11, %struct.jvirt_sarray_control* noundef %14, i32 noundef %17, i32 noundef 1, i32 noundef 0) #4
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %34, %2
  %.02 = phi i8* [ %19, %2 ], [ %36, %34 ]
  %.01 = phi i8* [ %22, %2 ], [ %35, %34 ]
  %.0 = phi i32 [ %24, %2 ], [ %37, %34 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %38, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds i8, i8* %.02, i64 1
  %28 = load i8, i8* %.02, align 1
  %29 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %.02, i64 2
  %31 = load i8, i8* %27, align 1
  %32 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %31, i8* %32, align 1
  %33 = load i8, i8* %30, align 1
  store i8 %33, i8* %.01, align 1
  br label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, i8* %.01, i64 3
  %36 = getelementptr inbounds i8, i8* %.02, i64 3
  %37 = add i32 %.0, -1
  br label %25, !llvm.loop !12

38:                                               ; preds = %25
  ret i32 1
}

; Function Attrs: nounwind readonly willreturn
define %struct._bmp_source_struct* @_wyvern_slice_memo_start_input_bmp_535745571(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %_wyvern_memo_val_addr, align 8
  ret %struct._bmp_source_struct* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %0 = bitcast %struct.cjpeg_source_struct** %_wyvern_arg_addr_ to %struct._bmp_source_struct**
  %_wyvern_arg_1 = load %struct._bmp_source_struct*, %struct._bmp_source_struct** %0, align 8
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct._bmp_source_struct* %_wyvern_arg_1, %struct._bmp_source_struct** %_wyvern_memo_val_addr, align 8
  ret %struct._bmp_source_struct* %_wyvern_arg_1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_read_colormap_0500935012(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %64 [
    i32 3, label %3
    i32 4, label %33
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %30, %3
  %.0 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %32

6:                                                ; preds = %4
  %_wyvern_thunk_fptr_addr43 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr44 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr43, align 8
  %_wyvern_thunkcall45 = call %struct._bmp_source_struct* %_wyvern_thunkfptr44(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %7 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall45)
  %8 = trunc i32 %7 to i8
  %_wyvern_thunk_fptr_addr40 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr41 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr40, align 8
  %_wyvern_thunkcall42 = call %struct._bmp_source_struct* %_wyvern_thunkfptr41(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %9 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall42, i64 0, i32 2
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 2
  %12 = load i8*, i8** %11, align 8
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 %8, i8* %14, align 1
  %_wyvern_thunk_fptr_addr37 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr38 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr37, align 8
  %_wyvern_thunkcall39 = call %struct._bmp_source_struct* %_wyvern_thunkfptr38(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %15 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall39)
  %16 = trunc i32 %15 to i8
  %_wyvern_thunk_fptr_addr34 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr35 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr34, align 8
  %_wyvern_thunkcall36 = call %struct._bmp_source_struct* %_wyvern_thunkfptr35(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %17 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall36, i64 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %16, i8* %22, align 1
  %_wyvern_thunk_fptr_addr31 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr32 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr31, align 8
  %_wyvern_thunkcall33 = call %struct._bmp_source_struct* %_wyvern_thunkfptr32(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %23 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall33)
  %24 = trunc i32 %23 to i8
  %_wyvern_thunk_fptr_addr28 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr29 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr28, align 8
  %_wyvern_thunkcall30 = call %struct._bmp_source_struct* %_wyvern_thunkfptr29(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %25 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall30, i64 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %24, i8* %29, align 1
  br label %30

30:                                               ; preds = %6
  %31 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

32:                                               ; preds = %4
  br label %79

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %61, %33
  %.1 = phi i32 [ 0, %33 ], [ %62, %61 ]
  %35 = icmp slt i32 %.1, %0
  br i1 %35, label %36, label %63

36:                                               ; preds = %34
  %_wyvern_thunk_fptr_addr25 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr26 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr25, align 8
  %_wyvern_thunkcall27 = call %struct._bmp_source_struct* %_wyvern_thunkfptr26(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %37 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall27)
  %38 = trunc i32 %37 to i8
  %_wyvern_thunk_fptr_addr22 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr23 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr22, align 8
  %_wyvern_thunkcall24 = call %struct._bmp_source_struct* %_wyvern_thunkfptr23(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %39 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall24, i64 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = zext i32 %.1 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %38, i8* %44, align 1
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call %struct._bmp_source_struct* %_wyvern_thunkfptr20(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %45 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall21)
  %46 = trunc i32 %45 to i8
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call %struct._bmp_source_struct* %_wyvern_thunkfptr17(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %47 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall18, i64 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = zext i32 %.1 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 %46, i8* %52, align 1
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call %struct._bmp_source_struct* %_wyvern_thunkfptr14(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %53 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall15)
  %54 = trunc i32 %53 to i8
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call %struct._bmp_source_struct* %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %55 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall12, i64 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = zext i32 %.1 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 %54, i8* %59, align 1
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call %struct._bmp_source_struct* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %60 = call i32 @read_byte(%struct._bmp_source_struct* noundef %_wyvern_thunkcall9)
  br label %61

61:                                               ; preds = %36
  %62 = add nuw nsw i32 %.1, 1
  br label %34, !llvm.loop !8

63:                                               ; preds = %34
  br label %79

64:                                               ; preds = %2
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct._bmp_source_struct* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %65 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall6, i64 0, i32 1
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i64 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i64 0, i32 5
  store i32 1001, i32* %69, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct._bmp_source_struct* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %70 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall3, i64 0, i32 1
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i64 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i64 0, i32 0
  %75 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %74, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)*, %struct._bmp_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct._bmp_source_struct* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %76 = getelementptr inbounds %struct._bmp_source_struct, %struct._bmp_source_struct* %_wyvern_thunkcall, i64 0, i32 1
  %77 = bitcast %struct.jpeg_compress_struct** %76 to %struct.jpeg_common_struct**
  %78 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %77, align 8
  call void %75(%struct.jpeg_common_struct* noundef %78) #4
  br label %79

79:                                               ; preds = %64, %63, %32
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
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
