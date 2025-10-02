; ModuleID = './rdtarga.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdtarga.c"
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
%_wyvern_thunk_type.0 = type { %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct*, i1, %struct.cjpeg_source_struct* }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, void (%struct._tga_source_struct*)*, [4 x i8], i32, i32, i32, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 112) #4
  %8 = getelementptr inbounds i8, i8* %7, i64 48
  %9 = bitcast i8* %8 to %struct.jpeg_compress_struct**
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)**
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 16
  %12 = bitcast i8* %11 to void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)**
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %12, align 8
  %13 = bitcast i8* %7 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %13
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_tga(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca [18 x i8], align 16
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct._tga_source_struct* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_start_input_tga_864032630, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %_wyvern_thunk_arg_gep_, align 8
  %4 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %_wyvern_thunkcall = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %5 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall, i64 0, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %7 = call i64 @fread(i8* noundef nonnull %4, i64 noundef 1, i64 noundef 18, %struct._IO_FILE* noundef %6) #4
  %8 = icmp eq i64 %7, 18
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 5
  store i32 42, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %15, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* noundef %17) #4
  br label %18

18:                                               ; preds = %9, %2
  %19 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 16
  %20 = load i8, i8* %19, align 16
  %21 = icmp eq i8 %20, 15
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 16
  store i8 16, i8* %23, align 16
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 2
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 5
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 6
  %37 = load i8, i8* %36, align 2
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %39, %35
  %41 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 12
  %42 = load i8, i8* %41, align 4
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 13
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or i32 %47, %43
  %49 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 14
  %50 = load i8, i8* %49, align 2
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 15
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = or i32 %55, %51
  %57 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 16
  %58 = load i8, i8* %57, align 16
  %59 = lshr i8 %58, 3
  %60 = zext i8 %59 to i32
  %_wyvern_thunkcall3 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %61 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall3, i64 0, i32 7
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 17
  %63 = load i8, i8* %62, align 1
  %64 = icmp ugt i8 %29, 1
  br i1 %64, label %78, label %65

65:                                               ; preds = %24
  %_wyvern_thunkcall4 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %66 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall4, i64 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %_wyvern_thunkcall5 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %70 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall5, i64 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 16
  %75 = load i8, i8* %74, align 16
  %76 = and i8 %75, 7
  %.not = icmp eq i8 %76, 0
  br i1 %.not, label %77, label %78

77:                                               ; preds = %73
  %.not29 = icmp ult i8 %63, 64
  br i1 %.not29, label %87, label %78

78:                                               ; preds = %77, %73, %69, %65, %24
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %79, align 8
  %81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i64 0, i32 5
  store i32 1033, i32* %81, align 8
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %83 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %82, align 8
  %84 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %83, i64 0, i32 0
  %85 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %84, align 8
  %86 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %85(%struct.jpeg_common_struct* noundef %86) #4
  br label %87

87:                                               ; preds = %78, %77
  %88 = icmp ugt i8 %31, 8
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %_wyvern_thunkcall6 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %90 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall6, i64 0, i32 5
  store void (%struct._tga_source_struct*)* @read_rle_pixel, void (%struct._tga_source_struct*)** %90, align 8
  %_wyvern_thunkcall7 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %91 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall7, i64 0, i32 9
  store i32 0, i32* %91, align 4
  %_wyvern_thunkcall8 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %92 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall8, i64 0, i32 8
  store i32 0, i32* %92, align 8
  %93 = add nsw i32 %32, -8
  br label %96

94:                                               ; preds = %87
  %_wyvern_thunkcall9 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %95 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall9, i64 0, i32 5
  store void (%struct._tga_source_struct*)* @read_non_rle_pixel, void (%struct._tga_source_struct*)** %95, align 8
  br label %96

96:                                               ; preds = %94, %89
  %.01 = phi i32 [ %93, %89 ], [ %32, %94 ]
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 2, i32* %97, align 4
  switch i32 %.01, label %194 [
    i32 1, label %98
    i32 2, label %130
    i32 3, label %163
  ]

