; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdapimin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdapimin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 61
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 10, i32* %17, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %22 = bitcast %union.anon* %21 to [8 x i32]*
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  store i32 61, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 6
  %29 = bitcast %union.anon* %28 to [8 x i32]*
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 0, i64 1
  store i32 %24, i32* %30, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %37)
  br label %38

38:                                               ; preds = %13, %3
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 616
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 5
  store i32 19, i32* %45, align 8
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 6
  %50 = bitcast %union.anon* %49 to [8 x i32]*
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %50, i64 0, i64 0
  store i32 616, i32* %51, align 4
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %58 = bitcast %union.anon* %57 to [8 x i32]*
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i64 0, i64 1
  store i32 %53, i32* %59, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %63, align 8
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %66 = bitcast %struct.jpeg_decompress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* noundef %66)
  br label %67

67:                                               ; preds = %41, %38
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  store %struct.jpeg_error_mgr* %70, %struct.jpeg_error_mgr** %8, align 8
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %72 = bitcast %struct.jpeg_decompress_struct* %71 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %72, i8 0, i64 616, i1 false)
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  store %struct.jpeg_error_mgr* %73, %struct.jpeg_error_mgr** %75, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 3
  store i32 1, i32* %77, align 8
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %79 = bitcast %struct.jpeg_decompress_struct* %78 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef %79)
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %81, align 8
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 5
  store %struct.jpeg_source_mgr* null, %struct.jpeg_source_mgr** %83, align 8
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %93, %67
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 39
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %89, i64 0, i64 %91
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %92, align 8
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %84, !llvm.loop !4

96:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %101, i32 0, i32 40
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %102, i64 0, i64 %104
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %105, align 8
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 41
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %107, i64 0, i64 %109
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %110, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %97, !llvm.loop !6

114:                                              ; preds = %97
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  call void @jinit_marker_reader(%struct.jpeg_decompress_struct* noundef %115)
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  call void @jinit_input_controller(%struct.jpeg_decompress_struct* noundef %116)
  %117 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %117, i32 0, i32 4
  store i32 200, i32* %118, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef) #2

declare dso_local void @jinit_marker_reader(%struct.jpeg_decompress_struct* noundef) #2

declare dso_local void @jinit_input_controller(%struct.jpeg_decompress_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* noundef %4)
  ret void
}

declare dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %4)
  ret void
}

declare dso_local void @jpeg_abort(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i32 (%struct.jpeg_decompress_struct*)* noundef %2) #0 {
  %4 = alloca %struct.jpeg_decompress_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.jpeg_decompress_struct*)*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.jpeg_decompress_struct*)* %2, i32 (%struct.jpeg_decompress_struct*)** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 254
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %6, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 78
  %13 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %13, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* %10, i32 (%struct.jpeg_decompress_struct*)** %14, align 8
  br label %51

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 224
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 239
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %6, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 78
  %25 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %25, i32 0, i32 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 224
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i32 (%struct.jpeg_decompress_struct*)*], [16 x i32 (%struct.jpeg_decompress_struct*)*]* %26, i64 0, i64 %29
  store i32 (%struct.jpeg_decompress_struct*)* %22, i32 (%struct.jpeg_decompress_struct*)** %30, align 8
  br label %50

31:                                               ; preds = %18, %15
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 67, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %41 = bitcast %union.anon* %40 to [8 x i32]*
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %41, i64 0, i64 0
  store i32 %36, i32* %42, align 4
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %46, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %4, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* noundef %49)
  br label %50

50:                                               ; preds = %31, %21
  br label %51

51:                                               ; preds = %50, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 200
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 201
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 18, i32* %19, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 6
  %27 = bitcast %union.anon* %26 to [8 x i32]*
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 0, i64 0
  store i32 %22, i32* %28, align 4
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %32, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %35 = bitcast %struct.jpeg_decompress_struct* %34 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %35)
  br label %36

36:                                               ; preds = %15, %10, %2
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %38 = call i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* noundef %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %60 [
    i32 1, label %40
    i32 2, label %41
    i32 0, label %59
  ]

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %60

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 5
  store i32 50, i32* %48, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 0
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %52, align 8
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %55 = bitcast %struct.jpeg_decompress_struct* %54 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* noundef %55)
  br label %56

56:                                               ; preds = %44, %41
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %58 = bitcast %struct.jpeg_decompress_struct* %57 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %58)
  store i32 2, i32* %5, align 4
  br label %60

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %36, %59, %56, %40
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %46 [
    i32 200, label %7
    i32 201, label %22
    i32 202, label %37
    i32 203, label %38
    i32 204, label %38
    i32 205, label %38
    i32 206, label %38
    i32 207, label %38
    i32 208, label %38
    i32 210, label %38
  ]

7:                                                ; preds = %1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 77
  %10 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %10, i32 0, i32 1
  %12 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %11, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %12(%struct.jpeg_decompress_struct* noundef %13)
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 5
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 2
  %18 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %17, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %18(%struct.jpeg_decompress_struct* noundef %19)
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 4
  store i32 201, i32* %21, align 4
  br label %22

