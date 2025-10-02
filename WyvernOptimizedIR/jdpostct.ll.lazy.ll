; ModuleID = './jdpostct.ll'
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
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %5, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8* %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i64 noundef 48) #2
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %10 = bitcast %struct.jpeg_d_post_controller** %9 to i8**
  store i8* %8, i8** %10, align 8
  %11 = bitcast i8* %8 to void (%struct.jpeg_decompress_struct*, i32)**
  store void (%struct.jpeg_decompress_struct*, i32)* @start_pass_dpost, void (%struct.jpeg_decompress_struct*, i32)** %11, align 8
  %12 = getelementptr inbounds i8, i8* %8, i64 16
  %13 = bitcast i8* %12 to %struct.jvirt_sarray_control**
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %13, align 8
  %14 = getelementptr inbounds i8, i8* %8, i64 24
  %15 = bitcast i8* %14 to i8***
  store i8** null, i8*** %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %17 = load i32, i32* %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %67, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds i8, i8* %8, i64 32
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 8
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %49, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i64 0, i32 4
  %27 = load %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %26, align 8
  %28 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %32 = load i32, i32* %31, align 8
  %33 = mul i32 %30, %32
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %8, i64 32
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = call i64 @jround_up(i64 noundef %36, i64 noundef %40) #2
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds i8, i8* %8, i64 32
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.jvirt_sarray_control* %27(%struct.jpeg_common_struct* noundef %28, i32 noundef 1, i32 noundef 0, i32 noundef %33, i32 noundef %42, i32 noundef %45) #2
  %47 = getelementptr inbounds i8, i8* %8, i64 16
  %48 = bitcast i8* %47 to %struct.jvirt_sarray_control**
  store %struct.jvirt_sarray_control* %46, %struct.jvirt_sarray_control** %48, align 8
  br label %66

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %51 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %51, i64 0, i32 2
  %53 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %52, align 8
  %54 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %58 = load i32, i32* %57, align 8
  %59 = mul i32 %56, %58
  %60 = getelementptr inbounds i8, i8* %8, i64 32
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = call i8** %53(%struct.jpeg_common_struct* noundef %54, i32 noundef 1, i32 noundef %59, i32 noundef %62) #2
  %64 = getelementptr inbounds i8, i8* %8, i64 24
  %65 = bitcast i8* %64 to i8***
  store i8** %63, i8*** %65, align 8
  br label %66

66:                                               ; preds = %49, %23
  br label %67

