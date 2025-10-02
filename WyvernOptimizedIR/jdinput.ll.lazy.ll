; ModuleID = './jdinput.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 0, i64 noundef 48) #4
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %9 = bitcast %struct.jpeg_input_controller** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to i32 (%struct.jpeg_decompress_struct*)**
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @reset_input_controller, void (%struct.jpeg_decompress_struct*)** %12, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_input_pass, void (%struct.jpeg_decompress_struct*)** %14, align 8
  %15 = getelementptr inbounds i8, i8* %7, i64 24
  %16 = bitcast i8* %15 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_input_pass, void (%struct.jpeg_decompress_struct*)** %16, align 8
  %17 = getelementptr inbounds i8, i8* %7, i64 32
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds i8, i8* %7, i64 36
  %20 = bitcast i8* %19 to i32*
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i8, i8* %7, i64 40
  %22 = bitcast i8* %21 to i32*
  store i32 1, i32* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @consume_markers(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %3 = bitcast %struct.jpeg_input_controller** %2 to %struct.my_input_controller**
  %4 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %5 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 78
  %10 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %10, i64 0, i32 1
  %12 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %11, align 8
  %13 = call i32 %12(%struct.jpeg_decompress_struct* noundef %0) #4
  switch i32 %13, label %65 [
    i32 1, label %14
    i32 2, label %33
    i32 0, label %64
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %19, label %17

17:                                               ; preds = %14
  call void @initial_setup(%struct.jpeg_decompress_struct* noundef %0)
  %18 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 1
  store i32 0, i32* %18, align 8
  br label %32

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %.not4 = icmp eq i32 %21, 0
  br i1 %.not4, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 5
  store i32 34, i32* %25, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %28, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* noundef %30) #4
  br label %31

31:                                               ; preds = %22, %19
  call void @start_input_pass(%struct.jpeg_decompress_struct* noundef %0)
  br label %32

32:                                               ; preds = %31, %17
  br label %65

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 0, i32 5
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 1
  %36 = load i32, i32* %35, align 8
  %.not1 = icmp eq i32 %36, 0
  br i1 %.not1, label %52, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 78
  %39 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %39, i64 0, i32 6
  %41 = load i32, i32* %40, align 4
  %.not2 = icmp eq i32 %41, 0
  br i1 %.not2, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 5
  store i32 58, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i64 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %48, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* noundef %50) #4
  br label %51

51:                                               ; preds = %42, %37
  br label %63

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 36
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 34
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 34
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 36
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %51
  br label %65

64:                                               ; preds = %8
  br label %65

65:                                               ; preds = %64, %63, %32, %8
  br label %66

