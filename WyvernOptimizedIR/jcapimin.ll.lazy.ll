; ModuleID = './jcapimin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcapimin.c"
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
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %4, align 8
  %.not = icmp eq i32 %1, 61
  br i1 %.not, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i64 0, i32 5
  store i32 10, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 6, i32 0, i64 0
  store i32 61, i32* %11, align 4
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 6, i32 0, i64 1
  store i32 %1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #4
  br label %20

20:                                               ; preds = %5, %3
  %.not1 = icmp eq i64 %2, 496
  br i1 %.not1, label %37, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 5
  store i32 19, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i64 0, i32 6, i32 0, i64 0
  store i32 496, i32* %27, align 4
  %28 = trunc i64 %2 to i32
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 6, i32 0, i64 1
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %36) #4
  br label %37

37:                                               ; preds = %21, %20
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = bitcast %struct.jpeg_compress_struct* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(496) %40, i8 0, i64 496, i1 false)
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  store %struct.jpeg_error_mgr* %39, %struct.jpeg_error_mgr** %41, align 8
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef %43) #4
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  store %struct.jpeg_destination_mgr* null, %struct.jpeg_destination_mgr** %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  store %struct.jpeg_component_info* null, %struct.jpeg_component_info** %46, align 8
  br label %47

47:                                               ; preds = %52, %37
  %.0 = phi i32 [ 0, %37 ], [ %53, %52 ]
  %48 = icmp ult i32 %.0, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %50
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %51, align 8
  br label %52

52:                                               ; preds = %49
  %53 = add nuw nsw i32 %.0, 1
  br label %47, !llvm.loop !4

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %62, %54
  %.1 = phi i32 [ 0, %54 ], [ %63, %62 ]
  %56 = icmp ult i32 %.1, 4
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = zext i32 %.1 to i64
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 16, i64 %58
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %59, align 8
  %60 = zext i32 %.1 to i64
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 17, i64 %60
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %61, align 8
  br label %62

62:                                               ; preds = %57
  %63 = add nuw nsw i32 %.1, 1
  br label %55, !llvm.loop !6

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 10
  store double 1.000000e+00, double* %65, align 8
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  store i32 100, i32* %66, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* noundef %2) #4
  ret void
}

declare dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort_compress(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %2) #4
  ret void
}

declare dso_local void @jpeg_abort(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jpeg_suppress_tables(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i32 noundef %1) #3 {
  br label %3

3:                                                ; preds = %12, %2
  %.0 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %4 = icmp ult i32 %.0, 4
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %6
  %8 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %7, align 8
  %.not2 = icmp eq %struct.JQUANT_TBL* %8, null
  br i1 %.not2, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %8, i64 0, i32 1
  store i32 %1, i32* %10, align 4
  br label %11

11:                                               ; preds = %9, %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %30, %14
  %.1 = phi i32 [ 0, %14 ], [ %31, %30 ]
  %16 = icmp ult i32 %.1, 4
  br i1 %16, label %17, label %32

17:                                               ; preds = %15
  %18 = zext i32 %.1 to i64
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 16, i64 %18
  %20 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %19, align 8
  %.not = icmp eq %struct.JHUFF_TBL* %20, null
  br i1 %.not, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %20, i64 0, i32 2
  store i32 %1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = zext i32 %.1 to i64
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 17, i64 %24
  %26 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %25, align 8
  %.not1 = icmp eq %struct.JHUFF_TBL* %26, null
  br i1 %.not1, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %26, i64 0, i32 2
  store i32 %1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !8

32:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 101
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 102
  br i1 %8, label %9, label %29

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 5
  store i32 66, i32* %18, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i64 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %21, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* noundef %23) #4
  br label %24

24:                                               ; preds = %15, %9
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %26 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %26, i64 0, i32 2
  %28 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %27, align 8
  call void %28(%struct.jpeg_compress_struct* noundef %0) #4
  br label %47

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %31 = load i32, i32* %30, align 4
  %.not = icmp eq i32 %31, 103
  br i1 %.not, label %46, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i64 0, i32 5
  store i32 18, i32* %35, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i64 0, i32 6, i32 0, i64 0
  store i32 %37, i32* %40, align 4
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i64 0, i32 0
  %44 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %43, align 8
  %45 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %44(%struct.jpeg_common_struct* noundef %45) #4
  br label %46

