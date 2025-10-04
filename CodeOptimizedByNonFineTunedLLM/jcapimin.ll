; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcapimin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcapimin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 61
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 10, i32* %17, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %22 = bitcast %union.anon* %21 to [8 x i32]*
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  store i32 61, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 6
  %29 = bitcast %union.anon* %28 to [8 x i32]*
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 0, i64 1
  store i32 %24, i32* %30, align 4
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %37 = bitcast %struct.jpeg_compress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %37)
  br label %38

38:                                               ; preds = %13, %3
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 496
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 5
  store i32 19, i32* %45, align 8
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 6
  %50 = bitcast %union.anon* %49 to [8 x i32]*
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %50, i64 0, i64 0
  store i32 496, i32* %51, align 4
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 6
  %58 = bitcast %union.anon* %57 to [8 x i32]*
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i64 0, i64 1
  store i32 %53, i32* %59, align 4
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 0
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %63, align 8
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %66 = bitcast %struct.jpeg_compress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* noundef %66)
  br label %67

67:                                               ; preds = %41, %38
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  store %struct.jpeg_error_mgr* %70, %struct.jpeg_error_mgr** %8, align 8
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %72 = bitcast %struct.jpeg_compress_struct* %71 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %72, i8 0, i64 496, i1 false)
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  store %struct.jpeg_error_mgr* %73, %struct.jpeg_error_mgr** %75, align 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %79 = bitcast %struct.jpeg_compress_struct* %78 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef %79)
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %81, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 5
  store %struct.jpeg_destination_mgr* null, %struct.jpeg_destination_mgr** %83, align 8
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 14
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %85, align 8
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %95, %67
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 15
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %91, i64 0, i64 %93
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %94, align 8
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %86, !llvm.loop !4

98:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %113, %98
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %103, i32 0, i32 16
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %104, i64 0, i64 %106
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %107, align 8
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 17
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %109, i64 0, i64 %111
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %112, align 8
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %99, !llvm.loop !6

116:                                              ; preds = %99
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 10
  store double 1.000000e+00, double* %118, align 8
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 4
  store i32 100, i32* %120, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* noundef %4)
  ret void
}

declare dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort_compress(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %4)
  ret void
}

declare dso_local void @jpeg_abort(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.JQUANT_TBL*, align 8
  %7 = alloca %struct.JHUFF_TBL*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 15
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %13, i64 0, i64 %15
  %17 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %16, align 8
  store %struct.JQUANT_TBL* %17, %struct.JQUANT_TBL** %6, align 8
  %18 = icmp ne %struct.JQUANT_TBL* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %6, align 8
  %22 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8, !llvm.loop !7

27:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 16
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %33, i64 0, i64 %35
  %37 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %36, align 8
  store %struct.JHUFF_TBL* %37, %struct.JHUFF_TBL** %7, align 8
  %38 = icmp ne %struct.JHUFF_TBL* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %42 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 17
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %45, i64 0, i64 %47
  %49 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %48, align 8
  store %struct.JHUFF_TBL* %49, %struct.JHUFF_TBL** %7, align 8
  %50 = icmp ne %struct.JHUFF_TBL* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %54 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %28, !llvm.loop !8

59:                                               ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 101
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 102
  br i1 %12, label %13, label %40

13:                                               ; preds = %8, %1
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 36
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %13
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 5
  store i32 66, i32* %25, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %32 = bitcast %struct.jpeg_compress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %32)
  br label %33

33:                                               ; preds = %21, %13
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 51
  %36 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %36, i32 0, i32 2
  %38 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %37, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %38(%struct.jpeg_compress_struct* noundef %39)
  br label %67

40:                                               ; preds = %8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 103
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 5
  store i32 18, i32* %49, align 8
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %57 = bitcast %union.anon* %56 to [8 x i32]*
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 0
  store i32 %52, i32* %58, align 4
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 0
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %62, align 8
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %65 = bitcast %struct.jpeg_compress_struct* %64 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* noundef %65)
  br label %66

66:                                               ; preds = %45, %40
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %142, %67
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 51
  %71 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %149

