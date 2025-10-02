; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdtrans.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jvirt_barray_control = type opaque
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
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
define dso_local %struct.jvirt_barray_control** @jpeg_read_coefficients(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jvirt_barray_control**, align 8
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 202
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @transdecode_master_selection(%struct.jpeg_decompress_struct* noundef %10)
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 4
  store i32 209, i32* %12, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 209
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 18, i32* %22, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 6
  %30 = bitcast %union.anon* %29 to [8 x i32]*
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 0
  store i32 %25, i32* %31, align 4
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %38)
  br label %39

39:                                               ; preds = %18, %13
  br label %40

40:                                               ; preds = %39, %9
  br label %41

41:                                               ; preds = %106, %40
  %42 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %42, i32 0, i32 2
  %44 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %43, align 8
  %45 = icmp ne %struct.jpeg_progress_mgr* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 2
  %49 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %49, i32 0, i32 0
  %51 = bitcast {}** %50 to void (%struct.jpeg_common_struct*)**
  %52 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %51, align 8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = bitcast %struct.jpeg_decompress_struct* %53 to %struct.jpeg_common_struct*
  call void %52(%struct.jpeg_common_struct* noundef %54)
  br label %55

55:                                               ; preds = %46, %41
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 77
  %58 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %58, i32 0, i32 0
  %60 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %59, align 8
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %62 = call i32 %60(%struct.jpeg_decompress_struct* noundef %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store %struct.jvirt_barray_control** null, %struct.jvirt_barray_control*** %2, align 8
  br label %115

66:                                               ; preds = %55
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %107

70:                                               ; preds = %66
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 2
  %73 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %72, align 8
  %74 = icmp ne %struct.jpeg_progress_mgr* %73, null
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %106

81:                                               ; preds = %78, %75
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 2
  %84 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %83, align 8
  %85 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 2
  %90 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %89, align 8
  %91 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %87, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %81
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 60
  %97 = load i32, i32* %96, align 8
  %98 = zext i32 %97 to i64
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 2
  %101 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %98
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %94, %81
  br label %106

106:                                              ; preds = %105, %78, %70
  br label %41

107:                                              ; preds = %69
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 4
  store i32 210, i32* %109, align 4
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 75
  %112 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %111, align 8
  %113 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %112, i32 0, i32 4
  %114 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %113, align 8
  store %struct.jvirt_barray_control** %114, %struct.jvirt_barray_control*** %2, align 8
  br label %115

115:                                              ; preds = %107, %65
  %116 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %2, align 8
  ret %struct.jvirt_barray_control** %116
}

; Function Attrs: noinline nounwind uwtable
define internal void @transdecode_master_selection(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 45
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 1, i32* %12, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %19)
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 44
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef %26)
  br label %29

27:                                               ; preds = %20
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef %28)
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef %31, i32 noundef 1)
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i32 0, i32 6
  %36 = bitcast {}** %35 to void (%struct.jpeg_common_struct*)**
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %36, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* noundef %39)
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 77
  %42 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %42, i32 0, i32 2
  %44 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %43, align 8
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %44(%struct.jpeg_decompress_struct* noundef %45)
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 2
  %48 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %47, align 8
  %49 = icmp ne %struct.jpeg_progress_mgr* %48, null
  br i1 %49, label %50, label %98

50:                                               ; preds = %30
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 44
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 3, %58
  %60 = add nsw i32 2, %59
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %50
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 77
  %64 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 2
  %77 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %76, align 8
  %78 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 60
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %82, %84
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 2
  %88 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %87, align 8
  %89 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %88, i32 0, i32 2
  store i64 %85, i64* %89, align 8
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 2
  %92 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %91, align 8
  %93 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %92, i32 0, i32 3
  store i32 0, i32* %93, align 8
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 2
  %96 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %95, align 8
  %97 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %96, i32 0, i32 4
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %74, %30
  ret void
}

declare dso_local void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
