; ModuleID = './jdtrans.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jvirt_barray_control = type opaque
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
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
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.jvirt_barray_control** @jpeg_read_coefficients(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 202
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  call void @transdecode_master_selection(%struct.jpeg_decompress_struct* noundef %0)
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 209, i32* %6, align 4
  br label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %.not = icmp eq i32 %9, 209
  br i1 %.not, label %24, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 5
  store i32 18, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 6, i32 0, i64 0
  store i32 %15, i32* %18, align 4
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i64 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %21, align 8
  %23 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* noundef %23) #2
  br label %24

24:                                               ; preds = %10, %7
  br label %25

25:                                               ; preds = %24, %5
  br label %26

26:                                               ; preds = %73, %25
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %28 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %27, align 8
  %.not1 = icmp eq %struct.jpeg_progress_mgr* %28, null
  br i1 %.not1, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %31 = bitcast %struct.jpeg_progress_mgr** %30 to void (%struct.jpeg_common_struct*)***
  %32 = load void (%struct.jpeg_common_struct*)**, void (%struct.jpeg_common_struct*)*** %31, align 8
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %32, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %34) #2
  br label %35

35:                                               ; preds = %29, %26
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %37 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %37, i64 0, i32 0
  %39 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %38, align 8
  %40 = call i32 %39(%struct.jpeg_decompress_struct* noundef %0) #2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %80

43:                                               ; preds = %35
  %44 = icmp eq i32 %40, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %74

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %48 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %47, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %48, null
  br i1 %.not2, label %73, label %49

49:                                               ; preds = %46
  %50 = icmp eq i32 %40, 3
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = icmp eq i32 %40, 1
  br i1 %52, label %53, label %73

53:                                               ; preds = %51, %49
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %55 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %55, i64 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %60 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %59, align 8
  %61 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %60, i64 0, i32 2
  %62 = load i64, i64* %61, align 8
  %.not3 = icmp slt i64 %58, %62
  br i1 %.not3, label %72, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 60
  %65 = load i32, i32* %64, align 8
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %68 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %68, i64 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %66
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %63, %53
  br label %73

73:                                               ; preds = %72, %51, %46
  br label %26

74:                                               ; preds = %45
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 210, i32* %75, align 4
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %77 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %76, align 8
  %78 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %77, i64 0, i32 4
  %79 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %78, align 8
  br label %80

80:                                               ; preds = %74, %42
  %.0 = phi %struct.jvirt_barray_control** [ null, %42 ], [ %79, %74 ]
  ret %struct.jvirt_barray_control** %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @transdecode_master_selection(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 45
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i64 0, i32 5
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i64 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %10, align 8
  %12 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* noundef %12) #2
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 44
  %15 = load i32, i32* %14, align 8
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %13
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef %0) #2
  br label %18

17:                                               ; preds = %13
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef %0) #2
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %4
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef %0, i32 noundef 1) #2
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %21 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %21, i64 0, i32 6
  %23 = bitcast {}** %22 to void (%struct.jpeg_common_struct*)**
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %23, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* noundef %25) #2
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %27 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %27, i64 0, i32 2
  %29 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %28, align 8
  call void %29(%struct.jpeg_decompress_struct* noundef %0) #2
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %31 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %30, align 8
  %.not2 = icmp eq %struct.jpeg_progress_mgr* %31, null
  br i1 %.not2, label %68, label %32

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 44
  %34 = load i32, i32* %33, align 8
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 3
  %39 = add nsw i32 %38, 2
  br label %50

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %42 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %42, i64 0, i32 4
  %44 = load i32, i32* %43, align 8
  %.not4 = icmp eq i32 %44, 0
  br i1 %.not4, label %48, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %47 = load i32, i32* %46, align 8
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %45
  %.0 = phi i32 [ %47, %45 ], [ 1, %48 ]
  br label %50

50:                                               ; preds = %49, %35
  %.1 = phi i32 [ %39, %35 ], [ %.0, %49 ]
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %52 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %52, i64 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 60
  %55 = load i32, i32* %54, align 8
  %56 = zext i32 %55 to i64
  %57 = sext i32 %.1 to i64
  %58 = mul nsw i64 %56, %57
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %60 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %59, align 8
  %61 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %60, i64 0, i32 2
  store i64 %58, i64* %61, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %63 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %62, align 8
  %64 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %63, i64 0, i32 3
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %66 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %66, i64 0, i32 4
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %50, %19
  ret void
}

declare dso_local void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
