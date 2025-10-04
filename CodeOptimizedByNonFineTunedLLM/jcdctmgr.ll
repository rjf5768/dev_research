; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcdctmgr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcdctmgr.c"
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
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, void (i32*)*, [4 x i32*], void (float*)*, [4 x float*] }

@start_pass_fdctmgr.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass_fdctmgr.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_forward_dct(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_fdct_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %9 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %8, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %11 = bitcast %struct.jpeg_compress_struct* %10 to %struct.jpeg_common_struct*
  %12 = call i8* %9(%struct.jpeg_common_struct* noundef %11, i32 noundef 1, i64 noundef 96)
  %13 = bitcast i8* %12 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %13, %struct.my_fdct_controller** %3, align 8
  %14 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %15 = bitcast %struct.my_fdct_controller* %14 to %struct.jpeg_forward_dct*
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 58
  store %struct.jpeg_forward_dct* %15, %struct.jpeg_forward_dct** %17, align 8
  %18 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %19 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_fdctmgr, void (%struct.jpeg_compress_struct*)** %21, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 28
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %43 [
    i32 0, label %25
    i32 1, label %31
    i32 2, label %37
  ]

25:                                               ; preds = %1
  %26 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %27 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %27, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %28, align 8
  %29 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %30 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %29, i32 0, i32 1
  store void (i32*)* @jpeg_fdct_islow, void (i32*)** %30, align 8
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %33 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %33, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %34, align 8
  %35 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %36 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %35, i32 0, i32 1
  store void (i32*)* @jpeg_fdct_ifast, void (i32*)** %36, align 8
  br label %55

37:                                               ; preds = %1
  %38 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %39 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %39, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT_float, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %40, align 8
  %41 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %42 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %41, i32 0, i32 3
  store void (float*)* @jpeg_fdct_float, void (float*)** %42, align 8
  br label %55

43:                                               ; preds = %1
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 5
  store i32 47, i32* %47, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 0
  %52 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %51, align 8
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %54 = bitcast %struct.jpeg_compress_struct* %53 to %struct.jpeg_common_struct*
  call void %52(%struct.jpeg_common_struct* noundef %54)
  br label %55

55:                                               ; preds = %43, %37, %31, %25
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %61 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %60, i32 0, i32 2
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32*], [4 x i32*]* %61, i64 0, i64 %63
  store i32* null, i32** %64, align 8
  %65 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %66 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %65, i32 0, i32 4
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x float*], [4 x float*]* %66, i64 0, i64 %68
  store float* null, float** %69, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %56, !llvm.loop !4

73:                                               ; preds = %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_fdctmgr(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_fdct_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca %struct.JQUANT_TBL*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 58
  %15 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %14, align 8
  %16 = bitcast %struct.jpeg_forward_dct* %15 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %16, %struct.my_fdct_controller** %3, align 8
  store i32 0, i32* %4, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 14
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %18, align 8
  store %struct.jpeg_component_info* %19, %struct.jpeg_component_info** %7, align 8
  br label %20

20:                                               ; preds = %265, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %270

26:                                               ; preds = %20
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 15
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %37, i64 0, i64 %39
  %41 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %40, align 8
  %42 = icmp eq %struct.JQUANT_TBL* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %35, %32, %26
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 5
  store i32 51, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 6
  %53 = bitcast %union.anon* %52 to [8 x i32]*
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %53, i64 0, i64 0
  store i32 %48, i32* %54, align 4
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 0
  %59 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %58, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %61 = bitcast %struct.jpeg_compress_struct* %60 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* noundef %61)
  br label %62

62:                                               ; preds = %43, %35
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 15
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %64, i64 0, i64 %66
  %68 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %67, align 8
  store %struct.JQUANT_TBL* %68, %struct.JQUANT_TBL** %8, align 8
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 28
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %252 [
    i32 0, label %72
    i32 1, label %122
    i32 2, label %180
  ]

