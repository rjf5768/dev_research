; ModuleID = './jcprepct.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcprepct.c"
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
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x i8**], i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_prep_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %12, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i64 0, i32 5
  store i32 4, i32* %6, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %9, align 8
  %11 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* noundef %11) #3
  br label %12

12:                                               ; preds = %3, %2
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i64 0, i32 0
  %16 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %15, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %18 = call i8* %16(%struct.jpeg_common_struct* noundef %17, i32 noundef 1, i64 noundef 112) #3
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 53
  %20 = bitcast %struct.jpeg_c_prep_controller** %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = bitcast i8* %18 to void (%struct.jpeg_compress_struct*, i32)**
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_prep, void (%struct.jpeg_compress_struct*, i32)** %21, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 57
  %23 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %23, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %29, label %26

26:                                               ; preds = %12
  %27 = getelementptr inbounds i8, i8* %18, i64 8
  %28 = bitcast i8* %27 to void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_context, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %28, align 8
  call void @create_context_buffer(%struct.jpeg_compress_struct* noundef %0)
  br label %68

29:                                               ; preds = %12
  %30 = getelementptr inbounds i8, i8* %18, i64 8
  %31 = bitcast i8* %30 to void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_data, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %32, align 8
  br label %34

34:                                               ; preds = %64, %29
  %.01 = phi i32 [ 0, %29 ], [ %65, %64 ]
  %.0 = phi %struct.jpeg_component_info* [ %33, %29 ], [ %66, %64 ]
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %.01, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %40 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %40, i64 0, i32 2
  %42 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %41, align 8
  %43 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 3
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %47, %50
  %52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sdiv i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %58 = load i32, i32* %57, align 4
  %59 = call i8** %42(%struct.jpeg_common_struct* noundef %43, i32 noundef 1, i32 noundef %56, i32 noundef %58) #3
  %60 = getelementptr inbounds i8, i8* %18, i64 16
  %61 = bitcast i8* %60 to [10 x i8**]*
  %62 = zext i32 %.01 to i64
  %63 = getelementptr inbounds [10 x i8**], [10 x i8**]* %61, i64 0, i64 %62
  store i8** %59, i8*** %63, align 8
  br label %64

64:                                               ; preds = %38
  %65 = add nuw nsw i32 %.01, 1
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %34, !llvm.loop !4

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_prep(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 53
  %4 = bitcast %struct.jpeg_c_prep_controller** %3 to %struct.my_prep_controller**
  %5 = load %struct.my_prep_controller*, %struct.my_prep_controller** %4, align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* noundef %14) #3
  br label %15

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %5, i64 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %5, i64 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %5, i64 0, i32 4
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %22 = load i32, i32* %21, align 4
  %23 = shl nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %5, i64 0, i32 5
  store i32 %23, i32* %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pre_process_context(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* nocapture noundef %2, i32 noundef %3, i8*** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 53
  %9 = bitcast %struct.jpeg_c_prep_controller** %8 to %struct.my_prep_controller**
  %10 = load %struct.my_prep_controller*, %struct.my_prep_controller** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 3
  br label %14

14:                                               ; preds = %150, %7
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, %6
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp ult i32 %18, %3
  br i1 %19, label %20, label %82

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = sub i32 %3, %21
  %23 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %24, %26
  %28 = icmp ult i32 %27, %22
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %27, %29 ], [ %22, %30 ]
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %34 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %34, i64 0, i32 1
  %36 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38
  %40 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 0
  %41 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %42 = load i32, i32* %41, align 4
  call void %36(%struct.jpeg_compress_struct* noundef %0, i8** noundef %39, i8*** noundef nonnull %40, i32 noundef %42, i32 noundef %32) #3
  %43 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %70, %48
  %.01 = phi i32 [ 0, %48 ], [ %71, %70 ]
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %.01, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %67, %53
  %.0 = phi i32 [ 1, %53 ], [ %68, %67 ]
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %56 = load i32, i32* %55, align 4
  %.not4 = icmp sgt i32 %.0, %56
  br i1 %.not4, label %69, label %57

57:                                               ; preds = %54
  %58 = zext i32 %.01 to i64
  %59 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 %58
  %60 = load i8**, i8*** %59, align 8
  %61 = zext i32 %.01 to i64
  %62 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 %61
  %63 = load i8**, i8*** %62, align 8
  %64 = sub nsw i32 0, %.0
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %66 = load i32, i32* %65, align 8
  call void @jcopy_sample_rows(i8** noundef %60, i32 noundef 0, i8** noundef %63, i32 noundef %64, i32 noundef 1, i32 noundef %66) #3
  br label %67

