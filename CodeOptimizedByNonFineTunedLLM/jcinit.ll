; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcinit.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcinit.c"
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_compress_master(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef %3, i32 noundef 0)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 23
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_color_converter(%struct.jpeg_compress_struct* noundef %9)
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_downsampler(%struct.jpeg_compress_struct* noundef %10)
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_c_prep_controller(%struct.jpeg_compress_struct* noundef %11, i32 noundef 0)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_forward_dct(%struct.jpeg_compress_struct* noundef %13)
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 24
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 1, i32* %22, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* noundef %29)
  br label %40

30:                                               ; preds = %12
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 37
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef %36)
  br label %39

37:                                               ; preds = %30
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef %38)
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 21
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 25
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi i1 [ true, %40 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  call void @jinit_c_coef_controller(%struct.jpeg_compress_struct* noundef %41, i32 noundef %53)
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_c_main_controller(%struct.jpeg_compress_struct* noundef %54, i32 noundef 0)
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %55)
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 1
  %58 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %58, i32 0, i32 6
  %60 = bitcast {}** %59 to void (%struct.jpeg_common_struct*)**
  %61 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %60, align 8
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %63 = bitcast %struct.jpeg_compress_struct* %62 to %struct.jpeg_common_struct*
  call void %61(%struct.jpeg_common_struct* noundef %63)
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 55
  %66 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %66, i32 0, i32 1
  %68 = bitcast {}** %67 to void (%struct.jpeg_compress_struct*)**
  %69 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %68, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void %69(%struct.jpeg_compress_struct* noundef %70)
  ret void
}

declare dso_local void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_color_converter(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_downsampler(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_c_prep_controller(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_forward_dct(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_c_coef_controller(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_c_main_controller(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
