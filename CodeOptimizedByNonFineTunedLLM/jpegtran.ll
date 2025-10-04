; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jpegtran.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_decompress_struct, align 8
  %7 = alloca %struct.jpeg_compress_struct, align 8
  %8 = alloca %struct.jpeg_error_mgr, align 8
  %9 = alloca %struct.jpeg_error_mgr, align 8
  %10 = alloca %struct.jvirt_barray_control**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @progname, align 8
  %17 = load i8*, i8** @progname, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** @progname, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef %8)
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  store %struct.jpeg_error_mgr* %27, %struct.jpeg_error_mgr** %28, align 8
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 61, i64 noundef 616)
  %29 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef %9)
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  store %struct.jpeg_error_mgr* %29, %struct.jpeg_error_mgr** %30, align 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef %7, i32 noundef 61, i64 noundef 496)
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef %7, i32 noundef %31, i8** noundef %32, i32 noundef 0, i32 noundef 0)
  store i32 %33, i32* %11, align 4
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 7
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 1
  %38 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 1
  %42 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %42, i32 0, i32 11
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i8*, i8** @progname, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %50)
  call void @usage()
  br label %52

52:                                               ; preds = %48, %26
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call noalias %struct._IO_FILE* @fopen(i8* noundef %61, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %62, %struct._IO_FILE** %12, align 8
  %63 = icmp eq %struct._IO_FILE* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i8*, i8** @progname, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %66, i8* noundef %71)
  call void @exit(i32 noundef 1) #4
  unreachable

73:                                               ; preds = %56
  br label %76

74:                                               ; preds = %52
  %75 = call %struct._IO_FILE* @read_stdin()
  store %struct._IO_FILE* %75, %struct._IO_FILE** %12, align 8
  br label %76

76:                                               ; preds = %74, %73
  %77 = load i8*, i8** @outfilename, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i8*, i8** @outfilename, align 8
  %81 = call noalias %struct._IO_FILE* @fopen(i8* noundef %80, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %81, %struct._IO_FILE** %13, align 8
  %82 = icmp eq %struct._IO_FILE* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = load i8*, i8** @progname, align 8
  %86 = load i8*, i8** @outfilename, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %85, i8* noundef %86)
  call void @exit(i32 noundef 1) #4
  unreachable

88:                                               ; preds = %79
  br label %91

89:                                               ; preds = %76
  %90 = call %struct._IO_FILE* @write_stdout()
  store %struct._IO_FILE* %90, %struct._IO_FILE** %13, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef %6, %struct._IO_FILE* noundef %92)
  %93 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 1)
  %94 = call %struct.jvirt_barray_control** @jpeg_read_coefficients(%struct.jpeg_decompress_struct* noundef %6)
  store %struct.jvirt_barray_control** %94, %struct.jvirt_barray_control*** %10, align 8
  call void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* noundef %6, %struct.jpeg_compress_struct* noundef %7)
  %95 = load i32, i32* %4, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef %7, i32 noundef %95, i8** noundef %96, i32 noundef 0, i32 noundef 1)
  store i32 %97, i32* %11, align 4
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef %7, %struct._IO_FILE* noundef %98)
  %99 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %10, align 8
  call void @jpeg_write_coefficients(%struct.jpeg_compress_struct* noundef %7, %struct.jvirt_barray_control** noundef %99)
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef %7)
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef %7)
  %100 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef %6)
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef %6)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %103 = icmp ne %struct._IO_FILE* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %106 = call i32 @fclose(%struct._IO_FILE* noundef %105)
  br label %107

