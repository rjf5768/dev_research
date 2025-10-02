; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdinput.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdinput.c"
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
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_input_controller(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 0, i64 noundef 48)
  %12 = bitcast i8* %11 to %struct.my_input_controller*
  store %struct.my_input_controller* %12, %struct.my_input_controller** %3, align 8
  %13 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %14 = bitcast %struct.my_input_controller* %13 to %struct.jpeg_input_controller*
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 77
  store %struct.jpeg_input_controller* %14, %struct.jpeg_input_controller** %16, align 8
  %17 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %18 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %18, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %19, align 8
  %20 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %21 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %21, i32 0, i32 1
  %23 = bitcast {}** %22 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @reset_input_controller, void (%struct.jpeg_decompress_struct*)** %23, align 8
  %24 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %25 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %25, i32 0, i32 2
  %27 = bitcast {}** %26 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %27, align 8
  %28 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %29 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %29, i32 0, i32 3
  %31 = bitcast {}** %30 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_input_pass, void (%struct.jpeg_decompress_struct*)** %31, align 8
  %32 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %33 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %33, i32 0, i32 4
  store i32 0, i32* %34, align 8
  %35 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %36 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %36, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %39 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @consume_markers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.my_input_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 77
  %8 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %7, align 8
  %9 = bitcast %struct.jpeg_input_controller* %8 to %struct.my_input_controller*
  store %struct.my_input_controller* %9, %struct.my_input_controller** %4, align 8
  %10 = load %struct.my_input_controller*, %struct.my_input_controller** %4, align 8
  %11 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 78
  %19 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %19, i32 0, i32 1
  %21 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %20, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = call i32 %21(%struct.jpeg_decompress_struct* noundef %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %100 [
    i32 1, label %25
    i32 2, label %55
    i32 0, label %99
  ]

25:                                               ; preds = %16
  %26 = load %struct.my_input_controller*, %struct.my_input_controller** %4, align 8
  %27 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @initial_setup(%struct.jpeg_decompress_struct* noundef %31)
  %32 = load %struct.my_input_controller*, %struct.my_input_controller** %4, align 8
  %33 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  br label %54

34:                                               ; preds = %25
  %35 = load %struct.my_input_controller*, %struct.my_input_controller** %4, align 8
  %36 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i32 0, i32 5
  store i32 34, i32* %44, align 8
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %45, i32 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i32 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %48, align 8
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %51 = bitcast %struct.jpeg_decompress_struct* %50 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* noundef %51)
  br label %52

52:                                               ; preds = %40, %34
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @start_input_pass(%struct.jpeg_decompress_struct* noundef %53)
  br label %54

54:                                               ; preds = %52, %30
  br label %100

55:                                               ; preds = %16
  %56 = load %struct.my_input_controller*, %struct.my_input_controller** %4, align 8
  %57 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %57, i32 0, i32 5
  store i32 1, i32* %58, align 4
  %59 = load %struct.my_input_controller*, %struct.my_input_controller** %4, align 8
  %60 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 78
  %66 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 5
  store i32 58, i32* %74, align 8
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %76, align 8
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 0
  %79 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %78, align 8
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %81 = bitcast %struct.jpeg_decompress_struct* %80 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* noundef %81)
  br label %82

82:                                               ; preds = %70, %63
  br label %98

83:                                               ; preds = %55
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 36
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 34
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 34
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 36
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %83
  br label %98

98:                                               ; preds = %97, %82
  br label %100

99:                                               ; preds = %16
  br label %100

100:                                              ; preds = %16, %99, %98, %54
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %15
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_input_controller(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_input_controller*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 77
  %6 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %5, align 8
  %7 = bitcast %struct.jpeg_input_controller* %6 to %struct.my_input_controller*
  store %struct.my_input_controller* %7, %struct.my_input_controller** %3, align 8
  %8 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %9 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %9, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %12 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %12, i32 0, i32 4
  store i32 0, i32* %13, align 8
  %14 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %15 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %15, i32 0, i32 5
  store i32 0, i32* %16, align 4
  %17 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %18 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %17, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 4
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %24 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %25)
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 78
  %28 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to void (%struct.jpeg_decompress_struct*)**
  %31 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %30, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %31(%struct.jpeg_decompress_struct* noundef %32)
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 38
  store [64 x i32]* null, [64 x i32]** %34, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @per_scan_setup(%struct.jpeg_decompress_struct* noundef %3)
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @latch_quant_tables(%struct.jpeg_decompress_struct* noundef %4)
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 79
  %7 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to void (%struct.jpeg_decompress_struct*)**
  %10 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %9, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %10(%struct.jpeg_decompress_struct* noundef %11)
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 75
  %14 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to void (%struct.jpeg_decompress_struct*)**
  %17 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %16, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %17(%struct.jpeg_decompress_struct* noundef %18)
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 75
  %21 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %21, i32 0, i32 1
  %23 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %22, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 77
  %26 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %26, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* %23, i32 (%struct.jpeg_decompress_struct*)** %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 77
  %5 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %5, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initial_setup(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp sgt i64 %8, 65500
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = icmp sgt i64 %14, 65500
  br i1 %15, label %16, label %34

16:                                               ; preds = %10, %1
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 40, i32* %20, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to [8 x i32]*
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 65500, i32* %26, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %30, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* noundef %33)
  br label %34

