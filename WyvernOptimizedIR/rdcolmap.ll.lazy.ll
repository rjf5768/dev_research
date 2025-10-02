; ModuleID = './rdcolmap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdcolmap.c"
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
%struct.jpeg_decomp_master = type opaque
%struct.jpeg_d_main_controller = type opaque
%struct.jpeg_d_coef_controller = type opaque
%struct.jpeg_d_post_controller = type opaque
%struct.jpeg_input_controller = type opaque
%struct.jpeg_marker_reader = type opaque
%struct.jpeg_entropy_decoder = type opaque
%struct.jpeg_inverse_dct = type opaque
%struct.jpeg_upsampler = type opaque
%struct.jpeg_color_deconverter = type opaque
%struct.jpeg_color_quantizer = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_color_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 2
  %6 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %5, align 8
  %7 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8** %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i32 noundef 256, i32 noundef 3) #2
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  store i8** %8, i8*** %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 31
  store i32 0, i32* %10, align 4
  %11 = call i32 @getc(%struct._IO_FILE* noundef %1) #2
  switch i32 %11, label %14 [
    i32 71, label %12
    i32 80, label %13
  ]

12:                                               ; preds = %2
  call void @read_gif_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  br label %23

13:                                               ; preds = %2
  call void @read_ppm_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  br label %23

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 5
  store i32 1038, i32* %17, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %22) #2
  br label %23

23:                                               ; preds = %14, %13, %12
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_gif_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca [13 x i32], align 16
  br label %4

4:                                                ; preds = %21, %2
  %.0 = phi i32 [ 1, %2 ], [ %22, %21 ]
  %5 = icmp ult i32 %.0, 13
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = call i32 @getc(%struct._IO_FILE* noundef %1) #2
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  %10 = icmp eq i32 %7, -1
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 5
  store i32 1038, i32* %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #2
  br label %20

20:                                               ; preds = %11, %6
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

23:                                               ; preds = %4
  %24 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %.not = icmp eq i32 %25, 73
  br i1 %.not, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 2
  %28 = load i32, i32* %27, align 8
  %.not1 = icmp eq i32 %28, 70
  br i1 %.not1, label %38, label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 5
  store i32 1038, i32* %32, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i64 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %37) #2
  br label %38

38:                                               ; preds = %29, %26
  %39 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 10
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i64 0, i32 5
  store i32 1038, i32* %46, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i64 0, i32 0
  %50 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %49, align 8
  %51 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* noundef %51) #2
  br label %52

52:                                               ; preds = %43, %38
  %53 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 10
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 7
  %56 = shl i32 2, %55
  br label %57

57:                                               ; preds = %78, %52
  %.1 = phi i32 [ 0, %52 ], [ %79, %78 ]
  %58 = icmp ult i32 %.1, %56
  br i1 %58, label %59, label %80

59:                                               ; preds = %57
  %60 = call i32 @getc(%struct._IO_FILE* noundef %1) #2
  %61 = call i32 @getc(%struct._IO_FILE* noundef %1) #2
  %62 = call i32 @getc(%struct._IO_FILE* noundef %1) #2
  %63 = icmp eq i32 %60, -1
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = icmp eq i32 %61, -1
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = icmp eq i32 %62, -1
  br i1 %67, label %68, label %77

68:                                               ; preds = %66, %64, %59
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i64 0, i32 5
  store i32 1038, i32* %71, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i64 0, i32 0
  %75 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %74, align 8
  %76 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %75(%struct.jpeg_common_struct* noundef %76) #2
  br label %77

77:                                               ; preds = %68, %66
  call void @add_map_entry(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %60, i32 noundef %61, i32 noundef %62)
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.1, 1
  br label %57, !llvm.loop !6

80:                                               ; preds = %57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_ppm_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = call i32 @getc(%struct._IO_FILE* noundef %1) #2
  %4 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  %5 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  %6 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %10, %8, %2
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 5
  store i32 1038, i32* %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #2
  br label %21

21:                                               ; preds = %12, %10
  %.not = icmp eq i32 %6, 255
  br i1 %.not, label %31, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 5
  store i32 1038, i32* %25, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %28, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* noundef %30) #2
  br label %31

31:                                               ; preds = %22, %21
  switch i32 %3, label %79 [
    i32 51, label %32
    i32 54, label %48
  ]

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %45, %32
  %.01 = phi i32 [ 0, %32 ], [ %46, %45 ]
  %34 = icmp ult i32 %.01, %5
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %42, %35
  %.0 = phi i32 [ 0, %35 ], [ %43, %42 ]
  %37 = icmp ult i32 %.0, %4
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  %40 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  %41 = call i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1)
  call void @add_map_entry(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %39, i32 noundef %40, i32 noundef %41)
  br label %42

42:                                               ; preds = %38
  %43 = add i32 %.0, 1
  br label %36, !llvm.loop !7

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = add i32 %.01, 1
  br label %33, !llvm.loop !8

47:                                               ; preds = %33
  br label %88

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %76, %48
  %.12 = phi i32 [ 0, %48 ], [ %77, %76 ]
  %50 = icmp ult i32 %.12, %5
  br i1 %50, label %51, label %78

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %73, %51
  %.1 = phi i32 [ 0, %51 ], [ %74, %73 ]
  %53 = icmp ult i32 %.1, %4
  br i1 %53, label %54, label %75