98:                                               ; preds = %96
  %_wyvern_thunkcall10 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %99 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall10, i64 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = icmp eq i8 %29, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %_wyvern_thunkcall11 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %105 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall11, i64 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %105, align 8
  br label %115

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i64 0, i32 5
  store i32 1033, i32* %109, align 8
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i64 0, i32 0
  %113 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %112, align 8
  %114 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %113(%struct.jpeg_common_struct* noundef %114) #4
  br label %115

115:                                              ; preds = %106, %104
  %116 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %117 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %116, align 8
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %117, i64 0, i32 5
  store i32 1037, i32* %118, align 8
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %119, align 8
  %121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i64 0, i32 6, i32 0, i64 0
  store i32 %48, i32* %121, align 4
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i64 0, i32 6, i32 0, i64 1
  store i32 %56, i32* %124, align 4
  %125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %126 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %125, align 8
  %127 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %126, i64 0, i32 1
  %128 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %127, align 8
  %129 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %128(%struct.jpeg_common_struct* noundef %129, i32 noundef 1) #4
  br label %203

130:                                              ; preds = %96
  %_wyvern_thunkcall12 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %131 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall12, i64 0, i32 7
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %139 [
    i32 2, label %133
    i32 3, label %135
    i32 4, label %137
  ]

133:                                              ; preds = %130
  %_wyvern_thunkcall13 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %134 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall13, i64 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_16bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %134, align 8
  br label %148

135:                                              ; preds = %130
  %_wyvern_thunkcall14 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %136 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall14, i64 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %136, align 8
  br label %148

137:                                              ; preds = %130
  %_wyvern_thunkcall15 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %138 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall15, i64 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %138, align 8
  br label %148

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %141 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %140, align 8
  %142 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %141, i64 0, i32 5
  store i32 1033, i32* %142, align 8
  %143 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %144 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %143, align 8
  %145 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %144, i64 0, i32 0
  %146 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %145, align 8
  %147 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %146(%struct.jpeg_common_struct* noundef %147) #4
  br label %148

148:                                              ; preds = %139, %137, %135, %133
  %149 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %149, align 8
  %151 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i64 0, i32 5
  store i32 1035, i32* %151, align 8
  %152 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %152, align 8
  %154 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i64 0, i32 6, i32 0, i64 0
  store i32 %48, i32* %154, align 4
  %155 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %156 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %155, align 8
  %157 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %156, i64 0, i32 6, i32 0, i64 1
  store i32 %56, i32* %157, align 4
  %158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %159 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %158, align 8
  %160 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %159, i64 0, i32 1
  %161 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %160, align 8
  %162 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %161(%struct.jpeg_common_struct* noundef %162, i32 noundef 1) #4
  br label %203

163:                                              ; preds = %96
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  store i32 1, i32* %164, align 4
  %_wyvern_thunkcall16 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %165 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall16, i64 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %_wyvern_thunkcall17 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %169 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall17, i64 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %169, align 8
  br label %179

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %172 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %171, align 8
  %173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %172, i64 0, i32 5
  store i32 1033, i32* %173, align 8
  %174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %174, align 8
  %176 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i64 0, i32 0
  %177 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %176, align 8
  %178 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %177(%struct.jpeg_common_struct* noundef %178) #4
  br label %179

179:                                              ; preds = %170, %168
  %180 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %181 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %180, align 8
  %182 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %181, i64 0, i32 5
  store i32 1036, i32* %182, align 8
  %183 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %184 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %183, align 8
  %185 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %184, i64 0, i32 6, i32 0, i64 0
  store i32 %48, i32* %185, align 4
  %186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %187 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %186, align 8
  %188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %187, i64 0, i32 6, i32 0, i64 1
  store i32 %56, i32* %188, align 4
  %189 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %190 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %189, align 8
  %191 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %190, i64 0, i32 1
  %192 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %191, align 8
  %193 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %192(%struct.jpeg_common_struct* noundef %193, i32 noundef 1) #4
  br label %203