67:                                               ; preds = %66, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_dpost(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %4 = bitcast %struct.jpeg_d_post_controller** %3 to %struct.my_post_controller**
  %5 = load %struct.my_post_controller*, %struct.my_post_controller** %4, align 8
  switch i32 %1, label %64 [
    i32 0, label %6
    i32 3, label %34
    i32 2, label %49
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %8 = load i32, i32* %7, align 4
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %27, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_1pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %10, align 8
  %11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 2
  %12 = load i8**, i8*** %11, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %16 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %16, i64 0, i32 7
  %18 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 1
  %21 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %20, align 8
  %22 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i8** %18(%struct.jpeg_common_struct* noundef %19, %struct.jvirt_sarray_control* noundef %21, i32 noundef 0, i32 noundef %23, i32 noundef 1) #2
  %25 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 2
  store i8** %24, i8*** %25, align 8
  br label %26

26:                                               ; preds = %14, %9
  br label %33

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %29 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %29, i64 0, i32 1
  %31 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %30, align 8
  %32 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* %31, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %32, align 8
  br label %33

33:                                               ; preds = %27, %26
  br label %73

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 1
  %36 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %35, align 8
  %37 = icmp eq %struct.jvirt_sarray_control* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i64 0, i32 5
  store i32 4, i32* %41, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i64 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %44, align 8
  %46 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* noundef %46) #2
  br label %47

47:                                               ; preds = %38, %34
  %48 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_prepass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %48, align 8
  br label %73

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 1
  %51 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %50, align 8
  %52 = icmp eq %struct.jvirt_sarray_control* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i64 0, i32 5
  store i32 4, i32* %56, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i64 0, i32 0
  %60 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %59, align 8
  %61 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %60(%struct.jpeg_common_struct* noundef %61) #2
  br label %62

62:                                               ; preds = %53, %49
  %63 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @post_process_2pass, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %63, align 8
  br label %73

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i64 0, i32 5
  store i32 4, i32* %67, align 8
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i64 0, i32 0
  %71 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %70, align 8
  %72 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %71(%struct.jpeg_common_struct* noundef %72) #2
  br label %73

73:                                               ; preds = %64, %62, %47, %33
  %74 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 5
  store i32 0, i32* %74, align 8
  %75 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %5, i64 0, i32 4
  store i32 0, i32* %75, align 4
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @post_process_1pass(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %10 = bitcast %struct.jpeg_d_post_controller** %9 to %struct.my_post_controller**
  %11 = load %struct.my_post_controller*, %struct.my_post_controller** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sub i32 %6, %12
  %14 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i64 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ugt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i64 0, i32 3
  %19 = load i32, i32* %18, align 8
  br label %20

20:                                               ; preds = %17, %7
  %.0 = phi i32 [ %19, %17 ], [ %13, %7 ]
  store i32 0, i32* %8, align 4
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %22 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %22, i64 0, i32 1
  %24 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %23, align 8
  %25 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i64 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  call void %24(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %26, i32* noundef nonnull %8, i32 noundef %.0) #2
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %28 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %28, i64 0, i32 1
  %30 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %29, align 8
  %31 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %11, i64 0, i32 2
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %4, i64 %34
  %36 = load i32, i32* %8, align 4
  call void %30(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %32, i8** noundef %35, i32 noundef %36) #2
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @post_process_prepass(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** nocapture noundef readnone %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %9 = bitcast %struct.jpeg_d_post_controller** %8 to %struct.my_post_controller**
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %9, align 8
  %11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %16 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %16, i64 0, i32 7
  %18 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 1
  %21 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %20, align 8
  %22 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i8** %18(%struct.jpeg_common_struct* noundef %19, %struct.jvirt_sarray_control* noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 1) #2
  %27 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 2
  store i8** %26, i8*** %27, align 8
  br label %28

28:                                               ; preds = %14, %7
  %29 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %32 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %32, i64 0, i32 1
  %34 = load void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %33, align 8
  %35 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %38 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %39 = load i32, i32* %38, align 8
  call void %34(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %36, i32* noundef nonnull %37, i32 noundef %39) #2
  %40 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ugt i32 %41, %30
  br i1 %42, label %43, label %57

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %45, %30
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %48 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %48, i64 0, i32 1
  %50 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %49, align 8
  %51 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = zext i32 %30 to i64
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  call void %50(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %54, i8** noundef null, i32 noundef %46) #2
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, %46
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %43, %28
  %58 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %61 = load i32, i32* %60, align 8
  %.not = icmp ult i32 %59, %61
  br i1 %.not, label %69, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @post_process_2pass(%struct.jpeg_decompress_struct* noundef %0, i8*** nocapture noundef readnone %1, i32* nocapture noundef readnone %2, i32 noundef %3, i8** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %9 = bitcast %struct.jpeg_d_post_controller** %8 to %struct.my_post_controller**
  %10 = load %struct.my_post_controller*, %struct.my_post_controller** %9, align 8
  %11 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %16 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %16, i64 0, i32 7
  %18 = load i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %20 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 1
  %21 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %20, align 8
  %22 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i8** %18(%struct.jpeg_common_struct* noundef %19, %struct.jvirt_sarray_control* noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 0) #2
  %27 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 2
  store i8** %26, i8*** %27, align 8
  br label %28

28:                                               ; preds = %14, %7
  %29 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %30, %32
  %34 = load i32, i32* %5, align 4
  %35 = sub i32 %6, %34
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %28
  %.0 = phi i32 [ %35, %37 ], [ %33, %28 ]
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %40, %42
  %44 = icmp ugt i32 %.0, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %38
  %.1 = phi i32 [ %43, %45 ], [ %.0, %38 ]
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %48 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %48, i64 0, i32 1
  %50 = load void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)** %49, align 8
  %51 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %4, i64 %58
  call void %50(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %56, i8** noundef %59, i32 noundef %.1) #2
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, %.1
  store i32 %61, i32* %5, align 4
  %62 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %63, %.1
  store i32 %64, i32* %62, align 8
  %65 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %66 = load i32, i32* %65, align 8
  %.not = icmp ult i32 %64, %66
  br i1 %.not, label %74, label %67

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = getelementptr inbounds %struct.my_post_controller, %struct.my_post_controller* %10, i64 0, i32 5
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %46
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
