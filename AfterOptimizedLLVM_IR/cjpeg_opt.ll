; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/cjpeg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/cjpeg.c"
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
%struct.cjpeg_source_struct = type { void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, %struct._IO_FILE*, i8**, i32 }

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x i8*] [i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@is_targa = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.79 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1
@.str.81 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"  -baseline      Force baseline output\0A\00", align 1
@.str.97 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1
@.str.100 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_compress_struct, align 8
  %7 = alloca %struct.jpeg_error_mgr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cjpeg_source_struct*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** @progname, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** @progname, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef %7)
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  store %struct.jpeg_error_mgr* %26, %struct.jpeg_error_mgr** %27, align 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef %6, i32 noundef 61, i64 noundef 496)
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 11
  store i8** getelementptr inbounds ([44 x i8*], [44 x i8*]* @cdjpeg_message_table, i64 0, i64 0), i8*** %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 12
  store i32 1000, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 13
  store i32 1043, i32* %30, align 4
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 9
  store i32 2, i32* %31, align 4
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef %6)
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef %6, i32 noundef %32, i8** noundef %33, i32 noundef 0, i32 noundef 0)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** @progname, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %41)
  call void @usage()
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call noalias %struct._IO_FILE* @fopen(i8* noundef %52, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %53, %struct._IO_FILE** %10, align 8
  %54 = icmp eq %struct._IO_FILE* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load i8*, i8** @progname, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %57, i8* noundef %62)
  call void @exit(i32 noundef 1) #4
  unreachable

64:                                               ; preds = %47
  br label %67

65:                                               ; preds = %43
  %66 = call %struct._IO_FILE* @read_stdin()
  store %struct._IO_FILE* %66, %struct._IO_FILE** %10, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i8*, i8** @outfilename, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i8*, i8** @outfilename, align 8
  %72 = call noalias %struct._IO_FILE* @fopen(i8* noundef %71, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %72, %struct._IO_FILE** %11, align 8
  %73 = icmp eq %struct._IO_FILE* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = load i8*, i8** @progname, align 8
  %77 = load i8*, i8** @outfilename, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %76, i8* noundef %77)
  call void @exit(i32 noundef 1) #4
  unreachable

79:                                               ; preds = %70
  br label %82

80:                                               ; preds = %67
  %81 = call %struct._IO_FILE* @write_stdout()
  store %struct._IO_FILE* %81, %struct._IO_FILE** %11, align 8
  br label %82

82:                                               ; preds = %80, %79
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %84 = call %struct.cjpeg_source_struct* @select_file_type(%struct.jpeg_compress_struct* noundef %6, %struct._IO_FILE* noundef %83)
  store %struct.cjpeg_source_struct* %84, %struct.cjpeg_source_struct** %9, align 8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %86 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  %87 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %86, i32 0, i32 3
  store %struct._IO_FILE* %85, %struct._IO_FILE** %87, align 8
  %88 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  %89 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %88, i32 0, i32 0
  %90 = load void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %89, align 8
  %91 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  call void %90(%struct.jpeg_compress_struct* noundef %6, %struct.cjpeg_source_struct* noundef %91)
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef %6)
  %92 = load i32, i32* %4, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef %6, i32 noundef %92, i8** noundef %93, i32 noundef 0, i32 noundef 1)
  store i32 %94, i32* %8, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef %6, %struct._IO_FILE* noundef %95)
  call void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef %6, i32 noundef 1)
  br label %96

96:                                               ; preds = %102, %82
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 36
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %98, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  %104 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %103, i32 0, i32 1
  %105 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %104, align 8
  %106 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  %107 = call i32 %105(%struct.jpeg_compress_struct* noundef %6, %struct.cjpeg_source_struct* noundef %106)
  store i32 %107, i32* %12, align 4
  %108 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  %109 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %108, i32 0, i32 4
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef %6, i8** noundef %110, i32 noundef %111)
  br label %96, !llvm.loop !4

