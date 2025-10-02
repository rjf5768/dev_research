; ModuleID = './jccoefct.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jccoefct.c"
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
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x [64 x i16]*], [10 x %struct.jvirt_barray_control*] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_coef_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %5, align 8
  %7 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8* %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i64 noundef 192) #3
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %10 = bitcast %struct.jpeg_c_coef_controller** %9 to i8**
  store i8* %8, i8** %10, align 8
  %11 = bitcast i8* %8 to void (%struct.jpeg_compress_struct*, i32)**
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %11, align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %52, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %13, align 8
  br label %15

15:                                               ; preds = %48, %12
  %.02 = phi i32 [ 0, %12 ], [ %49, %48 ]
  %.01 = phi %struct.jpeg_component_info* [ %14, %12 ], [ %50, %48 ]
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %.02, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i64 0, i32 5
  %23 = load %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %25 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = call i64 @jround_up(i64 noundef %27, i64 noundef %30) #3
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = call i64 @jround_up(i64 noundef %35, i64 noundef %38) #3
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.jvirt_barray_control* %23(%struct.jpeg_common_struct* noundef %24, i32 noundef 1, i32 noundef 0, i32 noundef %32, i32 noundef %40, i32 noundef %42) #3
  %44 = getelementptr inbounds i8, i8* %8, i64 112
  %45 = bitcast i8* %44 to [10 x %struct.jvirt_barray_control*]*
  %46 = zext i32 %.02 to i64
  %47 = getelementptr inbounds [10 x %struct.jvirt_barray_control*], [10 x %struct.jvirt_barray_control*]* %45, i64 0, i64 %46
  store %struct.jvirt_barray_control* %43, %struct.jvirt_barray_control** %47, align 8
  br label %48

48:                                               ; preds = %19
  %49 = add nuw nsw i32 %.02, 1
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 1
  br label %15, !llvm.loop !4

51:                                               ; preds = %15
  br label %74

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %54 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %53, align 8
  %55 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %54, i64 0, i32 1
  %56 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %55, align 8
  %57 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %58 = call i8* %56(%struct.jpeg_common_struct* noundef %57, i32 noundef 1, i64 noundef 1280) #3
  %59 = bitcast i8* %58 to [64 x i16]*
  br label %60

60:                                               ; preds = %69, %52
  %.0 = phi i32 [ 0, %52 ], [ %70, %69 ]
  %61 = icmp ult i32 %.0, 10
  br i1 %61, label %62, label %71

62:                                               ; preds = %60
  %63 = zext i32 %.0 to i64
  %64 = getelementptr inbounds [64 x i16], [64 x i16]* %59, i64 %63
  %65 = getelementptr inbounds i8, i8* %8, i64 32
  %66 = bitcast i8* %65 to [10 x [64 x i16]*]*
  %67 = zext i32 %.0 to i64
  %68 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %66, i64 0, i64 %67
  store [64 x i16]* %64, [64 x i16]** %68, align 8
  br label %69

69:                                               ; preds = %62
  %70 = add nuw nsw i32 %.0, 1
  br label %60, !llvm.loop !6

71:                                               ; preds = %60
  %72 = getelementptr inbounds i8, i8* %8, i64 112
  %73 = bitcast i8* %72 to %struct.jvirt_barray_control**
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %73, align 8
  br label %74

74:                                               ; preds = %71, %51
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %4 = bitcast %struct.jpeg_c_coef_controller** %3 to %struct.my_coef_controller**
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %4, align 8
  %6 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  store i32 0, i32* %6, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %0)
  switch i32 %1, label %51 [
    i32 0, label %7
    i32 3, label %21
    i32 2, label %36
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 6, i64 0
  %9 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %8, align 8
  %.not = icmp eq %struct.jvirt_barray_control* %9, null
  br i1 %.not, label %19, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 5
  store i32 4, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #3
  br label %19

19:                                               ; preds = %10, %7
  %20 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_data, i32 (%struct.jpeg_compress_struct*, i8***)** %20, align 8
  br label %60

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 6, i64 0
  %23 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %22, align 8
  %24 = icmp eq %struct.jvirt_barray_control* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 5
  store i32 4, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %33) #3
  br label %34

34:                                               ; preds = %25, %21
  %35 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_first_pass, i32 (%struct.jpeg_compress_struct*, i8***)** %35, align 8
  br label %60

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 6, i64 0
  %38 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %37, align 8
  %39 = icmp eq %struct.jvirt_barray_control* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i64 0, i32 5
  store i32 4, i32* %43, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i64 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %46, align 8
  %48 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* noundef %48) #3
  br label %49