72:                                               ; preds = %62
  %73 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %74 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %73, i32 0, i32 2
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i32*], [4 x i32*]* %74, i64 0, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %72
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 1
  %83 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %82, align 8
  %84 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %83, i32 0, i32 0
  %85 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %84, align 8
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %87 = bitcast %struct.jpeg_compress_struct* %86 to %struct.jpeg_common_struct*
  %88 = call i8* %85(%struct.jpeg_common_struct* noundef %87, i32 noundef 1, i64 noundef 256)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %91 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %90, i32 0, i32 2
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32*], [4 x i32*]* %91, i64 0, i64 %93
  store i32* %89, i32** %94, align 8
  br label %95

95:                                               ; preds = %80, %72
  %96 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %97 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %96, i32 0, i32 2
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32*], [4 x i32*]* %97, i64 0, i64 %99
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %118, %95
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 64
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %8, align 8
  %107 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %106, i32 0, i32 0
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i16], [64 x i16]* %107, i64 0, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = shl i32 %112, 3
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %102, !llvm.loop !6

121:                                              ; preds = %102
  br label %264

122:                                              ; preds = %62
  %123 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %124 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %123, i32 0, i32 2
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i32*], [4 x i32*]* %124, i64 0, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %131, i32 0, i32 1
  %133 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %132, align 8
  %134 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %133, i32 0, i32 0
  %135 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %134, align 8
  %136 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %137 = bitcast %struct.jpeg_compress_struct* %136 to %struct.jpeg_common_struct*
  %138 = call i8* %135(%struct.jpeg_common_struct* noundef %137, i32 noundef 1, i64 noundef 256)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %141 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %140, i32 0, i32 2
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i32*], [4 x i32*]* %141, i64 0, i64 %143
  store i32* %139, i32** %144, align 8
  br label %145

145:                                              ; preds = %130, %122
  %146 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %147 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %146, i32 0, i32 2
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32*], [4 x i32*]* %147, i64 0, i64 %149
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %176, %145
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 64
  br i1 %154, label %155, label %179

155:                                              ; preds = %152
  %156 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %8, align 8
  %157 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %156, i32 0, i32 0
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [64 x i16], [64 x i16]* %157, i64 0, i64 %159
  %161 = load i16, i16* %160, align 2
  %162 = zext i16 %161 to i64
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass_fdctmgr.aanscales, i64 0, i64 %164
  %166 = load i16, i16* %165, align 2
  %167 = sext i16 %166 to i64
  %168 = mul nsw i64 %162, %167
  %169 = add nsw i64 %168, 1024
  %170 = ashr i64 %169, 11
  %171 = trunc i64 %170 to i32
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %155
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %152, !llvm.loop !7

179:                                              ; preds = %152
  br label %264

180:                                              ; preds = %62
  %181 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %182 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %181, i32 0, i32 4
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x float*], [4 x float*]* %182, i64 0, i64 %184
  %186 = load float*, float** %185, align 8
  %187 = icmp eq float* %186, null
  br i1 %187, label %188, label %203

188:                                              ; preds = %180
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %189, i32 0, i32 1
  %191 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %190, align 8
  %192 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %191, i32 0, i32 0
  %193 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %192, align 8
  %194 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %195 = bitcast %struct.jpeg_compress_struct* %194 to %struct.jpeg_common_struct*
  %196 = call i8* %193(%struct.jpeg_common_struct* noundef %195, i32 noundef 1, i64 noundef 256)
  %197 = bitcast i8* %196 to float*
  %198 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %199 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %198, i32 0, i32 4
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x float*], [4 x float*]* %199, i64 0, i64 %201
  store float* %197, float** %202, align 8
  br label %203

203:                                              ; preds = %188, %180
  %204 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %205 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %204, i32 0, i32 4
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x float*], [4 x float*]* %205, i64 0, i64 %207
  %209 = load float*, float** %208, align 8
  store float* %209, float** %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %248, %203
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %251

213:                                              ; preds = %210
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %244, %213
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 8
  br i1 %216, label %217, label %247