113:                                              ; preds = %96
  %114 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  %115 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %114, i32 0, i32 2
  %116 = load void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %115, align 8
  %117 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %9, align 8
  call void %116(%struct.jpeg_compress_struct* noundef %6, %struct.cjpeg_source_struct* noundef %117)
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef %6)
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef %6)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %120 = icmp ne %struct._IO_FILE* %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %123 = call i32 @fclose(%struct._IO_FILE* noundef %122)
  br label %124

124:                                              ; preds = %121, %113
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = icmp ne %struct._IO_FILE* %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %130 = call i32 @fclose(%struct._IO_FILE* noundef %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 2, i32 0
  call void @exit(i32 noundef %136) #4
  unreachable
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef) #1

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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 75, i32* %13, align 4
  store i32 100, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* @is_targa, align 4
  store i8* null, i8** @outfilename, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 7
  store i32 0, i32* %29, align 4
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %398, %5
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %401

34:                                               ; preds = %30
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 45
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* null, i8** @outfilename, align 8
  br label %398

49:                                               ; preds = %44
  br label %401

50:                                               ; preds = %34
  %51 = load i8*, i8** %12, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @keymatch(i8* noundef %53, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @progname, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i8* noundef %58)
  call void @exit(i32 noundef 1) #4
  unreachable

60:                                               ; preds = %50
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @keymatch(i8* noundef %61, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 noundef 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %396

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @keymatch(i8* noundef %66, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i32 noundef 2)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void @usage()
  br label %75

75:                                               ; preds = %74, %69
  %76 = load i8**, i8*** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @keymatch(i8* noundef %80, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i32 noundef 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 28
  store i32 0, i32* %85, align 4
  br label %111

86:                                               ; preds = %75
  %87 = load i8**, i8*** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @keymatch(i8* noundef %91, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i32 noundef 2)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 28
  store i32 1, i32* %96, align 4
  br label %110

97:                                               ; preds = %86
  %98 = load i8**, i8*** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @keymatch(i8* noundef %102, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i32 noundef 2)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 28
  store i32 2, i32* %107, align 4
  br label %109

108:                                              ; preds = %97
  call void @usage()
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %83
  br label %395

112:                                              ; preds = %65
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @keymatch(i8* noundef %113, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i32 noundef 1)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @keymatch(i8* noundef %117, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i32 noundef 1)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116, %112
  %121 = load i32, i32* @parse_switches.printed_version, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0))
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %394

133:                                              ; preds = %116
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 @keymatch(i8* noundef %134, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 noundef 2)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @keymatch(i8* noundef %138, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i32 noundef 2)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137, %133
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %142, i32 noundef 1)
  br label %393

143:                                              ; preds = %137
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @keymatch(i8* noundef %144, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i32 noundef 3)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  store i8 120, i8* %22, align 1
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
  %159 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %158, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i64* noundef %21, i8* noundef %22) #5
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  call void @usage()
  br label %162

162:                                              ; preds = %161, %153
  %163 = load i8, i8* %22, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 109
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i8, i8* %22, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 77
  br i1 %169, label %170, label %173

170:                                              ; preds = %166, %162
  %171 = load i64, i64* %21, align 8
  %172 = mul nsw i64 %171, 1000
  store i64 %172, i64* %21, align 8
  br label %173

173:                                              ; preds = %170, %166
  %174 = load i64, i64* %21, align 8
  %175 = mul nsw i64 %174, 1000
  %176 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %177 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %176, i32 0, i32 1
  %178 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %177, align 8
  %179 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %178, i32 0, i32 11
  store i64 %175, i64* %179, align 8
  br label %392

180:                                              ; preds = %143
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @keymatch(i8* noundef %181, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i32 noundef 1)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @keymatch(i8* noundef %185, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i32 noundef 1)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184, %180
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %189, i32 0, i32 25
  store i32 1, i32* %190, align 8
  br label %391

191:                                              ; preds = %184
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 @keymatch(i8* noundef %192, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i32 noundef 4)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  call void @usage()
  br label %201

201:                                              ; preds = %200, %195
  %202 = load i8**, i8*** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** @outfilename, align 8
  br label %390

207:                                              ; preds = %191
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 @keymatch(i8* noundef %208, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 noundef 1)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32 1, i32* %16, align 4
  br label %389