107:                                              ; preds = %104, %91
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = icmp ne %struct._IO_FILE* %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %113 = call i32 @fclose(%struct._IO_FILE* noundef %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %116, %118
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 2, i32 0
  call void @exit(i32 noundef %122) #4
  unreachable
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_switches(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** @outfilename, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 7
  store i32 0, i32* %22, align 4
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %215, %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %218

27:                                               ; preds = %23
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* null, i8** @outfilename, align 8
  br label %215

42:                                               ; preds = %37
  br label %218

43:                                               ; preds = %27
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @keymatch(i8* noundef %46, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** @progname, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* noundef %51)
  call void @exit(i32 noundef 1) #4
  unreachable

53:                                               ; preds = %43
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @keymatch(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @keymatch(i8* noundef %58, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @parse_switches.printed_version, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 0
  %70 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %213

74:                                               ; preds = %57
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @keymatch(i8* noundef %75, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 noundef 3)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  store i8 120, i8* %16, align 1
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  call void @usage()
  br label %84

84:                                               ; preds = %83, %78
  %85 = load i8**, i8*** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %89, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64* noundef %15, i8* noundef %16) #5
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  call void @usage()
  br label %93

93:                                               ; preds = %92, %84
  %94 = load i8, i8* %16, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 109
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i8, i8* %16, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 77
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %93
  %102 = load i64, i64* %15, align 8
  %103 = mul nsw i64 %102, 1000
  store i64 %103, i64* %15, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i64, i64* %15, align 8
  %106 = mul nsw i64 %105, 1000
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 1
  %109 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %108, align 8
  %110 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %109, i32 0, i32 11
  store i64 %106, i64* %110, align 8
  br label %212

111:                                              ; preds = %74
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @keymatch(i8* noundef %112, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @keymatch(i8* noundef %116, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115, %111
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %121 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 25
  store i32 1, i32* %121, align 8
  br label %211

122:                                              ; preds = %115
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @keymatch(i8* noundef %123, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 noundef 4)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  call void @usage()
  br label %132

132:                                              ; preds = %131, %126
  %133 = load i8**, i8*** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** @outfilename, align 8
  br label %210

138:                                              ; preds = %122
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @keymatch(i8* noundef %139, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 noundef 1)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %13, align 4
  br label %209

143:                                              ; preds = %138
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @keymatch(i8* noundef %144, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %190

147:                                              ; preds = %143
  store i8 120, i8* %18, align 1
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  call void @usage()
  br label %153

153:                                              ; preds = %152, %147
  %154 = load i8**, i8*** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %158, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64* noundef %17, i8* noundef %18) #5
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  call void @usage()
  br label %162

162:                                              ; preds = %161, %153
  %163 = load i64, i64* %17, align 8
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %17, align 8
  %167 = icmp sgt i64 %166, 65535
  br i1 %167, label %168, label %169

168:                                              ; preds = %165, %162
  call void @usage()
  br label %169

169:                                              ; preds = %168, %165
  %170 = load i8, i8* %18, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 98
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i8, i8* %18, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 66
  br i1 %176, label %177, label %184

177:                                              ; preds = %173, %169
  %178 = load i64, i64* %17, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %181 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %180, i32 0, i32 29
  store i32 %179, i32* %181, align 8
  %182 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %183 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %182, i32 0, i32 30
  store i32 0, i32* %183, align 4
  br label %189

184:                                              ; preds = %173
  %185 = load i64, i64* %17, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %188 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %187, i32 0, i32 30
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %184, %177
  br label %208

190:                                              ; preds = %143
  %191 = load i8*, i8** %12, align 8
  %192 = call i32 @keymatch(i8* noundef %191, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef 2)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %190
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp sge i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  call void @usage()
  br label %200

200:                                              ; preds = %199, %194
  %201 = load i8**, i8*** %8, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %14, align 8
  br label %207

206:                                              ; preds = %190
  call void @usage()
  br label %207

207:                                              ; preds = %206, %200
  br label %208

208:                                              ; preds = %207, %189
  br label %209

209:                                              ; preds = %208, %142
  br label %210

210:                                              ; preds = %209, %132
  br label %211

211:                                              ; preds = %210, %119
  br label %212

212:                                              ; preds = %211, %104
  br label %213

213:                                              ; preds = %212, %67
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %41
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %11, align 4
  br label %23, !llvm.loop !4

218:                                              ; preds = %42, %23
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %218
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  call void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef %225)
  br label %226

226:                                              ; preds = %224, %221
  %227 = load i8*, i8** %14, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %231 = load i8*, i8** %14, align 8
  %232 = call i32 @read_scan_script(%struct.jpeg_compress_struct* noundef %230, i8* noundef %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %229
  call void @usage()
  br label %235

235:                                              ; preds = %234, %229
  br label %236

236:                                              ; preds = %235, %226
  br label %237

237:                                              ; preds = %236, %218
  %238 = load i32, i32* %11, align 4
  ret i32 %238
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.23, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.26, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

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
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

declare dso_local void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @read_scan_script(%struct.jpeg_compress_struct* noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
