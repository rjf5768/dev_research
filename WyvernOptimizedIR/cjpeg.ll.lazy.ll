; ModuleID = './cjpeg.ll'
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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.jpeg_error_mgr, align 8
  %5 = load i8*, i8** %1, align 8
  store i8* %5, i8** @progname, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i8*, i8** @progname, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef nonnull %4) #6
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 0
  store %struct.jpeg_error_mgr* %13, %struct.jpeg_error_mgr** %14, align 8
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef 61, i64 noundef 496) #6
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 11
  store i8** getelementptr inbounds ([44 x i8*], [44 x i8*]* @cdjpeg_message_table, i64 0, i64 0), i8*** %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 12
  store i32 1000, i32* %16, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 13
  store i32 1043, i32* %17, align 4
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 9
  store i32 2, i32* %18, align 4
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  %19 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef 0)
  %20 = add nsw i32 %0, -1
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i8*, i8** @progname, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %24) #7
  call void @usage()
  br label %26

26:                                               ; preds = %22, %12
  %27 = icmp slt i32 %19, %0
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = sext i32 %19 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call noalias %struct._IO_FILE* @fopen(i8* noundef %31, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** @progname, align 8
  %37 = sext i32 %19 to i64
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %36, i8* noundef %39) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %28
  br label %44

42:                                               ; preds = %26
  %43 = call %struct._IO_FILE* @read_stdin() #6
  br label %44

44:                                               ; preds = %42, %41
  %.01 = phi %struct._IO_FILE* [ %32, %41 ], [ %43, %42 ]
  %45 = load i8*, i8** @outfilename, align 8
  %.not = icmp eq i8* %45, null
  br i1 %.not, label %56, label %46

46:                                               ; preds = %44
  %47 = load i8*, i8** @outfilename, align 8
  %48 = call noalias %struct._IO_FILE* @fopen(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %49 = icmp eq %struct._IO_FILE* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i8*, i8** @progname, align 8
  %53 = load i8*, i8** @outfilename, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %52, i8* noundef %53) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

55:                                               ; preds = %46
  br label %58

56:                                               ; preds = %44
  %57 = call %struct._IO_FILE* @write_stdout() #6
  br label %58

58:                                               ; preds = %56, %55
  %.0 = phi %struct._IO_FILE* [ %48, %55 ], [ %57, %56 ]
  %59 = call %struct.cjpeg_source_struct* @select_file_type(%struct.jpeg_compress_struct* noundef nonnull %3, %struct._IO_FILE* noundef %.01)
  %60 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %59, i64 0, i32 3
  store %struct._IO_FILE* %.01, %struct._IO_FILE** %60, align 8
  %61 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %59, i64 0, i32 0
  %62 = load void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %61, align 8
  call void %62(%struct.jpeg_compress_struct* noundef nonnull %3, %struct.cjpeg_source_struct* noundef %59) #6
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  %63 = call i32 @parse_switches(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef 1)
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* noundef nonnull %3, %struct._IO_FILE* noundef %.0) #6
  call void @jpeg_start_compress(%struct.jpeg_compress_struct* noundef nonnull %3, i32 noundef 1) #6
  br label %64

64:                                               ; preds = %70, %58
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 36
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i64 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %59, i64 0, i32 1
  %72 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %71, align 8
  %73 = call i32 %72(%struct.jpeg_compress_struct* noundef nonnull %3, %struct.cjpeg_source_struct* noundef %59) #6
  %74 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %59, i64 0, i32 4
  %75 = load i8**, i8*** %74, align 8
  %76 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* noundef nonnull %3, i8** noundef %75, i32 noundef %73) #6
  br label %64, !llvm.loop !4

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %59, i64 0, i32 2
  %79 = load void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %78, align 8
  call void %79(%struct.jpeg_compress_struct* noundef nonnull %3, %struct.cjpeg_source_struct* noundef %59) #6
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* noundef nonnull %3) #6
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %.not2 = icmp eq %struct._IO_FILE* %.01, %80
  br i1 %.not2, label %83, label %81

