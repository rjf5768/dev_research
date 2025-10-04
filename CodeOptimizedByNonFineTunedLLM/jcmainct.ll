; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcmainct.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcmainct.c"
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
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x i8**] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_main_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_main_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 0
  %12 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %11, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  %15 = call i8* %12(%struct.jpeg_common_struct* noundef %14, i32 noundef 1, i64 noundef 112)
  %16 = bitcast i8* %15 to %struct.my_main_controller*
  store %struct.my_main_controller* %16, %struct.my_main_controller** %5, align 8
  %17 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %18 = bitcast %struct.my_main_controller* %17 to %struct.jpeg_c_main_controller*
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 52
  store %struct.jpeg_c_main_controller* %18, %struct.jpeg_c_main_controller** %20, align 8
  %21 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %22, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_main, void (%struct.jpeg_compress_struct*, i32)** %23, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 23
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %82

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 4, i32* %36, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %41 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %40, align 8
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %43 = bitcast %struct.jpeg_compress_struct* %42 to %struct.jpeg_common_struct*
  call void %41(%struct.jpeg_common_struct* noundef %43)
  br label %82

44:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 14
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %46, align 8
  store %struct.jpeg_component_info* %47, %struct.jpeg_component_info** %7, align 8
  br label %48

48:                                               ; preds = %76, %44
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 1
  %57 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %57, i32 0, i32 2
  %59 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %58, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %61 = bitcast %struct.jpeg_compress_struct* %60 to %struct.jpeg_common_struct*
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %64, 8
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 8
  %70 = call i8** %59(%struct.jpeg_common_struct* noundef %61, i32 noundef 1, i32 noundef %65, i32 noundef %69)
  %71 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %72 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %71, i32 0, i32 5
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [10 x i8**], [10 x i8**]* %72, i64 0, i64 %74
  store i8** %70, i8*** %75, align 8
  br label %76

76:                                               ; preds = %54
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 1
  store %struct.jpeg_component_info* %80, %struct.jpeg_component_info** %7, align 8
  br label %48, !llvm.loop !4

81:                                               ; preds = %48
  br label %82

82:                                               ; preds = %28, %81, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 52
  %8 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %7, align 8
  %9 = bitcast %struct.jpeg_c_main_controller* %8 to %struct.my_main_controller*
  store %struct.my_main_controller* %9, %struct.my_main_controller** %5, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 23
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %17 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %16, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %18, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %21 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %20, i32 0, i32 3
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %30 [
    i32 0, label %26
  ]

26:                                               ; preds = %15
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %28, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %29, align 8
  br label %42

30:                                               ; preds = %15
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 4, i32* %34, align 8
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %38, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* noundef %41)
  br label %42

42:                                               ; preds = %14, %30, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 52
  %12 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %11, align 8
  %13 = bitcast %struct.jpeg_c_main_controller* %12 to %struct.my_main_controller*
  store %struct.my_main_controller* %13, %struct.my_main_controller** %9, align 8
  br label %14

14:                                               ; preds = %83, %4
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %16 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 40
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %90

22:                                               ; preds = %14
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %25, 8
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 53
  %30 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %30, i32 0, i32 1
  %32 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %31, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %38 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %37, i32 0, i32 5
  %39 = getelementptr inbounds [10 x i8**], [10 x i8**]* %38, i64 0, i64 0
  %40 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %41 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %40, i32 0, i32 2
  call void %32(%struct.jpeg_compress_struct* noundef %33, i8** noundef %34, i32* noundef %35, i32 noundef %36, i8*** noundef %39, i32* noundef %41, i32 noundef 8)
  br label %42

42:                                               ; preds = %27, %22
  %43 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %44 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %90

48:                                               ; preds = %42
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 54
  %51 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %51, i32 0, i32 1
  %53 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %52, align 8
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %55 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %56 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %55, i32 0, i32 5
  %57 = getelementptr inbounds [10 x i8**], [10 x i8**]* %56, i64 0, i64 0
  %58 = call i32 %53(%struct.jpeg_compress_struct* noundef %54, i8*** noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %48
  %61 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %62 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %70 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %69, i32 0, i32 3
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %60
  br label %90

72:                                               ; preds = %48
  %73 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %74 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %82 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %81, i32 0, i32 3
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %85 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %84, i32 0, i32 2
  store i32 0, i32* %85, align 4
  %86 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %87 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %14, !llvm.loop !6

90:                                               ; preds = %47, %71, %14
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
