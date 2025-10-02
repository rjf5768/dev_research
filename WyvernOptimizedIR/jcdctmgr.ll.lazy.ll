; ModuleID = './jcdctmgr.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 96) #2
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 58
  %9 = bitcast %struct.jpeg_forward_dct** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_fdctmgr, void (%struct.jpeg_compress_struct*)** %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 28
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %23
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, i8* %7, i64 8
  %15 = bitcast i8* %14 to void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)**
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %15, align 8
  %16 = getelementptr inbounds i8, i8* %7, i64 16
  %17 = bitcast i8* %16 to void (i32*)**
  store void (i32*)* @jpeg_fdct_islow, void (i32*)** %17, align 8
  br label %37

18:                                               ; preds = %1
  %19 = getelementptr inbounds i8, i8* %7, i64 8
  %20 = bitcast i8* %19 to void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)**
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %20, align 8
  %21 = getelementptr inbounds i8, i8* %7, i64 16
  %22 = bitcast i8* %21 to void (i32*)**
  store void (i32*)* @jpeg_fdct_ifast, void (i32*)** %22, align 8
  br label %37

23:                                               ; preds = %1
  %24 = getelementptr inbounds i8, i8* %7, i64 8
  %25 = bitcast i8* %24 to void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)**
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT_float, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 56
  %27 = bitcast i8* %26 to void (float*)**
  store void (float*)* @jpeg_fdct_float, void (float*)** %27, align 8
  br label %37

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 5
  store i32 47, i32* %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %36) #2
  br label %37

37:                                               ; preds = %28, %23, %18, %13
  br label %38

38:                                               ; preds = %49, %37
  %.0 = phi i32 [ 0, %37 ], [ %50, %49 ]
  %39 = icmp ult i32 %.0, 4
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, i8* %7, i64 24
  %42 = bitcast i8* %41 to [4 x i32*]*
  %43 = zext i32 %.0 to i64
  %44 = getelementptr inbounds [4 x i32*], [4 x i32*]* %42, i64 0, i64 %43
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds i8, i8* %7, i64 64
  %46 = bitcast i8* %45 to [4 x float*]*
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds [4 x float*], [4 x float*]* %46, i64 0, i64 %47
  store float* null, float** %48, align 8
  br label %49

49:                                               ; preds = %40
  %50 = add nuw nsw i32 %.0, 1
  br label %38, !llvm.loop !4

51:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_fdctmgr(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 58
  %3 = bitcast %struct.jpeg_forward_dct** %2 to %struct.my_fdct_controller**
  %4 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  br label %7

7:                                                ; preds = %170, %1
  %.04 = phi %struct.jpeg_component_info* [ %6, %1 ], [ %172, %170 ]
  %.02 = phi i32 [ 0, %1 ], [ %171, %170 ]
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %.02, %9
  br i1 %10, label %11, label %173

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = icmp sgt i32 %13, 3
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %18
  %20 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %19, align 8
  %21 = icmp eq %struct.JQUANT_TBL* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %17, %15, %11
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 5
  store i32 51, i32* %25, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 6, i32 0, i64 0
  store i32 %13, i32* %28, align 4
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %33) #2
  br label %34

34:                                               ; preds = %22, %17
  %35 = sext i32 %13 to i64
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %35
  %37 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 28
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %160 [
    i32 0, label %40
    i32 1, label %72
    i32 2, label %111
  ]

40:                                               ; preds = %34
  %41 = sext i32 %13 to i64
  %42 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 2, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %47 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %47, i64 0, i32 0
  %49 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %48, align 8
  %50 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %51 = call i8* %49(%struct.jpeg_common_struct* noundef %50, i32 noundef 1, i64 noundef 256) #2
  %52 = sext i32 %13 to i64
  %53 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 2, i64 %52
  %54 = bitcast i32** %53 to i8**
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %45, %40
  %56 = sext i32 %13 to i64
  %57 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 2, i64 %56
  %58 = load i32*, i32** %57, align 8
  br label %59

59:                                               ; preds = %69, %55
  %.03 = phi i32 [ 0, %55 ], [ %70, %69 ]
  %60 = icmp ult i32 %.03, 64
  br i1 %60, label %61, label %71

61:                                               ; preds = %59
  %62 = zext i32 %.03 to i64
  %63 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %37, i64 0, i32 0, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 %65, 3
  %67 = zext i32 %.03 to i64
  %68 = getelementptr inbounds i32, i32* %58, i64 %67
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %61
  %70 = add nuw nsw i32 %.03, 1
  br label %59, !llvm.loop !6

71:                                               ; preds = %59
  br label %169

