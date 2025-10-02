; ModuleID = './jcmarker.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcmarker.c"
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

@jpeg_natural_order = external dso_local constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 48) #2
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %9 = bitcast %struct.jpeg_marker_writer** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*, i32, i8*, i32)**
  store void (%struct.jpeg_compress_struct*, i32, i8*, i32)* @write_any_marker, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %12 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %12, i64 0, i32 1
  %14 = bitcast {}** %13 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_header, void (%struct.jpeg_compress_struct*)** %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %16 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %16, i64 0, i32 2
  %18 = bitcast {}** %17 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_frame_header, void (%struct.jpeg_compress_struct*)** %18, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %20 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %20, i64 0, i32 3
  %22 = bitcast {}** %21 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_scan_header, void (%struct.jpeg_compress_struct*)** %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %24 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %24, i64 0, i32 4
  %26 = bitcast {}** %25 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_trailer, void (%struct.jpeg_compress_struct*)** %26, align 8
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %28 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %28, i64 0, i32 5
  %30 = bitcast {}** %29 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_tables_only, void (%struct.jpeg_compress_struct*)** %30, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_any_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8* nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp ult i32 %3, 65534
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1)
  %7 = add i32 %3, 2
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %7)
  br label %8

8:                                                ; preds = %9, %6
  %.01 = phi i8* [ %2, %6 ], [ %13, %9 ]
  %.0 = phi i32 [ %3, %6 ], [ %10, %9 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %14, label %9

9:                                                ; preds = %8
  %10 = add i32 %.0, -1
  %11 = load i8, i8* %.01, align 1
  %12 = zext i8 %11 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %12)
  %13 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %8, !llvm.loop !4

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_file_header(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 216)
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 31
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @emit_jfif_app0(%struct.jpeg_compress_struct* noundef %0)
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 35
  %7 = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %5
  call void @emit_adobe_app14(%struct.jpeg_compress_struct* noundef %0)
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_frame_header(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %3 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %2, align 8
  br label %4

4:                                                ; preds = %12, %1
  %.03 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %.01 = phi i32 [ 0, %1 ], [ %14, %12 ]
  %.0 = phi %struct.jpeg_component_info* [ %3, %1 ], [ %15, %12 ]
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %.01, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @emit_dqt(%struct.jpeg_compress_struct* noundef %0, i32 noundef %10)
  br label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %.03, %11
  %14 = add nuw nsw i32 %.01, 1
  %15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %4, !llvm.loop !6

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %18 = load i32, i32* %17, align 4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 37
  %21 = load i32, i32* %20, align 4
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  %24 = load i32, i32* %23, align 8
  %.not7 = icmp eq i32 %24, 8
  br i1 %.not7, label %26, label %25

25:                                               ; preds = %22, %19, %16
  br label %58

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %27, align 8
  br label %29

29:                                               ; preds = %43, %26
  %.04 = phi i32 [ 1, %26 ], [ %.15, %43 ]
  %.12 = phi i32 [ 0, %26 ], [ %44, %43 ]
  %.1 = phi %struct.jpeg_component_info* [ %28, %26 ], [ %45, %43 ]
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %.12, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %37
  %.15 = phi i32 [ 0, %41 ], [ %.04, %37 ]
  br label %43

43:                                               ; preds = %42
  %44 = add nuw nsw i32 %.12, 1
  %45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.1, i64 1
  br label %29, !llvm.loop !7

46:                                               ; preds = %29
  %.not8 = icmp eq i32 %.03, 0
  br i1 %.not8, label %57, label %47

47:                                               ; preds = %46
  %.not12 = icmp eq i32 %.04, 0
  br i1 %.not12, label %57, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i64 0, i32 5
  store i32 74, i32* %51, align 8
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %52, align 8
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i64 0, i32 1
  %55 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %54, align 8
  %56 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %55(%struct.jpeg_common_struct* noundef %56, i32 noundef 0) #2
  br label %57

57:                                               ; preds = %48, %47, %46
  %.2 = phi i32 [ 0, %48 ], [ %.04, %47 ], [ %.04, %46 ]
  br label %58

58:                                               ; preds = %57, %25
  %.3 = phi i32 [ 0, %25 ], [ %.2, %57 ]
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %60 = load i32, i32* %59, align 4
  %.not9 = icmp eq i32 %60, 0
  br i1 %.not9, label %62, label %61

61:                                               ; preds = %58
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %0, i32 noundef 201)
  br label %71

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 37
  %64 = load i32, i32* %63, align 4
  %.not10 = icmp eq i32 %64, 0
  br i1 %.not10, label %66, label %65

