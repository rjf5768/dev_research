; ModuleID = './jpegtran.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jpegtran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
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

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"jpegtran\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"Independent JPEG Group's JPEGTRAN, version %s\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct, align 8
  %4 = alloca %struct.jpeg_compress_struct, align 8
  %5 = alloca %struct.jpeg_error_mgr, align 8
  %6 = alloca %struct.jpeg_error_mgr, align 8
  %7 = load i8*, i8** %1, align 8
  store i8* %7, i8** @progname, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** @progname, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef nonnull %5) #6
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i64 0, i32 0
  store %struct.jpeg_error_mgr* %15, %struct.jpeg_error_mgr** %16, align 8
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 61, i64 noundef 616) #6
  %17 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef nonnull %6) #6
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i64 0, i32 0
  store %struct.jpeg_error_mgr* %17, %struct.jpeg_error_mgr** %18, align 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef nonnull %4, i32 noundef 61, i64 noundef 496) #6
  %19 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef nonnull %4, i32 noundef %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef 0)
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i64 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i64 0, i32 7
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i64 0, i32 1
  %24 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %24, i64 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i64 0, i32 1
  %28 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %28, i64 0, i32 11
  store i64 %26, i64* %29, align 8
  %30 = add nsw i32 %0, -1
  %31 = icmp slt i32 %19, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i8*, i8** @progname, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %34) #7
  call void @usage()
  br label %36

36:                                               ; preds = %32, %14
  %37 = icmp slt i32 %19, %0
  br i1 %37, label %38, label %52

38:                                               ; preds = %36
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call noalias %struct._IO_FILE* @fopen(i8* noundef %41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6
  %43 = icmp eq %struct._IO_FILE* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i8*, i8** @progname, align 8
  %47 = sext i32 %19 to i64
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %46, i8* noundef %49) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %38
  br label %54

52:                                               ; preds = %36
  %53 = call %struct._IO_FILE* @read_stdin() #6
  br label %54

54:                                               ; preds = %52, %51
  %.01 = phi %struct._IO_FILE* [ %42, %51 ], [ %53, %52 ]
  %55 = load i8*, i8** @outfilename, align 8
  %.not = icmp eq i8* %55, null
  br i1 %.not, label %66, label %56

56:                                               ; preds = %54
  %57 = load i8*, i8** @outfilename, align 8
  %58 = call noalias %struct._IO_FILE* @fopen(i8* noundef %57, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %59 = icmp eq %struct._IO_FILE* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i8*, i8** @progname, align 8
  %63 = load i8*, i8** @outfilename, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %62, i8* noundef %63) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

65:                                               ; preds = %56
  br label %68

66:                                               ; preds = %54
  %67 = call %struct._IO_FILE* @write_stdout() #6
  br label %68

68:                                               ; preds = %66, %65
  %.0 = phi %struct._IO_FILE* [ %58, %65 ], [ %67, %66 ]
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef nonnull %3, %struct._IO_FILE* noundef %.01) #6
  %69 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 1) #6
  %70 = call %struct.jvirt_barray_control** @jpeg_read_coefficients(%struct.jpeg_decompress_struct* noundef nonnull %3) #6
  call void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* noundef nonnull %3, %struct.jpeg_compress_struct* noundef nonnull %4) #6
  %71 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef nonnull %4, i32 noundef %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef 1)
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef nonnull %4, %struct._IO_FILE* noundef %.0) #6
  call void @jpeg_write_coefficients(%struct.jpeg_compress_struct* noundef nonnull %4, %struct.jvirt_barray_control** noundef %70) #6
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef nonnull %4) #6
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef nonnull %4) #6
  %72 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef nonnull %3) #6
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef nonnull %3) #6
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %.not2 = icmp eq %struct._IO_FILE* %.01, %73
  br i1 %.not2, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 @fclose(%struct._IO_FILE* noundef %.01) #6
  br label %76

76:                                               ; preds = %74, %68
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not3 = icmp eq %struct._IO_FILE* %.0, %77
  br i1 %.not3, label %80, label %78

78:                                               ; preds = %76
  %79 = call i32 @fclose(%struct._IO_FILE* noundef %.0) #6
  br label %80

