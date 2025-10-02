; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdmainct.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdmainct.c"
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
%struct.jpeg_color_quantizer = type { {}*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x i8**], i32, i32, [2 x i8***], i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_d_main_controller(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_main_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %13, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  %17 = call i8* %14(%struct.jpeg_common_struct* noundef %16, i32 noundef 1, i64 noundef 136)
  %18 = bitcast i8* %17 to %struct.my_main_controller*
  store %struct.my_main_controller* %18, %struct.my_main_controller** %5, align 8
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %20 = bitcast %struct.my_main_controller* %19 to %struct.jpeg_d_main_controller*
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 74
  store %struct.jpeg_d_main_controller* %20, %struct.jpeg_d_main_controller** %22, align 8
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %24, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_main, void (%struct.jpeg_decompress_struct*, i32)** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 4, i32* %32, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %36, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* noundef %39)
  br label %40

40:                                               ; preds = %28, %2
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 81
  %43 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %40
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 59
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 5
  store i32 46, i32* %56, align 8
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %58, align 8
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 0
  %61 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %60, align 8
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %63 = bitcast %struct.jpeg_decompress_struct* %62 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* noundef %63)
  br label %64

64:                                               ; preds = %52, %47
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @alloc_funny_pointers(%struct.jpeg_decompress_struct* noundef %65)
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 59
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %8, align 4
  br label %74

70:                                               ; preds = %40
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 59
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %64
  store i32 0, i32* %6, align 4
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 43
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %76, align 8
  store %struct.jpeg_component_info* %77, %struct.jpeg_component_info** %9, align 8
  br label %78

78:                                               ; preds = %119, %74
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %78
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %86 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 59
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %91, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 1
  %98 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %97, align 8
  %99 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %98, i32 0, i32 2
  %100 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %99, align 8
  %101 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %102 = bitcast %struct.jpeg_decompress_struct* %101 to %struct.jpeg_common_struct*
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = mul i32 %105, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = mul nsw i32 %110, %111
  %113 = call i8** %100(%struct.jpeg_common_struct* noundef %102, i32 noundef 1, i32 noundef %109, i32 noundef %112)
  %114 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %115 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %114, i32 0, i32 1
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i8**], [10 x i8**]* %115, i64 0, i64 %117
  store i8** %113, i8*** %118, align 8
  br label %119

119:                                              ; preds = %84
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 1
  store %struct.jpeg_component_info* %123, %struct.jpeg_component_info** %9, align 8
  br label %78, !llvm.loop !4

124:                                              ; preds = %78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 74
  %8 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %7, align 8
  %9 = bitcast %struct.jpeg_d_main_controller* %8 to %struct.my_main_controller*
  store %struct.my_main_controller* %9, %struct.my_main_controller** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %42 [
    i32 0, label %11
    i32 2, label %38
  ]

11:                                               ; preds = %2
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 81
  %14 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %20, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_context_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %21, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @make_funny_pointers(%struct.jpeg_decompress_struct* noundef %22)
  %23 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %23, i32 0, i32 5
  store i32 0, i32* %24, align 8
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %26 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 6
  store i32 0, i32* %26, align 4
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 8
  store i32 0, i32* %28, align 4
  br label %33

29:                                               ; preds = %11
  %30 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %31 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %31, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %32, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %35 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %37 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.my_main_controller*, %struct.my_main_controller** %5, align 8
  %40 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %40, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_crank_post, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %41, align 8
  br label %54

42:                                               ; preds = %2
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 4, i32* %46, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 0
  %51 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %50, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* noundef %53)
  br label %54

54:                                               ; preds = %42, %38, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @alloc_funny_pointers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_main_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 74
  %11 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %10, align 8
  %12 = bitcast %struct.jpeg_d_main_controller* %11 to %struct.my_main_controller*
  store %struct.my_main_controller* %12, %struct.my_main_controller** %3, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 59
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 1
  %18 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %18, i32 0, i32 0
  %20 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %19, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = call i8* %20(%struct.jpeg_common_struct* noundef %22, i32 noundef 1, i64 noundef %28)
  %30 = bitcast i8* %29 to i8***
  %31 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %32 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %31, i32 0, i32 4
  %33 = getelementptr inbounds [2 x i8***], [2 x i8***]* %32, i64 0, i64 0
  store i8*** %30, i8**** %33, align 8
  %34 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %35 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %34, i32 0, i32 4
  %36 = getelementptr inbounds [2 x i8***], [2 x i8***]* %35, i64 0, i64 0
  %37 = load i8***, i8**** %36, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8**, i8*** %37, i64 %41
  %43 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %44 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %43, i32 0, i32 4
  %45 = getelementptr inbounds [2 x i8***], [2 x i8***]* %44, i64 0, i64 1
  store i8*** %42, i8**** %45, align 8
  store i32 0, i32* %4, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 43
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %47, align 8
  store %struct.jpeg_component_info* %48, %struct.jpeg_component_info** %7, align 8
  br label %49