72:                                               ; preds = %34
  %73 = sext i32 %13 to i64
  %74 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 2, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %79 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %78, align 8
  %80 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %79, i64 0, i32 0
  %81 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %80, align 8
  %82 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %83 = call i8* %81(%struct.jpeg_common_struct* noundef %82, i32 noundef 1, i64 noundef 256) #2
  %84 = sext i32 %13 to i64
  %85 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 2, i64 %84
  %86 = bitcast i32** %85 to i8**
  store i8* %83, i8** %86, align 8
  br label %87

87:                                               ; preds = %77, %72
  %88 = sext i32 %13 to i64
  %89 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 2, i64 %88
  %90 = load i32*, i32** %89, align 8
  br label %91

91:                                               ; preds = %108, %87
  %.1 = phi i32 [ 0, %87 ], [ %109, %108 ]
  %92 = icmp ult i32 %.1, 64
  br i1 %92, label %93, label %110

93:                                               ; preds = %91
  %94 = zext i32 %.1 to i64
  %95 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %37, i64 0, i32 0, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i64
  %98 = zext i32 %.1 to i64
  %99 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass_fdctmgr.aanscales, i64 0, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i64
  %102 = mul nsw i64 %97, %101
  %103 = add nsw i64 %102, 1024
  %104 = ashr i64 %103, 11
  %105 = trunc i64 %104 to i32
  %106 = zext i32 %.1 to i64
  %107 = getelementptr inbounds i32, i32* %90, i64 %106
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = add nuw nsw i32 %.1, 1
  br label %91, !llvm.loop !7

110:                                              ; preds = %91
  br label %169

111:                                              ; preds = %34
  %112 = sext i32 %13 to i64
  %113 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 4, i64 %112
  %114 = load float*, float** %113, align 8
  %115 = icmp eq float* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %118 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %117, align 8
  %119 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %118, i64 0, i32 0
  %120 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %119, align 8
  %121 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %122 = call i8* %120(%struct.jpeg_common_struct* noundef %121, i32 noundef 1, i64 noundef 256) #2
  %123 = sext i32 %13 to i64
  %124 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 4, i64 %123
  %125 = bitcast float** %124 to i8**
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %116, %111
  %127 = sext i32 %13 to i64
  %128 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %4, i64 0, i32 4, i64 %127
  %129 = load float*, float** %128, align 8
  br label %130

130:                                              ; preds = %157, %126
  %.2 = phi i32 [ 0, %126 ], [ %.3, %157 ]
  %.01 = phi i32 [ 0, %126 ], [ %158, %157 ]
  %131 = icmp ult i32 %.01, 8
  br i1 %131, label %132, label %159

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %153, %132
  %.3 = phi i32 [ %.2, %132 ], [ %154, %153 ]
  %.0 = phi i32 [ 0, %132 ], [ %155, %153 ]
  %134 = icmp ult i32 %.0, 8
  br i1 %134, label %135, label %156

135:                                              ; preds = %133
  %136 = sext i32 %.3 to i64
  %137 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %37, i64 0, i32 0, i64 %136
  %138 = load i16, i16* %137, align 2
  %139 = uitofp i16 %138 to double
  %140 = zext i32 %.01 to i64
  %141 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %140
  %142 = load double, double* %141, align 8
  %143 = fmul double %142, %139
  %144 = zext i32 %.0 to i64
  %145 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fmul double %143, %146
  %148 = fmul double %147, 8.000000e+00
  %149 = fdiv double 1.000000e+00, %148
  %150 = fptrunc double %149 to float
  %151 = sext i32 %.3 to i64
  %152 = getelementptr inbounds float, float* %129, i64 %151
  store float %150, float* %152, align 4
  br label %153

153:                                              ; preds = %135
  %154 = add nsw i32 %.3, 1
  %155 = add nuw nsw i32 %.0, 1
  br label %133, !llvm.loop !8

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156
  %158 = add nuw nsw i32 %.01, 1
  br label %130, !llvm.loop !9

159:                                              ; preds = %130
  br label %169

160:                                              ; preds = %34
  %161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %161, align 8
  %163 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i64 0, i32 5
  store i32 47, i32* %163, align 8
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %165 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %164, align 8
  %166 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %165, i64 0, i32 0
  %167 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %166, align 8
  %168 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %167(%struct.jpeg_common_struct* noundef %168) #2
  br label %169

169:                                              ; preds = %160, %159, %110, %71
  br label %170

170:                                              ; preds = %169
  %171 = add nuw nsw i32 %.02, 1
  %172 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 1
  br label %7, !llvm.loop !10

173:                                              ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @forward_DCT(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, [64 x i16]* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x i32], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 58
  %10 = bitcast %struct.jpeg_forward_dct** %9 to %struct.my_fdct_controller**
  %11 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %10, align 8
  %12 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %11, i64 0, i32 1
  %13 = load void (i32*)*, void (i32*)** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %11, i64 0, i32 2, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds i8*, i8** %2, i64 %19
  br label %21