81:                                               ; preds = %77
  %82 = call i32 @fclose(%struct._IO_FILE* noundef %.01) #6
  br label %83

83:                                               ; preds = %81, %77
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not3 = icmp eq %struct._IO_FILE* %.0, %84
  br i1 %.not3, label %87, label %85

85:                                               ; preds = %83
  %86 = call i32 @fclose(%struct._IO_FILE* noundef %.0) #6
  br label %87

87:                                               ; preds = %85, %83
  %88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 8
  %89 = load i64, i64* %88, align 8
  %.not4 = icmp eq i64 %89, 0
  %90 = select i1 %.not4, i32 0, i32 2
  call void @exit(i32 noundef %90) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %87, %50, %34
  unreachable
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateCompress(%struct.jpeg_compress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_switches(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 75, i32* %6, align 4
  store i32 0, i32* @is_targa, align 4
  store i8* null, i8** @outfilename, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 7
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %257, %5
  %.083 = phi i32 [ 0, %5 ], [ %.285, %257 ]
  %.072 = phi i32 [ 100, %5 ], [ %.1082, %257 ]
  %.055 = phi i32 [ 1, %5 ], [ %258, %257 ]
  %.045 = phi i32 [ 0, %5 ], [ %.954, %257 ]
  %.032 = phi i8* [ null, %5 ], [ %.1244, %257 ]
  %.020 = phi i8* [ null, %5 ], [ %.1131, %257 ]
  %.01 = phi i8* [ null, %5 ], [ %.1419, %257 ]
  %.0 = phi i8* [ null, %5 ], [ %.15, %257 ]
  %16 = icmp slt i32 %.055, %1
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %15
  %18 = sext i32 %.055 to i64
  %19 = getelementptr inbounds i8*, i8** %2, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %.not119 = icmp eq i8 %21, 45
  br i1 %.not119, label %25, label %22

22:                                               ; preds = %17
  %.not156 = icmp sgt i32 %.055, %3
  br i1 %.not156, label %24, label %23

23:                                               ; preds = %22
  store i8* null, i8** @outfilename, align 8
  br label %257

24:                                               ; preds = %22
  br label %259

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, i8* %20, i64 1
  %27 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i32 noundef 1) #6
  %.not120 = icmp eq i32 %27, 0
  br i1 %.not120, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i8*, i8** @progname, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i8* noundef %30) #7
  call void @exit(i32 noundef 1) #8
  unreachable

32:                                               ; preds = %25
  %33 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i32 noundef 1) #6
  %.not121 = icmp eq i32 %33, 0
  br i1 %.not121, label %35, label %34

34:                                               ; preds = %32
  br label %255

35:                                               ; preds = %32
  %36 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i32 noundef 2) #6
  %.not122 = icmp eq i32 %36, 0
  br i1 %.not122, label %65, label %37

37:                                               ; preds = %35
  %38 = add nsw i32 %.055, 1
  %.not152 = icmp slt i32 %38, %1
  br i1 %.not152, label %40, label %39

39:                                               ; preds = %37
  call void @usage()
  br label %40

40:                                               ; preds = %39, %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds i8*, i8** %2, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @keymatch(i8* noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i32 noundef 1) #6
  %.not153 = icmp eq i32 %44, 0
  br i1 %.not153, label %47, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 28
  store i32 0, i32* %46, align 4
  br label %64

47:                                               ; preds = %40
  %48 = sext i32 %38 to i64
  %49 = getelementptr inbounds i8*, i8** %2, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @keymatch(i8* noundef %50, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i32 noundef 2) #6
  %.not154 = icmp eq i32 %51, 0
  br i1 %.not154, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 28
  store i32 1, i32* %53, align 4
  br label %63

54:                                               ; preds = %47
  %55 = sext i32 %38 to i64
  %56 = getelementptr inbounds i8*, i8** %2, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @keymatch(i8* noundef %57, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i32 noundef 2) #6
  %.not155 = icmp eq i32 %58, 0
  br i1 %.not155, label %61, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 28
  store i32 2, i32* %60, align 4
  br label %62

