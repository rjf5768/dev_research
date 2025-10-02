; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcapistd.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcapistd.c"
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
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 100
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 18, i32* %13, align 8
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %21 = bitcast %union.anon* %20 to [8 x i32]*
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* noundef %29)
  br label %30

30:                                               ; preds = %9, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef %34, i32 noundef 0)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i32 0, i32 4
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %39, align 8
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %42 = bitcast %struct.jpeg_compress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* noundef %42)
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 5
  %45 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %45, i32 0, i32 2
  %47 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %46, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void %47(%struct.jpeg_compress_struct* noundef %48)
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jinit_compress_master(%struct.jpeg_compress_struct* noundef %49)
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 51
  %52 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %52, i32 0, i32 0
  %54 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %53, align 8
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void %54(%struct.jpeg_compress_struct* noundef %55)
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 36
  store i32 0, i32* %57, align 8
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 23
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 102, i32 101
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  ret void
}

declare dso_local void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_compress_master(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 101
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 18, i32* %17, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to [8 x i32]*
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %30, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* noundef %33)
  br label %34

34:                                               ; preds = %13, %3
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 36
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 119, i32* %46, align 8
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 1
  %51 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %50, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %53 = bitcast %struct.jpeg_compress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* noundef %53, i32 noundef -1)
  br label %54

54:                                               ; preds = %42, %34
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 2
  %57 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %56, align 8
  %58 = icmp ne %struct.jpeg_progress_mgr* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 36
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 2
  %66 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 2
  %74 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %74, i32 0, i32 2
  store i64 %71, i64* %75, align 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 2
  %78 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %78, i32 0, i32 0
  %80 = bitcast {}** %79 to void (%struct.jpeg_common_struct*)**
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %80, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %83 = bitcast %struct.jpeg_compress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* noundef %83)
  br label %84

84:                                               ; preds = %59, %54
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 51
  %87 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 51
  %94 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %94, i32 0, i32 1
  %96 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %95, align 8
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  call void %96(%struct.jpeg_compress_struct* noundef %97)
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 36
  %104 = load i32, i32* %103, align 8
  %105 = sub i32 %101, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %98
  store i32 0, i32* %7, align 4
  %112 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %112, i32 0, i32 52
  %114 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %113, align 8
  %115 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %114, i32 0, i32 1
  %116 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %115, align 8
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %6, align 4
  call void %116(%struct.jpeg_compress_struct* noundef %117, i8** noundef %118, i32* noundef %7, i32 noundef %119)
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 36
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_write_raw_data(%struct.jpeg_compress_struct* noundef %0, i8*** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 102
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 18, i32* %17, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to [8 x i32]*
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %30, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* noundef %33)
  br label %34

34:                                               ; preds = %13, %3
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 36
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 119, i32* %46, align 8
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 1
  %51 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %50, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %53 = bitcast %struct.jpeg_compress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* noundef %53, i32 noundef -1)
  store i32 0, i32* %4, align 4
  br label %136

54:                                               ; preds = %34
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 2
  %57 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %56, align 8
  %58 = icmp ne %struct.jpeg_progress_mgr* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 36
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 2
  %66 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 2
  %74 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %74, i32 0, i32 2
  store i64 %71, i64* %75, align 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 2
  %78 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %78, i32 0, i32 0
  %80 = bitcast {}** %79 to void (%struct.jpeg_common_struct*)**
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %80, align 8
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %83 = bitcast %struct.jpeg_compress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* noundef %83)
  br label %84

84:                                               ; preds = %59, %54
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 51
  %87 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 51
  %94 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %94, i32 0, i32 1
  %96 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %95, align 8
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  call void %96(%struct.jpeg_compress_struct* noundef %97)
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 39
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 8
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 0
  %109 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %108, align 8
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %109, i32 0, i32 5
  store i32 21, i32* %110, align 8
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %111, i32 0, i32 0
  %113 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %112, align 8
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %113, i32 0, i32 0
  %115 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %114, align 8
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %117 = bitcast %struct.jpeg_compress_struct* %116 to %struct.jpeg_common_struct*
  call void %115(%struct.jpeg_common_struct* noundef %117)
  br label %118

118:                                              ; preds = %106, %98
  %119 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %120 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %119, i32 0, i32 54
  %121 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %120, align 8
  %122 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %121, i32 0, i32 1
  %123 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %122, align 8
  %124 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %125 = load i8***, i8**** %6, align 8
  %126 = call i32 %123(%struct.jpeg_compress_struct* noundef %124, i8*** noundef %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %136

129:                                              ; preds = %118
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 36
  %133 = load i32, i32* %132, align 8
  %134 = add i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %129, %128, %42
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