22:                                               ; preds = %1, %7
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 77
  %25 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %25, i32 0, i32 0
  %27 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %26, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %29 = call i32 %27(%struct.jpeg_decompress_struct* noundef %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @default_decompress_parms(%struct.jpeg_decompress_struct* noundef %33)
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 4
  store i32 202, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %22
  br label %67

37:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %67

38:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 77
  %41 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %41, i32 0, i32 0
  %43 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %42, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = call i32 %43(%struct.jpeg_decompress_struct* noundef %44)
  store i32 %45, i32* %3, align 4
  br label %67

46:                                               ; preds = %1
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 5
  store i32 18, i32* %50, align 8
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %58 = bitcast %union.anon* %57 to [8 x i32]*
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i64 0, i64 0
  store i32 %53, i32* %59, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %63, align 8
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %66 = bitcast %struct.jpeg_decompress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* noundef %66)
  br label %67

67:                                               ; preds = %46, %38, %37, %36
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind uwtable
define internal void @default_decompress_parms(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %190 [
    i32 1, label %10
    i32 3, label %15
    i32 4, label %143
  ]

10:                                               ; preds = %1
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 9
  store i32 1, i32* %12, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 10
  store i32 1, i32* %14, align 8
  br label %195

15:                                               ; preds = %1
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 50
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 9
  store i32 3, i32* %22, align 4
  br label %140

23:                                               ; preds = %15
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 54
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %23
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 55
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  switch i32 %32, label %39 [
    i32 0, label %33
    i32 1, label %36
  ]

33:                                               ; preds = %28
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 9
  store i32 2, i32* %35, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 9
  store i32 3, i32* %38, align 4
  br label %63

39:                                               ; preds = %28
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 110, i32* %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 55
  %46 = load i8, i8* %45, align 4
  %47 = zext i8 %46 to i32
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 6
  %52 = bitcast %union.anon* %51 to [8 x i32]*
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %52, i64 0, i64 0
  store i32 %47, i32* %53, align 4
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 1
  %58 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %57, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %60 = bitcast %struct.jpeg_decompress_struct* %59 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* noundef %60, i32 noundef -1)
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 9
  store i32 3, i32* %62, align 4
  br label %63

63:                                               ; preds = %39, %36, %33
  br label %139

64:                                               ; preds = %23
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 43
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %66, align 8
  %68 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i64 0
  %69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %3, align 4
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 43
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1
  %75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %4, align 4
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 43
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %78, align 8
  %80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i64 2
  %81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %64
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 9
  store i32 3, i32* %93, align 4
  br label %138

94:                                               ; preds = %88, %85, %64
  %95 = load i32, i32* %3, align 4
  %96 = icmp eq i32 %95, 82
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 71
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 66
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 9
  store i32 2, i32* %105, align 4
  br label %137

106:                                              ; preds = %100, %97, %94
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 0
  %110 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %109, align 8
  %111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %110, i32 0, i32 6
  %112 = bitcast %union.anon* %111 to [8 x i32]*
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %112, i64 0, i64 0
  store i32* %113, i32** %6, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 0
  %125 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %124, align 8
  %126 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %125, i32 0, i32 5
  store i32 107, i32* %126, align 8
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 1
  %131 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %130, align 8
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %133 = bitcast %struct.jpeg_decompress_struct* %132 to %struct.jpeg_common_struct*
  call void %131(%struct.jpeg_common_struct* noundef %133, i32 noundef 1)
  br label %134

134:                                              ; preds = %107
  %135 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %135, i32 0, i32 9
  store i32 3, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %103
  br label %138

138:                                              ; preds = %137, %91
  br label %139

139:                                              ; preds = %138, %63
  br label %140

140:                                              ; preds = %139, %20
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 10
  store i32 2, i32* %142, align 8
  br label %195

143:                                              ; preds = %1
  %144 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %144, i32 0, i32 54
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %143
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 55
  %151 = load i8, i8* %150, align 4
  %152 = zext i8 %151 to i32
  switch i32 %152, label %159 [
    i32 0, label %153
    i32 2, label %156
  ]

153:                                              ; preds = %148
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %155 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 9
  store i32 4, i32* %155, align 4
  br label %183

156:                                              ; preds = %148
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 9
  store i32 5, i32* %158, align 4
  br label %183

159:                                              ; preds = %148
  %160 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %161 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %160, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %161, align 8
  %163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 5
  store i32 110, i32* %163, align 8
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %165 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 55
  %166 = load i8, i8* %165, align 4
  %167 = zext i8 %166 to i32
  %168 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %169 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %168, i32 0, i32 0
  %170 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %169, align 8
  %171 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %170, i32 0, i32 6
  %172 = bitcast %union.anon* %171 to [8 x i32]*
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %172, i64 0, i64 0
  store i32 %167, i32* %173, align 4
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %175 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 0
  %176 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %175, align 8
  %177 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %176, i32 0, i32 1
  %178 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %177, align 8
  %179 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %180 = bitcast %struct.jpeg_decompress_struct* %179 to %struct.jpeg_common_struct*
  call void %178(%struct.jpeg_common_struct* noundef %180, i32 noundef -1)
  %181 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %182 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %181, i32 0, i32 9
  store i32 5, i32* %182, align 4
  br label %183