61:                                               ; preds = %54
  call void @usage()
  br label %62

62:                                               ; preds = %61, %59
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %45
  br label %254

65:                                               ; preds = %35
  %66 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i32 noundef 1) #6
  %.not123 = icmp eq i32 %66, 0
  br i1 %.not123, label %67, label %69

67:                                               ; preds = %65
  %68 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i32 noundef 1) #6
  %.not124 = icmp eq i32 %68, 0
  br i1 %.not124, label %80, label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* @parse_switches.printed_version, align 4
  %.not151 = icmp eq i32 %70, 0
  br i1 %.not151, label %71, label %74

71:                                               ; preds = %69
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0)) #7
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %74

74:                                               ; preds = %71, %69
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %76 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %75, align 8
  %77 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %76, i64 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %253

80:                                               ; preds = %67
  %81 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 noundef 2) #6
  %.not125 = icmp eq i32 %81, 0
  br i1 %.not125, label %82, label %84

82:                                               ; preds = %80
  %83 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i32 noundef 2) #6
  %.not126 = icmp eq i32 %83, 0
  br i1 %.not126, label %85, label %84

84:                                               ; preds = %82, %80
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1) #6
  br label %252

85:                                               ; preds = %82
  %86 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i32 noundef 3) #6
  %.not127 = icmp eq i32 %86, 0
  br i1 %.not127, label %112, label %87

87:                                               ; preds = %85
  store i8 120, i8* %8, align 1
  %88 = add nsw i32 %.055, 1
  %.not150 = icmp slt i32 %88, %1
  br i1 %.not150, label %90, label %89

89:                                               ; preds = %87
  call void @usage()
  br label %90

90:                                               ; preds = %89, %87
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i8*, i8** %2, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %93, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i64* noundef nonnull %7, i8* noundef nonnull %8) #6
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  call void @usage()
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i8, i8* %8, align 1
  %99 = icmp eq i8 %98, 109
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i8, i8* %8, align 1
  %102 = icmp eq i8 %101, 77
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %97
  %104 = load i64, i64* %7, align 8
  %105 = mul nsw i64 %104, 1000
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* %7, align 8
  %108 = mul nsw i64 %107, 1000
  %109 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %110 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %109, align 8
  %111 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %110, i64 0, i32 11
  store i64 %108, i64* %111, align 8
  br label %251

112:                                              ; preds = %85
  %113 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i32 noundef 1) #6
  %.not128 = icmp eq i32 %113, 0
  br i1 %.not128, label %114, label %116

114:                                              ; preds = %112
  %115 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i32 noundef 1) #6
  %.not129 = icmp eq i32 %115, 0
  br i1 %.not129, label %118, label %116

116:                                              ; preds = %114, %112
  %117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 25
  store i32 1, i32* %117, align 8
  br label %250

118:                                              ; preds = %114
  %119 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i32 noundef 4) #6
  %.not130 = icmp eq i32 %119, 0
  br i1 %.not130, label %127, label %120

120:                                              ; preds = %118
  %121 = add nsw i32 %.055, 1
  %.not149 = icmp slt i32 %121, %1
  br i1 %.not149, label %123, label %122

122:                                              ; preds = %120
  call void @usage()
  br label %123

123:                                              ; preds = %122, %120
  %124 = sext i32 %121 to i64
  %125 = getelementptr inbounds i8*, i8** %2, i64 %124
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** @outfilename, align 8
  br label %249

127:                                              ; preds = %118
  %128 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 noundef 1) #6
  %.not131 = icmp eq i32 %128, 0
  br i1 %.not131, label %130, label %129

129:                                              ; preds = %127
  br label %248

130:                                              ; preds = %127
  %131 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i32 noundef 1) #6
  %.not132 = icmp eq i32 %131, 0
  br i1 %.not132, label %144, label %132

132:                                              ; preds = %130
  %133 = add nsw i32 %.055, 1
  %.not147 = icmp slt i32 %133, %1
  br i1 %.not147, label %135, label %134