66:                                               ; preds = %65, %7
  %.0 = phi i32 [ 2, %7 ], [ %13, %65 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_input_controller(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %3 = bitcast %struct.jpeg_input_controller** %2 to %struct.my_input_controller**
  %4 = load %struct.my_input_controller*, %struct.my_input_controller** %3, align 8
  %5 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %5, align 8
  %6 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 0, i32 4
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 0, i32 5
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.my_input_controller, %struct.my_input_controller* %4, i64 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 4
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %11, align 8
  %13 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* noundef %13) #4
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 78
  %15 = bitcast %struct.jpeg_marker_reader** %14 to void (%struct.jpeg_decompress_struct*)***
  %16 = load void (%struct.jpeg_decompress_struct*)**, void (%struct.jpeg_decompress_struct*)*** %15, align 8
  %17 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %16, align 8
  call void %17(%struct.jpeg_decompress_struct* noundef %0) #4
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 38
  store [64 x i32]* null, [64 x i32]** %18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  call void @per_scan_setup(%struct.jpeg_decompress_struct* noundef %0)
  call void @latch_quant_tables(%struct.jpeg_decompress_struct* noundef %0)
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 79
  %3 = bitcast %struct.jpeg_entropy_decoder** %2 to void (%struct.jpeg_decompress_struct*)***
  %4 = load void (%struct.jpeg_decompress_struct*)**, void (%struct.jpeg_decompress_struct*)*** %3, align 8
  %5 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %4, align 8
  call void %5(%struct.jpeg_decompress_struct* noundef %0) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %7 = bitcast %struct.jpeg_d_coef_controller** %6 to void (%struct.jpeg_decompress_struct*)***
  %8 = load void (%struct.jpeg_decompress_struct*)**, void (%struct.jpeg_decompress_struct*)*** %7, align 8
  %9 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %8, align 8
  call void %9(%struct.jpeg_decompress_struct* noundef %0) #4
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %11 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %11, i64 0, i32 1
  %13 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %15 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %15, i64 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* %13, i32 (%struct.jpeg_decompress_struct*)** %16, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @finish_input_pass(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %3 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %3, i64 0, i32 0
  store i32 (%struct.jpeg_decompress_struct*)* @consume_markers, i32 (%struct.jpeg_decompress_struct*)** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initial_setup(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %3 = load i32, i32* %2, align 4
  %4 = icmp ugt i32 %3, 65500
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = icmp ugt i32 %7, 65500
  br i1 %8, label %9, label %21

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 5
  store i32 40, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 6, i32 0, i64 0
  store i32 65500, i32* %15, align 4
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #4
  br label %21

21:                                               ; preds = %9, %5
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 42
  %23 = load i32, i32* %22, align 8
  %.not = icmp eq i32 %23, 8
  br i1 %.not, label %38, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i64 0, i32 5
  store i32 13, i32* %27, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 42
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 6, i32 0, i64 0
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i64 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %37) #4
  br label %38

38:                                               ; preds = %24, %21
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 10
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 5
  store i32 24, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i64 0, i32 6, i32 0, i64 0
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i64 0, i32 6, i32 0, i64 1
  store i32 10, i32* %53, align 4
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i64 0, i32 0
  %57 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %56, align 8
  %58 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* noundef %58) #4
  br label %59

59:                                               ; preds = %42, %38
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %62, align 8
  br label %64

64:                                               ; preds = %118, %59
  %.01 = phi i32 [ 0, %59 ], [ %119, %118 ]
  %.0 = phi %struct.jpeg_component_info* [ %63, %59 ], [ %120, %118 ]
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %.01, %66
  br i1 %67, label %68, label %121

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 4
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 4
  br i1 %83, label %84, label %93

84:                                               ; preds = %80, %76, %72, %68
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %85, align 8
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i64 0, i32 5
  store i32 16, i32* %87, align 8
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %88, align 8
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i64 0, i32 0
  %91 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %90, align 8
  %92 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %91(%struct.jpeg_common_struct* noundef %92) #4
  br label %93

93:                                               ; preds = %84, %80
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  br label %103

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 2
  br label %103

103:                                              ; preds = %101, %99
  %.in = phi i32* [ %100, %99 ], [ %102, %101 ]
  %104 = load i32, i32* %.in, align 4
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  br label %115

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  br label %115

115:                                              ; preds = %113, %111
  %.in4 = phi i32* [ %112, %111 ], [ %114, %113 ]
  %116 = load i32, i32* %.in4, align 4
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  store i32 %116, i32* %117, align 8
  br label %118

118:                                              ; preds = %115
  %119 = add nuw nsw i32 %.01, 1
  %120 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %64, !llvm.loop !4

121:                                              ; preds = %64
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  store i32 8, i32* %122, align 4
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %124 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %123, align 8
  br label %125

125:                                              ; preds = %187, %121
  %.12 = phi i32 [ 0, %121 ], [ %188, %187 ]
  %.1 = phi %struct.jpeg_component_info* [ %124, %121 ], [ %189, %187 ]
  %126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %.12, %127
  br i1 %128, label %129, label %190

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 9
  store i32 8, i32* %130, align 4
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %133, %136
  %138 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %139 = load i32, i32* %138, align 4
  %140 = shl nsw i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = call i64 @jdiv_round_up(i64 noundef %137, i64 noundef %141) #4
  %143 = trunc i64 %142 to i32
  %144 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 7
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %147, %150
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %153 = load i32, i32* %152, align 8
  %154 = shl nsw i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = call i64 @jdiv_round_up(i64 noundef %151, i64 noundef %155) #4
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 8
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %161, %164
  %166 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = call i64 @jdiv_round_up(i64 noundef %165, i64 noundef %168) #4
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 10
  store i32 %170, i32* %171, align 8
  %172 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %174, %177
  %179 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = call i64 @jdiv_round_up(i64 noundef %178, i64 noundef %181) #4
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 11
  store i32 %183, i32* %184, align 4
  %185 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 12
  store i32 1, i32* %185, align 8
  %186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 19
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %186, align 8
  br label %187

187:                                              ; preds = %129
  %188 = add nuw nsw i32 %.12, 1
  %189 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 1
  br label %125, !llvm.loop !6

190:                                              ; preds = %125
  %191 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %195 = load i32, i32* %194, align 8
  %196 = shl nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = call i64 @jdiv_round_up(i64 noundef %193, i64 noundef %197) #4
  %199 = trunc i64 %198 to i32
  %200 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 60
  store i32 %199, i32* %200, align 8
  %201 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %190
  %207 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 44
  %208 = load i32, i32* %207, align 8
  %.not3 = icmp eq i32 %208, 0
  br i1 %.not3, label %213, label %209

209:                                              ; preds = %206, %190
  %210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %211 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %210, align 8
  %212 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %211, i64 0, i32 4
  store i32 1, i32* %212, align 8
  br label %217

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %215 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %214, align 8
  %216 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %215, i64 0, i32 4
  store i32 0, i32* %216, align 8
  br label %217

217:                                              ; preds = %213, %209
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @per_scan_setup(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %3 = load i32, i32* %2, align 8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 63, i64 0
  %7 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 64
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 65
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 13
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 14
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 15
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 16
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 17
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = urem i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 3
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %27, %5
  %.02 = phi i32 [ %29, %27 ], [ %25, %5 ]
  %31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %7, i64 0, i32 18
  store i32 %.02, i32* %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 66
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 67, i64 0
  store i32 0, i32* %33, align 4
  br label %154

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %59

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 5
  store i32 24, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i64 0, i32 6, i32 0, i64 0
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i64 0, i32 6, i32 0, i64 1
  store i32 4, i32* %53, align 4
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i64 0, i32 0
  %57 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %56, align 8
  %58 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* noundef %58) #4
  br label %59

59:                                               ; preds = %42, %38
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %64 = load i32, i32* %63, align 4
  %65 = shl nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = call i64 @jdiv_round_up(i64 noundef %62, i64 noundef %66) #4
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 64
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %74 = load i32, i32* %73, align 8
  %75 = shl nsw i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = call i64 @jdiv_round_up(i64 noundef %72, i64 noundef %76) #4
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 65
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 66
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %151, %59
  %.0 = phi i32 [ 0, %59 ], [ %152, %151 ]
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %.0, %83
  br i1 %84, label %85, label %153

85:                                               ; preds = %81
  %86 = zext i32 %.0 to i64
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 63, i64 %86
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %87, align 8
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 13
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 14
  store i32 %93, i32* %94, align 8
  %95 = mul nsw i32 %90, %93
  %96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 15
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %98, %100
  %102 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 16
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = urem i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %85
  %110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 13
  %111 = load i32, i32* %110, align 4
  br label %112

112:                                              ; preds = %109, %85
  %.1 = phi i32 [ %111, %109 ], [ %107, %85 ]
  %113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 17
  store i32 %.1, i32* %113, align 4
  %114 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = urem i32 %115, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 14
  %122 = load i32, i32* %121, align 8
  br label %123

123:                                              ; preds = %120, %112
  %.2 = phi i32 [ %122, %120 ], [ %118, %112 ]
  %124 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 18
  store i32 %.2, i32* %124, align 8
  %125 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i64 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 66
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %126
  %130 = icmp sgt i32 %129, 10
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %132, align 8
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i64 0, i32 5
  store i32 11, i32* %134, align 8
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %135, align 8
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i64 0, i32 0
  %138 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %137, align 8
  %139 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %138(%struct.jpeg_common_struct* noundef %139) #4
  br label %140

140:                                              ; preds = %131, %123
  br label %141

141:                                              ; preds = %143, %140
  %.01 = phi i32 [ %126, %140 ], [ %144, %143 ]
  %142 = icmp sgt i32 %.01, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %141
  %144 = add nsw i32 %.01, -1
  %145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 66
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 67, i64 %148
  store i32 %.0, i32* %149, align 4
  br label %141, !llvm.loop !7

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150
  %152 = add nuw nsw i32 %.0, 1
  br label %81, !llvm.loop !8

153:                                              ; preds = %81
  br label %154

154:                                              ; preds = %153, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @latch_quant_tables(%struct.jpeg_decompress_struct* noundef %0) #0 {
  br label %2

2:                                                ; preds = %49, %1
  %.0 = phi i32 [ 0, %1 ], [ %50, %49 ]
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 62
  %4 = load i32, i32* %3, align 8
  %5 = icmp slt i32 %.0, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 63, i64 %7
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %9, i64 0, i32 19
  %11 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %10, align 8
  %.not = icmp eq %struct.JQUANT_TBL* %11, null
  br i1 %.not, label %13, label %12

12:                                               ; preds = %6
  br label %49

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %9, i64 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %15, 3
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %20
  %22 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %21, align 8
  %23 = icmp eq %struct.JQUANT_TBL* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %17, %13
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i64 0, i32 5
  store i32 51, i32* %27, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i64 0, i32 6, i32 0, i64 0
  store i32 %15, i32* %30, align 4
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i64 0, i32 0
  %34 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %33, align 8
  %35 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %34(%struct.jpeg_common_struct* noundef %35) #4
  br label %36

36:                                               ; preds = %24, %19
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %38 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %38, i64 0, i32 0
  %40 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %39, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %42 = call i8* %40(%struct.jpeg_common_struct* noundef %41, i32 noundef 1, i64 noundef 132) #4
  %43 = sext i32 %15 to i64
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %43
  %45 = bitcast %struct.JQUANT_TBL** %44 to i8**
  %46 = load i8*, i8** %45, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(132) %42, i8* noundef nonnull align 1 dereferenceable(132) %46, i64 132, i1 false)
  %47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %9, i64 0, i32 19
  %48 = bitcast %struct.JQUANT_TBL** %47 to i8**
  store i8* %42, i8** %48, align 8
  br label %49

49:                                               ; preds = %36, %12
  %50 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !9

51:                                               ; preds = %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }

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
