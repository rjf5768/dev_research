; ModuleID = './jddctmgr.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 128) #3
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 80
  %9 = bitcast %struct.jpeg_inverse_dct** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass, void (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %12 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %11, align 8
  br label %13

13:                                               ; preds = %29, %1
  %.01 = phi i32 [ 0, %1 ], [ %30, %29 ]
  %.0 = phi %struct.jpeg_component_info* [ %12, %1 ], [ %31, %29 ]
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %.01, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i64 0, i32 0
  %21 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %20, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %23 = call i8* %21(%struct.jpeg_common_struct* noundef %22, i32 noundef 1, i64 noundef 256) #3
  %24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 20
  store i8* %23, i8** %24, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %23, i8 0, i64 256, i1 false)
  %25 = getelementptr inbounds i8, i8* %7, i64 88
  %26 = bitcast i8* %25 to [10 x i32]*
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %26, i64 0, i64 %27
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %17
  %30 = add nuw nsw i32 %.01, 1
  %31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %13, !llvm.loop !4

32:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 80
  %3 = bitcast %struct.jpeg_inverse_dct** %2 to %struct.my_idct_controller**
  %4 = load %struct.my_idct_controller*, %struct.my_idct_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  br label %7

7:                                                ; preds = %148, %1
  %.08 = phi void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* [ null, %1 ], [ %.210, %148 ]
  %.05 = phi i32 [ 0, %1 ], [ %.27, %148 ]
  %.04 = phi %struct.jpeg_component_info* [ %6, %1 ], [ %150, %148 ]
  %.02 = phi i32 [ 0, %1 ], [ %149, %148 ]
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %.02, %9
  br i1 %10, label %11, label %151

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 9
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %33 [
    i32 1, label %14
    i32 2, label %15
    i32 4, label %16
    i32 8, label %17
  ]

14:                                               ; preds = %11
  br label %47

15:                                               ; preds = %11
  br label %47

16:                                               ; preds = %11
  br label %47

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 16
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %23 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
  ]

20:                                               ; preds = %17
  br label %32

21:                                               ; preds = %17
  br label %32

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i64 0, i32 5
  store i32 47, i32* %26, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %31) #3
  br label %32

32:                                               ; preds = %23, %22, %21, %20
  %.19 = phi void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* [ %.08, %23 ], [ @jpeg_idct_float, %22 ], [ @jpeg_idct_ifast, %21 ], [ @jpeg_idct_islow, %20 ]
  %.16 = phi i32 [ %.05, %23 ], [ 2, %22 ], [ 1, %21 ], [ 0, %20 ]
  br label %47

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i64 0, i32 5
  store i32 6, i32* %36, align 8
  %37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i64 0, i32 6, i32 0, i64 0
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i64 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %44, align 8
  %46 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* noundef %46) #3
  br label %47

47:                                               ; preds = %33, %32, %16, %15, %14
  %.210 = phi void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* [ %.08, %33 ], [ %.19, %32 ], [ @jpeg_idct_4x4, %16 ], [ @jpeg_idct_2x2, %15 ], [ @jpeg_idct_1x1, %14 ]
  %.27 = phi i32 [ %.05, %33 ], [ %.16, %32 ], [ 0, %16 ], [ 0, %15 ], [ 0, %14 ]
  %48 = zext i32 %.02 to i64
  %49 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %4, i64 0, i32 0, i32 1, i64 %48
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)* %.210, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)** %49, align 8
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 12
  %51 = load i32, i32* %50, align 8
  %.not = icmp eq i32 %51, 0
  br i1 %.not, label %57, label %52

52:                                               ; preds = %47
  %53 = zext i32 %.02 to i64
  %54 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %4, i64 0, i32 1, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, %.27
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47
  br label %148

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 19
  %60 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %59, align 8
  %61 = icmp eq %struct.JQUANT_TBL* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %148

63:                                               ; preds = %58
  %64 = zext i32 %.02 to i64
  %65 = getelementptr inbounds %struct.my_idct_controller, %struct.my_idct_controller* %4, i64 0, i32 1, i64 %64
  store i32 %.27, i32* %65, align 4
  switch i32 %.27, label %138 [
    i32 0, label %66
    i32 1, label %82
    i32 2, label %106
  ]

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 20
  %68 = bitcast i8** %67 to i32**
  %69 = load i32*, i32** %68, align 8
  br label %70

