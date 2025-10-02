; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jddctmgr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jddctmgr.c"
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
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }

@start_pass.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_inverse_dct(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_idct_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i32 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %9, align 8
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %12 = bitcast %struct.jpeg_decompress_struct* %11 to %struct.jpeg_common_struct*
  %13 = call i8* %10(%struct.jpeg_common_struct* noundef %12, i32 noundef 1, i64 noundef 128)
  %14 = bitcast i8* %13 to %struct.my_idct_controller*
  store %struct.my_idct_controller* %14, %struct.my_idct_controller** %3, align 8
  %15 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %16 = bitcast %struct.my_idct_controller* %15 to %struct.jpeg_inverse_dct*
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 80
  store %struct.jpeg_inverse_dct* %16, %struct.jpeg_inverse_dct** %18, align 8
  %19 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %20 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass, void (%struct.jpeg_decompress_struct*)** %22, align 8
  store i32 0, i32* %4, align 4
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 43
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %24, align 8
  store %struct.jpeg_component_info* %25, %struct.jpeg_component_info** %5, align 8
  br label %26

26:                                               ; preds = %51, %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 1
  %35 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %35, i32 0, i32 0
  %37 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %36, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %39 = bitcast %struct.jpeg_decompress_struct* %38 to %struct.jpeg_common_struct*
  %40 = call i8* %37(%struct.jpeg_common_struct* noundef %39, i32 noundef 1, i64 noundef 256)
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 20
  store i8* %40, i8** %42, align 8
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 20
  %45 = load i8*, i8** %44, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %45, i8 0, i64 256, i1 false)
  %46 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %47 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %46, i32 0, i32 1
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %47, i64 0, i64 %49
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 1
  store %struct.jpeg_component_info* %55, %struct.jpeg_component_info** %5, align 8
  br label %26, !llvm.loop !4

56:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_idct_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, align 8
  %9 = alloca %struct.JQUANT_TBL*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 80
  %17 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %16, align 8
  %18 = bitcast %struct.jpeg_inverse_dct* %17 to %struct.my_idct_controller*
  store %struct.my_idct_controller* %18, %struct.my_idct_controller** %3, align 8
  store i32 0, i32* %7, align 4
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* null, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 0, i32* %4, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 43
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %6, align 8
  br label %22

22:                                               ; preds = %228, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %233

28:                                               ; preds = %22
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %30 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %55 [
    i32 1, label %32
    i32 2, label %33
    i32 4, label %34
    i32 8, label %35
  ]

32:                                               ; preds = %28
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_1x1, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 0, i32* %7, align 4
  br label %76

33:                                               ; preds = %28
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_2x2, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 0, i32* %7, align 4
  br label %76

34:                                               ; preds = %28
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_4x4, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 0, i32* %7, align 4
  br label %76

35:                                               ; preds = %28
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %42 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %41
  ]

39:                                               ; preds = %35
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_islow, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 0, i32* %7, align 4
  br label %54

40:                                               ; preds = %35
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_ifast, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 1, i32* %7, align 4
  br label %54

41:                                               ; preds = %35
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* @jpeg_idct_float, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  store i32 2, i32* %7, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 47, i32* %46, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 0
  %51 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %50, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* noundef %53)
  br label %54

54:                                               ; preds = %42, %41, %40, %39
  br label %76

55:                                               ; preds = %28
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 6, i32* %59, align 8
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %61 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %63, i32 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %64, align 8
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %67 = bitcast %union.anon* %66 to [8 x i32]*
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %67, i64 0, i64 0
  store i32 %62, i32* %68, align 4
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %72, align 8
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %75 = bitcast %struct.jpeg_decompress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* noundef %75)
  br label %76

76:                                               ; preds = %55, %54, %34, %33, %32
  %77 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %8, align 8
  %78 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %79 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %79, i32 0, i32 1
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*]* %80, i64 0, i64 %82
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %77, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %83, align 8
  %84 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %85 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %76
  %89 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %90 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %89, i32 0, i32 1
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %90, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %76
  br label %228

98:                                               ; preds = %88
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 19
  %101 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %100, align 8
  store %struct.JQUANT_TBL* %101, %struct.JQUANT_TBL** %9, align 8
  %102 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %9, align 8
  %103 = icmp eq %struct.JQUANT_TBL* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %228

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %108 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %107, i32 0, i32 1
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %108, i64 0, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  switch i32 %112, label %215 [
    i32 0, label %113
    i32 1, label %137
    i32 2, label %170
  ]

113:                                              ; preds = %105
  %114 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %115 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %114, i32 0, i32 20
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %10, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %133, %113
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 64
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %9, align 8
  %123 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %122, i32 0, i32 0
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [64 x i16], [64 x i16]* %123, i64 0, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = zext i16 %127 to i32
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %118, !llvm.loop !6

136:                                              ; preds = %118
  br label %227

137:                                              ; preds = %105
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %139 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %138, i32 0, i32 20
  %140 = load i8*, i8** %139, align 8
  %141 = bitcast i8* %140 to i32*
  store i32* %141, i32** %11, align 8
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %166, %137
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 64
  br i1 %144, label %145, label %169

145:                                              ; preds = %142
  %146 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %9, align 8
  %147 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %146, i32 0, i32 0
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [64 x i16], [64 x i16]* %147, i64 0, i64 %149
  %151 = load i16, i16* %150, align 2
  %152 = zext i16 %151 to i64
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass.aanscales, i64 0, i64 %154
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i64
  %158 = mul nsw i64 %152, %157
  %159 = add nsw i64 %158, 2048
  %160 = ashr i64 %159, 12
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %145
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %142, !llvm.loop !7

169:                                              ; preds = %142
  br label %227

170:                                              ; preds = %105
  %171 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %172 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %171, i32 0, i32 20
  %173 = load i8*, i8** %172, align 8
  %174 = bitcast i8* %173 to float*
  store float* %174, float** %12, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %211, %170
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 8
  br i1 %177, label %178, label %214

178:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %207, %178
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 8
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %9, align 8
  %184 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %183, i32 0, i32 0
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [64 x i16], [64 x i16]* %184, i64 0, i64 %186
  %188 = load i16, i16* %187, align 2
  %189 = uitofp i16 %188 to double
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i64 0, i64 %191
  %193 = load double, double* %192, align 8
  %194 = fmul double %189, %193
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i64 0, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fmul double %194, %198
  %200 = fptrunc double %199 to float
  %201 = load float*, float** %12, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  store float %200, float* %204, align 4
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %182
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %179, !llvm.loop !8

210:                                              ; preds = %179
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %175, !llvm.loop !9

214:                                              ; preds = %175
  br label %227

215:                                              ; preds = %105
  %216 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %217 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %216, i32 0, i32 0
  %218 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %217, align 8
  %219 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %218, i32 0, i32 5
  store i32 47, i32* %219, align 8
  %220 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %221 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %220, i32 0, i32 0
  %222 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %221, align 8
  %223 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %222, i32 0, i32 0
  %224 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %223, align 8
  %225 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %226 = bitcast %struct.jpeg_decompress_struct* %225 to %struct.jpeg_common_struct*
  call void %224(%struct.jpeg_common_struct* noundef %226)
  br label %227

227:                                              ; preds = %215, %214, %169, %136
  br label %228

228:                                              ; preds = %227, %104, %97
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %4, align 4
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %232 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 1
  store %struct.jpeg_component_info* %232, %struct.jpeg_component_info** %6, align 8
  br label %22, !llvm.loop !10

233:                                              ; preds = %22
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jpeg_idct_1x1(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_2x2(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_4x4(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_islow(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_ifast(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_float(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

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