194:                                              ; preds = %96
  %195 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %196 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %195, align 8
  %197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %196, i64 0, i32 5
  store i32 1033, i32* %197, align 8
  %198 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %199 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %198, align 8
  %200 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %199, i64 0, i32 0
  %201 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %200, align 8
  %202 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %201(%struct.jpeg_common_struct* noundef %202) #4
  br label %203

203:                                              ; preds = %194, %179, %148, %115
  %.0 = phi i32 [ 3, %194 ], [ 1, %179 ], [ 3, %148 ], [ 3, %115 ]
  %204 = and i8 %63, 32
  %.not30.not = icmp eq i8 %204, 0
  br i1 %.not30.not, label %205, label %226

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %207 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %206, align 8
  %208 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %207, i64 0, i32 4
  %209 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %208, align 8
  %210 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %211 = mul nuw nsw i32 %48, %.0
  %212 = call %struct.jvirt_sarray_control* %209(%struct.jpeg_common_struct* noundef %210, i32 noundef 1, i32 noundef 0, i32 noundef %211, i32 noundef %56, i32 noundef 1) #4
  %_wyvern_thunkcall18 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %213 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall18, i64 0, i32 3
  store %struct.jvirt_sarray_control* %212, %struct.jvirt_sarray_control** %213, align 8
  %214 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %215 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %214, align 8
  %.not35 = icmp eq %struct.jpeg_progress_mgr* %215, null
  br i1 %.not35, label %223, label %216

216:                                              ; preds = %205
  %217 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %218 = bitcast %struct.jpeg_progress_mgr** %217 to %struct.cdjpeg_progress_mgr**
  %219 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %218, align 8
  %220 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %219, i64 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %216, %205
  %_wyvern_thunkcall19 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %224 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall19, i64 0, i32 0, i32 5
  store i32 1, i32* %224, align 8
  %_wyvern_thunkcall20 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %225 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall20, i64 0, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %225, align 8
  br label %240

226:                                              ; preds = %203
  %_wyvern_thunkcall21 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %227 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall21, i64 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %227, align 8
  %228 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %229 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %228, align 8
  %230 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %229, i64 0, i32 2
  %231 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %230, align 8
  %232 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %233 = mul nuw nsw i32 %48, %.0
  %234 = call i8** %231(%struct.jpeg_common_struct* noundef %232, i32 noundef 1, i32 noundef %233, i32 noundef 1) #4
  %_wyvern_thunkcall22 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %235 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall22, i64 0, i32 0, i32 4
  store i8** %234, i8*** %235, align 8
  %_wyvern_thunkcall23 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %236 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall23, i64 0, i32 0, i32 5
  store i32 1, i32* %236, align 8
  %_wyvern_thunkcall24 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %237 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall24, i64 0, i32 10
  %238 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %237, align 8
  %_wyvern_thunkcall25 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %239 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall25, i64 0, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* %238, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %239, align 8
  br label %240

240:                                              ; preds = %226, %223
  br label %241

241:                                              ; preds = %242, %240
  %.02 = phi i32 [ %27, %240 ], [ %243, %242 ]
  %.not31 = icmp eq i32 %.02, 0
  br i1 %.not31, label %245, label %242

242:                                              ; preds = %241
  %243 = add nsw i32 %.02, -1
  %_wyvern_thunkcall26 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %244 = call i32 @read_byte(%struct._tga_source_struct* noundef %_wyvern_thunkcall26)
  br label %241, !llvm.loop !4

245:                                              ; preds = %241
  %.not32 = icmp eq i32 %40, 0
  br i1 %.not32, label %277, label %246

246:                                              ; preds = %245
  %247 = icmp ugt i32 %40, 256
  br i1 %247, label %257, label %248