212:                                              ; preds = %207
  %213 = load i8*, i8** %12, align 8
  %214 = call i32 @keymatch(i8* noundef %213, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 noundef 1)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %212
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  call void @usage()
  br label %222

222:                                              ; preds = %221, %216
  %223 = load i8**, i8*** %8, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %227, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32* noundef %13) #5
  %229 = icmp ne i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  call void @usage()
  br label %231

231:                                              ; preds = %230, %222
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @jpeg_quality_scaling(i32 noundef %232)
  store i32 %233, i32* %14, align 4
  br label %388

234:                                              ; preds = %212
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @keymatch(i8* noundef %235, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i32 noundef 2)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %234
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp sge i32 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  call void @usage()
  br label %244

244:                                              ; preds = %243, %238
  %245 = load i8**, i8*** %8, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %18, align 8
  br label %387

250:                                              ; preds = %234
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @keymatch(i8* noundef %251, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), i32 noundef 2)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %250
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp sge i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  call void @usage()
  br label %260

260:                                              ; preds = %259, %254
  %261 = load i8**, i8*** %8, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  store i8* %265, i8** %17, align 8
  br label %386

266:                                              ; preds = %250
  %267 = load i8*, i8** %12, align 8
  %268 = call i32 @keymatch(i8* noundef %267, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i32 noundef 1)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %313

270:                                              ; preds = %266
  store i8 120, i8* %24, align 1
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  call void @usage()
  br label %276

276:                                              ; preds = %275, %270
  %277 = load i8**, i8*** %8, align 8
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %281, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i64* noundef %23, i8* noundef %24) #5
  %283 = icmp slt i32 %282, 1
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  call void @usage()
  br label %285

285:                                              ; preds = %284, %276
  %286 = load i64, i64* %23, align 8
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i64, i64* %23, align 8
  %290 = icmp sgt i64 %289, 65535
  br i1 %290, label %291, label %292

291:                                              ; preds = %288, %285
  call void @usage()
  br label %292

292:                                              ; preds = %291, %288
  %293 = load i8, i8* %24, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 98
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = load i8, i8* %24, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 66
  br i1 %299, label %300, label %307

300:                                              ; preds = %296, %292
  %301 = load i64, i64* %23, align 8
  %302 = trunc i64 %301 to i32
  %303 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %304 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %303, i32 0, i32 29
  store i32 %302, i32* %304, align 8
  %305 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %306 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %305, i32 0, i32 30
  store i32 0, i32* %306, align 4
  br label %312

307:                                              ; preds = %296
  %308 = load i64, i64* %23, align 8
  %309 = trunc i64 %308 to i32
  %310 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %311 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %310, i32 0, i32 30
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %307, %300
  br label %385

313:                                              ; preds = %266
  %314 = load i8*, i8** %12, align 8
  %315 = call i32 @keymatch(i8* noundef %314, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 noundef 2)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %329

317:                                              ; preds = %313
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %7, align 4
  %321 = icmp sge i32 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  call void @usage()
  br label %323

323:                                              ; preds = %322, %317
  %324 = load i8**, i8*** %8, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8*, i8** %324, i64 %326
  %328 = load i8*, i8** %327, align 8
  store i8* %328, i8** %19, align 8
  br label %384

329:                                              ; preds = %313
  %330 = load i8*, i8** %12, align 8
  %331 = call i32 @keymatch(i8* noundef %330, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), i32 noundef 2)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  %334 = load i32, i32* %11, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %11, align 4
  %336 = load i32, i32* %7, align 4
  %337 = icmp sge i32 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  call void @usage()
  br label %339

339:                                              ; preds = %338, %333
  %340 = load i8**, i8*** %8, align 8
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  %344 = load i8*, i8** %343, align 8
  store i8* %344, i8** %20, align 8
  br label %383

345:                                              ; preds = %329
  %346 = load i8*, i8** %12, align 8
  %347 = call i32 @keymatch(i8* noundef %346, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i32 noundef 2)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %375

349:                                              ; preds = %345
  %350 = load i32, i32* %11, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %11, align 4
  %352 = load i32, i32* %7, align 4
  %353 = icmp sge i32 %351, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  call void @usage()
  br label %355

