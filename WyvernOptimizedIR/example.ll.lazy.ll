; ModuleID = './example.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
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
%struct.my_error_mgr = type { %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@image_width = external dso_local global i32, align 4
@image_height = external dso_local global i32, align 4
@image_buffer = external dso_local global i8*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_JPEG_file(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  %5 = alloca [1 x i8*], align 8
  %6 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef nonnull %4) #6
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 0
  store %struct.jpeg_error_mgr* %6, %struct.jpeg_error_mgr** %7, align 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef 61, i64 noundef 496) #6
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #7
  call void @exit(i32 noundef 1) #8
  unreachable

13:                                               ; preds = %2
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef nonnull %3, %struct._IO_FILE* noundef nonnull %8) #6
  %14 = load i32, i32* @image_width, align 4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @image_height, align 4
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 7
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 8
  store i32 3, i32* %18, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 9
  store i32 2, i32* %19, align 4
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef %1, i32 noundef 1) #6
  call void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef 1) #6
  %20 = load i32, i32* @image_width, align 4
  %21 = mul nsw i32 %20, 3
  br label %22

22:                                               ; preds = %28, %13
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 36
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** @image_buffer, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 36
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %31, %21
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0
  %37 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef nonnull %3, i8** noundef nonnull %36, i32 noundef 1) #6
  br label %22, !llvm.loop !4

38:                                               ; preds = %22
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  %39 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %8) #6
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  ret void
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef, i8** noundef, i32 noundef) #1

declare dso_local void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_JPEG_file(i8* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct, align 8
  %3 = alloca %struct.my_error_mgr, align 8
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #7
  br label %45

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %3, i64 0, i32 0
  %11 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef nonnull %10) #6
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i64 0, i32 0
  store %struct.jpeg_error_mgr* %11, %struct.jpeg_error_mgr** %12, align 8
  %13 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %3, i64 0, i32 0, i32 0
  store void (%struct.jpeg_common_struct*)* @my_error_exit, void (%struct.jpeg_common_struct*)** %13, align 8
  %14 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %3, i64 0, i32 1, i64 0
  %15 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef nonnull %14) #9
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %18, label %16

16:                                               ; preds = %9
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef nonnull %2) #6
  %17 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %4) #6
  br label %45

18:                                               ; preds = %9
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef nonnull %2, i32 noundef 61, i64 noundef 616) #6
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef nonnull %2, %struct._IO_FILE* noundef nonnull %4) #6
  %19 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef nonnull %2, i32 noundef 1) #6
  %20 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef nonnull %2) #6
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i64 0, i32 26
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i64 0, i32 29
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %22, %24
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i64 0, i32 1
  %27 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %27, i64 0, i32 2
  %29 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %28, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %2 to %struct.jpeg_common_struct*
  %31 = call i8** %29(%struct.jpeg_common_struct* noundef nonnull %30, i32 noundef 1, i32 noundef %25, i32 noundef 1) #6
  br label %32

32:                                               ; preds = %38, %18
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i64 0, i32 33
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i64 0, i32 27
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef nonnull %2, i8** noundef %31, i32 noundef 1) #6
  %40 = load i8*, i8** %31, align 8
  %41 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @put_scanline_someplace to i32 (i8*, i32, ...)*)(i8* noundef %40, i32 noundef %25) #6
  br label %32, !llvm.loop !6

42:                                               ; preds = %32
  %43 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef nonnull %2) #6
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef nonnull %2) #6
  %44 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %4) #6
  br label %45

45:                                               ; preds = %42, %16, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %16 ], [ 1, %42 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @my_error_exit(%struct.jpeg_common_struct* noundef %0) #3 {
  %2 = bitcast %struct.jpeg_common_struct* %0 to %struct.my_error_mgr**
  %3 = load %struct.my_error_mgr*, %struct.my_error_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %3, i64 0, i32 0, i32 2
  %5 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %4, align 8
  call void %5(%struct.jpeg_common_struct* noundef %0) #6
  %6 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %3, i64 0, i32 1, i64 0
  call void @longjmp(%struct.__jmp_buf_tag* noundef nonnull %6, i32 noundef 1) #8
  unreachable
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #4

declare dso_local void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef, i8** noundef, i32 noundef) #1

declare dso_local i32 @put_scanline_someplace(...) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