49:                                               ; preds = %40, %36
  %50 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %50, align 8
  br label %60

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %52, align 8
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i64 0, i32 5
  store i32 4, i32* %54, align 8
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %56 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %56, i64 0, i32 0
  %58 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %57, align 8
  %59 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %58(%struct.jpeg_common_struct* noundef %59) #3
  br label %60

60:                                               ; preds = %51, %49, %34, %19
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %3 = bitcast %struct.jpeg_c_coef_controller** %2 to %struct.my_coef_controller**
  %4 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 4
  store i32 1, i32* %9, align 4
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 0
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i64 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 4
  store i32 %21, i32* %22, align 4
  br label %29

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 0
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i64 0, i32 18
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 4
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29, %8
  %31 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 3
  store i32 0, i32* %32, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_data(%struct.jpeg_compress_struct* noundef %0, i8*** nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %4 = bitcast %struct.jpeg_c_coef_controller** %3 to %struct.my_coef_controller**
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 43
  %7 = load i32, i32* %6, align 8
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %10, -1
  %12 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  br label %14

14:                                               ; preds = %154, %2
  %.02 = phi i32 [ %13, %2 ], [ %155, %154 ]
  %15 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %.02, %16
  br i1 %17, label %18, label %156

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 2
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %150, %18
  %.04 = phi i32 [ %20, %18 ], [ %151, %150 ]
  %.not = icmp ugt i32 %.04, %8
  br i1 %.not, label %152, label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %137, %22
  %.07 = phi i32 [ 0, %22 ], [ %.18, %137 ]
  %.05 = phi i32 [ 0, %22 ], [ %138, %137 ]
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %.05, %25
  br i1 %26, label %27, label %139

27:                                               ; preds = %23
  %28 = zext i32 %.05 to i64
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %28
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %29, align 8
  %31 = icmp ult i32 %.04, %8
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  br label %36

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 17
  br label %36

36:                                               ; preds = %34, %32
  %.in = phi i32* [ %33, %32 ], [ %35, %34 ]
  %37 = load i32, i32* %.in, align 4
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 16
  %39 = load i32, i32* %38, align 8
  %40 = mul i32 %.04, %39
  %41 = shl nsw i32 %.02, 3
  br label %42

42:                                               ; preds = %130, %36
  %.18 = phi i32 [ %.07, %36 ], [ %134, %130 ]
  %.03 = phi i32 [ 0, %36 ], [ %135, %130 ]
  %.01 = phi i32 [ %41, %36 ], [ %131, %130 ]
  %43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 14
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %.03, %44
  br i1 %45, label %46, label %136

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %48, %11
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %.02, %.03
  %52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 18
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 58
  %57 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %57, i64 0, i32 1
  %59 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %58, align 8
  %60 = zext i32 %.05 to i64
  %61 = getelementptr inbounds i8**, i8*** %1, i64 %60
  %62 = load i8**, i8*** %61, align 8
  %63 = sext i32 %.18 to i64
  %64 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %63
  %65 = load [64 x i16]*, [64 x i16]** %64, align 8
  call void %59(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %30, i8** noundef %62, [64 x i16]* noundef %65, i32 noundef %.01, i32 noundef %40, i32 noundef %37) #3
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %37, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %55
  %70 = add nsw i32 %.18, %37
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %71
  %73 = bitcast [64 x i16]** %72 to i8**
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, %37
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 7
  call void @jzero_far(i8* noundef %74, i64 noundef %79) #3
  br label %80

80:                                               ; preds = %97, %69
  %.06 = phi i32 [ %37, %69 ], [ %98, %97 ]
  %81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %.06, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = add nsw i32 %.18, %.06
  %86 = add nsw i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %87
  %89 = load [64 x i16]*, [64 x i16]** %88, align 8
  %90 = getelementptr inbounds [64 x i16], [64 x i16]* %89, i64 0, i64 0
  %91 = load i16, i16* %90, align 2
  %92 = add nsw i32 %.18, %.06
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %93
  %95 = load [64 x i16]*, [64 x i16]** %94, align 8
  %96 = getelementptr inbounds [64 x i16], [64 x i16]* %95, i64 0, i64 0
  store i16 %91, i16* %96, align 2
  br label %97

97:                                               ; preds = %84
  %98 = add nsw i32 %.06, 1
  br label %80, !llvm.loop !7

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %55
  br label %129

101:                                              ; preds = %50
  %102 = sext i32 %.18 to i64
  %103 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %102
  %104 = bitcast [64 x i16]** %103 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = shl nsw i64 %108, 7
  call void @jzero_far(i8* noundef %105, i64 noundef %109) #3
  br label %110

110:                                              ; preds = %126, %101
  %.1 = phi i32 [ 0, %101 ], [ %127, %126 ]
  %111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %.1, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = add nsw i32 %.18, -1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %116
  %118 = load [64 x i16]*, [64 x i16]** %117, align 8
  %119 = getelementptr inbounds [64 x i16], [64 x i16]* %118, i64 0, i64 0
  %120 = load i16, i16* %119, align 2
  %121 = add nsw i32 %.18, %.1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 %122
  %124 = load [64 x i16]*, [64 x i16]** %123, align 8
  %125 = getelementptr inbounds [64 x i16], [64 x i16]* %124, i64 0, i64 0
  store i16 %120, i16* %125, align 2
  br label %126

126:                                              ; preds = %114
  %127 = add nuw nsw i32 %.1, 1
  br label %110, !llvm.loop !8

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128, %100
  br label %130

130:                                              ; preds = %129
  %131 = add i32 %.01, 8
  %132 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 0, i32 13
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %.18, %133
  %135 = add nuw nsw i32 %.03, 1
  br label %42, !llvm.loop !9

136:                                              ; preds = %42
  br label %137

137:                                              ; preds = %136
  %138 = add nuw nsw i32 %.05, 1
  br label %23, !llvm.loop !10

139:                                              ; preds = %23
  %140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 59
  %141 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %140, align 8
  %142 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %141, i64 0, i32 1
  %143 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %142, align 8
  %144 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 5, i64 0
  %145 = call i32 %143(%struct.jpeg_compress_struct* noundef %0, [64 x i16]** noundef nonnull %144) #3
  %.not11 = icmp eq i32 %145, 0
  br i1 %.not11, label %146, label %149

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 3
  store i32 %.02, i32* %147, align 8
  %148 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 2
  store i32 %.04, i32* %148, align 4
  br label %160

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149
  %151 = add i32 %.04, 1
  br label %21, !llvm.loop !11

152:                                              ; preds = %21
  %153 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 2
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %152
  %155 = add nsw i32 %.02, 1
  br label %14, !llvm.loop !12

156:                                              ; preds = %14
  %157 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = add i32 %158, 1
  store i32 %159, i32* %157, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %0)
  br label %160