134:                                              ; preds = %132
  call void @usage()
  br label %135

135:                                              ; preds = %134, %132
  %136 = sext i32 %133 to i64
  %137 = getelementptr inbounds i8*, i8** %2, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %138, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32* noundef nonnull %6) #6
  %.not148 = icmp eq i32 %139, 1
  br i1 %.not148, label %141, label %140

140:                                              ; preds = %135
  call void @usage()
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @jpeg_quality_scaling(i32 noundef %142) #6
  br label %247

144:                                              ; preds = %130
  %145 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i32 noundef 2) #6
  %.not133 = icmp eq i32 %145, 0
  br i1 %.not133, label %153, label %146

146:                                              ; preds = %144
  %147 = add nsw i32 %.055, 1
  %.not146 = icmp slt i32 %147, %1
  br i1 %.not146, label %149, label %148

148:                                              ; preds = %146
  call void @usage()
  br label %149

149:                                              ; preds = %148, %146
  %150 = sext i32 %147 to i64
  %151 = getelementptr inbounds i8*, i8** %2, i64 %150
  %152 = load i8*, i8** %151, align 8
  br label %246

153:                                              ; preds = %144
  %154 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0), i32 noundef 2) #6
  %.not134 = icmp eq i32 %154, 0
  br i1 %.not134, label %162, label %155

155:                                              ; preds = %153
  %156 = add nsw i32 %.055, 1
  %.not145 = icmp slt i32 %156, %1
  br i1 %.not145, label %158, label %157

157:                                              ; preds = %155
  call void @usage()
  br label %158

158:                                              ; preds = %157, %155
  %159 = sext i32 %156 to i64
  %160 = getelementptr inbounds i8*, i8** %2, i64 %159
  %161 = load i8*, i8** %160, align 8
  br label %245

162:                                              ; preds = %153
  %163 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i64 0, i64 0), i32 noundef 1) #6
  %.not135 = icmp eq i32 %163, 0
  br i1 %.not135, label %197, label %164

164:                                              ; preds = %162
  store i8 120, i8* %10, align 1
  %165 = add nsw i32 %.055, 1
  %.not144 = icmp slt i32 %165, %1
  br i1 %.not144, label %167, label %166

166:                                              ; preds = %164
  call void @usage()
  br label %167

167:                                              ; preds = %166, %164
  %168 = sext i32 %165 to i64
  %169 = getelementptr inbounds i8*, i8** %2, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %170, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i64* noundef nonnull %9, i8* noundef nonnull %10) #6
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  call void @usage()
  br label %174

174:                                              ; preds = %173, %167
  %175 = load i64, i64* %9, align 8
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i64, i64* %9, align 8
  %179 = icmp sgt i64 %178, 65535
  br i1 %179, label %180, label %181

180:                                              ; preds = %177, %174
  call void @usage()
  br label %181

181:                                              ; preds = %180, %177
  %182 = load i8, i8* %10, align 1
  %183 = icmp eq i8 %182, 98
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i8, i8* %10, align 1
  %186 = icmp eq i8 %185, 66
  br i1 %186, label %187, label %192

187:                                              ; preds = %184, %181
  %188 = load i64, i64* %9, align 8
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 29
  store i32 %189, i32* %190, align 8
  %191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 30
  store i32 0, i32* %191, align 4
  br label %196

192:                                              ; preds = %184
  %193 = load i64, i64* %9, align 8
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 30
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %187
  br label %244

197:                                              ; preds = %162
  %198 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i32 noundef 2) #6
  %.not136 = icmp eq i32 %198, 0
  br i1 %.not136, label %206, label %199

199:                                              ; preds = %197
  %200 = add nsw i32 %.055, 1
  %.not143 = icmp slt i32 %200, %1
  br i1 %.not143, label %202, label %201

201:                                              ; preds = %199
  call void @usage()
  br label %202

202:                                              ; preds = %201, %199
  %203 = sext i32 %200 to i64
  %204 = getelementptr inbounds i8*, i8** %2, i64 %203
  %205 = load i8*, i8** %204, align 8
  br label %243

