; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdpostct.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdpostct.c"
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
%struct.my_post_controller = type { %struct.jpeg_d_post_controller, %struct.jvirt_sarray_control*, i8**, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_d_post_controller(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i32 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %9, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  %13 = call i8* %10(%struct.jpeg_common_struct* noundef %12, i32 noundef 1, i64 noundef 48)
  %14 = bitcast i8* %13 to %struct.my_post_controller*
  store %struct.my_post_controller* %14, %struct.my_post_controller** %5, align 8
  %15 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %16 = bitcast %struct.my_post_controller* %15 to %struct.jpeg_d_post_controller*
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 76
  store %struct.jpeg_d_post_controller* %16, %struct.jpeg_d_post_controller** %18, align 8
  %19 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %20, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_dpost, void (%struct.jpeg_decompress_struct*, i32)** %21, align 8
  %22 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %23 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %22, i32 0, i32 1
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %23, align 8
  %24 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %25 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %24, i32 0, i32 2
  store i8** null, i8*** %25, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 19
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %2
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 58
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %35 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %30
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 1
  %41 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %41, i32 0, i32 4
  %43 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %42, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %45 = bitcast %struct.jpeg_decompress_struct* %44 to %struct.jpeg_common_struct*
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 26
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 28
  %51 = load i32, i32* %50, align 8
  %52 = mul i32 %48, %51
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 27
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %58 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = zext i32 %59 to i64
  %61 = call i64 @jround_up(i64 noundef %56, i64 noundef %60)
  %62 = trunc i64 %61 to i32
  %63 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %64 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.jvirt_sarray_control* %43(%struct.jpeg_common_struct* noundef %45, i32 noundef 1, i32 noundef 0, i32 noundef %52, i32 noundef %62, i32 noundef %65)
  %67 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %68 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %67, i32 0, i32 1
  store %struct.jvirt_sarray_control* %66, %struct.jvirt_sarray_control** %68, align 8
  br label %90

69:                                               ; preds = %30
  %70 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %70, i32 0, i32 1
  %72 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %71, align 8
  %73 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %72, i32 0, i32 2
  %74 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %73, align 8
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %76 = bitcast %struct.jpeg_decompress_struct* %75 to %struct.jpeg_common_struct*
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 26
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 28
  %82 = load i32, i32* %81, align 8
  %83 = mul i32 %79, %82
  %84 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %85 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i8** %74(%struct.jpeg_common_struct* noundef %76, i32 noundef 1, i32 noundef %83, i32 noundef %86)
  %88 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %89 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %88, i32 0, i32 2
  store i8** %87, i8*** %89, align 8
  br label %90

90:                                               ; preds = %69, %38
  br label %91

91:                                               ; preds = %90, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_dpost(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_post_controller*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 76
  %8 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %7, align 8
  %9 = bitcast %struct.jpeg_d_post_controller* %8 to %struct.my_post_controller*
  store %struct.my_post_controller* %9, %struct.my_post_controller** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %94 [
    i32 0, label %11
    i32 3, label %52
    i32 2, label %73
  ]

11:                                               ; preds = %2
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 19
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %18 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %18, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_1pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %19, align 8
  %20 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %21 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %20, i32 0, i32 2
  %22 = load i8**, i8*** %21, align 8
  %23 = icmp eq i8** %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %16
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 1
  %27 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %27, i32 0, i32 7
  %29 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %28, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %30 to %struct.jpeg_common_struct*
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %33 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 1
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %33, align 8
  %35 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %36 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i8** %29(%struct.jpeg_common_struct* noundef %31, %struct.jvirt_sarray_control* noundef %34, i32 noundef 0, i32 noundef %37, i32 noundef 1)
  %39 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %40 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %39, i32 0, i32 2
  store i8** %38, i8*** %40, align 8
  br label %41

41:                                               ; preds = %24, %16
  br label %51

42:                                               ; preds = %11
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 81
  %45 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %45, i32 0, i32 1
  %47 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %46, align 8
  %48 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %49 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %49, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* %47, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %50, align 8
  br label %51

51:                                               ; preds = %42, %41
  br label %106

52:                                               ; preds = %2
  %53 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %54 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %53, i32 0, i32 1
  %55 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %54, align 8
  %56 = icmp eq %struct.jvirt_sarray_control* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %59, align 8
  %61 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 5
  store i32 4, i32* %61, align 8
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %66 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %65, align 8
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %68 = bitcast %struct.jpeg_decompress_struct* %67 to %struct.jpeg_common_struct*
  call void %66(%struct.jpeg_common_struct* noundef %68)
  br label %69

69:                                               ; preds = %57, %52
  %70 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %71 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %71, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_prepass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %72, align 8
  br label %106

73:                                               ; preds = %2
  %74 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %75 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %74, i32 0, i32 1
  %76 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %75, align 8
  %77 = icmp eq %struct.jvirt_sarray_control* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 4, i32* %82, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 0
  %87 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %86, align 8
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %89 = bitcast %struct.jpeg_decompress_struct* %88 to %struct.jpeg_common_struct*
  call void %87(%struct.jpeg_common_struct* noundef %89)
  br label %90

90:                                               ; preds = %78, %73
  %91 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %92 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %92, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_2pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %93, align 8
  br label %106

94:                                               ; preds = %2
  %95 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %95, i32 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %96, align 8
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i32 0, i32 5
  store i32 4, i32* %98, align 8
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 0
  %101 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %101, i32 0, i32 0
  %103 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %102, align 8
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %105 = bitcast %struct.jpeg_decompress_struct* %104 to %struct.jpeg_common_struct*
  call void %103(%struct.jpeg_common_struct* noundef %105)
  br label %106

106:                                              ; preds = %94, %90, %69, %51
  %107 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %108 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %107, i32 0, i32 5
  store i32 0, i32* %108, align 8
  %109 = load %struct.my_post_controller*, %struct.my_post_controller** %5, align 8
  %110 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %109, i32 0, i32 4
  store i32 0, i32* %110, align 4
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @post_process_1pass(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_decompress_struct*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_post_controller*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 76
  %20 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %19, align 8
  %21 = bitcast %struct.jpeg_d_post_controller* %20 to %struct.my_post_controller*
  store %struct.my_post_controller* %21, %struct.my_post_controller** %15, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %22, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %28 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %33 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %31, %7
  store i32 0, i32* %16, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 81
  %38 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %38, i32 0, i32 1
  %40 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %39, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %42 = load i8***, i8**** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %46 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %45, i32 0, i32 2
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %17, align 4
  call void %40(%struct.jpeg_decompress_struct* noundef %41, i8*** noundef %42, i32* noundef %43, i32 noundef %44, i8** noundef %47, i32* noundef %16, i32 noundef %48)
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 83
  %51 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %51, i32 0, i32 1
  %53 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %52, align 8
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %55 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %56 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i8**, i8*** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i32, i32* %16, align 4
  call void %53(%struct.jpeg_decompress_struct* noundef %54, i8** noundef %57, i8** noundef %62, i32 noundef %63)
  %64 = load i32, i32* %16, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, %64
  store i32 %67, i32* %65, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @post_process_prepass(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_decompress_struct*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_post_controller*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 76
  %20 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %19, align 8
  %21 = bitcast %struct.jpeg_d_post_controller* %20 to %struct.my_post_controller*
  store %struct.my_post_controller* %21, %struct.my_post_controller** %15, align 8
  %22 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %23 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %7
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 7
  %31 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %30, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %35 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 1
  %36 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %35, align 8
  %37 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %38 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %41 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i8** %31(%struct.jpeg_common_struct* noundef %33, %struct.jvirt_sarray_control* noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef 1)
  %44 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %45 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %44, i32 0, i32 2
  store i8** %43, i8*** %45, align 8
  br label %46

46:                                               ; preds = %26, %7
  %47 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %48 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %16, align 4
  %50 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %50, i32 0, i32 81
  %52 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %52, i32 0, i32 1
  %54 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %53, align 8
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %56 = load i8***, i8**** %9, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %60 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %63 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %62, i32 0, i32 5
  %64 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %65 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  call void %54(%struct.jpeg_decompress_struct* noundef %55, i8*** noundef %56, i32* noundef %57, i32 noundef %58, i8** noundef %61, i32* noundef %63, i32 noundef %66)
  %67 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %68 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %46
  %73 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %74 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %17, align 4
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 83
  %80 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %79, align 8
  %81 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %80, i32 0, i32 1
  %82 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %81, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %84 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %85 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i32, i32* %17, align 4
  call void %82(%struct.jpeg_decompress_struct* noundef %83, i8** noundef %89, i8** noundef null, i32 noundef %90)
  %91 = load i32, i32* %17, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %72, %46
  %96 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %97 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %100 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp uge i32 %98, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  %104 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %105 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %108 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %112 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %111, i32 0, i32 5
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %103, %95
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @post_process_2pass(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_decompress_struct*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_post_controller*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 76
  %20 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %19, align 8
  %21 = bitcast %struct.jpeg_d_post_controller* %20 to %struct.my_post_controller*
  store %struct.my_post_controller* %21, %struct.my_post_controller** %15, align 8
  %22 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %23 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %7
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i32 0, i32 7
  %31 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %30, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  %34 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %35 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %34, i32 0, i32 1
  %36 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %35, align 8
  %37 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %38 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %41 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i8** %31(%struct.jpeg_common_struct* noundef %33, %struct.jvirt_sarray_control* noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef 0)
  %44 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %45 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %44, i32 0, i32 2
  store i8** %43, i8*** %45, align 8
  br label %46

46:                                               ; preds = %26, %7
  %47 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %48 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %51 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = sub i32 %49, %52
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %54, %56
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %61, %46
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 27
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %68 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %66, %69
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %74, %63
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 83
  %79 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %78, align 8
  %80 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %79, i32 0, i32 1
  %81 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %80, align 8
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %83 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %84 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %87 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %85, i64 %89
  %91 = load i8**, i8*** %12, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i32, i32* %16, align 4
  call void %81(%struct.jpeg_decompress_struct* noundef %82, i8** noundef %90, i8** noundef %95, i32 noundef %96)
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %103 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = add i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %107 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %110 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp uge i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %76
  %114 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %115 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %118 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.my_post_controller*, %struct.my_post_controller** %15, align 8
  %122 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %121, i32 0, i32 5
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %113, %76
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