46:                                               ; preds = %32, %29
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %99, %47
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %50 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %50, i64 0, i32 4
  %52 = load i32, i32* %51, align 4
  %.not1 = icmp eq i32 %52, 0
  br i1 %.not1, label %53, label %104

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %55 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %55, i64 0, i32 0
  %57 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %56, align 8
  call void %57(%struct.jpeg_compress_struct* noundef %0) #4
  br label %58

58:                                               ; preds = %97, %53
  %.0 = phi i32 [ 0, %53 ], [ %98, %97 ]
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %.0, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %64 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %63, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %64, null
  br i1 %.not2, label %81, label %65

65:                                               ; preds = %62
  %66 = zext i32 %.0 to i64
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %68 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %68, i64 0, i32 1
  store i64 %66, i64* %69, align 8
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %74 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %74, i64 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %77 = bitcast %struct.jpeg_progress_mgr** %76 to void (%struct.jpeg_common_struct*)***
  %78 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %77, align 8
  %79 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %78, align 8
  %80 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* noundef %80) #4
  br label %81

81:                                               ; preds = %65, %62
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %83 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %82, align 8
  %84 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %83, i64 0, i32 1
  %85 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %84, align 8
  %86 = call i32 %85(%struct.jpeg_compress_struct* noundef %0, i8*** noundef null) #4
  %.not3 = icmp eq i32 %86, 0
  br i1 %.not3, label %87, label %96

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %88, align 8
  %90 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i64 0, i32 5
  store i32 22, i32* %90, align 8
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %91, align 8
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i64 0, i32 0
  %94 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %93, align 8
  %95 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %94(%struct.jpeg_common_struct* noundef %95) #4
  br label %96

96:                                               ; preds = %87, %81
  br label %97

97:                                               ; preds = %96
  %98 = add i32 %.0, 1
  br label %58, !llvm.loop !9

99:                                               ; preds = %58
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %101 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %101, i64 0, i32 2
  %103 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %102, align 8
  call void %103(%struct.jpeg_compress_struct* noundef %0) #4
  br label %48, !llvm.loop !10

104:                                              ; preds = %48
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %106 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %105, align 8
  %107 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %106, i64 0, i32 4
  %108 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %107, align 8
  call void %108(%struct.jpeg_compress_struct* noundef %0) #4
  %109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %110 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %109, align 8
  %111 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %110, i64 0, i32 4
  %112 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %111, align 8
  call void %112(%struct.jpeg_compress_struct* noundef %0) #4
  %113 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %113) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 101
  br i1 %.not1, label %30, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 4
  %.not2 = icmp eq i32 %12, 102
  br i1 %.not2, label %30, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %15 = load i32, i32* %14, align 4
  %.not3 = icmp eq i32 %15, 103
  br i1 %.not3, label %30, label %16

16:                                               ; preds = %13, %4
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 6, i32 0, i64 0
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i64 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %27, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* noundef %29) #4
  br label %30

30:                                               ; preds = %16, %13, %10, %7
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %32 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %32, i64 0, i32 0
  %34 = load void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %33, align 8
  call void %34(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_tables(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 100
  br i1 %.not, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i64 0, i32 5
  store i32 18, i32* %7, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 6, i32 0, i64 0
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %15, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* noundef %17) #4
  br label %18

18:                                               ; preds = %4, %1
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i64 0, i32 4
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %21, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* noundef %23) #4
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %25 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %25, i64 0, i32 2
  %27 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %26, align 8
  call void %27(%struct.jpeg_compress_struct* noundef %0) #4
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %0) #4
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %29 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %29, i64 0, i32 5
  %31 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %30, align 8
  call void %31(%struct.jpeg_compress_struct* noundef %0) #4
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %33 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %33, i64 0, i32 4
  %35 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %34, align 8
  call void %35(%struct.jpeg_compress_struct* noundef %0) #4
  %36 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %36) #4
  ret void
}

declare dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !5}