217:                                              ; preds = %214
  %218 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %8, align 8
  %219 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %218, i32 0, i32 0
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [64 x i16], [64 x i16]* %219, i64 0, i64 %221
  %223 = load i16, i16* %222, align 2
  %224 = uitofp i16 %223 to double
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %226
  %228 = load double, double* %227, align 8
  %229 = fmul double %224, %228
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %231
  %233 = load double, double* %232, align 8
  %234 = fmul double %229, %233
  %235 = fmul double %234, 8.000000e+00
  %236 = fdiv double 1.000000e+00, %235
  %237 = fptrunc double %236 to float
  %238 = load float*, float** %10, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  store float %237, float* %241, align 4
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %217
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %214, !llvm.loop !8

247:                                              ; preds = %214
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %11, align 4
  br label %210, !llvm.loop !9

251:                                              ; preds = %210
  br label %264

252:                                              ; preds = %62
  %253 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %254 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %253, i32 0, i32 0
  %255 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %254, align 8
  %256 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %255, i32 0, i32 5
  store i32 47, i32* %256, align 8
  %257 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %258 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %257, i32 0, i32 0
  %259 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %258, align 8
  %260 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %259, i32 0, i32 0
  %261 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %260, align 8
  %262 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %263 = bitcast %struct.jpeg_compress_struct* %262 to %struct.jpeg_common_struct*
  call void %261(%struct.jpeg_common_struct* noundef %263)
  br label %264

264:                                              ; preds = %252, %251, %179, %121
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %4, align 4
  %268 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %269 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %268, i32 1
  store %struct.jpeg_component_info* %269, %struct.jpeg_component_info** %7, align 8
  br label %20, !llvm.loop !10

270:                                              ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @forward_DCT(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, [64 x i16]* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_compress_struct*, align 8
  %9 = alloca %struct.jpeg_component_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca [64 x i16]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_fdct_controller*, align 8
  %16 = alloca void (i32*)*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %8, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %9, align 8
  store i8** %2, i8*** %10, align 8
  store [64 x i16]* %3, [64 x i16]** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 58
  %29 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %28, align 8
  %30 = bitcast %struct.jpeg_forward_dct* %29 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %30, %struct.my_fdct_controller** %15, align 8
  %31 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %15, align 8
  %32 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %31, i32 0, i32 1
  %33 = load void (i32*)*, void (i32*)** %32, align 8
  store void (i32*)* %33, void (i32*)** %16, align 8
  %34 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %15, align 8
  %35 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %34, i32 0, i32 2
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %17, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i8**, i8*** %10, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8** %45, i8*** %10, align 8
  store i32 0, i32* %19, align 4
  br label %46

46:                                               ; preds = %189, %7
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %194

50:                                               ; preds = %46
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  store i32* %51, i32** %20, align 8
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %120, %50
  %53 = load i32, i32* %22, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %123

55:                                               ; preds = %52
  %56 = load i8**, i8*** %10, align 8
  %57 = load i32, i32* %22, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %21, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %21, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %67, 128
  %69 = load i32*, i32** %20, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %20, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i8*, i8** %21, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %21, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %74, 128
  %76 = load i32*, i32** %20, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %20, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i8*, i8** %21, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %21, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 %81, 128
  %83 = load i32*, i32** %20, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %20, align 8
  store i32 %82, i32* %83, align 4
  %85 = load i8*, i8** %21, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %21, align 8
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %88, 128
  %90 = load i32*, i32** %20, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %20, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i8*, i8** %21, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %21, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %95, 128
  %97 = load i32*, i32** %20, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %20, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i8*, i8** %21, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %21, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 %102, 128
  %104 = load i32*, i32** %20, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %20, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i8*, i8** %21, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %21, align 8
  %108 = load i8, i8* %106, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %109, 128
  %111 = load i32*, i32** %20, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %20, align 8
  store i32 %110, i32* %111, align 4
  %113 = load i8*, i8** %21, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %21, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 %116, 128
  %118 = load i32*, i32** %20, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %20, align 8
  store i32 %117, i32* %118, align 4
  br label %120

120:                                              ; preds = %55
  %121 = load i32, i32* %22, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %22, align 4
  br label %52, !llvm.loop !11

123:                                              ; preds = %52
  %124 = load void (i32*)*, void (i32*)** %16, align 8
  %125 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  call void %124(i32* noundef %125)
  %126 = load [64 x i16]*, [64 x i16]** %11, align 8
  %127 = load i32, i32* %19, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [64 x i16], [64 x i16]* %126, i64 %128
  %130 = getelementptr inbounds [64 x i16], [64 x i16]* %129, i64 0, i64 0
  store i16* %130, i16** %26, align 8
  store i32 0, i32* %25, align 4
  br label %131

131:                                              ; preds = %185, %123
  %132 = load i32, i32* %25, align 4
  %133 = icmp slt i32 %132, 64
  br i1 %133, label %134, label %188

134:                                              ; preds = %131
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %25, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %23, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %134
  %147 = load i32, i32* %23, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %23, align 4
  %149 = load i32, i32* %24, align 4
  %150 = ashr i32 %149, 1
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %23, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %24, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %23, align 4
  %159 = sdiv i32 %158, %157
  store i32 %159, i32* %23, align 4
  br label %161

160:                                              ; preds = %146
  store i32 0, i32* %23, align 4
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i32, i32* %23, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %23, align 4
  br label %178

164:                                              ; preds = %134
  %165 = load i32, i32* %24, align 4
  %166 = ashr i32 %165, 1
  %167 = load i32, i32* %23, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %23, align 4
  %175 = sdiv i32 %174, %173
  store i32 %175, i32* %23, align 4
  br label %177

176:                                              ; preds = %164
  store i32 0, i32* %23, align 4
  br label %177

177:                                              ; preds = %176, %172
  br label %178

178:                                              ; preds = %177, %161
  %179 = load i32, i32* %23, align 4
  %180 = trunc i32 %179 to i16
  %181 = load i16*, i16** %26, align 8
  %182 = load i32, i32* %25, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, i16* %181, i64 %183
  store i16 %180, i16* %184, align 2
  br label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %25, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %25, align 4
  br label %131, !llvm.loop !12

188:                                              ; preds = %131
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %19, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %13, align 4
  %193 = add i32 %192, 8
  store i32 %193, i32* %13, align 4
  br label %46, !llvm.loop !13

194:                                              ; preds = %46
  ret void
}