76:                                               ; preds = %68
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 51
  %79 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %78, align 8
  %80 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %79, i32 0, i32 0
  %81 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %80, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %81(%struct.jpeg_compress_struct* noundef %82)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %139, %76
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 40
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %142

89:                                               ; preds = %83
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %90, i32 0, i32 2
  %92 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %91, align 8
  %93 = icmp ne %struct.jpeg_progress_mgr* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load i32, i32* %3, align 4
  %96 = zext i32 %95 to i64
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 2
  %99 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %98, align 8
  %100 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %99, i32 0, i32 1
  store i64 %96, i64* %100, align 8
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 40
  %103 = load i32, i32* %102, align 8
  %104 = zext i32 %103 to i64
  %105 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %106 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %105, i32 0, i32 2
  %107 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %106, align 8
  %108 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %107, i32 0, i32 2
  store i64 %104, i64* %108, align 8
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 2
  %111 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %111, i32 0, i32 0
  %113 = bitcast {}** %112 to void (%struct.jpeg_common_struct*)**
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %113, align 8
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %116 = bitcast %struct.jpeg_compress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* noundef %116)
  br label %117

117:                                              ; preds = %94, %89
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 54
  %120 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %119, align 8
  %121 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %120, i32 0, i32 1
  %122 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %121, align 8
  %123 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %124 = call i32 %122(%struct.jpeg_compress_struct* noundef %123, i8*** noundef null)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %117
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 5
  store i32 22, i32* %130, align 8
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %132, align 8
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 0
  %135 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %134, align 8
  %136 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %137 = bitcast %struct.jpeg_compress_struct* %136 to %struct.jpeg_common_struct*
  call void %135(%struct.jpeg_common_struct* noundef %137)
  br label %138

138:                                              ; preds = %126, %117
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %3, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %83, !llvm.loop !9

142:                                              ; preds = %83
  %143 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %144 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %143, i32 0, i32 51
  %145 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %144, align 8
  %146 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %145, i32 0, i32 2
  %147 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %146, align 8
  %148 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %147(%struct.jpeg_compress_struct* noundef %148)
  br label %68, !llvm.loop !10

149:                                              ; preds = %68
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 55
  %152 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %151, align 8
  %153 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %152, i32 0, i32 4
  %154 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %153, align 8
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %154(%struct.jpeg_compress_struct* noundef %155)
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 5
  %158 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %157, align 8
  %159 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %158, i32 0, i32 4
  %160 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %159, align 8
  %161 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %160(%struct.jpeg_compress_struct* noundef %161)
  %162 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %163 = bitcast %struct.jpeg_compress_struct* %162 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %163)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 36
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 101
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 102
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 103
  br i1 %27, label %28, label %49

28:                                               ; preds = %23, %4
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 18, i32* %32, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 6
  %40 = bitcast %union.anon* %39 to [8 x i32]*
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 0
  store i32 %35, i32* %41, align 4
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %45, align 8
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %48 = bitcast %struct.jpeg_compress_struct* %47 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* noundef %48)
  br label %49

49:                                               ; preds = %28, %23, %18, %13
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 55
  %52 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %52, i32 0, i32 0
  %54 = load void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %53, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  call void %54(%struct.jpeg_compress_struct* noundef %55, i32 noundef %56, i8* noundef %57, i32 noundef %58)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_tables(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 100
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 18, i32* %11, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 6
  %19 = bitcast %union.anon* %18 to [8 x i32]*
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 0
  store i32 %14, i32* %20, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %27)
  br label %28

28:                                               ; preds = %7, %1
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 4
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %32, align 8
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %35 = bitcast %struct.jpeg_compress_struct* %34 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %35)
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 5
  %38 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %38, i32 0, i32 2
  %40 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %39, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %40(%struct.jpeg_compress_struct* noundef %41)
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %42)
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 55
  %45 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %45, i32 0, i32 5
  %47 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %46, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %47(%struct.jpeg_compress_struct* noundef %48)
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 5
  %51 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %51, i32 0, i32 4
  %53 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %52, align 8
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %53(%struct.jpeg_compress_struct* noundef %54)
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %56 = bitcast %struct.jpeg_compress_struct* %55 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %56)
  ret void
}

declare dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef) #2

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