34:                                               ; preds = %16, %10
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 42
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 8
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 13, i32* %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 42
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 6
  %51 = bitcast %union.anon* %50 to [8 x i32]*
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %51, i64 0, i64 0
  store i32 %46, i32* %52, align 4
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %57 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %56, align 8
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %59 = bitcast %struct.jpeg_decompress_struct* %58 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* noundef %59)
  br label %60

60:                                               ; preds = %39, %34
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 10
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 5
  store i32 24, i32* %69, align 8
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %74, align 8
  %76 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 6
  %77 = bitcast %union.anon* %76 to [8 x i32]*
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %77, i64 0, i64 0
  store i32 %72, i32* %78, align 4
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 6
  %83 = bitcast %union.anon* %82 to [8 x i32]*
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %83, i64 0, i64 1
  store i32 10, i32* %84, align 4
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 0
  %89 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %88, align 8
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %91 = bitcast %struct.jpeg_decompress_struct* %90 to %struct.jpeg_common_struct*
  call void %89(%struct.jpeg_common_struct* noundef %91)
  br label %92

92:                                               ; preds = %65, %60
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 57
  store i32 1, i32* %94, align 4
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 58
  store i32 1, i32* %96, align 8
  store i32 0, i32* %3, align 4
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 43
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %98, align 8
  store %struct.jpeg_component_info* %99, %struct.jpeg_component_info** %4, align 8
  br label %100

100:                                              ; preds = %177, %92
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %182

106:                                              ; preds = %100
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %106
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 4
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %118 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 4
  br i1 %125, label %126, label %138

126:                                              ; preds = %121, %116, %111, %106
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 5
  store i32 16, i32* %130, align 8
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %132, align 8
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i32 0, i32 0
  %135 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %134, align 8
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %137 = bitcast %struct.jpeg_decompress_struct* %136 to %struct.jpeg_common_struct*
  call void %135(%struct.jpeg_common_struct* noundef %137)
  br label %138

138:                                              ; preds = %126, %121
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %140 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %139, i32 0, i32 57
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %147, i32 0, i32 57
  %149 = load i32, i32* %148, align 4
  br label %154

150:                                              ; preds = %138
  %151 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %152 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %149, %146 ], [ %153, %150 ]
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 57
  store i32 %155, i32* %157, align 4
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 58
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %162 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %154
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %167 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 58
  %168 = load i32, i32* %167, align 8
  br label %173

169:                                              ; preds = %154
  %170 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %171 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %168, %165 ], [ %172, %169 ]
  %175 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %176 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %175, i32 0, i32 58
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  %180 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %181 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %180, i32 1
  store %struct.jpeg_component_info* %181, %struct.jpeg_component_info** %4, align 8
  br label %100, !llvm.loop !4

182:                                              ; preds = %100
  %183 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %184 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %183, i32 0, i32 59
  store i32 8, i32* %184, align 4
  store i32 0, i32* %3, align 4
  %185 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %186 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %185, i32 0, i32 43
  %187 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %186, align 8
  store %struct.jpeg_component_info* %187, %struct.jpeg_component_info** %4, align 8
  br label %188

188:                                              ; preds = %271, %182
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %276