160:                                              ; preds = %156, %146
  %.0 = phi i32 [ 0, %146 ], [ 1, %156 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_first_pass(%struct.jpeg_compress_struct* noundef %0, i8*** nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %4 = bitcast %struct.jpeg_c_coef_controller** %3 to %struct.my_coef_controller**
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %7 = load i32, i32* %6, align 8
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  br label %11

11:                                               ; preds = %141, %2
  %.06 = phi i32 [ 0, %2 ], [ %142, %141 ]
  %.02 = phi %struct.jpeg_component_info* [ %10, %2 ], [ %143, %141 ]
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %.06, %13
  br i1 %14, label %15, label %144

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i64 0, i32 8
  %19 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %18, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %21 = zext i32 %.06 to i64
  %22 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 6, i64 %21
  %23 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %22, align 8
  %24 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = mul i32 %25, %27
  %29 = call [64 x i16]** %19(%struct.jpeg_common_struct* noundef %20, %struct.jvirt_barray_control* noundef %23, i32 noundef %28, i32 noundef %27, i32 noundef 1) #3
  %30 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %31, %8
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 3
  %35 = load i32, i32* %34, align 4
  br label %47

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = urem i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 3
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %43, %36
  %.07 = phi i32 [ %45, %43 ], [ %41, %36 ]
  br label %47

47:                                               ; preds = %46, %33
  %.18 = phi i32 [ %35, %33 ], [ %.07, %46 ]
  %48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = urem i32 %49, %51
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = sub nsw i32 %51, %52
  br label %56

56:                                               ; preds = %54, %47
  %.03 = phi i32 [ %55, %54 ], [ %52, %47 ]
  br label %57

57:                                               ; preds = %91, %56
  %.09 = phi i32 [ 0, %56 ], [ %92, %91 ]
  %58 = icmp slt i32 %.09, %.18
  br i1 %58, label %59, label %93

59:                                               ; preds = %57
  %60 = zext i32 %.09 to i64
  %61 = getelementptr inbounds [64 x i16]*, [64 x i16]** %29, i64 %60
  %62 = load [64 x i16]*, [64 x i16]** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 58
  %64 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %64, i64 0, i32 1
  %66 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %65, align 8
  %67 = zext i32 %.06 to i64
  %68 = getelementptr inbounds i8**, i8*** %1, i64 %67
  %69 = load i8**, i8*** %68, align 8
  %70 = shl nsw i32 %.09, 3
  call void %66(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %.02, i8** noundef %69, [64 x i16]* noundef %62, i32 noundef %70, i32 noundef 0, i32 noundef %49) #3
  %71 = icmp sgt i32 %.03, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %59
  %73 = zext i32 %49 to i64
  %74 = getelementptr inbounds [64 x i16], [64 x i16]* %62, i64 %73
  %75 = bitcast [64 x i16]* %74 to i8*
  %76 = sext i32 %.03 to i64
  %77 = shl nsw i64 %76, 7
  call void @jzero_far(i8* noundef %75, i64 noundef %77) #3
  %78 = getelementptr inbounds [64 x i16], [64 x i16]* %74, i64 -1
  %79 = getelementptr inbounds [64 x i16], [64 x i16]* %78, i64 0, i64 0
  %80 = load i16, i16* %79, align 2
  br label %81

81:                                               ; preds = %87, %72
  %.05 = phi i32 [ 0, %72 ], [ %88, %87 ]
  %82 = icmp slt i32 %.05, %.03
  br i1 %82, label %83, label %89

83:                                               ; preds = %81
  %84 = zext i32 %.05 to i64
  %85 = getelementptr inbounds [64 x i16], [64 x i16]* %74, i64 %84
  %86 = getelementptr inbounds [64 x i16], [64 x i16]* %85, i64 0, i64 0
  store i16 %80, i16* %86, align 2
  br label %87

87:                                               ; preds = %83
  %88 = add nuw nsw i32 %.05, 1
  br label %81, !llvm.loop !13

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.09, 1
  br label %57, !llvm.loop !14

93:                                               ; preds = %57
  %94 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, %8
  br i1 %96, label %97, label %140

97:                                               ; preds = %93
  %98 = add i32 %49, %.03
  %99 = udiv i32 %98, %51
  br label %100

100:                                              ; preds = %137, %97
  %.110 = phi i32 [ %.18, %97 ], [ %138, %137 ]
  %101 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %.110, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %100
  %105 = sext i32 %.110 to i64
  %106 = getelementptr inbounds [64 x i16]*, [64 x i16]** %29, i64 %105
  %107 = load [64 x i16]*, [64 x i16]** %106, align 8
  %108 = add nsw i32 %.110, -1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [64 x i16]*, [64 x i16]** %29, i64 %109
  %111 = load [64 x i16]*, [64 x i16]** %110, align 8
  %112 = bitcast [64 x i16]* %107 to i8*
  %113 = zext i32 %98 to i64
  %114 = shl nuw nsw i64 %113, 7
  call void @jzero_far(i8* noundef %112, i64 noundef %114) #3
  br label %115

115:                                              ; preds = %130, %104
  %.04 = phi i32 [ 0, %104 ], [ %135, %130 ]
  %.01 = phi [64 x i16]* [ %107, %104 ], [ %134, %130 ]
  %.0 = phi [64 x i16]* [ %111, %104 ], [ %132, %130 ]
  %116 = icmp ult i32 %.04, %99
  br i1 %116, label %117, label %136

117:                                              ; preds = %115
  %118 = add nsw i32 %51, -1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [64 x i16], [64 x i16]* %.0, i64 %119, i64 0
  %121 = load i16, i16* %120, align 2
  br label %122

122:                                              ; preds = %127, %117
  %.1 = phi i32 [ 0, %117 ], [ %128, %127 ]
  %123 = icmp slt i32 %.1, %51
  br i1 %123, label %124, label %129

124:                                              ; preds = %122
  %125 = zext i32 %.1 to i64
  %126 = getelementptr inbounds [64 x i16], [64 x i16]* %.01, i64 %125, i64 0
  store i16 %121, i16* %126, align 2
  br label %127

127:                                              ; preds = %124
  %128 = add nuw nsw i32 %.1, 1
  br label %122, !llvm.loop !15

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129
  %131 = sext i32 %51 to i64
  %132 = getelementptr inbounds [64 x i16], [64 x i16]* %.0, i64 %131
  %133 = sext i32 %51 to i64
  %134 = getelementptr inbounds [64 x i16], [64 x i16]* %.01, i64 %133
  %135 = add i32 %.04, 1
  br label %115, !llvm.loop !16

136:                                              ; preds = %115
  br label %137

137:                                              ; preds = %136
  %138 = add nsw i32 %.110, 1
  br label %100, !llvm.loop !17

139:                                              ; preds = %100
  br label %140

140:                                              ; preds = %139, %93
  br label %141

141:                                              ; preds = %140
  %142 = add nuw nsw i32 %.06, 1
  %143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 1
  br label %11, !llvm.loop !18

144:                                              ; preds = %11
  %145 = call i32 @compress_output(%struct.jpeg_compress_struct* noundef %0, i8*** noundef %1)
  ret i32 %145
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* noundef %0, i8*** nocapture noundef readnone %1) #0 {
  %3 = alloca [4 x [64 x i16]**], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %5 = bitcast %struct.jpeg_c_coef_controller** %4 to %struct.my_coef_controller**
  %6 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  br label %7

7:                                                ; preds = %33, %2
  %.05 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %.05, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = zext i32 %.05 to i64
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %12
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %16 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %16, i64 0, i32 8
  %18 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %17, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 6, i64 %22
  %24 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %23, align 8
  %25 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i64 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 %26, %28
  %30 = call [64 x i16]** %18(%struct.jpeg_common_struct* noundef %19, %struct.jvirt_barray_control* noundef %24, i32 noundef %29, i32 noundef %28, i32 noundef 0) #3
  %31 = zext i32 %.05 to i64
  %32 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %3, i64 0, i64 %31
  store [64 x i16]** %30, [64 x i16]*** %32, align 8
  br label %33

33:                                               ; preds = %11
  %34 = add nuw nsw i32 %.05, 1
  br label %7, !llvm.loop !19

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 3
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %107, %35
  %.02 = phi i32 [ %37, %35 ], [ %108, %107 ]
  %39 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %.02, %40
  br i1 %41, label %42, label %109

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 2
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %103, %42
  %.03 = phi i32 [ %44, %42 ], [ %104, %103 ]
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 43
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %.03, %47
  br i1 %48, label %49, label %105

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %90, %49
  %.16 = phi i32 [ 0, %49 ], [ %91, %90 ]
  %.04 = phi i32 [ 0, %49 ], [ %.1, %90 ]
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %.16, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = zext i32 %.16 to i64
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %55
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i64 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %.03, %59
  br label %61

61:                                               ; preds = %87, %54
  %.08 = phi i32 [ 0, %54 ], [ %88, %87 ]
  %.1 = phi i32 [ %.04, %54 ], [ %.2, %87 ]
  %62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i64 0, i32 14
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %.08, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = zext i32 %.16 to i64
  %67 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %3, i64 0, i64 %66
  %68 = load [64 x i16]**, [64 x i16]*** %67, align 8
  %69 = add nsw i32 %.08, %.02
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [64 x i16]*, [64 x i16]** %68, i64 %70
  %72 = load [64 x i16]*, [64 x i16]** %71, align 8
  %73 = zext i32 %60 to i64
  %74 = getelementptr inbounds [64 x i16], [64 x i16]* %72, i64 %73
  br label %75

75:                                               ; preds = %82, %65
  %.07 = phi i32 [ 0, %65 ], [ %85, %82 ]
  %.2 = phi i32 [ %.1, %65 ], [ %83, %82 ]
  %.01 = phi [64 x i16]* [ %74, %65 ], [ %84, %82 ]
  %76 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i64 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %.07, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = sext i32 %.2 to i64
  %81 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 5, i64 %80
  store [64 x i16]* %.01, [64 x i16]** %81, align 8
  br label %82

82:                                               ; preds = %79
  %83 = add nsw i32 %.2, 1
  %84 = getelementptr inbounds [64 x i16], [64 x i16]* %.01, i64 1
  %85 = add nuw nsw i32 %.07, 1
  br label %75, !llvm.loop !20

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.08, 1
  br label %61, !llvm.loop !21

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.16, 1
  br label %50, !llvm.loop !22

92:                                               ; preds = %50
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 59
  %94 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %94, i64 0, i32 1
  %96 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %95, align 8
  %97 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 5, i64 0
  %98 = call i32 %96(%struct.jpeg_compress_struct* noundef %0, [64 x i16]** noundef nonnull %97) #3
  %.not = icmp eq i32 %98, 0
  br i1 %.not, label %99, label %102

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 3
  store i32 %.02, i32* %100, align 8
  %101 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 2
  store i32 %.03, i32* %101, align 4
  br label %113

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = add i32 %.03, 1
  br label %45, !llvm.loop !23

105:                                              ; preds = %45
  %106 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 2
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %105
  %108 = add nsw i32 %.02, 1
  br label %38, !llvm.loop !24

109:                                              ; preds = %38
  %110 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %6, i64 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add i32 %111, 1
  store i32 %112, i32* %110, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %0)
  br label %113

113:                                              ; preds = %109, %99
  %.0 = phi i32 [ 0, %99 ], [ 1, %109 ]
  ret i32 %.0
}

declare dso_local void @jzero_far(i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