65:                                               ; preds = %62
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %0, i32 noundef 194)
  br label %70

66:                                               ; preds = %62
  %.not11 = icmp eq i32 %.3, 0
  br i1 %.not11, label %68, label %67

67:                                               ; preds = %66
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %0, i32 noundef 192)
  br label %69

68:                                               ; preds = %66
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %0, i32 noundef 193)
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_scan_header(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %41

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %38, %5
  %.0 = phi i32 [ 0, %5 ], [ %39, %38 ]
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %11
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 37
  %15 = load i32, i32* %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %32, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 47
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 49
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 0, i32 5
  %26 = load i32, i32* %25, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %26, i32 noundef 0)
  br label %27

27:                                               ; preds = %24, %20
  br label %31

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 0, i32 6
  %30 = load i32, i32* %29, align 8
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %30, i32 noundef 1)
  br label %31

31:                                               ; preds = %28, %27
  br label %37

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 0, i32 5
  %34 = load i32, i32* %33, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %34, i32 noundef 0)
  %35 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 0, i32 6
  %36 = load i32, i32* %35, align 8
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %36, i32 noundef 1)
  br label %37

37:                                               ; preds = %32, %31
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !8

40:                                               ; preds = %6
  br label %41

41:                                               ; preds = %40, %4
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 29
  %43 = load i32, i32* %42, align 8
  %.not1 = icmp eq i32 %43, 0
  br i1 %.not1, label %45, label %44

44:                                               ; preds = %41
  call void @emit_dri(%struct.jpeg_compress_struct* noundef %0)
  br label %45

45:                                               ; preds = %44, %41
  call void @emit_sos(%struct.jpeg_compress_struct* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_file_trailer(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 217)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_tables_only(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 216)
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = icmp ult i32 %.0, 4
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %5
  %7 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %6, align 8
  %.not3 = icmp eq %struct.JQUANT_TBL* %7, null
  br i1 %.not3, label %10, label %8

8:                                                ; preds = %4
  %9 = call i32 @emit_dqt(%struct.jpeg_compress_struct* noundef %0, i32 noundef %.0)
  br label %10

10:                                               ; preds = %8, %4
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !9

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %15 = load i32, i32* %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %16, label %33

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %30, %16
  %.1 = phi i32 [ 0, %16 ], [ %31, %30 ]
  %18 = icmp ult i32 %.1, 4
  br i1 %18, label %19, label %32

19:                                               ; preds = %17
  %20 = zext i32 %.1 to i64
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 16, i64 %20
  %22 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %21, align 8
  %.not1 = icmp eq %struct.JHUFF_TBL* %22, null
  br i1 %.not1, label %24, label %23

23:                                               ; preds = %19
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %.1, i32 noundef 0)
  br label %24

24:                                               ; preds = %23, %19
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 17, i64 %25
  %27 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %26, align 8
  %.not2 = icmp eq %struct.JHUFF_TBL* %27, null
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %24
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %.1, i32 noundef 1)
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.1, 1
  br label %17, !llvm.loop !10

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %13
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 217)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 255)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 255
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %4)
  %5 = and i32 %1, 255
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %3, align 8
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8* %8, i8** %6, align 8
  store i8 %5, i8* %7, align 1
  %9 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i64 0, i32 3
  %15 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %14, align 8
  %16 = call i32 %15(%struct.jpeg_compress_struct* noundef %0) #2
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 5
  store i32 22, i32* %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i64 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %23, align 8
  %25 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* noundef %25) #2
  br label %26