248:                                              ; preds = %246
  %249 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 3
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 4
  %253 = load i8, i8* %252, align 4
  %254 = zext i8 %253 to i32
  %255 = shl nuw nsw i32 %254, 8
  %256 = or i32 %255, %251
  %.not34 = icmp eq i32 %256, 0
  br i1 %.not34, label %266, label %257

257:                                              ; preds = %248, %246
  %258 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %259 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %258, align 8
  %260 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %259, i64 0, i32 5
  store i32 1032, i32* %260, align 8
  %261 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %262 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %261, align 8
  %263 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %262, i64 0, i32 0
  %264 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %263, align 8
  %265 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %264(%struct.jpeg_common_struct* noundef %265) #4
  br label %266

266:                                              ; preds = %257, %248
  %267 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %268 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %267, align 8
  %269 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %268, i64 0, i32 2
  %270 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %269, align 8
  %271 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %272 = call i8** %270(%struct.jpeg_common_struct* noundef %271, i32 noundef 1, i32 noundef %40, i32 noundef 3) #4
  %_wyvern_thunkcall27 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %273 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall27, i64 0, i32 2
  store i8** %272, i8*** %273, align 8
  %274 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 7
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  call void @_wyvern_calleeclone_read_colormap_0950894525(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %40, i32 noundef %276)
  br label %289

277:                                              ; preds = %245
  %.not33 = icmp eq i8 %29, 0
  br i1 %.not33, label %287, label %278

278:                                              ; preds = %277
  %279 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %280 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %279, align 8
  %281 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %280, i64 0, i32 5
  store i32 1033, i32* %281, align 8
  %282 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %283 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %282, align 8
  %284 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %283, i64 0, i32 0
  %285 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %284, align 8
  %286 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %285(%struct.jpeg_common_struct* noundef %286) #4
  br label %287

287:                                              ; preds = %278, %277
  %_wyvern_thunkcall28 = call %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %288 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall28, i64 0, i32 2
  store i8** null, i8*** %288, align 8
  br label %289