80:                                               ; preds = %78, %76
  %81 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i64 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i64 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 0, %84
  %.not4 = icmp eq i64 %82, %85
  %86 = select i1 %.not4, i32 0, i32 2
  call void @exit(i32 noundef %86) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %80, %60, %44
  unreachable
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_switches(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* null, i8** @outfilename, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 7
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %143, %5
  %.08 = phi i32 [ 1, %5 ], [ %144, %143 ]
  %.01 = phi i32 [ 0, %5 ], [ %.67, %143 ]
  %.0 = phi i8* [ null, %5 ], [ %.8, %143 ]
  %14 = icmp slt i32 %.08, %1
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %13
  %16 = sext i32 %.08 to i64
  %17 = getelementptr inbounds i8*, i8** %2, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %.not29 = icmp eq i8 %19, 45
  br i1 %.not29, label %23, label %20

20:                                               ; preds = %15
  %.not45 = icmp sgt i32 %.08, %3
  br i1 %.not45, label %22, label %21

21:                                               ; preds = %20
  store i8* null, i8** @outfilename, align 8
  br label %143

22:                                               ; preds = %20
  br label %145

23:                                               ; preds = %15
  %24 = getelementptr inbounds i8, i8* %18, i64 1
  %25 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1) #6
  %.not30 = icmp eq i32 %25, 0
  br i1 %.not30, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i8*, i8** @progname, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* noundef %28) #7
  call void @exit(i32 noundef 1) #8
  unreachable

30:                                               ; preds = %23
  %31 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1) #6
  %.not31 = icmp eq i32 %31, 0
  br i1 %.not31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 1) #6
  %.not32 = icmp eq i32 %33, 0
  br i1 %.not32, label %45, label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* @parse_switches.printed_version, align 4
  %.not44 = icmp eq i32 %35, 0
  br i1 %.not44, label %36, label %39

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #7
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i64 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %141

45:                                               ; preds = %32
  %46 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef 3) #6
  %.not33 = icmp eq i32 %46, 0
  br i1 %.not33, label %72, label %47

47:                                               ; preds = %45
  store i8 120, i8* %7, align 1
  %48 = add nsw i32 %.08, 1
  %.not43 = icmp slt i32 %48, %1
  br i1 %.not43, label %50, label %49

49:                                               ; preds = %47
  call void @usage()
  br label %50

50:                                               ; preds = %49, %47
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i8*, i8** %2, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %53, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64* noundef nonnull %6, i8* noundef nonnull %7) #6
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  call void @usage()
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i8, i8* %7, align 1
  %59 = icmp eq i8 %58, 109
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i8, i8* %7, align 1
  %62 = icmp eq i8 %61, 77
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %57
  %64 = load i64, i64* %6, align 8
  %65 = mul nsw i64 %64, 1000
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64, i64* %6, align 8
  %68 = mul nsw i64 %67, 1000
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %70 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %70, i64 0, i32 11
  store i64 %68, i64* %71, align 8
  br label %140

72:                                               ; preds = %45
  %73 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1) #6
  %.not34 = icmp eq i32 %73, 0
  br i1 %.not34, label %74, label %76

74:                                               ; preds = %72
  %75 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1) #6
  %.not35 = icmp eq i32 %75, 0
  br i1 %.not35, label %78, label %76

76:                                               ; preds = %74, %72
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 25
  store i32 1, i32* %77, align 8
  br label %139

78:                                               ; preds = %74
  %79 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 noundef 4) #6
  %.not36 = icmp eq i32 %79, 0
  br i1 %.not36, label %87, label %80

80:                                               ; preds = %78
  %81 = add nsw i32 %.08, 1
  %.not42 = icmp slt i32 %81, %1
  br i1 %.not42, label %83, label %82

82:                                               ; preds = %80
  call void @usage()
  br label %83

83:                                               ; preds = %82, %80
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds i8*, i8** %2, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** @outfilename, align 8
  br label %138

87:                                               ; preds = %78
  %88 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1) #6
  %.not37 = icmp eq i32 %88, 0
  br i1 %.not37, label %90, label %89

89:                                               ; preds = %87
  br label %137

90:                                               ; preds = %87
  %91 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1) #6
  %.not38 = icmp eq i32 %91, 0
  br i1 %.not38, label %125, label %92

92:                                               ; preds = %90
  store i8 120, i8* %9, align 1
  %93 = add nsw i32 %.08, 1
  %.not41 = icmp slt i32 %93, %1
  br i1 %.not41, label %95, label %94

94:                                               ; preds = %92
  call void @usage()
  br label %95

95:                                               ; preds = %94, %92
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i8*, i8** %2, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %98, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64* noundef nonnull %8, i8* noundef nonnull %9) #6
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  call void @usage()
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i64, i64* %8, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %8, align 8
  %107 = icmp sgt i64 %106, 65535
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  call void @usage()
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i8, i8* %9, align 1
  %111 = icmp eq i8 %110, 98
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i8, i8* %9, align 1
  %114 = icmp eq i8 %113, 66
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %109
  %116 = load i64, i64* %8, align 8
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 29
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 30
  store i32 0, i32* %119, align 4
  br label %124

120:                                              ; preds = %112
  %121 = load i64, i64* %8, align 8
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 30
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %115
  br label %136

