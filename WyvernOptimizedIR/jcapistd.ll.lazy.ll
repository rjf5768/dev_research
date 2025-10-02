; ModuleID = './jcapistd.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcapistd.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 100
  br i1 %.not, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i64 0, i32 5
  store i32 18, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 6, i32 0, i64 0
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #2
  br label %19

19:                                               ; preds = %5, %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %21, label %20

20:                                               ; preds = %19
  call void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0) #2
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 4
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %26) #2
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %28 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %28, i64 0, i32 2
  %30 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %29, align 8
  call void %30(%struct.jpeg_compress_struct* noundef %0) #2
  call void @jinit_compress_master(%struct.jpeg_compress_struct* noundef %0) #2
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %32 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %32, i64 0, i32 0
  %34 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %33, align 8
  call void %34(%struct.jpeg_compress_struct* noundef %0) #2
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 23
  %37 = load i32, i32* %36, align 8
  %.not2 = icmp eq i32 %37, 0
  %38 = select i1 %.not2, i32 101, i32 102
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  store i32 %38, i32* %39, align 4
  ret void
}

declare dso_local void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_compress_master(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 101
  br i1 %.not, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i64 0, i32 5
  store i32 18, i32* %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 6, i32 0, i64 0
  store i32 %12, i32* %15, align 4
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #2
  br label %21

21:                                               ; preds = %7, %3
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %25 = load i32, i32* %24, align 4
  %.not1 = icmp ult i32 %23, %25
  br i1 %.not1, label %35, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 5
  store i32 119, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 1
  %33 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %32, align 8
  %34 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %34, i32 noundef -1) #2
  br label %35

35:                                               ; preds = %26, %21
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %37 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %36, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %37, null
  br i1 %.not2, label %56, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %43 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %43, i64 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %49 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %49, i64 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %52 = bitcast %struct.jpeg_progress_mgr** %51 to void (%struct.jpeg_common_struct*)***
  %53 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %52, align 8
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* noundef %55) #2
  br label %56

56:                                               ; preds = %38, %35
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %58 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %58, i64 0, i32 3
  %60 = load i32, i32* %59, align 8
  %.not3 = icmp eq i32 %60, 0
  br i1 %.not3, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %63 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %62, align 8
  %64 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %63, i64 0, i32 1
  %65 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %64, align 8
  call void %65(%struct.jpeg_compress_struct* noundef %0) #2
  br label %66

66:                                               ; preds = %61, %56
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %70 = load i32, i32* %69, align 8
  %71 = sub i32 %68, %70
  %72 = icmp ult i32 %71, %2
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %66
  %.0 = phi i32 [ %71, %73 ], [ %2, %66 ]
  store i32 0, i32* %4, align 4
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 52
  %76 = load %struct.jpeg_c_main_controller*, %struct.jpeg_c_main_controller** %75, align 8
  %77 = getelementptr inbounds %struct.jpeg_c_main_controller, %struct.jpeg_c_main_controller* %76, i64 0, i32 1
  %78 = load void (%struct.jpeg_compress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)** %77, align 8
  call void %78(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* noundef nonnull %4, i32 noundef %.0) #2
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %81 = load i32, i32* %80, align 8
  %82 = add i32 %81, %79
  store i32 %82, i32* %80, align 8
  ret i32 %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_write_raw_data(%struct.jpeg_compress_struct* noundef %0, i8*** noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 102
  br i1 %.not, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 18, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 6, i32 0, i64 0
  store i32 %11, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #2
  br label %20

20:                                               ; preds = %6, %3
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %24 = load i32, i32* %23, align 4
  %.not1 = icmp ult i32 %22, %24
  br i1 %.not1, label %34, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 5
  store i32 119, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 1
  %32 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %31, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %33, i32 noundef -1) #2
  br label %90

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %36 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %35, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %36, null
  br i1 %.not2, label %55, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %42 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %42, i64 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %48 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %48, i64 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 2
  %51 = bitcast %struct.jpeg_progress_mgr** %50 to void (%struct.jpeg_common_struct*)***
  %52 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %51, align 8
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %52, align 8
  %54 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* noundef %54) #2
  br label %55

55:                                               ; preds = %37, %34
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %57 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %57, i64 0, i32 3
  %59 = load i32, i32* %58, align 8
  %.not3 = icmp eq i32 %59, 0
  br i1 %.not3, label %65, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 51
  %62 = load %struct.jpeg_comp_master*, %struct.jpeg_comp_master** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_comp_master, %struct.jpeg_comp_master* %62, i64 0, i32 1
  %64 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %63, align 8
  call void %64(%struct.jpeg_compress_struct* noundef %0) #2
  br label %65

65:                                               ; preds = %60, %55
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %67 = load i32, i32* %66, align 4
  %68 = shl nsw i32 %67, 3
  %69 = icmp ugt i32 %68, %2
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %71, align 8
  %73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i64 0, i32 5
  store i32 21, i32* %73, align 8
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %74, align 8
  %76 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i64 0, i32 0
  %77 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %76, align 8
  %78 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %77(%struct.jpeg_common_struct* noundef %78) #2
  br label %79

79:                                               ; preds = %70, %65
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %81 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %81, i64 0, i32 1
  %83 = load i32 (%struct.jpeg_compress_struct*, i8***)*, i32 (%struct.jpeg_compress_struct*, i8***)** %82, align 8
  %84 = call i32 %83(%struct.jpeg_compress_struct* noundef %0, i8*** noundef %1) #2
  %.not4 = icmp eq i32 %84, 0
  br i1 %.not4, label %85, label %86

85:                                               ; preds = %79
  br label %90

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, %68
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %86, %85, %25
  %.0 = phi i32 [ 0, %25 ], [ %68, %86 ], [ 0, %85 ]
  ret i32 %.0
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