206:                                              ; preds = %197
  %207 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), i32 noundef 2) #6
  %.not137 = icmp eq i32 %207, 0
  br i1 %.not137, label %215, label %208

208:                                              ; preds = %206
  %209 = add nsw i32 %.055, 1
  %.not142 = icmp slt i32 %209, %1
  br i1 %.not142, label %211, label %210

210:                                              ; preds = %208
  call void @usage()
  br label %211

211:                                              ; preds = %210, %208
  %212 = sext i32 %209 to i64
  %213 = getelementptr inbounds i8*, i8** %2, i64 %212
  %214 = load i8*, i8** %213, align 8
  br label %242

215:                                              ; preds = %206
  %216 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i32 noundef 2) #6
  %.not138 = icmp eq i32 %216, 0
  br i1 %.not138, label %236, label %217

217:                                              ; preds = %215
  %218 = add nsw i32 %.055, 1
  %.not140 = icmp slt i32 %218, %1
  br i1 %.not140, label %220, label %219

219:                                              ; preds = %217
  call void @usage()
  br label %220

220:                                              ; preds = %219, %217
  %221 = sext i32 %218 to i64
  %222 = getelementptr inbounds i8*, i8** %2, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %223, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32* noundef nonnull %11) #6
  %.not141 = icmp eq i32 %224, 1
  br i1 %.not141, label %226, label %225

225:                                              ; preds = %220
  call void @usage()
  br label %226

226:                                              ; preds = %225, %220
  %227 = load i32, i32* %11, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %11, align 4
  %231 = icmp sgt i32 %230, 100
  br i1 %231, label %232, label %233

232:                                              ; preds = %229, %226
  call void @usage()
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i32, i32* %11, align 4
  %235 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  store i32 %234, i32* %235, align 8
  br label %241

236:                                              ; preds = %215
  %237 = call i32 @keymatch(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i32 noundef 1) #6
  %.not139 = icmp eq i32 %237, 0
  br i1 %.not139, label %239, label %238

238:                                              ; preds = %236
  store i32 1, i32* @is_targa, align 4
  br label %240

239:                                              ; preds = %236
  call void @usage()
  br label %240

240:                                              ; preds = %239, %238
  br label %241

241:                                              ; preds = %240, %233
  %.156 = phi i32 [ %218, %233 ], [ %.055, %240 ]
  br label %242

242:                                              ; preds = %241, %211
  %.257 = phi i32 [ %209, %211 ], [ %.156, %241 ]
  %.1 = phi i8* [ %214, %211 ], [ %.0, %241 ]
  br label %243

243:                                              ; preds = %242, %202
  %.358 = phi i32 [ %200, %202 ], [ %.257, %242 ]
  %.16 = phi i8* [ %205, %202 ], [ %.01, %242 ]
  %.2 = phi i8* [ %.0, %202 ], [ %.1, %242 ]
  br label %244

244:                                              ; preds = %243, %196
  %.459 = phi i32 [ %165, %196 ], [ %.358, %243 ]
  %.27 = phi i8* [ %.01, %196 ], [ %.16, %243 ]
  %.3 = phi i8* [ %.0, %196 ], [ %.2, %243 ]
  br label %245

245:                                              ; preds = %244, %158
  %.560 = phi i32 [ %156, %158 ], [ %.459, %244 ]
  %.133 = phi i8* [ %161, %158 ], [ %.032, %244 ]
  %.38 = phi i8* [ %.01, %158 ], [ %.27, %244 ]
  %.4 = phi i8* [ %.0, %158 ], [ %.3, %244 ]
  br label %246

246:                                              ; preds = %245, %149
  %.661 = phi i32 [ %147, %149 ], [ %.560, %245 ]
  %.234 = phi i8* [ %.032, %149 ], [ %.133, %245 ]
  %.121 = phi i8* [ %152, %149 ], [ %.020, %245 ]
  %.49 = phi i8* [ %.01, %149 ], [ %.38, %245 ]
  %.5 = phi i8* [ %.0, %149 ], [ %.4, %245 ]
  br label %247

