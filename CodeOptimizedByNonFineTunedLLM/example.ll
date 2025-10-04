; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/example.c'
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
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_compress_struct, align 8
  %6 = alloca %struct.jpeg_error_mgr, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca [1 x i8*], align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef %6)
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  store %struct.jpeg_error_mgr* %10, %struct.jpeg_error_mgr** %11, align 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef %5, i32 noundef 61, i64 noundef 496)
  %12 = load i8*, i8** %3, align 8
  %13 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %7, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %17)
  call void @exit(i32 noundef 1) #5
  unreachable

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef %5, %struct._IO_FILE* noundef %20)
  %21 = load i32, i32* @image_width, align 4
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 6
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @image_height, align 4
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 8
  store i32 3, i32* %25, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 9
  store i32 2, i32* %26, align 4
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef %5)
  %27 = load i32, i32* %4, align 4
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %5, i32 noundef %27, i32 noundef 1)
  call void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef %5, i32 noundef 1)
  %28 = load i32, i32* @image_width, align 4
  %29 = mul nsw i32 %28, 3
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %36, %19
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 36
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i8*, i8** @image_buffer, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 36
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = mul i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %46 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef %5, i8** noundef %45, i32 noundef 1)
  br label %30, !llvm.loop !4

47:                                               ; preds = %30
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef %5)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %49 = call i32 @fclose(%struct._IO_FILE* noundef %48)
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef %5)
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
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.jpeg_decompress_struct, align 8
  %5 = alloca %struct.my_error_mgr, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** %6, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef %14)
  store i32 0, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %5, i32 0, i32 0
  %18 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef %17)
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 0
  store %struct.jpeg_error_mgr* %18, %struct.jpeg_error_mgr** %19, align 8
  %20 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  store void (%struct.jpeg_common_struct*)* @my_error_exit, void (%struct.jpeg_common_struct*)** %21, align 8
  %22 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %5, i32 0, i32 1
  %23 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %22, i64 0, i64 0
  %24 = call i32 @_setjmp(%struct.__jmp_buf_tag* noundef %23) #6
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef %4)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %28 = call i32 @fclose(%struct._IO_FILE* noundef %27)
  store i32 0, i32* %2, align 4
  br label %63

29:                                               ; preds = %16
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef %4, i32 noundef 61, i64 noundef 616)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef %4, %struct._IO_FILE* noundef %30)
  %31 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef %4, i32 noundef 1)
  %32 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef %4)
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 26
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 29
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %34, %36
  store i32 %37, i32* %8, align 4
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %39 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %39, i32 0, i32 2
  %41 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %40, align 8
  %42 = bitcast %struct.jpeg_decompress_struct* %4 to %struct.jpeg_common_struct*
  %43 = load i32, i32* %8, align 4
  %44 = call i8** %41(%struct.jpeg_common_struct* noundef %42, i32 noundef 1, i32 noundef %43, i32 noundef 1)
  store i8** %44, i8*** %7, align 8
  br label %45

45:                                               ; preds = %51, %29
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 33
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 27
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8**, i8*** %7, align 8
  %53 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef %4, i8** noundef %52, i32 noundef 1)
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @put_scanline_someplace to i32 (i8*, i32, ...)*)(i8* noundef %56, i32 noundef %57)
  br label %45, !llvm.loop !6

59:                                               ; preds = %45
  %60 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef %4)
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef %4)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %62 = call i32 @fclose(%struct._IO_FILE* noundef %61)
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %26, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define internal void @my_error_exit(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  %3 = alloca %struct.my_error_mgr*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %7 = bitcast %struct.jpeg_error_mgr* %6 to %struct.my_error_mgr*
  store %struct.my_error_mgr* %7, %struct.my_error_mgr** %3, align 8
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 2
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %11, align 8
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  call void %12(%struct.jpeg_common_struct* noundef %13)
  %14 = load %struct.my_error_mgr*, %struct.my_error_mgr** %3, align 8
  %15 = getelementptr inbounds %struct.my_error_mgr, %struct.my_error_mgr* %14, i32 0, i32 1
  %16 = getelementptr inbounds [1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* %15, i64 0, i64 0
  call void @longjmp(%struct.__jmp_buf_tag* noundef %16, i32 noundef 1) #7
  unreachable
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag* noundef) #3

declare dso_local void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef, i8** noundef, i32 noundef) #1

declare dso_local i32 @put_scanline_someplace(...) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag* noundef, i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind returns_twice }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
