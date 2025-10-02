; ModuleID = './jdmainct.ll'
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
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %5, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8* %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i64 noundef 136) #2
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %10 = bitcast %struct.jpeg_d_main_controller** %9 to i8**
  store i8* %8, i8** %10, align 8
  %11 = bitcast i8* %8 to void (%struct.jpeg_decompress_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_main, void (%struct.jpeg_decompress_struct*, i32)** %11, align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 5
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #2
  br label %21

21:                                               ; preds = %12, %2
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %23 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %23, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i64 0, i32 5
  store i32 46, i32* %33, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i64 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %36, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* noundef %38) #2
  br label %39

39:                                               ; preds = %30, %26
  call void @alloc_funny_pointers(%struct.jpeg_decompress_struct* noundef %0)
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 2
  br label %46

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %43, %39
  %.01 = phi i32 [ %42, %39 ], [ %45, %43 ]
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %47, align 8
  br label %49

49:                                               ; preds = %78, %46
  %.02 = phi i32 [ 0, %46 ], [ %79, %78 ]
  %.0 = phi %struct.jpeg_component_info* [ %48, %46 ], [ %80, %78 ]
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %.02, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %58, %60
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %63 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %62, align 8
  %64 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %63, i64 0, i32 2
  %65 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %64, align 8
  %66 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %68, %70
  %72 = mul nsw i32 %61, %.01
  %73 = call i8** %65(%struct.jpeg_common_struct* noundef %66, i32 noundef 1, i32 noundef %71, i32 noundef %72) #2
  %74 = getelementptr inbounds i8, i8* %8, i64 16
  %75 = bitcast i8* %74 to [10 x i8**]*
  %76 = zext i32 %.02 to i64
  %77 = getelementptr inbounds [10 x i8**], [10 x i8**]* %75, i64 0, i64 %76
  store i8** %73, i8*** %77, align 8
  br label %78

78:                                               ; preds = %53
  %79 = add nuw nsw i32 %.02, 1
  %80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %49, !llvm.loop !4

81:                                               ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %4 = bitcast %struct.jpeg_d_main_controller** %3 to %struct.my_main_controller**
  %5 = load %struct.my_main_controller*, %struct.my_main_controller** %4, align 8
  switch i32 %1, label %23 [
    i32 0, label %6
    i32 2, label %21
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %8 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %8, i64 0, i32 2
  %10 = load i32, i32* %9, align 8
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_context_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %12, align 8
  call void @make_funny_pointers(%struct.jpeg_decompress_struct* noundef %0)
  %13 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 5
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 6
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 8
  store i32 0, i32* %15, align 4
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %17, align 8
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 3
  store i32 0, i32* %20, align 4
  br label %32

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* @process_data_crank_post, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %22, align 8
  br label %32

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i64 0, i32 5
  store i32 4, i32* %26, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %31) #2
  br label %32

32:                                               ; preds = %23, %21, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @alloc_funny_pointers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %3 = bitcast %struct.jpeg_d_main_controller** %2 to %struct.my_main_controller**
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i64 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %9, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = shl nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = call i8* %10(%struct.jpeg_common_struct* noundef %11, i32 noundef 1, i64 noundef %16) #2
  %18 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 0
  %19 = bitcast i8**** %18 to i8**
  store i8* %17, i8** %19, align 8
  %.cast = bitcast i8* %17 to i8***
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8**, i8*** %.cast, i64 %22
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 1
  store i8*** %23, i8**** %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %25, align 8
  br label %27

27:                                               ; preds = %66, %1
  %.01 = phi i32 [ 0, %1 ], [ %67, %66 ]
  %.0 = phi %struct.jpeg_component_info* [ %26, %1 ], [ %68, %66 ]
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %.01, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %36, %38
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %41 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %41, i64 0, i32 0
  %43 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %42, align 8
  %44 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %45 = add nsw i32 %6, 4
  %46 = mul nsw i32 %39, %45
  %47 = shl nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 3
  %50 = call i8* %43(%struct.jpeg_common_struct* noundef %44, i32 noundef 1, i64 noundef %49) #2
  %51 = bitcast i8* %50 to i8**
  %52 = sext i32 %39 to i64
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 0
  %55 = load i8***, i8**** %54, align 8
  %56 = zext i32 %.01 to i64
  %57 = getelementptr inbounds i8**, i8*** %55, i64 %56
  store i8** %53, i8*** %57, align 8
  %58 = add nsw i32 %6, 4
  %59 = mul nsw i32 %39, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %53, i64 %60
  %62 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 1
  %63 = load i8***, i8**** %62, align 8
  %64 = zext i32 %.01 to i64
  %65 = getelementptr inbounds i8**, i8*** %63, i64 %64
  store i8** %61, i8*** %65, align 8
  br label %66

66:                                               ; preds = %31
  %67 = add nuw nsw i32 %.01, 1
  %68 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %27, !llvm.loop !6

69:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_context_main(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %6 = bitcast %struct.jpeg_d_main_controller** %5 to %struct.my_main_controller**
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %6, align 8
  %8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %27

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %12 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %12, i64 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %13, align 8
  %15 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 4, i64 %17
  %19 = load i8***, i8**** %18, align 8
  %20 = call i32 %14(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %19) #2
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %21, label %22

21:                                               ; preds = %10
  br label %106

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %4
  %28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 6
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %106 [
    i32 2, label %30
    i32 0, label %54
    i32 1, label %68
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %32 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %32, i64 0, i32 1
  %34 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %33, align 8
  %35 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 4, i64 %37
  %39 = load i8***, i8**** %38, align 8
  %40 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %41 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 7
  %42 = load i32, i32* %41, align 8
  call void %34(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %39, i32* noundef nonnull %40, i32 noundef %42, i8** noundef %1, i32* noundef %2, i32 noundef %3) #2
  %43 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %106

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 6
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %2, align 4
  %.not2 = icmp ult i32 %51, %3
  br i1 %.not2, label %53, label %52

52:                                               ; preds = %49
  br label %106

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %27
  %55 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  %59 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 7
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 60
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  call void @set_bottom_pointers(%struct.jpeg_decompress_struct* noundef %0)
  br label %66

66:                                               ; preds = %65, %54
  %67 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 6
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %27
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %70 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %70, i64 0, i32 1
  %72 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %71, align 8
  %73 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 4, i64 %75
  %77 = load i8***, i8**** %76, align 8
  %78 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %79 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 7
  %80 = load i32, i32* %79, align 8
  call void %72(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %77, i32* noundef nonnull %78, i32 noundef %80, i8** noundef %1, i32* noundef %2, i32 noundef %3) #2
  %81 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %106

87:                                               ; preds = %68
  %88 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  call void @set_wraparound_pointers(%struct.jpeg_decompress_struct* noundef %0)
  br label %92

92:                                               ; preds = %91, %87
  %93 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = xor i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 2
  %104 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 7
  store i32 %103, i32* %104, align 8
  %105 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 6
  store i32 2, i32* %105, align 4
  br label %106

106:                                              ; preds = %92, %86, %52, %48, %27, %21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @make_funny_pointers(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %3 = bitcast %struct.jpeg_d_main_controller** %2 to %struct.my_main_controller**
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  br label %9

9:                                                ; preds = %87, %1
  %.02 = phi i32 [ 0, %1 ], [ %88, %87 ]
  %.0 = phi %struct.jpeg_component_info* [ %8, %1 ], [ %89, %87 ]
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %.02, %11
  br i1 %12, label %13, label %90

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %18, %20
  %22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 0
  %23 = load i8***, i8**** %22, align 8
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds i8**, i8*** %23, i64 %24
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 1
  %28 = load i8***, i8**** %27, align 8
  %29 = zext i32 %.02 to i64
  %30 = getelementptr inbounds i8**, i8*** %28, i64 %29
  %31 = load i8**, i8*** %30, align 8
  %32 = zext i32 %.02 to i64
  %33 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 1, i64 %32
  %34 = load i8**, i8*** %33, align 8
  br label %35

35:                                               ; preds = %47, %13
  %.01 = phi i32 [ 0, %13 ], [ %48, %47 ]
  %36 = add nsw i32 %6, 2
  %37 = mul nsw i32 %21, %36
  %38 = icmp slt i32 %.01, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds i8*, i8** %34, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds i8*, i8** %31, i64 %43
  store i8* %42, i8** %44, align 8
  %45 = zext i32 %.01 to i64
  %46 = getelementptr inbounds i8*, i8** %26, i64 %45
  store i8* %42, i8** %46, align 8
  br label %47

47:                                               ; preds = %39
  %48 = add nuw nsw i32 %.01, 1
  br label %35, !llvm.loop !7

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %74, %49
  %.1 = phi i32 [ 0, %49 ], [ %75, %74 ]
  %51 = shl nsw i32 %21, 1
  %52 = icmp slt i32 %.1, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = mul nsw i32 %21, %6
  %55 = add nsw i32 %54, %.1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %34, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = add nsw i32 %6, -2
  %60 = mul nsw i32 %21, %59
  %61 = add nsw i32 %60, %.1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %31, i64 %62
  store i8* %58, i8** %63, align 8
  %64 = add nsw i32 %6, -2
  %65 = mul nsw i32 %21, %64
  %66 = add nsw i32 %65, %.1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %34, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = mul nsw i32 %21, %6
  %71 = add nsw i32 %70, %.1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %31, i64 %72
  store i8* %69, i8** %73, align 8
  br label %74

74:                                               ; preds = %53
  %75 = add nuw nsw i32 %.1, 1
  br label %50, !llvm.loop !8

76:                                               ; preds = %50
  br label %77

77:                                               ; preds = %84, %76
  %.2 = phi i32 [ 0, %76 ], [ %85, %84 ]
  %78 = icmp slt i32 %.2, %21
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  %80 = load i8*, i8** %26, align 8
  %81 = sub nsw i32 %.2, %21
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %26, i64 %82
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %79
  %85 = add nuw nsw i32 %.2, 1
  br label %77, !llvm.loop !9

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.02, 1
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %9, !llvm.loop !10

90:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %6 = bitcast %struct.jpeg_d_main_controller** %5 to %struct.my_main_controller**
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %6, align 8
  %8 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  %9 = load i32, i32* %8, align 8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %12 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %12, i64 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %13, align 8
  %15 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 1, i64 0
  %16 = call i32 %14(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef nonnull %15) #2
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %17, label %18

17:                                               ; preds = %10
  br label %34

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %24 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %24, i64 0, i32 1
  %26 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %25, align 8
  %27 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 1, i64 0
  %28 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  call void %26(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef nonnull %27, i32* noundef nonnull %28, i32 noundef %22, i8** noundef %1, i32* noundef %2, i32 noundef %3) #2
  %29 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %30 = load i32, i32* %29, align 4
  %.not2 = icmp ult i32 %30, %22
  br i1 %.not2, label %34, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %20, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_crank_post(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %6 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %6, i64 0, i32 1
  %8 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %7, align 8
  call void %8(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef null, i32* noundef null, i32 noundef 0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @set_bottom_pointers(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %3 = bitcast %struct.jpeg_d_main_controller** %2 to %struct.my_main_controller**
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %6 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  br label %7

7:                                                ; preds = %55, %1
  %.02 = phi i32 [ 0, %1 ], [ %56, %55 ]
  %.0 = phi %struct.jpeg_component_info* [ %6, %1 ], [ %57, %55 ]
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %.02, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %13, %15
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %16, %18
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = urem i32 %21, %16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %11
  %.01 = phi i32 [ %16, %24 ], [ %22, %11 ]
  %26 = icmp eq i32 %.02, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = add nsw i32 %.01, -1
  %29 = sdiv i32 %28, %19
  %30 = add nsw i32 %29, 1
  %31 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 7
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %25
  %33 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 %35
  %37 = load i8***, i8**** %36, align 8
  %38 = zext i32 %.02 to i64
  %39 = getelementptr inbounds i8**, i8*** %37, i64 %38
  %40 = load i8**, i8*** %39, align 8
  br label %41

41:                                               ; preds = %52, %32
  %.03 = phi i32 [ 0, %32 ], [ %53, %52 ]
  %42 = shl nsw i32 %19, 1
  %43 = icmp slt i32 %.03, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = add nsw i32 %.01, -1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %40, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = add nsw i32 %.01, %.03
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %40, i64 %50
  store i8* %48, i8** %51, align 8
  br label %52

52:                                               ; preds = %44
  %53 = add nuw nsw i32 %.03, 1
  br label %41, !llvm.loop !11

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %.02, 1
  %57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %7, !llvm.loop !12

58:                                               ; preds = %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @set_wraparound_pointers(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %3 = bitcast %struct.jpeg_d_main_controller** %2 to %struct.my_main_controller**
  %4 = load %struct.my_main_controller*, %struct.my_main_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  br label %9

9:                                                ; preds = %72, %1
  %.02 = phi i32 [ 0, %1 ], [ %73, %72 ]
  %.0 = phi %struct.jpeg_component_info* [ %8, %1 ], [ %74, %72 ]
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %.02, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %18, %20
  %22 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 0
  %23 = load i8***, i8**** %22, align 8
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds i8**, i8*** %23, i64 %24
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %4, i64 0, i32 4, i64 1
  %28 = load i8***, i8**** %27, align 8
  %29 = zext i32 %.02 to i64
  %30 = getelementptr inbounds i8**, i8*** %28, i64 %29
  %31 = load i8**, i8*** %30, align 8
  br label %32

32:                                               ; preds = %69, %13
  %.01 = phi i32 [ 0, %13 ], [ %70, %69 ]
  %33 = icmp slt i32 %.01, %21
  br i1 %33, label %34, label %71

34:                                               ; preds = %32
  %35 = add nsw i32 %6, 1
  %36 = mul nsw i32 %21, %35
  %37 = add nsw i32 %36, %.01
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %26, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = sub nsw i32 %.01, %21
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %26, i64 %42
  store i8* %40, i8** %43, align 8
  %44 = add nsw i32 %6, 1
  %45 = mul nsw i32 %21, %44
  %46 = add nsw i32 %45, %.01
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %31, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = sub nsw i32 %.01, %21
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %31, i64 %51
  store i8* %49, i8** %52, align 8
  %53 = zext i32 %.01 to i64
  %54 = getelementptr inbounds i8*, i8** %26, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = add nsw i32 %6, 2
  %57 = mul nsw i32 %21, %56
  %58 = add nsw i32 %57, %.01
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %26, i64 %59
  store i8* %55, i8** %60, align 8
  %61 = zext i32 %.01 to i64
  %62 = getelementptr inbounds i8*, i8** %31, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = add nsw i32 %6, 2
  %65 = mul nsw i32 %21, %64
  %66 = add nsw i32 %65, %.01
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %31, i64 %67
  store i8* %63, i8** %68, align 8
  br label %69

69:                                               ; preds = %34
  %70 = add nuw nsw i32 %.01, 1
  br label %32, !llvm.loop !13

71:                                               ; preds = %32
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.02, 1
  %74 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %9, !llvm.loop !14

75:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