21:                                               ; preds = %109, %7
  %.05 = phi i32 [ 0, %7 ], [ %110, %109 ]
  %.04 = phi i32 [ %5, %7 ], [ %111, %109 ]
  %22 = icmp ult i32 %.05, %6
  br i1 %22, label %23, label %112

23:                                               ; preds = %21
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  br label %25

25:                                               ; preds = %71, %23
  %.03 = phi i32* [ %24, %23 ], [ %72, %71 ]
  %.02 = phi i32 [ 0, %23 ], [ %73, %71 ]
  %26 = icmp ult i32 %.02, 8
  br i1 %26, label %27, label %74

27:                                               ; preds = %25
  %28 = zext i32 %.02 to i64
  %29 = getelementptr inbounds i8*, i8** %20, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = zext i32 %.04 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = getelementptr inbounds i32, i32* %.03, i64 1
  store i32 %36, i32* %.03, align 4
  %38 = getelementptr inbounds i8, i8* %33, i64 1
  %39 = load i8, i8* %33, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -128
  %42 = getelementptr inbounds i32, i32* %.03, i64 2
  store i32 %41, i32* %37, align 4
  %43 = getelementptr inbounds i8, i8* %38, i64 1
  %44 = load i8, i8* %38, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -128
  %47 = getelementptr inbounds i32, i32* %.03, i64 3
  store i32 %46, i32* %42, align 4
  %48 = getelementptr inbounds i8, i8* %43, i64 1
  %49 = load i8, i8* %43, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, -128
  %52 = getelementptr inbounds i32, i32* %.03, i64 4
  store i32 %51, i32* %47, align 4
  %53 = getelementptr inbounds i8, i8* %48, i64 1
  %54 = load i8, i8* %48, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -128
  %57 = getelementptr inbounds i32, i32* %.03, i64 5
  store i32 %56, i32* %52, align 4
  %58 = getelementptr inbounds i8, i8* %53, i64 1
  %59 = load i8, i8* %53, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, -128
  %62 = getelementptr inbounds i32, i32* %.03, i64 6
  store i32 %61, i32* %57, align 4
  %63 = getelementptr inbounds i8, i8* %58, i64 1
  %64 = load i8, i8* %58, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = getelementptr inbounds i32, i32* %.03, i64 7
  store i32 %66, i32* %62, align 4
  %68 = load i8, i8* %63, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -128
  store i32 %70, i32* %67, align 4
  br label %71

71:                                               ; preds = %27
  %72 = getelementptr inbounds i32, i32* %.03, i64 8
  %73 = add nuw nsw i32 %.02, 1
  br label %25, !llvm.loop !11

74:                                               ; preds = %25
  %75 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  call void %13(i32* noundef nonnull %75) #2
  %76 = zext i32 %.05 to i64
  br label %77

77:                                               ; preds = %106, %74
  %.0 = phi i32 [ 0, %74 ], [ %107, %106 ]
  %78 = icmp ult i32 %.0, 64
  br i1 %78, label %79, label %108

79:                                               ; preds = %77
  %80 = zext i32 %.0 to i64
  %81 = getelementptr inbounds i32, i32* %18, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %.0 to i64
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = ashr i32 %82, 1
  %89 = sub i32 %88, %85
  %.not6 = icmp slt i32 %89, %82
  br i1 %.not6, label %92, label %90

90:                                               ; preds = %87
  %91 = sdiv i32 %89, %82
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %.01 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %94 = sub nsw i32 0, %.01
  br label %102

95:                                               ; preds = %79
  %96 = ashr i32 %82, 1
  %97 = add nsw i32 %85, %96
  %.not = icmp slt i32 %97, %82
  br i1 %.not, label %100, label %98

98:                                               ; preds = %95
  %99 = sdiv i32 %97, %82
  br label %101

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %98
  %.1 = phi i32 [ %99, %98 ], [ 0, %100 ]
  br label %102

102:                                              ; preds = %101, %93
  %.2 = phi i32 [ %94, %93 ], [ %.1, %101 ]
  %103 = trunc i32 %.2 to i16
  %104 = zext i32 %.0 to i64
  %105 = getelementptr inbounds [64 x i16], [64 x i16]* %3, i64 %76, i64 %104
  store i16 %103, i16* %105, align 2
  br label %106

106:                                              ; preds = %102
  %107 = add nuw nsw i32 %.0, 1
  br label %77, !llvm.loop !12

108:                                              ; preds = %77
  br label %109

109:                                              ; preds = %108
  %110 = add i32 %.05, 1
  %111 = add i32 %.04, 8
  br label %21, !llvm.loop !13

112:                                              ; preds = %21
  ret void
}

