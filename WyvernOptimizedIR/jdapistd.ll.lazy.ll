; ModuleID = './jdapistd.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdapistd.c"
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, {}*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, {}*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { {}*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, [16 x {}*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 202
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @jinit_master_decompress(%struct.jpeg_decompress_struct* noundef %0) #2
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %7 = load i32, i32* %6, align 8
  %.not5 = icmp eq i32 %7, 0
  br i1 %.not5, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 207, i32* %9, align 4
  br label %95

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 203, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 203
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %18 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %18, i64 0, i32 4
  %20 = load i32, i32* %19, align 8
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %71, label %21

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %69, %21
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %24 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %23, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %24, null
  br i1 %.not2, label %31, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %27 = bitcast %struct.jpeg_progress_mgr** %26 to void (%struct.jpeg_common_struct*)***
  %28 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %27, align 8
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %28, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* noundef %30) #2
  br label %31

31:                                               ; preds = %25, %22
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %33 = bitcast %struct.jpeg_input_controller** %32 to i32 (%struct.jpeg_decompress_struct*)***
  %34 = load i32 (%struct.jpeg_decompress_struct*)**, i32 (%struct.jpeg_decompress_struct*)*** %33, align 8
  %35 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %34, align 8
  %36 = call i32 %35(%struct.jpeg_decompress_struct* noundef %0) #2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %95

39:                                               ; preds = %31
  %40 = icmp eq i32 %36, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %70

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %44 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %43, align 8
  %.not3 = icmp eq %struct.jpeg_progress_mgr* %44, null
  br i1 %.not3, label %69, label %45

45:                                               ; preds = %42
  %46 = icmp eq i32 %36, 3
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = icmp eq i32 %36, 1
  br i1 %48, label %49, label %69

49:                                               ; preds = %47, %45
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %51 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %51, i64 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %56 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %56, i64 0, i32 2
  %58 = load i64, i64* %57, align 8
  %.not4 = icmp slt i64 %54, %58
  br i1 %.not4, label %68, label %59

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 60
  %61 = load i32, i32* %60, align 8
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %64 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %64, i64 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %62
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %59, %49
  br label %69

69:                                               ; preds = %68, %47, %42
  br label %22

70:                                               ; preds = %41
  br label %71

71:                                               ; preds = %70, %16
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 34
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 36
  store i32 %73, i32* %74, align 4
  br label %93

75:                                               ; preds = %12
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %77 = load i32, i32* %76, align 4
  %.not = icmp eq i32 %77, 204
  br i1 %.not, label %92, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %80 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %79, align 8
  %81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %80, i64 0, i32 5
  store i32 18, i32* %81, align 8
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i64 0, i32 6, i32 0, i64 0
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %87, align 8
  %89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i64 0, i32 0
  %90 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %89, align 8
  %91 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* noundef %91) #2
  br label %92

92:                                               ; preds = %78, %75
  br label %93

93:                                               ; preds = %92, %71
  %94 = call i32 @output_pass_setup(%struct.jpeg_decompress_struct* noundef %0)
  br label %95

95:                                               ; preds = %93, %38, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %38 ], [ %94, %93 ]
  ret i32 %.0
}

declare dso_local void @jinit_master_decompress(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @output_pass_setup(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 204
  br i1 %.not, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %6 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %6, i64 0, i32 0
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %7, align 8
  call void %8(%struct.jpeg_decompress_struct* noundef %0) #2
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 204, i32* %10, align 4
  br label %11

11:                                               ; preds = %4, %1
  br label %12

12:                                               ; preds = %58, %11
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %14 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %14, i64 0, i32 2
  %16 = load i32, i32* %15, align 8
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %68, label %17

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %57, %17
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %26 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %25, align 8
  %.not3 = icmp eq %struct.jpeg_progress_mgr* %26, null
  br i1 %.not3, label %45, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %32 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %32, i64 0, i32 1
  store i64 %30, i64* %33, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %38 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %38, i64 0, i32 2
  store i64 %36, i64* %39, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %41 = bitcast %struct.jpeg_progress_mgr** %40 to void (%struct.jpeg_common_struct*)***
  %42 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %41, align 8
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %44) #2
  br label %45

45:                                               ; preds = %27, %24
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %49 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %49, i64 0, i32 1
  %51 = load void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  call void %51(%struct.jpeg_decompress_struct* noundef %0, i8** noundef null, i32* noundef nonnull %52, i32 noundef 0) #2
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, %47
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %73

57:                                               ; preds = %45
  br label %18, !llvm.loop !4

58:                                               ; preds = %18
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %60 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %59, align 8
  %61 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %60, i64 0, i32 1
  %62 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %61, align 8
  call void %62(%struct.jpeg_decompress_struct* noundef %0) #2
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %64 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %64, i64 0, i32 0
  %66 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %65, align 8
  call void %66(%struct.jpeg_decompress_struct* noundef %0) #2
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  store i32 0, i32* %67, align 8
  br label %12, !llvm.loop !6

68:                                               ; preds = %12
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 15
  %70 = load i32, i32* %69, align 4
  %.not2 = icmp eq i32 %70, 0
  %71 = select i1 %.not2, i32 205, i32 206
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %56
  %.0 = phi i32 [ 0, %56 ], [ 1, %68 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 205
  br i1 %.not, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i64 0, i32 5
  store i32 18, i32* %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 6, i32 0, i64 0
  store i32 %12, i32* %15, align 4
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #2
  br label %21

21:                                               ; preds = %7, %3
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %25 = load i32, i32* %24, align 4
  %.not1 = icmp ult i32 %23, %25
  br i1 %.not1, label %35, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 5
  store i32 119, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 1
  %33 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %32, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %34, i32 noundef -1) #2
  br label %65

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %37 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %36, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %37, null
  br i1 %.not2, label %56, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %43 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %43, i64 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %49 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %49, i64 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %52 = bitcast %struct.jpeg_progress_mgr** %51 to void (%struct.jpeg_common_struct*)***
  %53 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %52, align 8
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* noundef %55) #2
  br label %56

56:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %58 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %58, i64 0, i32 1
  %60 = load void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %59, align 8
  call void %60(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32* noundef nonnull %4, i32 noundef %2) #2
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %63, %61
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %56, %26
  %.0 = phi i32 [ 0, %26 ], [ %61, %56 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_raw_data(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 206
  br i1 %.not, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 18, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 6, i32 0, i64 0
  store i32 %11, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #2
  br label %20

20:                                               ; preds = %6, %3
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %24 = load i32, i32* %23, align 4
  %.not1 = icmp ult i32 %22, %24
  br i1 %.not1, label %34, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 5
  store i32 119, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 1
  %32 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %31, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %33, i32 noundef -1) #2
  br label %82

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %36 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %35, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %36, null
  br i1 %.not2, label %55, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %42 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %42, i64 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %45 = load i32, i32* %44, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %48 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %48, i64 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %51 = bitcast %struct.jpeg_progress_mgr** %50 to void (%struct.jpeg_common_struct*)***
  %52 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %51, align 8
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %52, align 8
  %54 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* noundef %54) #2
  br label %55

55:                                               ; preds = %37, %34
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %57, %59
  %61 = icmp ugt i32 %60, %2
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %63, align 8
  %65 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i64 0, i32 5
  store i32 21, i32* %65, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %66, align 8
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i64 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %68, align 8
  %70 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* noundef %70) #2
  br label %71

71:                                               ; preds = %62, %55
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %73 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %73, i64 0, i32 3
  %75 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %74, align 8
  %76 = call i32 %75(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1) #2
  %.not3 = icmp eq i32 %76, 0
  br i1 %.not3, label %77, label %78

77:                                               ; preds = %71
  br label %82

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %80 = load i32, i32* %79, align 8
  %81 = add i32 %80, %60
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %78, %77, %25
  %.0 = phi i32 [ 0, %25 ], [ %60, %78 ], [ 0, %77 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_start_output(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 207
  br i1 %.not, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %.not2 = icmp eq i32 %7, 204
  br i1 %.not2, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 5
  store i32 18, i32* %11, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 6, i32 0, i64 0
  store i32 %13, i32* %16, align 4
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %19, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* noundef %21) #2
  br label %22

22:                                               ; preds = %8, %5, %2
  %23 = icmp slt i32 %1, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %22
  %.0 = phi i32 [ 1, %24 ], [ %1, %22 ]
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %27 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %27, i64 0, i32 5
  %29 = load i32, i32* %28, align 4
  %.not1 = icmp eq i32 %29, 0
  br i1 %.not1, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 34
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %.0, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 34
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %34, %30, %25
  %.1 = phi i32 [ %36, %34 ], [ %.0, %30 ], [ %.0, %25 ]
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 36
  store i32 %.1, i32* %38, align 4
  %39 = call i32 @output_pass_setup(%struct.jpeg_decompress_struct* noundef %0)
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_finish_output(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 205
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 206
  br i1 %8, label %9, label %18

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %11 = load i32, i32* %10, align 8
  %.not3 = icmp eq i32 %11, 0
  br i1 %.not3, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %14 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %14, i64 0, i32 1
  %16 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %15, align 8
  call void %16(%struct.jpeg_decompress_struct* noundef %0) #2
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 208, i32* %17, align 4
  br label %36

18:                                               ; preds = %9, %5
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %20 = load i32, i32* %19, align 4
  %.not = icmp eq i32 %20, 208
  br i1 %.not, label %35, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 5
  store i32 18, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 6, i32 0, i64 0
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %32, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %34) #2
  br label %35

35:                                               ; preds = %21, %18
  br label %36

36:                                               ; preds = %35, %12
  br label %37

37:                                               ; preds = %57, %36
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 34
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 36
  %41 = load i32, i32* %40, align 4
  %.not1 = icmp sgt i32 %39, %41
  br i1 %.not1, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %44 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %44, i64 0, i32 5
  %46 = load i32, i32* %45, align 4
  %.not2 = icmp eq i32 %46, 0
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %.not2, %42 ]
  br i1 %48, label %49, label %58

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %51 = bitcast %struct.jpeg_input_controller** %50 to i32 (%struct.jpeg_decompress_struct*)***
  %52 = load i32 (%struct.jpeg_decompress_struct*)**, i32 (%struct.jpeg_decompress_struct*)*** %51, align 8
  %53 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %52, align 8
  %54 = call i32 %53(%struct.jpeg_decompress_struct* noundef %0) #2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %60

57:                                               ; preds = %49
  br label %37, !llvm.loop !7

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 207, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %56
  %.0 = phi i32 [ 0, %56 ], [ 1, %58 ]
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