67:                                               ; preds = %57
  %68 = add nuw nsw i32 %.0, 1
  br label %54, !llvm.loop !6

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %.01, 1
  br label %49, !llvm.loop !7

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %31
  %74 = load i32, i32* %2, align 4
  %75 = add i32 %74, %32
  store i32 %75, i32* %2, align 4
  %76 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %32
  store i32 %78, i32* %76, align 4
  %79 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub i32 %80, %32
  store i32 %81, i32* %79, align 8
  br label %114

82:                                               ; preds = %17
  %83 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 2
  %84 = load i32, i32* %83, align 8
  %.not = icmp eq i32 %84, 0
  br i1 %.not, label %86, label %85

85:                                               ; preds = %82
  br label %151

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %107, %92
  %.1 = phi i32 [ 0, %92 ], [ %108, %107 ]
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %.1, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = zext i32 %.1 to i64
  %99 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 %98
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 5
  %106 = load i32, i32* %105, align 4
  call void @expand_bottom_edge(i8** noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %106)
  br label %107

107:                                              ; preds = %97
  %108 = add nuw nsw i32 %.1, 1
  br label %93, !llvm.loop !8

109:                                              ; preds = %93
  %110 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %86
  br label %114

114:                                              ; preds = %113, %73
  %115 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 57
  %122 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %121, align 8
  %123 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %122, i64 0, i32 1
  %124 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %123, align 8
  %125 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 0
  %126 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  call void %124(%struct.jpeg_compress_struct* noundef %0, i8*** noundef nonnull %125, i32 noundef %127, i8*** noundef %4, i32 noundef %128) #3
  %129 = load i32, i32* %5, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %5, align 4
  %131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, %132
  store i32 %135, i32* %133, align 8
  %.not2 = icmp slt i32 %135, %13
  br i1 %.not2, label %138, label %136

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 4
  store i32 0, i32* %137, align 8
  br label %138

138:                                              ; preds = %136, %120
  %139 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %140 = load i32, i32* %139, align 4
  %.not3 = icmp slt i32 %140, %13
  br i1 %.not3, label %143, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %145, %147
  %149 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 5
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %114
  br label %14, !llvm.loop !9

.loopexit:                                        ; preds = %14
  br label %151

151:                                              ; preds = %.loopexit, %85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_context_buffer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 53
  %3 = bitcast %struct.jpeg_c_prep_controller** %2 to %struct.my_prep_controller**
  %4 = load %struct.my_prep_controller*, %struct.my_prep_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i64 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %9, align 8
  %11 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 5
  %15 = mul nsw i32 %14, %6
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = call i8* %10(%struct.jpeg_common_struct* noundef %11, i32 noundef 1, i64 noundef %17) #3
  %19 = bitcast i8* %18 to i8**
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  br label %22

22:                                               ; preds = %78, %1
  %.03 = phi i32 [ 0, %1 ], [ %82, %78 ]
  %.01 = phi %struct.jpeg_component_info* [ %21, %1 ], [ %83, %78 ]
  %.0 = phi i8** [ %19, %1 ], [ %81, %78 ]
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %.03, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i64 0, i32 2
  %30 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %29, align 8
  %31 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %35, %38
  %40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = sdiv i64 %39, %42
  %44 = trunc i64 %43 to i32
  %45 = mul nsw i32 %6, 3
  %46 = call i8** %30(%struct.jpeg_common_struct* noundef %31, i32 noundef 1, i32 noundef %44, i32 noundef %45) #3
  %47 = sext i32 %6 to i64
  %48 = getelementptr inbounds i8*, i8** %.0, i64 %47
  %49 = bitcast i8** %48 to i8*
  %50 = bitcast i8** %46 to i8*
  %51 = mul nsw i32 %6, 3
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %50, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %71, %26
  %.02 = phi i32 [ 0, %26 ], [ %72, %71 ]
  %55 = icmp slt i32 %.02, %6
  br i1 %55, label %56, label %73

56:                                               ; preds = %54
  %57 = shl nsw i32 %6, 1
  %58 = add nsw i32 %57, %.02
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %46, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = zext i32 %.02 to i64
  %63 = getelementptr inbounds i8*, i8** %.0, i64 %62
  store i8* %61, i8** %63, align 8
  %64 = zext i32 %.02 to i64
  %65 = getelementptr inbounds i8*, i8** %46, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = shl nsw i32 %6, 2
  %68 = add nsw i32 %67, %.02
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %.0, i64 %69
  store i8* %66, i8** %70, align 8
  br label %71