49:                                               ; preds = %110, %1
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %115

55:                                               ; preds = %49
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 59
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %62, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 1
  %69 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %69, i32 0, i32 0
  %71 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %70, align 8
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %73 = bitcast %struct.jpeg_decompress_struct* %72 to %struct.jpeg_common_struct*
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 4
  %77 = mul nsw i32 %74, %76
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = call i8* %71(%struct.jpeg_common_struct* noundef %73, i32 noundef 1, i64 noundef %80)
  %82 = bitcast i8* %81 to i8**
  store i8** %82, i8*** %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i8**, i8*** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  store i8** %86, i8*** %8, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %89 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %88, i32 0, i32 4
  %90 = getelementptr inbounds [2 x i8***], [2 x i8***]* %89, i64 0, i64 0
  %91 = load i8***, i8**** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8**, i8*** %91, i64 %93
  store i8** %87, i8*** %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 4
  %98 = mul nsw i32 %95, %97
  %99 = load i8**, i8*** %8, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8** %101, i8*** %8, align 8
  %102 = load i8**, i8*** %8, align 8
  %103 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %104 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %103, i32 0, i32 4
  %105 = getelementptr inbounds [2 x i8***], [2 x i8***]* %104, i64 0, i64 1
  %106 = load i8***, i8**** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8**, i8*** %106, i64 %108
  store i8** %102, i8*** %109, align 8
  br label %110

110:                                              ; preds = %55
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %114 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 1
  store %struct.jpeg_component_info* %114, %struct.jpeg_component_info** %7, align 8
  br label %49, !llvm.loop !6

115:                                              ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_context_main(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.my_main_controller*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 74
  %12 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %11, align 8
  %13 = bitcast %struct.jpeg_d_main_controller* %12 to %struct.my_main_controller*
  store %struct.my_main_controller* %13, %struct.my_main_controller** %9, align 8
  %14 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %15 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 75
  %21 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %21, i32 0, i32 3
  %23 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %22, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %25 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %26 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %25, i32 0, i32 4
  %27 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [2 x i8***], [2 x i8***]* %26, i64 0, i64 %30
  %32 = load i8***, i8**** %31, align 8
  %33 = call i32 %23(%struct.jpeg_decompress_struct* noundef %24, i8*** noundef %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %18
  br label %167

36:                                               ; preds = %18
  %37 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %38 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  %39 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %40 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %4
  %44 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %45 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %167 [
    i32 2, label %47
    i32 0, label %87
    i32 1, label %108
  ]

47:                                               ; preds = %43
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 76
  %50 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %50, i32 0, i32 1
  %52 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %51, align 8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %54 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %55 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %54, i32 0, i32 4
  %56 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %57 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i8***], [2 x i8***]* %55, i64 0, i64 %59
  %61 = load i8***, i8**** %60, align 8
  %62 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %63 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %62, i32 0, i32 3
  %64 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %65 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  call void %52(%struct.jpeg_decompress_struct* noundef %53, i8*** noundef %61, i32* noundef %63, i32 noundef %66, i8** noundef %67, i32* noundef %68, i32 noundef %69)
  %70 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %71 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %74 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %47
  br label %167

78:                                               ; preds = %47
  %79 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %80 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %79, i32 0, i32 6
  store i32 0, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %167

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %43, %86
  %88 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %89 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 59
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %95 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %97 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 60
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %87
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  call void @set_bottom_pointers(%struct.jpeg_decompress_struct* noundef %104)
  br label %105

105:                                              ; preds = %103, %87
  %106 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %107 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %106, i32 0, i32 6
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %43, %105
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 76
  %111 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %111, i32 0, i32 1
  %113 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %112, align 8
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %115 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %116 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %115, i32 0, i32 4
  %117 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %118 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i8***], [2 x i8***]* %116, i64 0, i64 %120
  %122 = load i8***, i8**** %121, align 8
  %123 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %124 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %123, i32 0, i32 3
  %125 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %126 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load i8**, i8*** %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %8, align 4
  call void %113(%struct.jpeg_decompress_struct* noundef %114, i8*** noundef %122, i32* noundef %124, i32 noundef %127, i8** noundef %128, i32* noundef %129, i32 noundef %130)
  %131 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %132 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %135 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %108
  br label %167

