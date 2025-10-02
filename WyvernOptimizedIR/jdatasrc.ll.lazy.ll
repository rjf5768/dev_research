; ModuleID = './jdatasrc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdatasrc.c"
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
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, %struct._IO_FILE*, i8*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %4 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %3, align 8
  %5 = icmp eq %struct.jpeg_source_mgr* %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %8 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %8, i64 0, i32 0
  %10 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %9, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %12 = call i8* %10(%struct.jpeg_common_struct* noundef %11, i32 noundef 0, i64 noundef 80) #4
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %14 = bitcast %struct.jpeg_source_mgr** %13 to i8**
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %16 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %16, i64 0, i32 0
  %18 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %20 = call i8* %18(%struct.jpeg_common_struct* noundef %19, i32 noundef 0, i64 noundef 4096) #4
  %21 = getelementptr inbounds i8, i8* %12, i64 64
  %22 = bitcast i8* %21 to i8**
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %6, %2
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %25 = bitcast %struct.jpeg_source_mgr** %24 to %struct.my_source_mgr**
  %26 = load %struct.my_source_mgr*, %struct.my_source_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 2
  store void (%struct.jpeg_decompress_struct*)* @init_source, void (%struct.jpeg_decompress_struct*)** %27, align 8
  %28 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* @fill_input_buffer, i32 (%struct.jpeg_decompress_struct*)** %28, align 8
  %29 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 4
  store void (%struct.jpeg_decompress_struct*, i64)* @skip_input_data, void (%struct.jpeg_decompress_struct*, i64)** %29, align 8
  %30 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 5
  store i32 (%struct.jpeg_decompress_struct*, i32)* @jpeg_resync_to_restart, i32 (%struct.jpeg_decompress_struct*, i32)** %30, align 8
  %31 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 6
  store void (%struct.jpeg_decompress_struct*)* @term_source, void (%struct.jpeg_decompress_struct*)** %31, align 8
  %32 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 1
  store %struct._IO_FILE* %1, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %26, i64 0, i32 0, i32 0
  store i8* null, i8** %34, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @init_source(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %3 = bitcast %struct.jpeg_source_mgr** %2 to %struct.my_source_mgr**
  %4 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 3
  store i32 1, i32* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fill_input_buffer(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %3 = bitcast %struct.jpeg_source_mgr** %2 to %struct.my_source_mgr**
  %4 = load %struct.my_source_mgr*, %struct.my_source_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 2
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = call i64 @fread(i8* noundef %6, i64 noundef 1, i64 noundef 4096, %struct._IO_FILE* noundef %8) #4
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %23, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 5
  store i32 41, i32* %17, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %22) #4
  br label %23

23:                                               ; preds = %14, %11
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i64 0, i32 5
  store i32 116, i32* %26, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 1
  %30 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %29, align 8
  %31 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %31, i32 noundef -1) #4
  %32 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8 -1, i8* %33, align 1
  %34 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 -39, i8* %36, align 1
  br label %37

37:                                               ; preds = %23, %1
  %.0 = phi i64 [ 2, %23 ], [ %9, %1 ]
  %38 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 0, i32 1
  store i64 %.0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %4, i64 0, i32 3
  store i32 0, i32* %42, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_input_data(%struct.jpeg_decompress_struct* noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %4 = bitcast %struct.jpeg_source_mgr** %3 to %struct.my_source_mgr**
  %5 = load %struct.my_source_mgr*, %struct.my_source_mgr** %4, align 8
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %12, %7
  %.0 = phi i64 [ %1, %7 ], [ %15, %12 ]
  %9 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i64 0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %.0, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i64 0, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %.0, %14
  %16 = call i32 @fill_input_buffer(%struct.jpeg_decompress_struct* noundef %0)
  br label %8, !llvm.loop !4

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %.0
  store i8* %20, i8** %18, align 8
  %21 = getelementptr inbounds %struct.my_source_mgr, %struct.my_source_mgr* %5, i64 0, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, %.0
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @jpeg_resync_to_restart(%struct.jpeg_decompress_struct* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @term_source(%struct.jpeg_decompress_struct* nocapture noundef %0) #3 {
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