54:                                               ; preds = %52
  %55 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %56 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %57 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %58 = icmp eq i32 %55, -1
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = icmp eq i32 %56, -1
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = icmp eq i32 %57, -1
  br i1 %62, label %63, label %72

63:                                               ; preds = %61, %59, %54
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %64, align 8
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i64 0, i32 5
  store i32 1038, i32* %66, align 8
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i64 0, i32 0
  %70 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %69, align 8
  %71 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %70(%struct.jpeg_common_struct* noundef %71) #2
  br label %72

72:                                               ; preds = %63, %61
  call void @add_map_entry(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %55, i32 noundef %56, i32 noundef %57)
  br label %73

73:                                               ; preds = %72
  %74 = add i32 %.1, 1
  br label %52, !llvm.loop !9

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75
  %77 = add i32 %.12, 1
  br label %49, !llvm.loop !10

78:                                               ; preds = %49
  br label %88

79:                                               ; preds = %31
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i64 0, i32 5
  store i32 1038, i32* %82, align 8
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %84 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %83, align 8
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %84, i64 0, i32 0
  %86 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %85, align 8
  %87 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %86(%struct.jpeg_common_struct* noundef %87) #2
  br label %88

88:                                               ; preds = %79, %78, %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_map_entry(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %6 = load i8**, i8*** %5, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %6, i64 2
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 31
  %13 = load i32, i32* %12, align 4
  br label %14

14:                                               ; preds = %36, %4
  %.0 = phi i32 [ 0, %4 ], [ %37, %36 ]
  %15 = icmp slt i32 %.0, %13
  br i1 %15, label %16, label %38

16:                                               ; preds = %14
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds i8, i8* %7, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = zext i32 %.0 to i64
  %24 = getelementptr inbounds i8, i8* %9, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8, i8* %11, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %65

35:                                               ; preds = %28, %22, %16
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !11

38:                                               ; preds = %14
  %39 = icmp sgt i32 %13, 255
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i64 0, i32 5
  store i32 56, i32* %43, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i64 0, i32 6, i32 0, i64 0
  store i32 256, i32* %46, align 4
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i64 0, i32 0
  %50 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %49, align 8
  %51 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* noundef %51) #2
  br label %52

52:                                               ; preds = %40, %38
  %53 = trunc i32 %1 to i8
  %54 = sext i32 %13 to i64
  %55 = getelementptr inbounds i8, i8* %7, i64 %54
  store i8 %53, i8* %55, align 1
  %56 = trunc i32 %2 to i8
  %57 = sext i32 %13 to i64
  %58 = getelementptr inbounds i8, i8* %9, i64 %57
  store i8 %56, i8* %58, align 1
  %59 = trunc i32 %3 to i8
  %60 = sext i32 %13 to i64
  %61 = getelementptr inbounds i8, i8* %11, i64 %60
  store i8 %59, i8* %61, align 1
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 31
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %52, %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_pbm_integer(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  br label %3

3:                                                ; preds = %24, %2
  %4 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 1038, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* noundef %14) #2
  br label %15

15:                                               ; preds = %6, %3
  br label %16

16:                                               ; preds = %15
  %17 = icmp eq i32 %4, 32
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %4, 9
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = icmp eq i32 %4, 10
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = icmp eq i32 %4, 13
  br label %24

24:                                               ; preds = %22, %20, %18, %16
  %25 = phi i1 [ true, %20 ], [ true, %18 ], [ true, %16 ], [ %23, %22 ]
  br i1 %25, label %3, label %26, !llvm.loop !12

26:                                               ; preds = %24
  %27 = icmp slt i32 %4, 48
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = icmp sgt i32 %4, 57
  br i1 %29, label %30, label %39

30:                                               ; preds = %28, %26
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i64 0, i32 5
  store i32 1038, i32* %33, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i64 0, i32 0
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %36, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* noundef %38) #2
  br label %39

39:                                               ; preds = %30, %28
  %40 = add nsw i32 %4, -48
  br label %41

41:                                               ; preds = %48, %39
  %.0 = phi i32 [ %40, %39 ], [ %51, %48 ]
  %42 = call i32 @pbm_getc(%struct._IO_FILE* noundef %1)
  %43 = icmp sgt i32 %42, 47
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = icmp slt i32 %42, 58
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i1 [ false, %41 ], [ %45, %44 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = mul i32 %.0, 10
  %50 = add nsw i32 %42, -48
  %51 = add i32 %49, %50
  br label %41, !llvm.loop !13

52:                                               ; preds = %46
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbm_getc(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #2
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %10, %4
  %6 = call i32 @getc(%struct._IO_FILE* noundef %0) #2
  br label %7

7:                                                ; preds = %5
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %10, label %8

8:                                                ; preds = %7
  %9 = icmp ne i32 %6, -1
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i1 [ false, %7 ], [ %9, %8 ]
  br i1 %11, label %5, label %12, !llvm.loop !14

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %1
  %.0 = phi i32 [ %6, %12 ], [ %2, %1 ]
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