247:                                              ; preds = %246, %141
  %.173 = phi i32 [ %143, %141 ], [ %.072, %246 ]
  %.762 = phi i32 [ %133, %141 ], [ %.661, %246 ]
  %.335 = phi i8* [ %.032, %141 ], [ %.234, %246 ]
  %.222 = phi i8* [ %.020, %141 ], [ %.121, %246 ]
  %.510 = phi i8* [ %.01, %141 ], [ %.49, %246 ]
  %.6 = phi i8* [ %.0, %141 ], [ %.5, %246 ]
  br label %248

248:                                              ; preds = %247, %129
  %.274 = phi i32 [ %.072, %129 ], [ %.173, %247 ]
  %.863 = phi i32 [ %.055, %129 ], [ %.762, %247 ]
  %.146 = phi i32 [ 1, %129 ], [ %.045, %247 ]
  %.436 = phi i8* [ %.032, %129 ], [ %.335, %247 ]
  %.323 = phi i8* [ %.020, %129 ], [ %.222, %247 ]
  %.611 = phi i8* [ %.01, %129 ], [ %.510, %247 ]
  %.7 = phi i8* [ %.0, %129 ], [ %.6, %247 ]
  br label %249

249:                                              ; preds = %248, %123
  %.375 = phi i32 [ %.072, %123 ], [ %.274, %248 ]
  %.964 = phi i32 [ %121, %123 ], [ %.863, %248 ]
  %.247 = phi i32 [ %.045, %123 ], [ %.146, %248 ]
  %.537 = phi i8* [ %.032, %123 ], [ %.436, %248 ]
  %.424 = phi i8* [ %.020, %123 ], [ %.323, %248 ]
  %.712 = phi i8* [ %.01, %123 ], [ %.611, %248 ]
  %.8 = phi i8* [ %.0, %123 ], [ %.7, %248 ]
  br label %250

250:                                              ; preds = %249, %116
  %.476 = phi i32 [ %.072, %116 ], [ %.375, %249 ]
  %.1065 = phi i32 [ %.055, %116 ], [ %.964, %249 ]
  %.348 = phi i32 [ %.045, %116 ], [ %.247, %249 ]
  %.638 = phi i8* [ %.032, %116 ], [ %.537, %249 ]
  %.525 = phi i8* [ %.020, %116 ], [ %.424, %249 ]
  %.813 = phi i8* [ %.01, %116 ], [ %.712, %249 ]
  %.9 = phi i8* [ %.0, %116 ], [ %.8, %249 ]
  br label %251

251:                                              ; preds = %250, %106
  %.577 = phi i32 [ %.072, %106 ], [ %.476, %250 ]
  %.1166 = phi i32 [ %88, %106 ], [ %.1065, %250 ]
  %.449 = phi i32 [ %.045, %106 ], [ %.348, %250 ]
  %.739 = phi i8* [ %.032, %106 ], [ %.638, %250 ]
  %.626 = phi i8* [ %.020, %106 ], [ %.525, %250 ]
  %.914 = phi i8* [ %.01, %106 ], [ %.813, %250 ]
  %.10 = phi i8* [ %.0, %106 ], [ %.9, %250 ]
  br label %252

252:                                              ; preds = %251, %84
  %.678 = phi i32 [ %.072, %84 ], [ %.577, %251 ]
  %.1267 = phi i32 [ %.055, %84 ], [ %.1166, %251 ]
  %.550 = phi i32 [ %.045, %84 ], [ %.449, %251 ]
  %.840 = phi i8* [ %.032, %84 ], [ %.739, %251 ]
  %.727 = phi i8* [ %.020, %84 ], [ %.626, %251 ]
  %.1015 = phi i8* [ %.01, %84 ], [ %.914, %251 ]
  %.11 = phi i8* [ %.0, %84 ], [ %.10, %251 ]
  br label %253