26:                                               ; preds = %17, %13
  br label %27

27:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_jfif_app0(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 224)
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef 16)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 74)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 70)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 73)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 70)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1)
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 32
  %3 = load i8, i8* %2, align 4
  %4 = zext i8 %3 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %4)
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 33
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %7)
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 34
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %10)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_adobe_app14(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 238)
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef 14)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 65)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 100)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 111)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 98)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 101)
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef 100)
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 13
  %3 = load i32, i32* %2, align 8
  switch i32 %3, label %6 [
    i32 3, label %4
    i32 5, label %5
  ]

4:                                                ; preds = %1
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1)
  br label %7

5:                                                ; preds = %1
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 2)
  br label %7

6:                                                ; preds = %1
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  br label %7

7:                                                ; preds = %6, %5, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @emit_dqt(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %3
  %5 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %4, align 8
  %6 = icmp eq %struct.JQUANT_TBL* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i64 0, i32 5
  store i32 51, i32* %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 6, i32 0, i64 0
  store i32 %1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #2
  br label %19

19:                                               ; preds = %7, %2
  br label %20

20:                                               ; preds = %29, %19
  %.01 = phi i32 [ 0, %19 ], [ %.12, %29 ]
  %.0 = phi i32 [ 0, %19 ], [ %30, %29 ]
  %21 = icmp ult i32 %.0, 64
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %5, i64 0, i32 0, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = icmp ugt i16 %25, 255
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %22
  %.12 = phi i32 [ 1, %27 ], [ %.01, %22 ]
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.0, 1
  br label %20, !llvm.loop !11

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %5, i64 0, i32 1
  %33 = load i32, i32* %32, align 4
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %34, label %56

34:                                               ; preds = %31
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 219)
  %.not3 = icmp eq i32 %.01, 0
  %35 = select i1 %.not3, i32 67, i32 131
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %35)
  %36 = shl i32 %.01, 4
  %37 = add nsw i32 %36, %1
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %37)
  br label %38

38:                                               ; preds = %52, %34
  %.1 = phi i32 [ 0, %34 ], [ %53, %52 ]
  %39 = icmp ult i32 %.1, 64
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = zext i32 %.1 to i64
  %42 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %5, i64 0, i32 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %.not4 = icmp eq i32 %.01, 0
  br i1 %.not4, label %50, label %48

48:                                               ; preds = %40
  %49 = lshr i32 %47, 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %49)
  br label %50

50:                                               ; preds = %48, %40
  %51 = and i32 %47, 255
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %51)
  br label %52

52:                                               ; preds = %50
  %53 = add nuw nsw i32 %.1, 1
  br label %38, !llvm.loop !12

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %5, i64 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %31
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_sof(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1)
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %4 = load i32, i32* %3, align 4
  %5 = mul nsw i32 %4, 3
  %6 = add nsw i32 %5, 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %6)
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = icmp ugt i32 %8, 65535
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 %12, 65535
  br i1 %13, label %14, label %26

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 5
  store i32 40, i32* %17, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 6, i32 0, i64 0
  store i32 65535, i32* %20, align 4
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i64 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %23, align 8
  %25 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* noundef %25) #2
  br label %26

26:                                               ; preds = %14, %10
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  %28 = load i32, i32* %27, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %28)
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %30 = load i32, i32* %29, align 4
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %30)
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %32 = load i32, i32* %31, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %32)
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %34 = load i32, i32* %33, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %34)
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %35, align 8
  br label %37

37:                                               ; preds = %52, %26
  %.01 = phi i32 [ 0, %26 ], [ %53, %52 ]
  %.0 = phi %struct.jpeg_component_info* [ %36, %26 ], [ %54, %52 ]
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %.01, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %43)
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 4
  %47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %46, %48
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %49)
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 4
  %51 = load i32, i32* %50, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %51)
  br label %52

52:                                               ; preds = %41
  %53 = add nuw nsw i32 %.01, 1
  %54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %37, !llvm.loop !13