71:                                               ; preds = %56
  %72 = add nuw nsw i32 %.02, 1
  br label %54, !llvm.loop !10

73:                                               ; preds = %54
  %74 = sext i32 %6 to i64
  %75 = getelementptr inbounds i8*, i8** %.0, i64 %74
  %76 = zext i32 %.03 to i64
  %77 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %4, i64 0, i32 1, i64 %76
  store i8** %75, i8*** %77, align 8
  br label %78

78:                                               ; preds = %73
  %79 = mul nsw i32 %6, 5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %.0, i64 %80
  %82 = add nuw nsw i32 %.03, 1
  %83 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 1
  br label %22, !llvm.loop !11

84:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pre_process_data(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* nocapture noundef %2, i32 noundef %3, i8*** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 53
  %9 = bitcast %struct.jpeg_c_prep_controller** %8 to %struct.my_prep_controller**
  %10 = load %struct.my_prep_controller*, %struct.my_prep_controller** %9, align 8
  br label %11

11:                                               ; preds = %124, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, %6
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %17
  %20 = load i32, i32* %2, align 4
  %21 = sub i32 %3, %20
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %23, %25
  %27 = icmp ult i32 %26, %21
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i32 [ %26, %28 ], [ %21, %29 ]
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %33 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %33, i64 0, i32 1
  %35 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37
  %39 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 0
  %40 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %41 = load i32, i32* %40, align 4
  call void %35(%struct.jpeg_compress_struct* noundef %0, i8** noundef %38, i8*** noundef nonnull %39, i32 noundef %41, i32 noundef %31) #3
  %42 = load i32, i32* %2, align 4
  %43 = add i32 %42, %31
  store i32 %43, i32* %2, align 4
  %44 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %31
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub i32 %48, %31
  store i32 %49, i32* %47, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %72, %57
  %.01 = phi i32 [ 0, %57 ], [ %73, %72 ]
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %.01, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = zext i32 %.01 to i64
  %64 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 %63
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %71 = load i32, i32* %70, align 4
  call void @expand_bottom_edge(i8** noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71)
  br label %72

72:                                               ; preds = %62
  %73 = add nuw nsw i32 %.01, 1
  br label %58, !llvm.loop !12

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %51, %30
  %79 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 57
  %86 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %85, align 8
  %87 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %86, i64 0, i32 1
  %88 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %87, align 8
  %89 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 1, i64 0
  %90 = load i32, i32* %5, align 4
  call void %88(%struct.jpeg_compress_struct* noundef %0, i8*** noundef nonnull %89, i32 noundef 0, i8*** noundef %4, i32 noundef %90) #3
  %91 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %84, %78
  %95 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %10, i64 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = icmp ult i32 %99, %6
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %102, align 8
  br label %104

104:                                              ; preds = %120, %101
  %.1 = phi i32 [ 0, %101 ], [ %121, %120 ]
  %.0 = phi %struct.jpeg_component_info* [ %103, %101 ], [ %122, %120 ]
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %.1, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = zext i32 %.1 to i64
  %110 = getelementptr inbounds i8**, i8*** %4, i64 %109
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 3
  %115 = load i32, i32* %5, align 4
  %116 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = mul i32 %115, %117
  %119 = mul i32 %117, %6
  call void @expand_bottom_edge(i8** noundef %111, i32 noundef %114, i32 noundef %118, i32 noundef %119)
  br label %120

120:                                              ; preds = %108
  %121 = add nuw nsw i32 %.1, 1
  %122 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %104, !llvm.loop !13

123:                                              ; preds = %104
  store i32 %6, i32* %5, align 4
  br label %125

124:                                              ; preds = %98, %94
  br label %11, !llvm.loop !14

.loopexit:                                        ; preds = %17
  br label %125

125:                                              ; preds = %.loopexit, %123
  ret void
}

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @expand_bottom_edge(i8** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %9, %4
  %.0 = phi i32 [ %2, %4 ], [ %10, %9 ]
  %6 = icmp slt i32 %.0, %3
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = add nsw i32 %2, -1
  call void @jcopy_sample_rows(i8** noundef %0, i32 noundef %8, i8** noundef %0, i32 noundef %.0, i32 noundef 1, i32 noundef %1) #3
  br label %9

9:                                                ; preds = %7
  %10 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !15

11:                                               ; preds = %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
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