139:                                              ; preds = %108
  %140 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %141 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  call void @set_wraparound_pointers(%struct.jpeg_decompress_struct* noundef %145)
  br label %146

146:                                              ; preds = %144, %139
  %147 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %148 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = xor i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %152 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %151, i32 0, i32 2
  store i32 0, i32* %152, align 8
  %153 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %154 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %153, i32 0, i32 59
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %158 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %160 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %159, i32 0, i32 59
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 2
  %163 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %164 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 8
  %165 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %166 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %165, i32 0, i32 6
  store i32 2, i32* %166, align 4
  br label %167

167:                                              ; preds = %35, %77, %85, %138, %146, %43
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @make_funny_pointers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_main_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jpeg_component_info*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 74
  %14 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %13, align 8
  %15 = bitcast %struct.jpeg_d_main_controller* %14 to %struct.my_main_controller*
  store %struct.my_main_controller* %15, %struct.my_main_controller** %3, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 59
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 43
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %8, align 8
  br label %22

22:                                               ; preds = %151, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %156

28:                                               ; preds = %22
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %30 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 59
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %41 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %40, i32 0, i32 4
  %42 = getelementptr inbounds [2 x i8***], [2 x i8***]* %41, i64 0, i64 0
  %43 = load i8***, i8**** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8**, i8*** %43, i64 %45
  %47 = load i8**, i8*** %46, align 8
  store i8** %47, i8*** %10, align 8
  %48 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %49 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %48, i32 0, i32 4
  %50 = getelementptr inbounds [2 x i8***], [2 x i8***]* %49, i64 0, i64 1
  %51 = load i8***, i8**** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8**, i8*** %51, i64 %53
  %55 = load i8**, i8*** %54, align 8
  store i8** %55, i8*** %11, align 8
  %56 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %57 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %56, i32 0, i32 1
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x i8**], [10 x i8**]* %57, i64 0, i64 %59
  %61 = load i8**, i8*** %60, align 8
  store i8** %61, i8*** %9, align 8
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %83, %28
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 2
  %67 = mul nsw i32 %64, %66
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load i8**, i8*** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %11, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  %79 = load i8**, i8*** %10, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %74, i8** %82, align 8
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %62, !llvm.loop !7

86:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %129, %86
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 %89, 2
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %132

92:                                               ; preds = %87
  %93 = load i8**, i8*** %9, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %93, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i8**, i8*** %11, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, 2
  %106 = mul nsw i32 %103, %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %102, i64 %109
  store i8* %101, i8** %110, align 8
  %111 = load i8**, i8*** %9, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, 2
  %115 = mul nsw i32 %112, %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %111, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %11, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %121, i64 %127
  store i8* %120, i8** %128, align 8
  br label %129

129:                                              ; preds = %92
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %87, !llvm.loop !8

132:                                              ; preds = %87
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %147, %132
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = load i8**, i8*** %10, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i8**, i8*** %10, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %141, i64 %145
  store i8* %140, i8** %146, align 8
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %133, !llvm.loop !9

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  %154 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %155 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %154, i32 1
  store %struct.jpeg_component_info* %155, %struct.jpeg_component_info** %8, align 8
  br label %22, !llvm.loop !10