70:                                               ; preds = %79, %66
  %.03 = phi i32 [ 0, %66 ], [ %80, %79 ]
  %71 = icmp ult i32 %.03, 64
  br i1 %71, label %72, label %81

72:                                               ; preds = %70
  %73 = zext i32 %.03 to i64
  %74 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %60, i64 0, i32 0, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = zext i32 %.03 to i64
  %78 = getelementptr inbounds i32, i32* %69, i64 %77
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %72
  %80 = add nuw nsw i32 %.03, 1
  br label %70, !llvm.loop !6

81:                                               ; preds = %70
  br label %147

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 20
  %84 = bitcast i8** %83 to i32**
  %85 = load i32*, i32** %84, align 8
  br label %86

86:                                               ; preds = %103, %82
  %.1 = phi i32 [ 0, %82 ], [ %104, %103 ]
  %87 = icmp ult i32 %.1, 64
  br i1 %87, label %88, label %105

88:                                               ; preds = %86
  %89 = zext i32 %.1 to i64
  %90 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %60, i64 0, i32 0, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i64
  %93 = zext i32 %.1 to i64
  %94 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass.aanscales, i64 0, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i64
  %97 = mul nsw i64 %92, %96
  %98 = add nsw i64 %97, 2048
  %99 = ashr i64 %98, 12
  %100 = trunc i64 %99 to i32
  %101 = zext i32 %.1 to i64
  %102 = getelementptr inbounds i32, i32* %85, i64 %101
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = add nuw nsw i32 %.1, 1
  br label %86, !llvm.loop !7

105:                                              ; preds = %86
  br label %147

106:                                              ; preds = %63
  %107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 20
  %108 = bitcast i8** %107 to float**
  %109 = load float*, float** %108, align 8
  br label %110

110:                                              ; preds = %135, %106
  %.2 = phi i32 [ 0, %106 ], [ %.3, %135 ]
  %.01 = phi i32 [ 0, %106 ], [ %136, %135 ]
  %111 = icmp ult i32 %.01, 8
  br i1 %111, label %112, label %137

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %131, %112
  %.3 = phi i32 [ %.2, %112 ], [ %132, %131 ]
  %.0 = phi i32 [ 0, %112 ], [ %133, %131 ]
  %114 = icmp ult i32 %.0, 8
  br i1 %114, label %115, label %134

115:                                              ; preds = %113
  %116 = sext i32 %.3 to i64
  %117 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %60, i64 0, i32 0, i64 %116
  %118 = load i16, i16* %117, align 2
  %119 = uitofp i16 %118 to double
  %120 = zext i32 %.01 to i64
  %121 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i64 0, i64 %120
  %122 = load double, double* %121, align 8
  %123 = fmul double %122, %119
  %124 = zext i32 %.0 to i64
  %125 = getelementptr inbounds [8 x double], [8 x double]* @start_pass.aanscalefactor, i64 0, i64 %124
  %126 = load double, double* %125, align 8
  %127 = fmul double %123, %126
  %128 = fptrunc double %127 to float
  %129 = sext i32 %.3 to i64
  %130 = getelementptr inbounds float, float* %109, i64 %129
  store float %128, float* %130, align 4
  br label %131

131:                                              ; preds = %115
  %132 = add nsw i32 %.3, 1
  %133 = add nuw nsw i32 %.0, 1
  br label %113, !llvm.loop !8

134:                                              ; preds = %113
  br label %135

135:                                              ; preds = %134
  %136 = add nuw nsw i32 %.01, 1
  br label %110, !llvm.loop !9

137:                                              ; preds = %110
  br label %147

138:                                              ; preds = %63
  %139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %140 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %139, align 8
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %140, i64 0, i32 5
  store i32 47, i32* %141, align 8
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %143 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %142, align 8
  %144 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %143, i64 0, i32 0
  %145 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %144, align 8
  %146 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %145(%struct.jpeg_common_struct* noundef %146) #3
  br label %147

147:                                              ; preds = %138, %137, %105, %81
  br label %148

148:                                              ; preds = %147, %62, %57
  %149 = add nuw nsw i32 %.02, 1
  %150 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 1
  br label %7, !llvm.loop !10

151:                                              ; preds = %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jpeg_idct_1x1(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_2x2(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_4x4(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_islow(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_ifast(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

declare dso_local void @jpeg_idct_float(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_component_info* noundef, i16* noundef, i8** noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