194:                                              ; preds = %188
  %195 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %196 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %195, i32 0, i32 9
  store i32 8, i32* %196, align 4
  %197 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = zext i32 %199 to i64
  %201 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %202 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %200, %204
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %207 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 57
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %208, 8
  %210 = sext i32 %209 to i64
  %211 = call i64 @jdiv_round_up(i64 noundef %205, i64 noundef %210)
  %212 = trunc i64 %211 to i32
  %213 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %214 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %213, i32 0, i32 7
  store i32 %212, i32* %214, align 4
  %215 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %216 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = zext i32 %217 to i64
  %219 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %220 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = mul nsw i64 %218, %222
  %224 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %225 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %224, i32 0, i32 58
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 %226, 8
  %228 = sext i32 %227 to i64
  %229 = call i64 @jdiv_round_up(i64 noundef %223, i64 noundef %228)
  %230 = trunc i64 %229 to i32
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %232 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  %233 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %234 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = zext i32 %235 to i64
  %237 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %238 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %236, %240
  %242 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %243 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %242, i32 0, i32 57
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = call i64 @jdiv_round_up(i64 noundef %241, i64 noundef %245)
  %247 = trunc i64 %246 to i32
  %248 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %249 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %248, i32 0, i32 10
  store i32 %247, i32* %249, align 8
  %250 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %251 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  %254 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %255 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = mul nsw i64 %253, %257
  %259 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %260 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %259, i32 0, i32 58
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = call i64 @jdiv_round_up(i64 noundef %258, i64 noundef %262)
  %264 = trunc i64 %263 to i32
  %265 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %266 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %265, i32 0, i32 11
  store i32 %264, i32* %266, align 4
  %267 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %268 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %267, i32 0, i32 12
  store i32 1, i32* %268, align 8
  %269 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %270 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %269, i32 0, i32 19
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %270, align 8
  br label %271

271:                                              ; preds = %194
  %272 = load i32, i32* %3, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %3, align 4
  %274 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %275 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %274, i32 1
  store %struct.jpeg_component_info* %275, %struct.jpeg_component_info** %4, align 8
  br label %188, !llvm.loop !6

276:                                              ; preds = %188
  %277 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %278 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  %281 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %282 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %281, i32 0, i32 58
  %283 = load i32, i32* %282, align 8
  %284 = mul nsw i32 %283, 8
  %285 = sext i32 %284 to i64
  %286 = call i64 @jdiv_round_up(i64 noundef %280, i64 noundef %285)
  %287 = trunc i64 %286 to i32
  %288 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %289 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %288, i32 0, i32 60
  store i32 %287, i32* %289, align 8
  %290 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %291 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %290, i32 0, i32 62
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %294 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %302, label %297

297:                                              ; preds = %276
  %298 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %299 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %298, i32 0, i32 44
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297, %276
  %303 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %304 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %303, i32 0, i32 77
  %305 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %304, align 8
  %306 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %305, i32 0, i32 4
  store i32 1, i32* %306, align 8
  br label %312

307:                                              ; preds = %297
  %308 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %309 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %308, i32 0, i32 77
  %310 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %309, align 8
  %311 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %310, i32 0, i32 4
  store i32 0, i32* %311, align 8
  br label %312