125:                                              ; preds = %90
  %126 = call i32 @keymatch(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef 2) #6
  %.not39 = icmp eq i32 %126, 0
  br i1 %.not39, label %134, label %127

127:                                              ; preds = %125
  %128 = add nsw i32 %.08, 1
  %.not40 = icmp slt i32 %128, %1
  br i1 %.not40, label %130, label %129

129:                                              ; preds = %127
  call void @usage()
  br label %130

130:                                              ; preds = %129, %127
  %131 = sext i32 %128 to i64
  %132 = getelementptr inbounds i8*, i8** %2, i64 %131
  %133 = load i8*, i8** %132, align 8
  br label %135

134:                                              ; preds = %125
  call void @usage()
  br label %135

135:                                              ; preds = %134, %130
  %.19 = phi i32 [ %128, %130 ], [ %.08, %134 ]
  %.1 = phi i8* [ %133, %130 ], [ %.0, %134 ]
  br label %136

136:                                              ; preds = %135, %124
  %.210 = phi i32 [ %93, %124 ], [ %.19, %135 ]
  %.2 = phi i8* [ %.0, %124 ], [ %.1, %135 ]
  br label %137

137:                                              ; preds = %136, %89
  %.311 = phi i32 [ %.08, %89 ], [ %.210, %136 ]
  %.12 = phi i32 [ 1, %89 ], [ %.01, %136 ]
  %.3 = phi i8* [ %.0, %89 ], [ %.2, %136 ]
  br label %138

138:                                              ; preds = %137, %83
  %.412 = phi i32 [ %81, %83 ], [ %.311, %137 ]
  %.23 = phi i32 [ %.01, %83 ], [ %.12, %137 ]
  %.4 = phi i8* [ %.0, %83 ], [ %.3, %137 ]
  br label %139

139:                                              ; preds = %138, %76
  %.513 = phi i32 [ %.08, %76 ], [ %.412, %138 ]
  %.34 = phi i32 [ %.01, %76 ], [ %.23, %138 ]
  %.5 = phi i8* [ %.0, %76 ], [ %.4, %138 ]
  br label %140

140:                                              ; preds = %139, %66
  %.614 = phi i32 [ %48, %66 ], [ %.513, %139 ]
  %.45 = phi i32 [ %.01, %66 ], [ %.34, %139 ]
  %.6 = phi i8* [ %.0, %66 ], [ %.5, %139 ]
  br label %141

141:                                              ; preds = %140, %39
  %.715 = phi i32 [ %.08, %39 ], [ %.614, %140 ]
  %.56 = phi i32 [ %.01, %39 ], [ %.45, %140 ]
  %.7 = phi i8* [ %.0, %39 ], [ %.6, %140 ]
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %21
  %.816 = phi i32 [ %.08, %21 ], [ %.715, %142 ]
  %.67 = phi i32 [ %.01, %21 ], [ %.56, %142 ]
  %.8 = phi i8* [ %.0, %21 ], [ %.7, %142 ]
  %144 = add nsw i32 %.816, 1
  br label %13, !llvm.loop !4

.loopexit:                                        ; preds = %13
  br label %145

145:                                              ; preds = %.loopexit, %22
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %154, label %146

146:                                              ; preds = %145
  %.not26 = icmp eq i32 %.01, 0
  br i1 %.not26, label %148, label %147

147:                                              ; preds = %146
  call void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef %0) #6
  br label %148

148:                                              ; preds = %147, %146
  %.not27 = icmp eq i8* %.0, null
  br i1 %.not27, label %153, label %149

149:                                              ; preds = %148
  %150 = call i32 @read_scan_script(%struct.jpeg_compress_struct* noundef %0, i8* noundef nonnull %.0) #6
  %.not28 = icmp eq i32 %150, 0
  br i1 %.not28, label %151, label %152

151:                                              ; preds = %149
  call void @usage()
  br label %152

152:                                              ; preds = %151, %149
  br label %153

153:                                              ; preds = %152, %148
  br label %154

154:                                              ; preds = %153, %145
  ret i32 %.08
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2) #7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %4) #9
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %6) #9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.23, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %8) #9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %10) #9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %12) #9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %14) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %16) #9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %18) #9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %20) #9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %22) #9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %24) #9
  call void @exit(i32 noundef 1) #8
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local %struct._IO_FILE* @read_stdin() #1

declare dso_local %struct._IO_FILE* @write_stdout() #1

declare dso_local void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local %struct.jvirt_barray_control** @jpeg_read_coefficients(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* noundef, %struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @jpeg_write_coefficients(%struct.jpeg_compress_struct* noundef, %struct.jvirt_barray_control** noundef) #1

declare dso_local void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @keymatch(i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #4

declare dso_local void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @read_scan_script(%struct.jpeg_compress_struct* noundef, i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
