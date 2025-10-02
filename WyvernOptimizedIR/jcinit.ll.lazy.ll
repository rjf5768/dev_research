; ModuleID = './jcinit.ll'
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
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0) #2
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 23
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %1
  call void @jinit_color_converter(%struct.jpeg_compress_struct* noundef %0) #2
  call void @jinit_downsampler(%struct.jpeg_compress_struct* noundef %0) #2
  call void @jinit_c_prep_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0) #2
  br label %5

5:                                                ; preds = %4, %1
  call void @jinit_forward_dct(%struct.jpeg_compress_struct* noundef %0) #2
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %7 = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 5
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %14, align 8
  %16 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* noundef %16) #2
  br label %23

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 37
  %19 = load i32, i32* %18, align 4
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %21, label %20

20:                                               ; preds = %17
  call void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef %0) #2
  br label %22

21:                                               ; preds = %17
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef %0) #2
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 21
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 25
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %phi.cast = zext i1 %30 to i32
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ 1, %23 ], [ %phi.cast, %27 ]
  call void @jinit_c_coef_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef %32) #2
  call void @jinit_c_main_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0) #2
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %0) #2
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i64 0, i32 6
  %36 = bitcast {}** %35 to void (%struct.jpeg_common_struct*)**
  %37 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %36, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %37(%struct.jpeg_common_struct* noundef %38) #2
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %40 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %40, i64 0, i32 1
  %42 = bitcast {}** %41 to void (%struct.jpeg_compress_struct*)**
  %43 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %42, align 8
  call void %43(%struct.jpeg_compress_struct* noundef %0) #2
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
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