156:                                              ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.my_main_controller*, align 8
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 74
  %13 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %12, align 8
  %14 = bitcast %struct.jpeg_d_main_controller* %13 to %struct.my_main_controller*
  store %struct.my_main_controller* %14, %struct.my_main_controller** %9, align 8
  %15 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %16 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 75
  %22 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %22, i32 0, i32 3
  %24 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %23, align 8
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %26 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %27 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %26, i32 0, i32 1
  %28 = getelementptr inbounds [10 x i8**], [10 x i8**]* %27, i64 0, i64 0
  %29 = call i32 %24(%struct.jpeg_decompress_struct* noundef %25, i8*** noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %64

32:                                               ; preds = %19
  %33 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %34 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 59
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 76
  %41 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %41, i32 0, i32 1
  %43 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %42, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %45 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %46 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %45, i32 0, i32 1
  %47 = getelementptr inbounds [10 x i8**], [10 x i8**]* %46, i64 0, i64 0
  %48 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %49 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %48, i32 0, i32 3
  %50 = load i32, i32* %10, align 4
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %8, align 4
  call void %43(%struct.jpeg_decompress_struct* noundef %44, i8*** noundef %47, i32* noundef %49, i32 noundef %50, i8** noundef %51, i32* noundef %52, i32 noundef %53)
  %54 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %55 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %35
  %60 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %61 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.my_main_controller*, %struct.my_main_controller** %9, align 8
  %63 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %31, %59, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_crank_post(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 76
  %11 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %11, i32 0, i32 1
  %13 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %12, align 8
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  call void %13(%struct.jpeg_decompress_struct* noundef %14, i8*** noundef null, i32* noundef null, i32 noundef 0, i8** noundef %15, i32* noundef %16, i32 noundef %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_bottom_pointers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_main_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jpeg_component_info*, align 8
  %10 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 74
  %13 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %12, align 8
  %14 = bitcast %struct.jpeg_d_main_controller* %13 to %struct.my_main_controller*
  store %struct.my_main_controller* %14, %struct.my_main_controller** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 43
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %16, align 8
  store %struct.jpeg_component_info* %17, %struct.jpeg_component_info** %9, align 8
  br label %18

18:                                               ; preds = %92, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %18
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 59
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %56 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %59 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %58, i32 0, i32 4
  %60 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %61 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i8***], [2 x i8***]* %59, i64 0, i64 %63
  %65 = load i8***, i8**** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8**, i8*** %65, i64 %67
  %69 = load i8**, i8*** %68, align 8
  store i8** %69, i8*** %10, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %88, %57
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %72, 2
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load i8**, i8*** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %10, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %82, i64 %86
  store i8* %81, i8** %87, align 8
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %70, !llvm.loop !11

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 1
  store %struct.jpeg_component_info* %96, %struct.jpeg_component_info** %9, align 8
  br label %18, !llvm.loop !12

97:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_wraparound_pointers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_main_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jpeg_component_info*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 74
  %13 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %12, align 8
  %14 = bitcast %struct.jpeg_d_main_controller* %13 to %struct.my_main_controller*
  store %struct.my_main_controller* %14, %struct.my_main_controller** %3, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 59
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 43
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %19, align 8
  store %struct.jpeg_component_info* %20, %struct.jpeg_component_info** %8, align 8
  br label %21

21:                                               ; preds = %124, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %129

27:                                               ; preds = %21
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 59
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %40 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %39, i32 0, i32 4
  %41 = getelementptr inbounds [2 x i8***], [2 x i8***]* %40, i64 0, i64 0
  %42 = load i8***, i8**** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8**, i8*** %42, i64 %44
  %46 = load i8**, i8*** %45, align 8
  store i8** %46, i8*** %9, align 8
  %47 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %48 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %47, i32 0, i32 4
  %49 = getelementptr inbounds [2 x i8***], [2 x i8***]* %48, i64 0, i64 1
  %50 = load i8***, i8**** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8**, i8*** %50, i64 %52
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %10, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %120, %27
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %55
  %60 = load i8**, i8*** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %61, %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %60, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %70, i64 %74
  store i8* %69, i8** %75, align 8
  %76 = load i8**, i8*** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %77, %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %76, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %10, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %86, i64 %90
  store i8* %85, i8** %91, align 8
  %92 = load i8**, i8*** %9, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 2
  %101 = mul nsw i32 %98, %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %97, i64 %104
  store i8* %96, i8** %105, align 8
  %106 = load i8**, i8*** %10, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %10, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 2
  %115 = mul nsw i32 %112, %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %111, i64 %118
  store i8* %110, i8** %119, align 8
  br label %120

120:                                              ; preds = %59
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %55, !llvm.loop !13

123:                                              ; preds = %55
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %128 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i32 1
  store %struct.jpeg_component_info* %128, %struct.jpeg_component_info** %8, align 8
  br label %21, !llvm.loop !14

129:                                              ; preds = %21
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
