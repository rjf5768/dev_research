; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdtarga.c'
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
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, %struct.jpeg_compress_struct*, i8**, %struct.jvirt_sarray_control*, i32, void (%struct._tga_source_struct*)*, [4 x i8], i32, i32, i32, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct._tga_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 112)
  %12 = bitcast i8* %11 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %12, %struct._tga_source_struct** %3, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %3, align 8
  %15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 1
  store %struct.jpeg_compress_struct* %13, %struct.jpeg_compress_struct** %15, align 8
  %16 = load %struct._tga_source_struct*, %struct._tga_source_struct** %3, align 8
  %17 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %17, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @start_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %18, align 8
  %19 = load %struct._tga_source_struct*, %struct._tga_source_struct** %3, align 8
  %20 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %20, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @finish_input_tga, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %21, align 8
  %22 = load %struct._tga_source_struct*, %struct._tga_source_struct** %3, align 8
  %23 = bitcast %struct._tga_source_struct* %22 to %struct.cjpeg_source_struct*
  ret %struct.cjpeg_source_struct* %23
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_tga(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca [18 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %18 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %19 = bitcast %struct.cjpeg_source_struct* %18 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %19, %struct._tga_source_struct** %5, align 8
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %21 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %22 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %22, i32 0, i32 3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i64 @fread(i8* noundef %20, i64 noundef 1, i64 noundef 18, %struct._IO_FILE* noundef %24)
  %26 = icmp eq i64 %25, 18
  br i1 %26, label %39, label %27

27:                                               ; preds = %2
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 42, i32* %31, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %38)
  br label %39

39:                                               ; preds = %27, %2
  %40 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  %41 = load i8, i8* %40, align 16
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 15
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  store i8 16, i8* %45, align 16
  br label %46

46:                                               ; preds = %44, %39
  %47 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 2
  %54 = load i8, i8* %53, align 2
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 5
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 6
  %60 = load i8, i8* %59, align 2
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = add i32 %58, %62
  store i32 %63, i32* %15, align 4
  %64 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 12
  %65 = load i8, i8* %64, align 4
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 13
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 8
  %71 = add i32 %66, %70
  store i32 %71, i32* %13, align 4
  %72 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 14
  %73 = load i8, i8* %72, align 2
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 15
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 8
  %79 = add i32 %74, %78
  store i32 %79, i32* %14, align 4
  %80 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  %81 = load i8, i8* %80, align 16
  %82 = zext i8 %81 to i32
  %83 = ashr i32 %82, 3
  %84 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %85 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 17
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, 32
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %93, 6
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %116, label %97

97:                                               ; preds = %46
  %98 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %99 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %104 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 4
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 16
  %109 = load i8, i8* %108, align 16
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 7
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %113, %107, %102, %97, %46
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 0
  %119 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %118, align 8
  %120 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %119, i32 0, i32 5
  store i32 1033, i32* %120, align 8
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 0
  %125 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %124, align 8
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %127 = bitcast %struct.jpeg_compress_struct* %126 to %struct.jpeg_common_struct*
  call void %125(%struct.jpeg_common_struct* noundef %127)
  br label %128

128:                                              ; preds = %116, %113
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 8
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %133 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %132, i32 0, i32 5
  store void (%struct._tga_source_struct*)* @read_rle_pixel, void (%struct._tga_source_struct*)** %133, align 8
  %134 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %135 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %134, i32 0, i32 9
  store i32 0, i32* %135, align 4
  %136 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %137 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %136, i32 0, i32 8
  store i32 0, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %138, 8
  store i32 %139, i32* %9, align 4
  br label %143

140:                                              ; preds = %128
  %141 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %142 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %141, i32 0, i32 5
  store void (%struct._tga_source_struct*)* @read_non_rle_pixel, void (%struct._tga_source_struct*)** %142, align 8
  br label %143

143:                                              ; preds = %140, %131
  store i32 3, i32* %12, align 4
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %144, i32 0, i32 9
  store i32 2, i32* %145, align 4
  %146 = load i32, i32* %9, align 4
  switch i32 %146, label %295 [
    i32 1, label %147
    i32 2, label %196
    i32 3, label %247
  ]

147:                                              ; preds = %143
  %148 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %149 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %157 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %156, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %157, align 8
  br label %170

158:                                              ; preds = %152, %147
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %160 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 0
  %161 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %160, align 8
  %162 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %161, i32 0, i32 5
  store i32 1033, i32* %162, align 8
  %163 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %163, i32 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %164, align 8
  %166 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i32 0, i32 0
  %167 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %166, align 8
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %169 = bitcast %struct.jpeg_compress_struct* %168 to %struct.jpeg_common_struct*
  call void %167(%struct.jpeg_common_struct* noundef %169)
  br label %170

170:                                              ; preds = %158, %155
  %171 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %171, i32 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %172, align 8
  %174 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i32 0, i32 5
  store i32 1037, i32* %174, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %177 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %176, i32 0, i32 0
  %178 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %177, align 8
  %179 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %178, i32 0, i32 6
  %180 = bitcast %union.anon* %179 to [8 x i32]*
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %180, i64 0, i64 0
  store i32 %175, i32* %181, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %184 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %183, i32 0, i32 0
  %185 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %184, align 8
  %186 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %185, i32 0, i32 6
  %187 = bitcast %union.anon* %186 to [8 x i32]*
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %187, i64 0, i64 1
  store i32 %182, i32* %188, align 4
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %189, i32 0, i32 0
  %191 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %190, align 8
  %192 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %191, i32 0, i32 1
  %193 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %192, align 8
  %194 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %195 = bitcast %struct.jpeg_compress_struct* %194 to %struct.jpeg_common_struct*
  call void %193(%struct.jpeg_common_struct* noundef %195, i32 noundef 1)
  br label %307

196:                                              ; preds = %143
  %197 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %198 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  switch i32 %199, label %209 [
    i32 2, label %200
    i32 3, label %203
    i32 4, label %206
  ]

200:                                              ; preds = %196
  %201 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %202 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %201, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_16bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %202, align 8
  br label %221

203:                                              ; preds = %196
  %204 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %205 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %204, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %205, align 8
  br label %221

206:                                              ; preds = %196
  %207 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %208 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %207, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_24bit_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %208, align 8
  br label %221

209:                                              ; preds = %196
  %210 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %211 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %210, i32 0, i32 0
  %212 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %211, align 8
  %213 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %212, i32 0, i32 5
  store i32 1033, i32* %213, align 8
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 0
  %216 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %215, align 8
  %217 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %216, i32 0, i32 0
  %218 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %217, align 8
  %219 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %220 = bitcast %struct.jpeg_compress_struct* %219 to %struct.jpeg_common_struct*
  call void %218(%struct.jpeg_common_struct* noundef %220)
  br label %221

221:                                              ; preds = %209, %206, %203, %200
  %222 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %223 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %222, i32 0, i32 0
  %224 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %223, align 8
  %225 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %224, i32 0, i32 5
  store i32 1035, i32* %225, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %228 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %227, i32 0, i32 0
  %229 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %228, align 8
  %230 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %229, i32 0, i32 6
  %231 = bitcast %union.anon* %230 to [8 x i32]*
  %232 = getelementptr inbounds [8 x i32], [8 x i32]* %231, i64 0, i64 0
  store i32 %226, i32* %232, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %235 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %234, i32 0, i32 0
  %236 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %235, align 8
  %237 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %236, i32 0, i32 6
  %238 = bitcast %union.anon* %237 to [8 x i32]*
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %238, i64 0, i64 1
  store i32 %233, i32* %239, align 4
  %240 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %241 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %240, i32 0, i32 0
  %242 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %241, align 8
  %243 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %242, i32 0, i32 1
  %244 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %243, align 8
  %245 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %246 = bitcast %struct.jpeg_compress_struct* %245 to %struct.jpeg_common_struct*
  call void %244(%struct.jpeg_common_struct* noundef %246, i32 noundef 1)
  br label %307

247:                                              ; preds = %143
  store i32 1, i32* %12, align 4
  %248 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %249 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %248, i32 0, i32 9
  store i32 1, i32* %249, align 4
  %250 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %251 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %256 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %255, i32 0, i32 10
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_8bit_gray_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %256, align 8
  br label %269

257:                                              ; preds = %247
  %258 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %259 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %258, i32 0, i32 0
  %260 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %259, align 8
  %261 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %260, i32 0, i32 5
  store i32 1033, i32* %261, align 8
  %262 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %263 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %262, i32 0, i32 0
  %264 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %263, align 8
  %265 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %264, i32 0, i32 0
  %266 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %265, align 8
  %267 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %268 = bitcast %struct.jpeg_compress_struct* %267 to %struct.jpeg_common_struct*
  call void %266(%struct.jpeg_common_struct* noundef %268)
  br label %269

269:                                              ; preds = %257, %254
  %270 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %271 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %270, i32 0, i32 0
  %272 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %271, align 8
  %273 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %272, i32 0, i32 5
  store i32 1036, i32* %273, align 8
  %274 = load i32, i32* %13, align 4
  %275 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %276 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %275, i32 0, i32 0
  %277 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %276, align 8
  %278 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %277, i32 0, i32 6
  %279 = bitcast %union.anon* %278 to [8 x i32]*
  %280 = getelementptr inbounds [8 x i32], [8 x i32]* %279, i64 0, i64 0
  store i32 %274, i32* %280, align 4
  %281 = load i32, i32* %14, align 4
  %282 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %283 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %282, i32 0, i32 0
  %284 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %283, align 8
  %285 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %284, i32 0, i32 6
  %286 = bitcast %union.anon* %285 to [8 x i32]*
  %287 = getelementptr inbounds [8 x i32], [8 x i32]* %286, i64 0, i64 1
  store i32 %281, i32* %287, align 4
  %288 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %289 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %288, i32 0, i32 0
  %290 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %289, align 8
  %291 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %290, i32 0, i32 1
  %292 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %291, align 8
  %293 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %294 = bitcast %struct.jpeg_compress_struct* %293 to %struct.jpeg_common_struct*
  call void %292(%struct.jpeg_common_struct* noundef %294, i32 noundef 1)
  br label %307

295:                                              ; preds = %143
  %296 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %297 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %296, i32 0, i32 0
  %298 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %297, align 8
  %299 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %298, i32 0, i32 5
  store i32 1033, i32* %299, align 8
  %300 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %301 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %300, i32 0, i32 0
  %302 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %301, align 8
  %303 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %302, i32 0, i32 0
  %304 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %303, align 8
  %305 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %306 = bitcast %struct.jpeg_compress_struct* %305 to %struct.jpeg_common_struct*
  call void %304(%struct.jpeg_common_struct* noundef %306)
  br label %307

307:                                              ; preds = %295, %269, %221, %170
  %308 = load i32, i32* %16, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %345

310:                                              ; preds = %307
  %311 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %312 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %311, i32 0, i32 1
  %313 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %312, align 8
  %314 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %313, i32 0, i32 4
  %315 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %314, align 8
  %316 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %317 = bitcast %struct.jpeg_compress_struct* %316 to %struct.jpeg_common_struct*
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %12, align 4
  %320 = mul i32 %318, %319
  %321 = load i32, i32* %14, align 4
  %322 = call %struct.jvirt_sarray_control* %315(%struct.jpeg_common_struct* noundef %317, i32 noundef 1, i32 noundef 0, i32 noundef %320, i32 noundef %321, i32 noundef 1)
  %323 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %324 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %323, i32 0, i32 3
  store %struct.jvirt_sarray_control* %322, %struct.jvirt_sarray_control** %324, align 8
  %325 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %326 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %325, i32 0, i32 2
  %327 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %326, align 8
  %328 = icmp ne %struct.jpeg_progress_mgr* %327, null
  br i1 %328, label %329, label %338

329:                                              ; preds = %310
  %330 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %331 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %330, i32 0, i32 2
  %332 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %331, align 8
  %333 = bitcast %struct.jpeg_progress_mgr* %332 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %333, %struct.cdjpeg_progress_mgr** %17, align 8
  %334 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %17, align 8
  %335 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %329, %310
  %339 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %340 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %340, i32 0, i32 5
  store i32 1, i32* %341, align 8
  %342 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %343 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %343, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @preload_image, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %344, align 8
  br label %371

345:                                              ; preds = %307
  %346 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %347 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %346, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %347, align 8
  %348 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %349 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %348, i32 0, i32 1
  %350 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %349, align 8
  %351 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %350, i32 0, i32 2
  %352 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %351, align 8
  %353 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %354 = bitcast %struct.jpeg_compress_struct* %353 to %struct.jpeg_common_struct*
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* %12, align 4
  %357 = mul i32 %355, %356
  %358 = call i8** %352(%struct.jpeg_common_struct* noundef %354, i32 noundef 1, i32 noundef %357, i32 noundef 1)
  %359 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %360 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %360, i32 0, i32 4
  store i8** %358, i8*** %361, align 8
  %362 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %363 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %363, i32 0, i32 5
  store i32 1, i32* %364, align 8
  %365 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %366 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %365, i32 0, i32 10
  %367 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %366, align 8
  %368 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %369 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %369, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* %367, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %370, align 8
  br label %371

371:                                              ; preds = %345, %338
  br label %372

372:                                              ; preds = %376, %371
  %373 = load i32, i32* %7, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %7, align 4
  %375 = icmp ne i32 %373, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %378 = call i32 @read_byte(%struct._tga_source_struct* noundef %377)
  br label %372, !llvm.loop !4

379:                                              ; preds = %372
  %380 = load i32, i32* %15, align 4
  %381 = icmp ugt i32 %380, 0
  br i1 %381, label %382, label %424

382:                                              ; preds = %379
  %383 = load i32, i32* %15, align 4
  %384 = icmp ugt i32 %383, 256
  br i1 %384, label %395, label %385

385:                                              ; preds = %382
  %386 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 3
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 4
  %390 = load i8, i8* %389, align 4
  %391 = zext i8 %390 to i32
  %392 = shl i32 %391, 8
  %393 = add i32 %388, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %407

395:                                              ; preds = %385, %382
  %396 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %397 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %396, i32 0, i32 0
  %398 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %397, align 8
  %399 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %398, i32 0, i32 5
  store i32 1032, i32* %399, align 8
  %400 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %401 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %400, i32 0, i32 0
  %402 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %401, align 8
  %403 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %402, i32 0, i32 0
  %404 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %403, align 8
  %405 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %406 = bitcast %struct.jpeg_compress_struct* %405 to %struct.jpeg_common_struct*
  call void %404(%struct.jpeg_common_struct* noundef %406)
  br label %407

407:                                              ; preds = %395, %385
  %408 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %409 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %408, i32 0, i32 1
  %410 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %409, align 8
  %411 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %410, i32 0, i32 2
  %412 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %411, align 8
  %413 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %414 = bitcast %struct.jpeg_compress_struct* %413 to %struct.jpeg_common_struct*
  %415 = load i32, i32* %15, align 4
  %416 = call i8** %412(%struct.jpeg_common_struct* noundef %414, i32 noundef 1, i32 noundef %415, i32 noundef 3)
  %417 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %418 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %417, i32 0, i32 2
  store i8** %416, i8*** %418, align 8
  %419 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %420 = load i32, i32* %15, align 4
  %421 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 7
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  call void @read_colormap(%struct._tga_source_struct* noundef %419, i32 noundef %420, i32 noundef %423)
  br label %442

424:                                              ; preds = %379
  %425 = load i32, i32* %8, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %439

427:                                              ; preds = %424
  %428 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %429 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %428, i32 0, i32 0
  %430 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %429, align 8
  %431 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %430, i32 0, i32 5
  store i32 1033, i32* %431, align 8
  %432 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %433 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %432, i32 0, i32 0
  %434 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %433, align 8
  %435 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %434, i32 0, i32 0
  %436 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %435, align 8
  %437 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %438 = bitcast %struct.jpeg_compress_struct* %437 to %struct.jpeg_common_struct*
  call void %436(%struct.jpeg_common_struct* noundef %438)
  br label %439

439:                                              ; preds = %427, %424
  %440 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %441 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %440, i32 0, i32 2
  store i8** null, i8*** %441, align 8
  br label %442

442:                                              ; preds = %439, %407
  %443 = load i32, i32* %12, align 4
  %444 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %445 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %444, i32 0, i32 8
  store i32 %443, i32* %445, align 8
  %446 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %447 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %446, i32 0, i32 11
  store i32 8, i32* %447, align 8
  %448 = load i32, i32* %13, align 4
  %449 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %450 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %449, i32 0, i32 6
  store i32 %448, i32* %450, align 8
  %451 = load i32, i32* %14, align 4
  %452 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %453 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %452, i32 0, i32 7
  store i32 %451, i32* %453, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_tga(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_rle_pixel(%struct._tga_source_struct* noundef %0) #0 {
  %2 = alloca %struct._tga_source_struct*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._tga_source_struct* %0, %struct._tga_source_struct** %2, align 8
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %6 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %6, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8
  %9 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %10 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %15 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %20 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %26 = call i32 @read_byte(%struct._tga_source_struct* noundef %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 127
  %33 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %34 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %36 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %35, i32 0, i32 8
  store i32 0, i32* %36, align 8
  br label %42

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 127
  %40 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %41 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %18
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %4, align 4
  %46 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %47 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %52 = call i32 @getc(%struct._IO_FILE* noundef %51)
  %53 = trunc i32 %52 to i8
  %54 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %55 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %54, i32 0, i32 6
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %55, i64 0, i64 %57
  store i8 %53, i8* %58, align 1
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %44, !llvm.loop !6

62:                                               ; preds = %13, %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_non_rle_pixel(%struct._tga_source_struct* noundef %0) #0 {
  %2 = alloca %struct._tga_source_struct*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._tga_source_struct* %0, %struct._tga_source_struct** %2, align 8
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %6 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %6, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %12 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = call i32 @getc(%struct._IO_FILE* noundef %16)
  %18 = trunc i32 %17 to i8
  %19 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %20 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %19, i32 0, i32 6
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 %22
  store i8 %18, i8* %23, align 1
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %9, !llvm.loop !7

27:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %10 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %11 = bitcast %struct.cjpeg_source_struct* %10 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %11, %struct._tga_source_struct** %5, align 8
  %12 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  store i8** %14, i8*** %9, align 8
  %15 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %16 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %16, i32 0, i32 4
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %64, %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %24
  %28 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %29 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %28, i32 0, i32 5
  %30 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %29, align 8
  %31 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  call void %30(%struct._tga_source_struct* noundef %31)
  %32 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %33 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %32, i32 0, i32 6
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %33, i64 0, i64 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i8**, i8*** %9, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8**, i8*** %9, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  br label %64

64:                                               ; preds = %27
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %8, align 4
  br label %24, !llvm.loop !8

67:                                               ; preds = %24
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_16bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %9 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %10 = bitcast %struct.cjpeg_source_struct* %9 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %10, %struct._tga_source_struct** %5, align 8
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %12 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %12, i32 0, i32 4
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %68, %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %20
  %24 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %25 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %24, i32 0, i32 5
  %26 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %25, align 8
  %27 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  call void %26(%struct._tga_source_struct* noundef %27)
  %28 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %29 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %28, i32 0, i32 6
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i64 0, i64 0
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %34 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %33, i32 0, i32 6
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 31
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 5
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 31
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 5
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 31
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* @c5to8bits, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %23
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %8, align 4
  br label %20, !llvm.loop !9

71:                                               ; preds = %20
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_24bit_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %8 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %9 = bitcast %struct.cjpeg_source_struct* %8 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %9, %struct._tga_source_struct** %5, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %11 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %11, i32 0, i32 4
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %51, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %24 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %23, i32 0, i32 5
  %25 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %24, align 8
  %26 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  call void %25(%struct._tga_source_struct* noundef %26)
  %27 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %28 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %27, i32 0, i32 6
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0, i64 2
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i32
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 %32, i8* %33, align 1
  %35 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %36 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %35, i32 0, i32 6
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %36, i64 0, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  store i8 %40, i8* %41, align 1
  %43 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %44 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %43, i32 0, i32 6
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %44, i64 0, i64 0
  %46 = load i8, i8* %45, align 8
  %47 = zext i8 %46 to i32
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 %48, i8* %49, align 1
  br label %51

51:                                               ; preds = %22
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %19, !llvm.loop !10

54:                                               ; preds = %19
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_gray_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %8 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %9 = bitcast %struct.cjpeg_source_struct* %8 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %9, %struct._tga_source_struct** %5, align 8
  %10 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %11 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %11, i32 0, i32 4
  %13 = load i8**, i8*** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %35, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %24 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %23, i32 0, i32 5
  %25 = load void (%struct._tga_source_struct*)*, void (%struct._tga_source_struct*)** %24, align 8
  %26 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  call void %25(%struct._tga_source_struct* noundef %26)
  %27 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %28 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %27, i32 0, i32 6
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0, i64 0
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 %32, i8* %33, align 1
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %19, !llvm.loop !11

38:                                               ; preds = %19
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @preload_image(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdjpeg_progress_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %8 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %9 = bitcast %struct.cjpeg_source_struct* %8 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %9, %struct._tga_source_struct** %5, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 2
  %12 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %11, align 8
  %13 = bitcast %struct.jpeg_progress_mgr* %12 to %struct.cdjpeg_progress_mgr*
  store %struct.cdjpeg_progress_mgr* %13, %struct.cdjpeg_progress_mgr** %7, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %65, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %22 = icmp ne %struct.cdjpeg_progress_mgr* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %27 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %34 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %34, i32 0, i32 2
  store i64 %32, i64* %35, align 8
  %36 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %37 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to void (%struct.jpeg_common_struct*)**
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %39, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* noundef %42)
  br label %43

43:                                               ; preds = %23, %20
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 1
  %46 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %46, i32 0, i32 7
  %48 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %47, align 8
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %50 = bitcast %struct.jpeg_compress_struct* %49 to %struct.jpeg_common_struct*
  %51 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %52 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %51, i32 0, i32 3
  %53 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i8** %48(%struct.jpeg_common_struct* noundef %50, %struct.jvirt_sarray_control* noundef %53, i32 noundef %54, i32 noundef 1, i32 noundef 1)
  %56 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %57 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %57, i32 0, i32 4
  store i8** %55, i8*** %58, align 8
  %59 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %60 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %59, i32 0, i32 10
  %61 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %60, align 8
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %63 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %64 = call i32 %61(%struct.jpeg_compress_struct* noundef %62, %struct.cjpeg_source_struct* noundef %63)
  br label %65

65:                                               ; preds = %43
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %14, !llvm.loop !12

68:                                               ; preds = %14
  %69 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %70 = icmp ne %struct.cdjpeg_progress_mgr* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.cdjpeg_progress_mgr*, %struct.cdjpeg_progress_mgr** %7, align 8
  %73 = getelementptr inbounds %struct.cdjpeg_progress_mgr, %struct.cdjpeg_progress_mgr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %78 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %78, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)* @get_memory_row, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %79, align 8
  %80 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %81 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %80, i32 0, i32 4
  store i32 0, i32* %81, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %83 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %84 = call i32 @get_memory_row(%struct.jpeg_compress_struct* noundef %82, %struct.cjpeg_source_struct* noundef %83)
  ret i32 %84
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_byte(%struct._tga_source_struct* noundef %0) #0 {
  %2 = alloca %struct._tga_source_struct*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._tga_source_struct* %0, %struct._tga_source_struct** %2, align 8
  %5 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %6 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %6, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = call i32 @getc(%struct._IO_FILE* noundef %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %14 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %13, i32 0, i32 1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 42, i32* %18, align 8
  %19 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %20 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %19, i32 0, i32 1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = load %struct._tga_source_struct*, %struct._tga_source_struct** %2, align 8
  %27 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %26, i32 0, i32 1
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %27, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %29)
  br label %30

30:                                               ; preds = %12, %1
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_colormap(%struct._tga_source_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._tga_source_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._tga_source_struct* %0, %struct._tga_source_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 24
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %12 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %11, i32 0, i32 1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 1032, i32* %16, align 8
  %17 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %18 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %17, i32 0, i32 1
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %25 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %24, i32 0, i32 1
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %27)
  br label %28

28:                                               ; preds = %10, %3
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %67, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %35 = call i32 @read_byte(%struct._tga_source_struct* noundef %34)
  %36 = trunc i32 %35 to i8
  %37 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %38 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 %36, i8* %44, align 1
  %45 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %46 = call i32 @read_byte(%struct._tga_source_struct* noundef %45)
  %47 = trunc i32 %46 to i8
  %48 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %49 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %48, i32 0, i32 2
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %47, i8* %55, align 1
  %56 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %57 = call i32 @read_byte(%struct._tga_source_struct* noundef %56)
  %58 = trunc i32 %57 to i8
  %59 = load %struct._tga_source_struct*, %struct._tga_source_struct** %4, align 8
  %60 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 %58, i8* %66, align 1
  br label %67

67:                                               ; preds = %33
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %29, !llvm.loop !13

70:                                               ; preds = %29
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_memory_row(%struct.jpeg_compress_struct* noundef %0, %struct.cjpeg_source_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.cjpeg_source_struct*, align 8
  %5 = alloca %struct._tga_source_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.cjpeg_source_struct* %1, %struct.cjpeg_source_struct** %4, align 8
  %7 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %4, align 8
  %8 = bitcast %struct.cjpeg_source_struct* %7 to %struct._tga_source_struct*
  store %struct._tga_source_struct* %8, %struct._tga_source_struct** %5, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %13 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 %11, %14
  %16 = sub i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 7
  %21 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %20, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  %24 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %25 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %24, i32 0, i32 3
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i8** %21(%struct.jpeg_common_struct* noundef %23, %struct.jvirt_sarray_control* noundef %26, i32 noundef %27, i32 noundef 1, i32 noundef 0)
  %29 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %30 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %30, i32 0, i32 4
  store i8** %28, i8*** %31, align 8
  %32 = load %struct._tga_source_struct*, %struct._tga_source_struct** %5, align 8
  %33 = getelementptr inbounds %struct._tga_source_struct, %struct._tga_source_struct* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, i32* %33, align 8
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
