; ModuleID = './jcmainct.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcmainct.c"
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
%struct.my_main_controller = type { %struct.jpeg_c_main_controller, i32, i32, i32, i32, [10 x i8**] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_main_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %5, align 8
  %7 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8* %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i64 noundef 112) #1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 52
  %10 = bitcast %struct.jpeg_c_main_controller** %9 to i8**
  store i8* %8, i8** %10, align 8
  %11 = bitcast i8* %8 to void (%struct.jpeg_compress_struct*, i32)**
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_main, void (%struct.jpeg_compress_struct*, i32)** %11, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 23
  %13 = load i32, i32* %12, align 8
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %2
  br label %53

15:                                               ; preds = %2
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %25, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #1
  br label %53

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %26, align 8
  br label %28

28:                                               ; preds = %49, %25
  %.01 = phi i32 [ 0, %25 ], [ %50, %49 ]
  %.0 = phi %struct.jpeg_component_info* [ %27, %25 ], [ %51, %49 ]
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %.01, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i64 0, i32 2
  %36 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %35, align 8
  %37 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 3
  %41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = shl nsw i32 %42, 3
  %44 = call i8** %36(%struct.jpeg_common_struct* noundef %37, i32 noundef 1, i32 noundef %40, i32 noundef %43) #1
  %45 = getelementptr inbounds i8, i8* %8, i64 32
  %46 = bitcast i8* %45 to [10 x i8**]*
  %47 = zext i32 %.01 to i64
  %48 = getelementptr inbounds [10 x i8**], [10 x i8**]* %46, i64 0, i64 %47
  store i8** %44, i8*** %48, align 8
  br label %49

49:                                               ; preds = %32
  %50 = add nuw nsw i32 %.01, 1
  %51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %28, !llvm.loop !4

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %16, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_main(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 52
  %4 = bitcast %struct.jpeg_c_main_controller** %3 to %struct.my_main_controller**
  %5 = load %struct.my_main_controller*, %struct.my_main_controller** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 23
  %7 = load i32, i32* %6, align 8
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  br label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 3
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 4
  store i32 %1, i32* %13, align 4
  switch i32 %1, label %16 [
    i32 0, label %14
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %5, i64 0, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* @process_data_simple_main, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %15, align 8
  br label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #1
  br label %25

25:                                               ; preds = %16, %14, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_simple_main(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 52
  %6 = bitcast %struct.jpeg_c_main_controller** %5 to %struct.my_main_controller**
  %7 = load %struct.my_main_controller*, %struct.my_main_controller** %6, align 8
  br label %8

8:                                                ; preds = %51, %4
  %9 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 53
  %20 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %20, i64 0, i32 1
  %22 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %21, align 8
  %23 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 5, i64 0
  %24 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  call void %22(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3, i8*** noundef nonnull %23, i32* noundef nonnull %24, i32 noundef 8) #1
  br label %25

25:                                               ; preds = %18, %14
  %26 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  %27 = load i32, i32* %26, align 4
  %.not = icmp eq i32 %27, 8
  br i1 %.not, label %29, label %28

28:                                               ; preds = %25
  br label %56

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %31 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %31, i64 0, i32 1
  %33 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %32, align 8
  %34 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 5, i64 0
  %35 = call i32 %33(%struct.jpeg_compress_struct* noundef %0, i8*** noundef nonnull %34) #1
  %.not1 = icmp eq i32 %35, 0
  br i1 %.not1, label %36, label %44

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %38 = load i32, i32* %37, align 8
  %.not2 = icmp eq i32 %38, 0
  br i1 %.not2, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %2, align 4
  %42 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  br label %56

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  %46 = load i32, i32* %45, align 8
  %.not3 = icmp eq i32 %46, 0
  br i1 %.not3, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %2, align 4
  %50 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 3
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.my_main_controller, %struct.my_main_controller* %7, i64 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %8, !llvm.loop !6

.loopexit:                                        ; preds = %8
  br label %56

56:                                               ; preds = %.loopexit, %43, %28
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