312:                                              ; preds = %307, %302
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @per_scan_setup(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 62
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %61

11:                                               ; preds = %1
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 63
  %14 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %13, i64 0, i64 0
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %14, align 8
  store %struct.jpeg_component_info* %15, %struct.jpeg_component_info** %6, align 8
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 64
  store i32 %18, i32* %20, align 8
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %22 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 65
  store i32 %23, i32* %25, align 4
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 13
  store i32 1, i32* %27, align 4
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 14
  store i32 1, i32* %29, align 8
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 15
  store i32 1, i32* %31, align 4
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 16
  store i32 %34, i32* %36, align 8
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 17
  store i32 1, i32* %38, align 4
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = urem i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %11
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %11
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 18
  store i32 %53, i32* %55, align 8
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 66
  store i32 1, i32* %57, align 8
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 67
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %59, i64 0, i64 0
  store i32 0, i32* %60, align 4
  br label %243

61:                                               ; preds = %1
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 62
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 62
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 4
  br i1 %70, label %71, label %98

71:                                               ; preds = %66, %61
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i32 0, i32 5
  store i32 24, i32* %75, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 62
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 6
  %83 = bitcast %union.anon* %82 to [8 x i32]*
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %83, i64 0, i64 0
  store i32 %78, i32* %84, align 4
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 6
  %89 = bitcast %union.anon* %88 to [8 x i32]*
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %89, i64 0, i64 1
  store i32 4, i32* %90, align 4
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 0
  %93 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %92, align 8
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %93, i32 0, i32 0
  %95 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %94, align 8
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %97 = bitcast %struct.jpeg_decompress_struct* %96 to %struct.jpeg_common_struct*
  call void %95(%struct.jpeg_common_struct* noundef %97)
  br label %98

98:                                               ; preds = %71, %66
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = zext i32 %101 to i64
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 57
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 8
  %107 = sext i32 %106 to i64
  %108 = call i64 @jdiv_round_up(i64 noundef %102, i64 noundef %107)
  %109 = trunc i64 %108 to i32
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 64
  store i32 %109, i32* %111, align 8
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 58
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 8
  %120 = sext i32 %119 to i64
  %121 = call i64 @jdiv_round_up(i64 noundef %115, i64 noundef %120)
  %122 = trunc i64 %121 to i32
  %123 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %123, i32 0, i32 65
  store i32 %122, i32* %124, align 4
  %125 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %125, i32 0, i32 66
  store i32 0, i32* %126, align 8
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %239, %98
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 62
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %242

133:                                              ; preds = %127
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 63
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %135, i64 0, i64 %137
  %139 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %138, align 8
  store %struct.jpeg_component_info* %139, %struct.jpeg_component_info** %6, align 8
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %141 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %144 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i32 0, i32 13
  store i32 %142, i32* %144, align 4
  %145 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %146 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %149 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %148, i32 0, i32 14
  store i32 %147, i32* %149, align 8
  %150 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %151 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %153, i32 0, i32 14
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  %157 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %158 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %157, i32 0, i32 15
  store i32 %156, i32* %158, align 4
  %159 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %160 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %163 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %167 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %166, i32 0, i32 16
  store i32 %165, i32* %167, align 8
  %168 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %169 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %172 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 4
  %174 = urem i32 %170, %173
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %133
  %178 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %179 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %133
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %184 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %183, i32 0, i32 17
  store i32 %182, i32* %184, align 4
  %185 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %189 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %188, i32 0, i32 14
  %190 = load i32, i32* %189, align 8
  %191 = urem i32 %187, %190
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %181
  %195 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %196 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %194, %181
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %201 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %200, i32 0, i32 18
  store i32 %199, i32* %201, align 8
  %202 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %203 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %202, i32 0, i32 15
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %4, align 4
  %205 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %205, i32 0, i32 66
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %207, %208
  %210 = icmp sgt i32 %209, 10
  br i1 %210, label %211, label %223

211:                                              ; preds = %198
  %212 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %213 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %212, i32 0, i32 0
  %214 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %213, align 8
  %215 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %214, i32 0, i32 5
  store i32 11, i32* %215, align 8
  %216 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %217 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %216, i32 0, i32 0
  %218 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %217, align 8
  %219 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %218, i32 0, i32 0
  %220 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %219, align 8
  %221 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %222 = bitcast %struct.jpeg_decompress_struct* %221 to %struct.jpeg_common_struct*
  call void %220(%struct.jpeg_common_struct* noundef %222)
  br label %223

223:                                              ; preds = %211, %198
  br label %224

224:                                              ; preds = %228, %223
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %4, align 4
  %227 = icmp sgt i32 %225, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %230, i32 0, i32 67
  %232 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %233 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %232, i32 0, i32 66
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds [10 x i32], [10 x i32]* %231, i64 0, i64 %236
  store i32 %229, i32* %237, align 4
  br label %224, !llvm.loop !7

238:                                              ; preds = %224
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %127, !llvm.loop !8

242:                                              ; preds = %127
  br label %243

243:                                              ; preds = %242, %52
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @latch_quant_tables(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_component_info*, align 8
  %6 = alloca %struct.JQUANT_TBL*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %83, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 62
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %7
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 63
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %15, i64 0, i64 %17
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %18, align 8
  store %struct.jpeg_component_info* %19, %struct.jpeg_component_info** %5, align 8
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %20, i32 0, i32 19
  %22 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %21, align 8
  %23 = icmp ne %struct.JQUANT_TBL* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %83

25:                                               ; preds = %13
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 39
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %36, i64 0, i64 %38
  %40 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %39, align 8
  %41 = icmp eq %struct.JQUANT_TBL* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %34, %31, %25
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 51, i32* %46, align 8
  %47 = load i32, i32* %4, align 4
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
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i32 0, i32 0
  %58 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %57, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %60 = bitcast %struct.jpeg_decompress_struct* %59 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* noundef %60)
  br label %61

61:                                               ; preds = %42, %34
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 1
  %64 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %64, i32 0, i32 0
  %66 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %65, align 8
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %68 = bitcast %struct.jpeg_decompress_struct* %67 to %struct.jpeg_common_struct*
  %69 = call i8* %66(%struct.jpeg_common_struct* noundef %68, i32 noundef 1, i64 noundef 132)
  %70 = bitcast i8* %69 to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %70, %struct.JQUANT_TBL** %6, align 8
  %71 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %6, align 8
  %72 = bitcast %struct.JQUANT_TBL* %71 to i8*
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 39
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %74, i64 0, i64 %76
  %78 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %77, align 8
  %79 = bitcast %struct.JQUANT_TBL* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %72, i8* align 1 %79, i64 132, i1 false)
  %80 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %6, align 8
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 19
  store %struct.JQUANT_TBL* %80, %struct.JQUANT_TBL** %82, align 8
  br label %83

83:                                               ; preds = %61, %24
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %7, !llvm.loop !9

86:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