355:                                              ; preds = %354, %349
  %356 = load i8**, i8*** %8, align 8
  %357 = load i32, i32* %11, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8*, i8** %356, i64 %358
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %360, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32* noundef %25) #5
  %362 = icmp ne i32 %361, 1
  br i1 %362, label %363, label %364

363:                                              ; preds = %355
  call void @usage()
  br label %364

364:                                              ; preds = %363, %355
  %365 = load i32, i32* %25, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %364
  %368 = load i32, i32* %25, align 4
  %369 = icmp sgt i32 %368, 100
  br i1 %369, label %370, label %371

370:                                              ; preds = %367, %364
  call void @usage()
  br label %371

371:                                              ; preds = %370, %367
  %372 = load i32, i32* %25, align 4
  %373 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %374 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %373, i32 0, i32 27
  store i32 %372, i32* %374, align 8
  br label %382

375:                                              ; preds = %345
  %376 = load i8*, i8** %12, align 8
  %377 = call i32 @keymatch(i8* noundef %376, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i32 noundef 1)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  store i32 1, i32* @is_targa, align 4
  br label %381

380:                                              ; preds = %375
  call void @usage()
  br label %381

381:                                              ; preds = %380, %379
  br label %382

382:                                              ; preds = %381, %371
  br label %383

383:                                              ; preds = %382, %339
  br label %384

384:                                              ; preds = %383, %323
  br label %385

385:                                              ; preds = %384, %312
  br label %386

386:                                              ; preds = %385, %260
  br label %387

387:                                              ; preds = %386, %244
  br label %388

388:                                              ; preds = %387, %231
  br label %389

389:                                              ; preds = %388, %211
  br label %390

390:                                              ; preds = %389, %201
  br label %391

391:                                              ; preds = %390, %188
  br label %392

392:                                              ; preds = %391, %173
  br label %393

393:                                              ; preds = %392, %141
  br label %394

394:                                              ; preds = %393, %126
  br label %395

395:                                              ; preds = %394, %111
  br label %396

396:                                              ; preds = %395, %64
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397, %48
  %399 = load i32, i32* %11, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %11, align 4
  br label %30, !llvm.loop !6

401:                                              ; preds = %49, %30
  %402 = load i32, i32* %10, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %455

404:                                              ; preds = %401
  %405 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %406 = load i32, i32* %13, align 4
  %407 = load i32, i32* %15, align 4
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %405, i32 noundef %406, i32 noundef %407)
  %408 = load i8*, i8** %17, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %419

410:                                              ; preds = %404
  %411 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %412 = load i8*, i8** %17, align 8
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* %15, align 4
  %415 = call i32 @read_quant_tables(%struct.jpeg_compress_struct* noundef %411, i8* noundef %412, i32 noundef %413, i32 noundef %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %410
  call void @usage()
  br label %418

418:                                              ; preds = %417, %410
  br label %419

419:                                              ; preds = %418, %404
  %420 = load i8*, i8** %18, align 8
  %421 = icmp ne i8* %420, null
  br i1 %421, label %422, label %429

422:                                              ; preds = %419
  %423 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %424 = load i8*, i8** %18, align 8
  %425 = call i32 @set_quant_slots(%struct.jpeg_compress_struct* noundef %423, i8* noundef %424)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %428, label %427

427:                                              ; preds = %422
  call void @usage()
  br label %428

428:                                              ; preds = %427, %422
  br label %429

429:                                              ; preds = %428, %419
  %430 = load i8*, i8** %19, align 8
  %431 = icmp ne i8* %430, null
  br i1 %431, label %432, label %439

432:                                              ; preds = %429
  %433 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %434 = load i8*, i8** %19, align 8
  %435 = call i32 @set_sample_factors(%struct.jpeg_compress_struct* noundef %433, i8* noundef %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %432
  call void @usage()
  br label %438

438:                                              ; preds = %437, %432
  br label %439

439:                                              ; preds = %438, %429
  %440 = load i32, i32* %16, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %444

442:                                              ; preds = %439
  %443 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  call void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef %443)
  br label %444

444:                                              ; preds = %442, %439
  %445 = load i8*, i8** %20, align 8
  %446 = icmp ne i8* %445, null
  br i1 %446, label %447, label %454

447:                                              ; preds = %444
  %448 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %449 = load i8*, i8** %20, align 8
  %450 = call i32 @read_scan_script(%struct.jpeg_compress_struct* noundef %448, i8* noundef %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %447
  call void @usage()
  br label %453

453:                                              ; preds = %452, %447
  br label %454

454:                                              ; preds = %453, %444
  br label %455

455:                                              ; preds = %454, %401
  %456 = load i32, i32* %11, align 4
  ret i32 %456
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i64 0, i64 0), i8* noundef %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.79, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.80, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.81, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.83, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.91, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.96, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.97, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.98, i64 0, i64 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i64 0, i64 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.100, i64 0, i64 0))
  call void @exit(i32 noundef 1) #4
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local %struct._IO_FILE* @read_stdin() #1