289:                                              ; preds = %287, %266
  %290 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 %.0, i32* %290, align 8
  %291 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  store i32 8, i32* %291, align 8
  %292 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  store i32 %48, i32* %292, align 8
  %293 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  store i32 %56, i32* %293, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @finish_input_tga(%struct.jpeg_compress_struct* nocapture noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #1 {
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @read_rle_pixel(%struct._tga_source_struct* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 4
  br label %39

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp slt i32 %13, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = call i32 @read_byte(%struct._tga_source_struct* noundef %0)
  %18 = and i32 %17, 128
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %23, label %19

19:                                               ; preds = %16
  %20 = and i32 %17, 127
  %21 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 9
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 8
  store i32 0, i32* %22, align 8
  br label %26

23:                                               ; preds = %16
  %24 = and i32 %17, 127
  %25 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 8
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %11
  br label %28

28:                                               ; preds = %37, %27
  %.0 = phi i32 [ 0, %27 ], [ %38, %37 ]
  %29 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %.0, %30
  br i1 %31, label %32, label %.loopexit

32:                                               ; preds = %28
  %33 = call i32 @getc(%struct._IO_FILE* noundef %3) #4
  %34 = trunc i32 %33 to i8
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 6, i64 %35
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %32
  %38 = add nuw nsw i32 %.0, 1
  br label %28, !llvm.loop !6

.loopexit:                                        ; preds = %28
  br label %39

39:                                               ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_non_rle_pixel(%struct._tga_source_struct* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  br label %4

4:                                                ; preds = %13, %1
  %.0 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %5 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %.0, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = call i32 @getc(%struct._IO_FILE* noundef %3) #4
  %10 = trunc i32 %9 to i8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 6, i64 %11
  store i8 %10, i8* %12, align 1
  br label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !7

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 1
  %5 = bitcast i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %4 to i8***
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %8 = load i8**, i8*** %7, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 8
  br label %12

12:                                               ; preds = %36, %2
  %.01 = phi i8* [ %9, %2 ], [ %37, %36 ]
  %.0 = phi i32 [ %11, %2 ], [ %38, %36 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %39, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 4
  %15 = bitcast i8*** %14 to void (%struct._tga_source_struct*)**
  %16 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %15, align 8
  call void %16(%struct._tga_source_struct* noundef %3) #4
  %17 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %18 = bitcast i32* %17 to i8*
  %19 = load i8, i8* %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = zext i8 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %23, i8* %.01, align 1
  %25 = getelementptr inbounds i8*, i8** %6, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = zext i8 %19 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %29, i8* %24, align 1
  %31 = getelementptr inbounds i8*, i8** %6, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = zext i8 %19 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %30, align 1
  br label %36

36:                                               ; preds = %13
  %37 = getelementptr inbounds i8, i8* %.01, i64 3
  %38 = add i32 %.0, -1
  br label %12, !llvm.loop !8

39:                                               ; preds = %12
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_16bit_row(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8
  br label %9

9:                                                ; preds = %41, %2
  %.01 = phi i8* [ %6, %2 ], [ %42, %41 ]
  %.0 = phi i32 [ %8, %2 ], [ %43, %41 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %44, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 4
  %12 = bitcast i8*** %11 to void (%struct._tga_source_struct*)**
  %13 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %12, align 8
  call void %13(%struct._tga_source_struct* noundef %3) #4
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %15 = bitcast i32* %14 to i8*
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %19 = bitcast i32* %18 to [4 x i8]*
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %23, %17
  %25 = and i32 %17, 31
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %24, 5
  %31 = and i32 %30, 31
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %22, 2
  %37 = and i32 %36, 31
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %.01, align 1
  br label %41

41:                                               ; preds = %10
  %42 = getelementptr inbounds i8, i8* %.01, i64 3
  %43 = add i32 %.0, -1
  br label %9, !llvm.loop !9

44:                                               ; preds = %9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8
  br label %9

9:                                                ; preds = %27, %2
  %.01 = phi i8* [ %6, %2 ], [ %28, %27 ]
  %.0 = phi i32 [ %8, %2 ], [ %29, %27 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %30, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 4
  %12 = bitcast i8*** %11 to void (%struct._tga_source_struct*)**
  %13 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %12, align 8
  call void %13(%struct._tga_source_struct* noundef %3) #4
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %15 = bitcast i32* %14 to [4 x i8]*
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  %17 = load i8, i8* %16, align 2
  %18 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %17, i8* %.01, align 1
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %20 = bitcast i32* %19 to [4 x i8]*
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %22, i8* %18, align 1
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %25 = bitcast i32* %24 to i8*
  %26 = load i8, i8* %25, align 8
  store i8 %26, i8* %23, align 1
  br label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds i8, i8* %.01, i64 3
  %29 = add i32 %.0, -1
  br label %9, !llvm.loop !10

30:                                               ; preds = %9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_gray_row(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = bitcast %struct.cjpeg_source_struct* %1 to %struct._tga_source_struct*
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  %5 = load i8**, i8*** %4, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8
  br label %9

9:                                                ; preds = %17, %2
  %.01 = phi i8* [ %6, %2 ], [ %18, %17 ]
  %.0 = phi i32 [ %8, %2 ], [ %19, %17 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %20, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 4
  %12 = bitcast i8*** %11 to void (%struct._tga_source_struct*)**
  %13 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %12, align 8
  call void %13(%struct._tga_source_struct* noundef %3) #4
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 5
  %15 = bitcast i32* %14 to i8*
  %16 = load i8, i8* %15, align 8
  store i8 %16, i8* %.01, align 1
  br label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds i8, i8* %.01, i64 1
  %19 = add i32 %.0, -1
  br label %9, !llvm.loop !11

20:                                               ; preds = %9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %4 = bitcast %struct.jpeg_progress_mgr** %3 to %struct.cdjpeg_progress_mgr**
  %5 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %4, align 8
  br label %6

6:                                                ; preds = %35, %2
  %.0 = phi i32 [ 0, %2 ], [ %36, %35 ]
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = icmp ult i32 %.0, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %.not1 = icmp eq %struct.cdjpeg_progress_mgr* %5, null
  br i1 %.not1, label %21, label %11

11:                                               ; preds = %10
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %5, i64 0, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %5, i64 0, i32 0, i32 2
  store i64 %16, i64* %17, align 8
  %18 = bitcast %struct.cdjpeg_progress_mgr* %5 to void (%struct.jpeg_common_struct*)**
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #4
  br label %21

21:                                               ; preds = %11, %10
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i64 0, i32 7
  %25 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %24, align 8
  %26 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %27 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %28 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %27 to %struct.jvirt_sarray_control**
  %29 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %28, align 8
  %30 = call i8** %25(%struct.jpeg_common_struct* noundef %26, %struct.jvirt_sarray_control* noundef %29, i32 noundef %.0, i32 noundef 1, i32 noundef 1) #4
  %31 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  store i8** %30, i8*** %31, align 8
  %32 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 2, i32 1
  %33 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %32, align 8
  %34 = call i32 %33(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #4
  br label %35

35:                                               ; preds = %21
  %36 = add i32 %.0, 1
  br label %6, !llvm.loop !12

37:                                               ; preds = %6
  %.not = icmp eq %struct.cdjpeg_progress_mgr* %5, null
  br i1 %.not, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %5, i64 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %38, %37
  %43 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_memory_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %43, align 8
  %44 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %45 = bitcast %struct._IO_FILE** %44 to i32*
  store i32 0, i32* %45, align 8
  %46 = call i32 @get_memory_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1)
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_byte(%struct._tga_source_struct* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3) #4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 5
  store i32 42, i32* %11, align 8
  %12 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 1
  %19 = bitcast %struct.jpeg_compress_struct** %18 to %struct.jpeg_common_struct**
  %20 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %19, align 8
  call void %17(%struct.jpeg_common_struct* noundef %20) #4
  br label %21

21:                                               ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_colormap(%struct._tga_source_struct* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %2, 24
  br i1 %.not, label %19, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 1032, i32* %9, align 8
  %10 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %14, align 8
  %16 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 1
  %17 = bitcast %struct.jpeg_compress_struct** %16 to %struct.jpeg_common_struct**
  %18 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %17, align 8
  call void %15(%struct.jpeg_common_struct* noundef %18) #4
  br label %19

19:                                               ; preds = %4, %3
  br label %20

20:                                               ; preds = %46, %19
  %.0 = phi i32 [ 0, %19 ], [ %47, %46 ]
  %21 = icmp slt i32 %.0, %1
  br i1 %21, label %22, label %48

22:                                               ; preds = %20
  %23 = call i32 @read_byte(%struct._tga_source_struct* noundef %0)
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 %24, i8* %30, align 1
  %31 = call i32 @read_byte(%struct._tga_source_struct* noundef %0)
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %32, i8* %38, align 1
  %39 = call i32 @read_byte(%struct._tga_source_struct* noundef %0)
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %0, i64 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = zext i32 %.0 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 %40, i8* %45, align 1
  br label %46

46:                                               ; preds = %22
  %47 = add nuw nsw i32 %.0, 1
  br label %20, !llvm.loop !13

48:                                               ; preds = %20
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_memory_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %6 = bitcast %struct._IO_FILE** %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = xor i32 %7, -1
  %9 = add i32 %4, %8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %11 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %11, i64 0, i32 7
  %13 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %15 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 2
  %16 = bitcast void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %15 to %struct.jvirt_sarray_control**
  %17 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %16, align 8
  %18 = call i8** %13(%struct.jpeg_common_struct* noundef %14, %struct.jvirt_sarray_control* noundef %17, i32 noundef %9, i32 noundef 1, i32 noundef 0) #4
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 0, i32 4
  store i8** %18, i8*** %19, align 8
  %20 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %1, i64 1, i32 3
  %21 = bitcast %struct._IO_FILE** %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, i32* %21, align 8
  ret i32 1
}

; Function Attrs: nounwind readonly willreturn
define %struct._tga_source_struct* @_wyvern_slice_memo_start_input_tga_864032630(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct._tga_source_struct*, %struct._tga_source_struct** %_wyvern_memo_val_addr, align 8
  ret %struct._tga_source_struct* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %0 = bitcast %struct.cjpeg_source_struct** %_wyvern_arg_addr_ to %struct._tga_source_struct**
  %_wyvern_arg_1 = load %struct._tga_source_struct*, %struct._tga_source_struct** %0, align 8
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct._tga_source_struct* %_wyvern_arg_1, %struct._tga_source_struct** %_wyvern_memo_val_addr, align 8
  ret %struct._tga_source_struct* %_wyvern_arg_1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_read_colormap_0950894525(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 24
  br i1 %.not, label %18, label %3

3:                                                ; preds = %2
  %_wyvern_thunk_fptr_addr22 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr23 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr22, align 8
  %_wyvern_thunkcall24 = call %struct._tga_source_struct* %_wyvern_thunkfptr23(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %4 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall24, i64 0, i32 1
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i64 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i64 0, i32 5
  store i32 1032, i32* %8, align 8
  %_wyvern_thunk_fptr_addr19 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr20 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr19, align 8
  %_wyvern_thunkcall21 = call %struct._tga_source_struct* %_wyvern_thunkfptr20(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %9 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall21, i64 0, i32 1
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 0
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %13, align 8
  %_wyvern_thunk_fptr_addr16 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr17 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr16, align 8
  %_wyvern_thunkcall18 = call %struct._tga_source_struct* %_wyvern_thunkfptr17(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall18, i64 0, i32 1
  %16 = bitcast %struct.jpeg_compress_struct** %15 to %struct.jpeg_common_struct**
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %16, align 8
  call void %14(%struct.jpeg_common_struct* noundef %17) #4
  br label %18

18:                                               ; preds = %3, %2
  br label %19

19:                                               ; preds = %45, %18
  %.0 = phi i32 [ 0, %18 ], [ %46, %45 ]
  %20 = icmp slt i32 %.0, %0
  br i1 %20, label %21, label %47

21:                                               ; preds = %19
  %_wyvern_thunk_fptr_addr13 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr14 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr13, align 8
  %_wyvern_thunkcall15 = call %struct._tga_source_struct* %_wyvern_thunkfptr14(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %22 = call i32 @read_byte(%struct._tga_source_struct* noundef %_wyvern_thunkcall15)
  %23 = trunc i32 %22 to i8
  %_wyvern_thunk_fptr_addr10 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr11 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr10, align 8
  %_wyvern_thunkcall12 = call %struct._tga_source_struct* %_wyvern_thunkfptr11(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %24 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall12, i64 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %23, i8* %29, align 1
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call %struct._tga_source_struct* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %30 = call i32 @read_byte(%struct._tga_source_struct* noundef %_wyvern_thunkcall9)
  %31 = trunc i32 %30 to i8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct._tga_source_struct* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %32 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall6, i64 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %31, i8* %37, align 1
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct._tga_source_struct* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %38 = call i32 @read_byte(%struct._tga_source_struct* noundef %_wyvern_thunkcall3)
  %39 = trunc i32 %38 to i8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct._tga_source_struct* (%_wyvern_thunk_type.0*)*, %struct._tga_source_struct* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct._tga_source_struct* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %40 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %_wyvern_thunkcall, i64 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = zext i32 %.0 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %39, i8* %44, align 1
  br label %45

45:                                               ; preds = %21
  %46 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !13

47:                                               ; preds = %19
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
!13 = distinct !{!13, !5}