declare dso_local void @jpeg_fdct_islow(i32* noundef) #1

declare dso_local void @jpeg_fdct_ifast(i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @forward_DCT_float(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, [64 x i16]* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_compress_struct*, align 8
  %9 = alloca %struct.jpeg_component_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca [64 x i16]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_fdct_controller*, align 8
  %16 = alloca void (float*)*, align 8
  %17 = alloca float*, align 8
  %18 = alloca [64 x float], align 16
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %8, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %9, align 8
  store i8** %2, i8*** %10, align 8
  store [64 x i16]* %3, [64 x i16]** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 58
  %28 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %27, align 8
  %29 = bitcast %struct.jpeg_forward_dct* %28 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %29, %struct.my_fdct_controller** %15, align 8
  %30 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %15, align 8
  %31 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %30, i32 0, i32 3
  %32 = load void (float*)*, void (float*)** %31, align 8
  store void (float*)* %32, void (float*)** %16, align 8
  %33 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %15, align 8
  %34 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %33, i32 0, i32 4
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  %36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x float*], [4 x float*]* %34, i64 0, i64 %38
  %40 = load float*, float** %39, align 8
  store float* %40, float** %17, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i8**, i8*** %10, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  store i8** %44, i8*** %10, align 8
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %165, %7
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %170

49:                                               ; preds = %45
  %50 = getelementptr inbounds [64 x float], [64 x float]* %18, i64 0, i64 0
  store float* %50, float** %20, align 8
  store i32 0, i32* %22, align 4
  br label %51

51:                                               ; preds = %127, %49
  %52 = load i32, i32* %22, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %130

54:                                               ; preds = %51
  %55 = load i8**, i8*** %10, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %21, align 8
  %63 = load i8*, i8** %21, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %21, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %66, 128
  %68 = sitofp i32 %67 to float
  %69 = load float*, float** %20, align 8
  %70 = getelementptr inbounds float, float* %69, i32 1
  store float* %70, float** %20, align 8
  store float %68, float* %69, align 4
  %71 = load i8*, i8** %21, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %21, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %74, 128
  %76 = sitofp i32 %75 to float
  %77 = load float*, float** %20, align 8
  %78 = getelementptr inbounds float, float* %77, i32 1
  store float* %78, float** %20, align 8
  store float %76, float* %77, align 4
  %79 = load i8*, i8** %21, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %21, align 8
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 128
  %84 = sitofp i32 %83 to float
  %85 = load float*, float** %20, align 8
  %86 = getelementptr inbounds float, float* %85, i32 1
  store float* %86, float** %20, align 8
  store float %84, float* %85, align 4
  %87 = load i8*, i8** %21, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %21, align 8
  %89 = load i8, i8* %87, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 128
  %92 = sitofp i32 %91 to float
  %93 = load float*, float** %20, align 8
  %94 = getelementptr inbounds float, float* %93, i32 1
  store float* %94, float** %20, align 8
  store float %92, float* %93, align 4
  %95 = load i8*, i8** %21, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %21, align 8
  %97 = load i8, i8* %95, align 1
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 %98, 128
  %100 = sitofp i32 %99 to float
  %101 = load float*, float** %20, align 8
  %102 = getelementptr inbounds float, float* %101, i32 1
  store float* %102, float** %20, align 8
  store float %100, float* %101, align 4
  %103 = load i8*, i8** %21, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %21, align 8
  %105 = load i8, i8* %103, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 128
  %108 = sitofp i32 %107 to float
  %109 = load float*, float** %20, align 8
  %110 = getelementptr inbounds float, float* %109, i32 1
  store float* %110, float** %20, align 8
  store float %108, float* %109, align 4
  %111 = load i8*, i8** %21, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %21, align 8
  %113 = load i8, i8* %111, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %114, 128
  %116 = sitofp i32 %115 to float
  %117 = load float*, float** %20, align 8
  %118 = getelementptr inbounds float, float* %117, i32 1
  store float* %118, float** %20, align 8
  store float %116, float* %117, align 4
  %119 = load i8*, i8** %21, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %21, align 8
  %121 = load i8, i8* %119, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 128
  %124 = sitofp i32 %123 to float
  %125 = load float*, float** %20, align 8
  %126 = getelementptr inbounds float, float* %125, i32 1
  store float* %126, float** %20, align 8
  store float %124, float* %125, align 4
  br label %127

127:                                              ; preds = %54
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %22, align 4
  br label %51, !llvm.loop !14

130:                                              ; preds = %51
  %131 = load void (float*)*, void (float*)** %16, align 8
  %132 = getelementptr inbounds [64 x float], [64 x float]* %18, i64 0, i64 0
  call void %131(float* noundef %132)
  %133 = load [64 x i16]*, [64 x i16]** %11, align 8
  %134 = load i32, i32* %19, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [64 x i16], [64 x i16]* %133, i64 %135
  %137 = getelementptr inbounds [64 x i16], [64 x i16]* %136, i64 0, i64 0
  store i16* %137, i16** %25, align 8
  store i32 0, i32* %24, align 4
  br label %138

138:                                              ; preds = %161, %130
  %139 = load i32, i32* %24, align 4
  %140 = icmp slt i32 %139, 64
  br i1 %140, label %141, label %164

141:                                              ; preds = %138
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [64 x float], [64 x float]* %18, i64 0, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %17, align 8
  %147 = load i32, i32* %24, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fmul float %145, %150
  store float %151, float* %23, align 4
  %152 = load float, float* %23, align 4
  %153 = fadd float %152, 1.638450e+04
  %154 = fptosi float %153 to i32
  %155 = sub nsw i32 %154, 16384
  %156 = trunc i32 %155 to i16
  %157 = load i16*, i16** %25, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i16, i16* %157, i64 %159
  store i16 %156, i16* %160, align 2
  br label %161

161:                                              ; preds = %141
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %24, align 4
  br label %138, !llvm.loop !15

164:                                              ; preds = %138
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %19, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add i32 %168, 8
  store i32 %169, i32* %13, align 4
  br label %45, !llvm.loop !16

170:                                              ; preds = %45
  ret void
}

declare dso_local void @jpeg_fdct_float(float* noundef) #1

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