declare dso_local %struct._IO_FILE* @write_stdout() #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.cjpeg_source_struct* @select_file_type(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.cjpeg_source_struct*, align 8
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %7 = load i32, i32* @is_targa, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %11 = call %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef %10)
  store %struct.cjpeg_source_struct* %11, %struct.cjpeg_source_struct** %3, align 8
  br label %72

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = call i32 @getc(%struct._IO_FILE* noundef %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 41, i32* %20, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %26 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %27)
  br label %28

28:                                               ; preds = %16, %12
  %29 = load i32, i32* %6, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %31 = call i32 @ungetc(i32 noundef %29, %struct._IO_FILE* noundef %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 5
  store i32 1040, i32* %37, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i32 0, i32 0
  %42 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %41, align 8
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %44 = bitcast %struct.jpeg_compress_struct* %43 to %struct.jpeg_common_struct*
  call void %42(%struct.jpeg_common_struct* noundef %44)
  br label %45

45:                                               ; preds = %33, %28
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %59 [
    i32 66, label %47
    i32 71, label %50
    i32 80, label %53
    i32 0, label %56
  ]

47:                                               ; preds = %45
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %49 = call %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* noundef %48)
  store %struct.cjpeg_source_struct* %49, %struct.cjpeg_source_struct** %3, align 8
  br label %72

50:                                               ; preds = %45
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %52 = call %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct* noundef %51)
  store %struct.cjpeg_source_struct* %52, %struct.cjpeg_source_struct** %3, align 8
  br label %72

53:                                               ; preds = %45
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %55 = call %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* noundef %54)
  store %struct.cjpeg_source_struct* %55, %struct.cjpeg_source_struct** %3, align 8
  br label %72

56:                                               ; preds = %45
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %58 = call %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef %57)
  store %struct.cjpeg_source_struct* %58, %struct.cjpeg_source_struct** %3, align 8
  br label %72

59:                                               ; preds = %45
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 1041, i32* %63, align 8
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 0
  %68 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %67, align 8
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %70 = bitcast %struct.jpeg_compress_struct* %69 to %struct.jpeg_common_struct*
  call void %68(%struct.jpeg_common_struct* noundef %70)
  br label %71

71:                                               ; preds = %59
  store %struct.cjpeg_source_struct* null, %struct.cjpeg_source_struct** %3, align 8
  br label %72

72:                                               ; preds = %71, %56, %53, %50, %47, %9
  %73 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %3, align 8
  ret %struct.cjpeg_source_struct* %73
}

declare dso_local void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef, i8** noundef, i32 noundef) #1

declare dso_local void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @keymatch(i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

declare dso_local i32 @jpeg_quality_scaling(i32 noundef) #1

declare dso_local void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @read_quant_tables(%struct.jpeg_compress_struct* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @set_quant_slots(%struct.jpeg_compress_struct* noundef, i8* noundef) #1

declare dso_local i32 @set_sample_factors(%struct.jpeg_compress_struct* noundef, i8* noundef) #1

declare dso_local void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @read_scan_script(%struct.jpeg_compress_struct* noundef, i8* noundef) #1

declare dso_local %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef) #1

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* noundef) #1

declare dso_local %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct* noundef) #1

declare dso_local %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* noundef) #1

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
!6 = distinct !{!6, !5}