253:                                              ; preds = %252, %74
  %.779 = phi i32 [ %.072, %74 ], [ %.678, %252 ]
  %.1368 = phi i32 [ %.055, %74 ], [ %.1267, %252 ]
  %.651 = phi i32 [ %.045, %74 ], [ %.550, %252 ]
  %.941 = phi i8* [ %.032, %74 ], [ %.840, %252 ]
  %.828 = phi i8* [ %.020, %74 ], [ %.727, %252 ]
  %.1116 = phi i8* [ %.01, %74 ], [ %.1015, %252 ]
  %.12 = phi i8* [ %.0, %74 ], [ %.11, %252 ]
  br label %254

254:                                              ; preds = %253, %64
  %.880 = phi i32 [ %.072, %64 ], [ %.779, %253 ]
  %.1469 = phi i32 [ %38, %64 ], [ %.1368, %253 ]
  %.752 = phi i32 [ %.045, %64 ], [ %.651, %253 ]
  %.1042 = phi i8* [ %.032, %64 ], [ %.941, %253 ]
  %.929 = phi i8* [ %.020, %64 ], [ %.828, %253 ]
  %.1217 = phi i8* [ %.01, %64 ], [ %.1116, %253 ]
  %.13 = phi i8* [ %.0, %64 ], [ %.12, %253 ]
  br label %255

255:                                              ; preds = %254, %34
  %.184 = phi i32 [ 1, %34 ], [ %.083, %254 ]
  %.981 = phi i32 [ %.072, %34 ], [ %.880, %254 ]
  %.1570 = phi i32 [ %.055, %34 ], [ %.1469, %254 ]
  %.853 = phi i32 [ %.045, %34 ], [ %.752, %254 ]
  %.1143 = phi i8* [ %.032, %34 ], [ %.1042, %254 ]
  %.1030 = phi i8* [ %.020, %34 ], [ %.929, %254 ]
  %.1318 = phi i8* [ %.01, %34 ], [ %.1217, %254 ]
  %.14 = phi i8* [ %.0, %34 ], [ %.13, %254 ]
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256, %23
  %.285 = phi i32 [ %.083, %23 ], [ %.184, %256 ]
  %.1082 = phi i32 [ %.072, %23 ], [ %.981, %256 ]
  %.1671 = phi i32 [ %.055, %23 ], [ %.1570, %256 ]
  %.954 = phi i32 [ %.045, %23 ], [ %.853, %256 ]
  %.1244 = phi i8* [ %.032, %23 ], [ %.1143, %256 ]
  %.1131 = phi i8* [ %.020, %23 ], [ %.1030, %256 ]
  %.1419 = phi i8* [ %.01, %23 ], [ %.1318, %256 ]
  %.15 = phi i8* [ %.0, %23 ], [ %.14, %256 ]
  %258 = add nsw i32 %.1671, 1
  br label %15, !llvm.loop !6

.loopexit:                                        ; preds = %15
  br label %259

259:                                              ; preds = %.loopexit, %24
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %284, label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %6, align 4
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef %261, i32 noundef %.083) #6
  %.not110 = icmp eq i8* %.032, null
  br i1 %.not110, label %266, label %262

262:                                              ; preds = %260
  %263 = call i32 @read_quant_tables(%struct.jpeg_compress_struct* noundef %0, i8* noundef nonnull %.032, i32 noundef %.072, i32 noundef %.083) #6
  %.not118 = icmp eq i32 %263, 0
  br i1 %.not118, label %264, label %265

264:                                              ; preds = %262
  call void @usage()
  br label %265

265:                                              ; preds = %264, %262
  br label %266

266:                                              ; preds = %265, %260
  %.not111 = icmp eq i8* %.020, null
  br i1 %.not111, label %271, label %267

267:                                              ; preds = %266
  %268 = call i32 @set_quant_slots(%struct.jpeg_compress_struct* noundef %0, i8* noundef nonnull %.020) #6
  %.not117 = icmp eq i32 %268, 0
  br i1 %.not117, label %269, label %270

269:                                              ; preds = %267
  call void @usage()
  br label %270

270:                                              ; preds = %269, %267
  br label %271