55:                                               ; preds = %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @emit_dac(%struct.jpeg_compress_struct* nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 17, i64 %5
  %7 = add nsw i32 %1, 16
  br label %11

8:                                                ; preds = %3
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 16, i64 %9
  br label %11

11:                                               ; preds = %8, %4
  %.03.in = phi %struct.JHUFF_TBL** [ %6, %4 ], [ %10, %8 ]
  %.01 = phi i32 [ %7, %4 ], [ %1, %8 ]
  %.03 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %.03.in, align 8
  %12 = icmp eq %struct.JHUFF_TBL* %.03, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 5
  store i32 49, i32* %16, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 6, i32 0, i64 0
  store i32 %.01, i32* %19, align 4
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #2
  br label %25

25:                                               ; preds = %13, %11
  %26 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %.03, i64 0, i32 2
  %27 = load i32, i32* %26, align 4
  %.not4 = icmp eq i32 %27, 0
  br i1 %.not4, label %28, label %62

28:                                               ; preds = %25
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 196)
  br label %29

29:                                               ; preds = %32, %28
  %.02 = phi i32 [ 0, %28 ], [ %37, %32 ]
  %.0 = phi i32 [ 1, %28 ], [ %38, %32 ]
  %30 = icmp ult i32 %.0, 17
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %.03, i64 0, i32 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %.02, %36
  %38 = add nuw nsw i32 %.0, 1
  br label %29, !llvm.loop !14

39:                                               ; preds = %29
  %40 = add nuw nsw i32 %.02, 19
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %40)
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %.01)
  br label %41

41:                                               ; preds = %48, %39
  %.1 = phi i32 [ 1, %39 ], [ %49, %48 ]
  %42 = icmp ult i32 %.1, 17
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = zext i32 %.1 to i64
  %45 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %.03, i64 0, i32 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %47)
  br label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %.1, 1
  br label %41, !llvm.loop !15

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %58, %50
  %.2 = phi i32 [ 0, %50 ], [ %59, %58 ]
  %52 = icmp ult i32 %.2, %.02
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = zext i32 %.2 to i64
  %55 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %.03, i64 0, i32 1, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %57)
  br label %58

58:                                               ; preds = %53
  %59 = add nuw nsw i32 %.2, 1
  br label %51, !llvm.loop !16

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %.03, i64 0, i32 2
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dri(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 221)
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef 4)
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 29
  %3 = load i32, i32* %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_sos(%struct.jpeg_compress_struct* noundef %0) #0 {
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef 218)
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %3 = load i32, i32* %2, align 4
  %4 = shl nsw i32 %3, 1
  %5 = add nsw i32 %4, 6
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %5)
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %7 = load i32, i32* %6, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %7)
  br label %8

8:                                                ; preds = %41, %1
  %.01 = phi i32 [ 0, %1 ], [ %42, %41 ]
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %.01, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %13
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %17)
  %18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i64 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i64 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 37
  %23 = load i32, i32* %22, align 4
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %38, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 47
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 49
  %30 = load i32, i32* %29, align 4
  %.not4 = icmp eq i32 %30, 0
  br i1 %.not4, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %33 = load i32, i32* %32, align 4
  %.not5 = icmp eq i32 %33, 0
  br i1 %.not5, label %34, label %35

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %31, %28
  %.02 = phi i32 [ %19, %31 ], [ 0, %34 ], [ %19, %28 ]
  br label %37

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %35
  %.13 = phi i32 [ %.02, %35 ], [ 0, %36 ]
  %.0 = phi i32 [ 0, %35 ], [ %21, %36 ]
  br label %38

38:                                               ; preds = %37, %12
  %.2 = phi i32 [ %.13, %37 ], [ %19, %12 ]
  %.1 = phi i32 [ %.0, %37 ], [ %21, %12 ]
  %39 = shl i32 %.2, 4
  %40 = add nsw i32 %39, %.1
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %40)
  br label %41

41:                                               ; preds = %38
  %42 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !17

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 47
  %45 = load i32, i32* %44, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %45)
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 48
  %47 = load i32, i32* %46, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %47)
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 49
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 4
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 50
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %50, %52
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %53)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !5}