declare dso_local void @jpeg_fdct_islow(i32* noundef) #1

declare dso_local void @jpeg_fdct_ifast(i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @forward_DCT_float(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, [64 x i16]* nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca [64 x float], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 58
  %10 = bitcast %struct.jpeg_forward_dct** %9 to %struct.my_fdct_controller**
  %11 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %10, align 8
  %12 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %11, i64 0, i32 3
  %13 = load void (float*)*, void (float*)** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %11, i64 0, i32 4, i64 %16
  %18 = load float*, float** %17, align 8
  %19 = zext i32 %4 to i64
  %20 = getelementptr inbounds i8*, i8** %2, i64 %19
  br label %21

21:                                               ; preds = %104, %7
  %.04 = phi i32 [ %5, %7 ], [ %106, %104 ]
  %.03 = phi i32 [ 0, %7 ], [ %105, %104 ]
  %22 = icmp ult i32 %.03, %6
  br i1 %22, label %23, label %107

23:                                               ; preds = %21
  %24 = getelementptr inbounds [64 x float], [64 x float]* %8, i64 0, i64 0
  br label %25

25:                                               ; preds = %79, %23
  %.02 = phi float* [ %24, %23 ], [ %80, %79 ]
  %.01 = phi i32 [ 0, %23 ], [ %81, %79 ]
  %26 = icmp ult i32 %.01, 8
  br i1 %26, label %27, label %82

27:                                               ; preds = %25
  %28 = zext i32 %.01 to i64
  %29 = getelementptr inbounds i8*, i8** %20, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = zext i32 %.04 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds float, float* %.02, i64 1
  store float %37, float* %.02, align 4
  %39 = getelementptr inbounds i8, i8* %33, i64 1
  %40 = load i8, i8* %33, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -128
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds float, float* %.02, i64 2
  store float %43, float* %38, align 4
  %45 = getelementptr inbounds i8, i8* %39, i64 1
  %46 = load i8, i8* %39, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, -128
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds float, float* %.02, i64 3
  store float %49, float* %44, align 4
  %51 = getelementptr inbounds i8, i8* %45, i64 1
  %52 = load i8, i8* %45, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, -128
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds float, float* %.02, i64 4
  store float %55, float* %50, align 4
  %57 = getelementptr inbounds i8, i8* %51, i64 1
  %58 = load i8, i8* %51, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -128
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds float, float* %.02, i64 5
  store float %61, float* %56, align 4
  %63 = getelementptr inbounds i8, i8* %57, i64 1
  %64 = load i8, i8* %57, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds float, float* %.02, i64 6
  store float %67, float* %62, align 4
  %69 = getelementptr inbounds i8, i8* %63, i64 1
  %70 = load i8, i8* %63, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -128
  %73 = sitofp i32 %72 to float
  %74 = getelementptr inbounds float, float* %.02, i64 7
  store float %73, float* %68, align 4
  %75 = load i8, i8* %69, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -128
  %78 = sitofp i32 %77 to float
  store float %78, float* %74, align 4
  br label %79

79:                                               ; preds = %27
  %80 = getelementptr inbounds float, float* %.02, i64 8
  %81 = add nuw nsw i32 %.01, 1
  br label %25, !llvm.loop !14

82:                                               ; preds = %25
  %83 = getelementptr inbounds [64 x float], [64 x float]* %8, i64 0, i64 0
  call void %13(float* noundef nonnull %83) #2
  %84 = zext i32 %.03 to i64
  br label %85

85:                                               ; preds = %101, %82
  %.0 = phi i32 [ 0, %82 ], [ %102, %101 ]
  %86 = icmp ult i32 %.0, 64
  br i1 %86, label %87, label %103

87:                                               ; preds = %85
  %88 = zext i32 %.0 to i64
  %89 = getelementptr inbounds [64 x float], [64 x float]* %8, i64 0, i64 %88
  %90 = load float, float* %89, align 4
  %91 = zext i32 %.0 to i64
  %92 = getelementptr inbounds float, float* %18, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fmul float %90, %93
  %95 = fadd float %94, 1.638450e+04
  %96 = fptosi float %95 to i32
  %97 = trunc i32 %96 to i16
  %98 = add i16 %97, -16384
  %99 = zext i32 %.0 to i64
  %100 = getelementptr inbounds [64 x i16], [64 x i16]* %3, i64 %84, i64 %99
  store i16 %98, i16* %100, align 2
  br label %101

101:                                              ; preds = %87
  %102 = add nuw nsw i32 %.0, 1
  br label %85, !llvm.loop !15

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103
  %105 = add i32 %.03, 1
  %106 = add i32 %.04, 8
  br label %21, !llvm.loop !16

107:                                              ; preds = %21
  ret void
}

declare dso_local void @jpeg_fdct_float(float* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