183:                                              ; preds = %159, %156, %153
  br label %187

184:                                              ; preds = %143
  %185 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %186 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %185, i32 0, i32 9
  store i32 4, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %183
  %188 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %189 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %188, i32 0, i32 10
  store i32 4, i32* %189, align 8
  br label %195

190:                                              ; preds = %1
  %191 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %192 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %191, i32 0, i32 9
  store i32 0, i32* %192, align 4
  %193 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %194 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %193, i32 0, i32 10
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %190, %187, %140, %10
  %196 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %197 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %196, i32 0, i32 11
  store i32 1, i32* %197, align 4
  %198 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %199 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %198, i32 0, i32 12
  store i32 1, i32* %199, align 8
  %200 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %201 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %200, i32 0, i32 13
  store double 1.000000e+00, double* %201, align 8
  %202 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %203 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %202, i32 0, i32 14
  store i32 0, i32* %203, align 8
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %205 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %204, i32 0, i32 15
  store i32 0, i32* %205, align 4
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %207 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 16
  store i32 0, i32* %207, align 8
  %208 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %209 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %208, i32 0, i32 17
  store i32 1, i32* %209, align 4
  %210 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %211 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %210, i32 0, i32 18
  store i32 1, i32* %211, align 8
  %212 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %213 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %212, i32 0, i32 19
  store i32 0, i32* %213, align 4
  %214 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %215 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %214, i32 0, i32 20
  store i32 2, i32* %215, align 8
  %216 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %217 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %216, i32 0, i32 21
  store i32 1, i32* %217, align 4
  %218 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %219 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %218, i32 0, i32 22
  store i32 256, i32* %219, align 8
  %220 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %221 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %220, i32 0, i32 32
  store i8** null, i8*** %221, align 8
  %222 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %223 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %222, i32 0, i32 23
  store i32 0, i32* %223, align 4
  %224 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %225 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %224, i32 0, i32 24
  store i32 0, i32* %225, align 8
  %226 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %227 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %226, i32 0, i32 25
  store i32 0, i32* %227, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_input_complete(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 200
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 210
  br i1 %11, label %12, label %33

12:                                               ; preds = %7, %1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 18, i32* %16, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %24 = bitcast %union.anon* %23 to [8 x i32]*
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  store i32 %19, i32* %25, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %32)
  br label %33

33:                                               ; preds = %12, %7
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 77
  %36 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_has_multiple_scans(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 202
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 210
  br i1 %11, label %12, label %33

12:                                               ; preds = %7, %1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 18, i32* %16, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %24 = bitcast %union.anon* %23 to [8 x i32]*
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  store i32 %19, i32* %25, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %32)
  br label %33

33:                                               ; preds = %12, %7
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 77
  %36 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 205
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 206
  br i1 %12, label %13, label %47

13:                                               ; preds = %8, %1
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %13
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 33
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 27
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 66, i32* %30, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %37)
  br label %38

38:                                               ; preds = %26, %18
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 73
  %41 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %41, i32 0, i32 1
  %43 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %42, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void %43(%struct.jpeg_decompress_struct* noundef %44)
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 4
  store i32 210, i32* %46, align 4
  br label %83

47:                                               ; preds = %13, %8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 207
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 4
  store i32 210, i32* %54, align 4
  br label %82

55:                                               ; preds = %47
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 210
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 0
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %62, align 8
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 5
  store i32 18, i32* %64, align 8
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 6
  %72 = bitcast %union.anon* %71 to [8 x i32]*
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %72, i64 0, i64 0
  store i32 %67, i32* %73, align 4
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %75, align 8
  %77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i32 0, i32 0
  %78 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %77, align 8
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %80 = bitcast %struct.jpeg_decompress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* noundef %80)
  br label %81

81:                                               ; preds = %60, %55
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82, %38
  br label %84

84:                                               ; preds = %102, %83
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 77
  %87 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 77
  %95 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %94, align 8
  %96 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %95, i32 0, i32 0
  %97 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %96, align 8
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %99 = call i32 %97(%struct.jpeg_decompress_struct* noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %112

102:                                              ; preds = %92
  br label %84, !llvm.loop !7

103:                                              ; preds = %84
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 5
  %106 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %105, align 8
  %107 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %106, i32 0, i32 6
  %108 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %107, align 8
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void %108(%struct.jpeg_decompress_struct* noundef %109)
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %111 = bitcast %struct.jpeg_decompress_struct* %110 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %111)
  store i32 1, i32* %2, align 4
  br label %112

112:                                              ; preds = %103, %101
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