271:                                              ; preds = %270, %266
  %.not112 = icmp eq i8* %.01, null
  br i1 %.not112, label %276, label %272

272:                                              ; preds = %271
  %273 = call i32 @set_sample_factors(%struct.jpeg_compress_struct* noundef %0, i8* noundef nonnull %.01) #6
  %.not116 = icmp eq i32 %273, 0
  br i1 %.not116, label %274, label %275

274:                                              ; preds = %272
  call void @usage()
  br label %275

275:                                              ; preds = %274, %272
  br label %276

276:                                              ; preds = %275, %271
  %.not113 = icmp eq i32 %.045, 0
  br i1 %.not113, label %278, label %277

277:                                              ; preds = %276
  call void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef %0) #6
  br label %278

278:                                              ; preds = %277, %276
  %.not114 = icmp eq i8* %.0, null
  br i1 %.not114, label %283, label %279

279:                                              ; preds = %278
  %280 = call i32 @read_scan_script(%struct.jpeg_compress_struct* noundef %0, i8* noundef nonnull %.0) #6
  %.not115 = icmp eq i32 %280, 0
  br i1 %.not115, label %281, label %282

281:                                              ; preds = %279
  call void @usage()
  br label %282

282:                                              ; preds = %281, %279
  br label %283

283:                                              ; preds = %282, %278
  br label %284

284:                                              ; preds = %283, %259
  ret i32 %.055
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i64 0, i64 0), i8* noundef %2) #7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %4) #9
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %6) #9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.79, i64 0, i64 0), i64 68, i64 1, %struct._IO_FILE* %8) #9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.80, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %10) #9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.81, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %12) #9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %14) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.83, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %16) #9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %18) #9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i64 0, i64 0)) #7
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i64 0, i64 0)) #7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i64 0, i64 0)) #7
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %26) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.91, i64 0, i64 0), i64 62, i64 1, %struct._IO_FILE* %28) #9
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %30) #9
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %32) #9
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %34) #9
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %36) #9
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.96, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %38) #9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.97, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %40) #9
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.98, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %42) #9
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %44) #9
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.100, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %46) #9
  call void @exit(i32 noundef 1) #8
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local %struct._IO_FILE* @read_stdin() #1

declare dso_local %struct._IO_FILE* @write_stdout() #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.cjpeg_source_struct* @select_file_type(%struct.jpeg_compress_struct* noundef %0, %struct._IO_FILE* noundef %1) #2 {
  %3 = load i32, i32* @is_targa, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = call %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef %0) #6
  br label %49

6:                                                ; preds = %2
  %7 = call i32 @getc(%struct._IO_FILE* noundef %1) #6
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 5
  store i32 41, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %15, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* noundef %17) #6
  br label %18

18:                                               ; preds = %9, %6
  %19 = call i32 @ungetc(i32 noundef %7, %struct._IO_FILE* noundef %1) #6
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 5
  store i32 1040, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i64 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %27, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* noundef %29) #6
  br label %30

30:                                               ; preds = %21, %18
  switch i32 %7, label %39 [
    i32 66, label %31
    i32 71, label %33
    i32 80, label %35
    i32 0, label %37
  ]

31:                                               ; preds = %30
  %32 = call %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* noundef %0) #6
  br label %49

33:                                               ; preds = %30
  %34 = call %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct* noundef %0) #6
  br label %49

35:                                               ; preds = %30
  %36 = call %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* noundef %0) #6
  br label %49

37:                                               ; preds = %30
  %38 = call %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* noundef %0) #6
  br label %49

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i64 0, i32 5
  store i32 1041, i32* %42, align 8
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 0
  %46 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %45, align 8
  %47 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %46(%struct.jpeg_common_struct* noundef %47) #6
  br label %48

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %37, %35, %33, %31, %4
  %.0 = phi %struct.cjpeg_source_struct* [ %5, %4 ], [ null, %48 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  ret %struct.cjpeg_source_struct* %.0
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
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #4

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
!6 = distinct !{!6, !5}
