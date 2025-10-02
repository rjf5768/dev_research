; ModuleID = './djpeg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/djpeg.c"
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
%struct.djpeg_dest_struct = type { void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, %struct._IO_FILE*, i8**, i32 }

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"djpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x i8*] [i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@requested_fmt = internal global i32 0, align 4
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
@.str.47 = private unnamed_addr constant [22 x i8] c"Comment, length %ld:\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"colours\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"quantize\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"quantise\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"dither\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.67 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's DJPEG, version %s\0A%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"nosmooth\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"onepass\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"os2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"  -colors N      Reduce image to no more than N colors\0A\00", align 1
@.str.90 = private unnamed_addr constant [47 x i8] c"  -fast          Fast, low-quality processing\0A\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"  -grayscale     Force grayscale output\0A\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"  -scale M/N     Scale output image by fraction M/N, eg, 1/8\0A\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"  -bmp           Select BMP output format (Windows style)%s\0A\00", align 1
@.str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"  -gif           Select GIF output format%s\0A\00", align 1
@.str.96 = private unnamed_addr constant [58 x i8] c"  -os2           Select BMP output format (OS/2 style)%s\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"  -pnm           Select PBMPLUS (PPM/PGM) output format%s\0A\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.99 = private unnamed_addr constant [47 x i8] c"  -targa         Select Targa output format%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.103 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"  -dither fs     Use F-S dithering (default)\0A\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"  -dither none   Don't use dithering in quantization\0A\00", align 1
@.str.106 = private unnamed_addr constant [63 x i8] c"  -dither ordered  Use ordered dither (medium speed, quality)\0A\00", align 1
@.str.107 = private unnamed_addr constant [57 x i8] c"  -map FILE      Map to colors used in named image file\0A\00", align 1
@.str.108 = private unnamed_addr constant [52 x i8] c"  -nosmooth      Don't use high-quality upsampling\0A\00", align 1
@.str.109 = private unnamed_addr constant [62 x i8] c"  -onepass       Use 1-pass quantization (fast, low quality)\0A\00", align 1
@.str.110 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.111 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct, align 8
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
  %13 = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef nonnull %4) #7
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i64 0, i32 0
  store %struct.jpeg_error_mgr* %13, %struct.jpeg_error_mgr** %14, align 8
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 61, i64 noundef 616) #7
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 11
  store i8** getelementptr inbounds ([44 x i8*], [44 x i8*]* @cdjpeg_message_table, i64 0, i64 0), i8*** %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 12
  store i32 1000, i32* %16, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 13
  store i32 1043, i32* %17, align 4
  call void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 254, i32 (%struct.jpeg_decompress_struct*)* noundef nonnull @COM_handler) #7
  %18 = call i32 @parse_switches(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef 0)
  %19 = add nsw i32 %0, -1
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** @progname, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %23) #8
  call void @usage()
  br label %25

25:                                               ; preds = %21, %12
  %26 = icmp slt i32 %18, %0
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = sext i32 %18 to i64
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call noalias %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7
  %32 = icmp eq %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** @progname, align 8
  %36 = sext i32 %18 to i64
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %35, i8* noundef %38) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %27
  br label %43

41:                                               ; preds = %25
  %42 = call %struct._IO_FILE* @read_stdin() #7
  br label %43

43:                                               ; preds = %41, %40
  %.01 = phi %struct._IO_FILE* [ %31, %40 ], [ %42, %41 ]
  %44 = load i8*, i8** @outfilename, align 8
  %.not = icmp eq i8* %44, null
  br i1 %.not, label %55, label %45

45:                                               ; preds = %43
  %46 = load i8*, i8** @outfilename, align 8
  %47 = call noalias %struct._IO_FILE* @fopen(i8* noundef %46, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** @progname, align 8
  %52 = load i8*, i8** @outfilename, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %51, i8* noundef %52) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %45
  br label %57

55:                                               ; preds = %43
  %56 = call %struct._IO_FILE* @write_stdout() #7
  br label %57

57:                                               ; preds = %55, %54
  %.0 = phi %struct._IO_FILE* [ %47, %54 ], [ %56, %55 ]
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef nonnull %3, %struct._IO_FILE* noundef %.01) #7
  %58 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 1) #7
  %59 = call i32 @parse_switches(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef %0, i8** noundef nonnull %1, i32 noundef 0, i32 noundef 1)
  %60 = load i32, i32* @requested_fmt, align 4
  switch i32 %60, label %71 [
    i32 0, label %61
    i32 2, label %63
    i32 1, label %65
    i32 3, label %67
    i32 5, label %69
  ]

61:                                               ; preds = %57
  %62 = call %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 0) #7
  br label %78

63:                                               ; preds = %57
  %64 = call %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef nonnull %3, i32 noundef 1) #7
  br label %78

65:                                               ; preds = %57
  %66 = call %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct* noundef nonnull %3) #7
  br label %78

67:                                               ; preds = %57
  %68 = call %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* noundef nonnull %3) #7
  br label %78

69:                                               ; preds = %57
  %70 = call %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* noundef nonnull %3) #7
  br label %78

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i64 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i64 0, i32 5
  store i32 1042, i32* %74, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i64 0, i32 0
  %76 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %75, align 8
  %77 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  call void %76(%struct.jpeg_common_struct* noundef nonnull %77) #7
  br label %78

78:                                               ; preds = %71, %69, %67, %65, %63, %61
  %.02 = phi %struct.djpeg_dest_struct* [ null, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ]
  %79 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %.02, i64 0, i32 3
  store %struct._IO_FILE* %.0, %struct._IO_FILE** %79, align 8
  %80 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef nonnull %3) #7
  %81 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %.02, i64 0, i32 0
  %82 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %81, align 8
  call void %82(%struct.jpeg_decompress_struct* noundef nonnull %3, %struct.djpeg_dest_struct* noundef %.02) #7
  br label %83

83:                                               ; preds = %89, %78
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i64 0, i32 33
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i64 0, i32 27
  %87 = load i32, i32* %86, align 4
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %.02, i64 0, i32 4
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %.02, i64 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef nonnull %3, i8** noundef %91, i32 noundef %93) #7
  %95 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %.02, i64 0, i32 1
  %96 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %95, align 8
  call void %96(%struct.jpeg_decompress_struct* noundef nonnull %3, %struct.djpeg_dest_struct* noundef %.02, i32 noundef %94) #7
  br label %83, !llvm.loop !4

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %.02, i64 0, i32 2
  %99 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %98, align 8
  call void %99(%struct.jpeg_decompress_struct* noundef nonnull %3, %struct.djpeg_dest_struct* noundef %.02) #7
  %100 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef nonnull %3) #7
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef nonnull %3) #7
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %.not3 = icmp eq %struct._IO_FILE* %.01, %101
  br i1 %.not3, label %104, label %102

102:                                              ; preds = %97
  %103 = call i32 @fclose(%struct._IO_FILE* noundef %.01) #7
  br label %104

104:                                              ; preds = %102, %97
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not4 = icmp eq %struct._IO_FILE* %.0, %105
  br i1 %.not4, label %108, label %106

106:                                              ; preds = %104
  %107 = call i32 @fclose(%struct._IO_FILE* noundef %.0) #7
  br label %108

108:                                              ; preds = %106, %104
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i64 0, i32 8
  %110 = load i64, i64* %109, align 8
  %.not5 = icmp eq i64 %110, 0
  %111 = select i1 %.not5, i32 0, i32 2
  call void @exit(i32 noundef %111) #9
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %108, %49, %33
  unreachable
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* noundef, i32 noundef, i32 (%struct.jpeg_decompress_struct*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @COM_handler(%struct.jpeg_decompress_struct* noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i64 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  %7 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %0)
  %8 = shl i32 %7, 8
  %9 = zext i32 %8 to i64
  %10 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %0)
  %11 = zext i32 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  %13 = add nsw i64 %12, -2
  br i1 %6, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i64 noundef %13) #8
  br label %17

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %55, %17
  %.01 = phi i64 [ %13, %17 ], [ %19, %55 ]
  %.0 = phi i32 [ 0, %17 ], [ %.1, %55 ]
  %19 = add nsw i64 %.01, -1
  %20 = icmp sgt i64 %.01, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %0)
  br i1 %6, label %23, label %55

23:                                               ; preds = %21
  %24 = icmp eq i32 %22, 13
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc4 = call i32 @fputc(i32 10, %struct._IO_FILE* %26)
  br label %54

27:                                               ; preds = %23
  %28 = icmp eq i32 %22, 10
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %.not2 = icmp eq i32 %.0, 13
  br i1 %.not2, label %32, label %30

30:                                               ; preds = %29
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc3 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  br label %32

32:                                               ; preds = %30, %29
  br label %53

33:                                               ; preds = %27
  %34 = icmp eq i32 %22, 92
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %36) #10
  br label %52

38:                                               ; preds = %33
  %39 = call i16** @__ctype_b_loc() #11
  %40 = load i16*, i16** %39, align 8
  %41 = sext i32 %22 to i64
  %42 = getelementptr inbounds i16, i16* %40, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = and i16 %43, 16384
  %.not = icmp eq i16 %44, 0
  br i1 %.not, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 @putc(i32 noundef %22, %struct._IO_FILE* noundef %46) #7
  br label %51

48:                                               ; preds = %38
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i32 noundef %22) #8
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54, %21
  %.1 = phi i32 [ %22, %54 ], [ %.0, %21 ]
  br label %18, !llvm.loop !6

56:                                               ; preds = %18
  br i1 %6, label %57, label %59

57:                                               ; preds = %56
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %58)
  br label %59

59:                                               ; preds = %57, %56
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_switches(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i8** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i32 3, i32* @requested_fmt, align 4
  store i8* null, i8** @outfilename, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 7
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %257, %5
  %.0 = phi i32 [ 1, %5 ], [ %258, %257 ]
  %13 = icmp slt i32 %.0, %1
  br i1 %13, label %14, label %.loopexit

14:                                               ; preds = %12
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds i8*, i8** %2, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %.not = icmp eq i8 %18, 45
  br i1 %.not, label %22, label %19

19:                                               ; preds = %14
  %.not46 = icmp sgt i32 %.0, %3
  br i1 %.not46, label %21, label %20

20:                                               ; preds = %19
  store i8* null, i8** @outfilename, align 8
  br label %257

21:                                               ; preds = %19
  br label %259

22:                                               ; preds = %14
  %23 = getelementptr inbounds i8, i8* %17, i64 1
  %24 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i32 noundef 1) #7
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* @requested_fmt, align 4
  br label %256

26:                                               ; preds = %22
  %27 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i32 noundef 1) #7
  %.not5 = icmp eq i32 %27, 0
  br i1 %.not5, label %28, label %34

28:                                               ; preds = %26
  %29 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i32 noundef 1) #7
  %.not6 = icmp eq i32 %29, 0
  br i1 %.not6, label %30, label %34

30:                                               ; preds = %28
  %31 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i32 noundef 1) #7
  %.not7 = icmp eq i32 %31, 0
  br i1 %.not7, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i32 noundef 1) #7
  %.not8 = icmp eq i32 %33, 0
  br i1 %.not8, label %47, label %34

34:                                               ; preds = %32, %30, %28, %26
  %35 = add nsw i32 %.0, 1
  %.not44 = icmp slt i32 %35, %1
  br i1 %.not44, label %37, label %36

36:                                               ; preds = %34
  call void @usage()
  br label %37

37:                                               ; preds = %36, %34
  %38 = sext i32 %35 to i64
  %39 = getelementptr inbounds i8*, i8** %2, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32* noundef nonnull %6) #7
  %.not45 = icmp eq i32 %41, 1
  br i1 %.not45, label %43, label %42

42:                                               ; preds = %37
  call void @usage()
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 22
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  store i32 1, i32* %46, align 4
  br label %255

47:                                               ; preds = %32
  %48 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i32 noundef 2) #7
  %.not9 = icmp eq i32 %48, 0
  br i1 %.not9, label %77, label %49

49:                                               ; preds = %47
  %50 = add nsw i32 %.0, 1
  %.not40 = icmp slt i32 %50, %1
  br i1 %.not40, label %52, label %51

51:                                               ; preds = %49
  call void @usage()
  br label %52

52:                                               ; preds = %51, %49
  %53 = sext i32 %50 to i64
  %54 = getelementptr inbounds i8*, i8** %2, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @keymatch(i8* noundef %55, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i32 noundef 1) #7
  %.not41 = icmp eq i32 %56, 0
  br i1 %.not41, label %59, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 16
  store i32 0, i32* %58, align 8
  br label %76

59:                                               ; preds = %52
  %60 = sext i32 %50 to i64
  %61 = getelementptr inbounds i8*, i8** %2, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @keymatch(i8* noundef %62, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 noundef 2) #7
  %.not42 = icmp eq i32 %63, 0
  br i1 %.not42, label %66, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 16
  store i32 1, i32* %65, align 8
  br label %75

66:                                               ; preds = %59
  %67 = sext i32 %50 to i64
  %68 = getelementptr inbounds i8*, i8** %2, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @keymatch(i8* noundef %69, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 noundef 2) #7
  %.not43 = icmp eq i32 %70, 0
  br i1 %.not43, label %73, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 16
  store i32 2, i32* %72, align 8
  br label %74

73:                                               ; preds = %66
  call void @usage()
  br label %74

74:                                               ; preds = %73, %71
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75, %57
  br label %254

77:                                               ; preds = %47
  %78 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i32 noundef 2) #7
  %.not10 = icmp eq i32 %78, 0
  br i1 %.not10, label %107, label %79

79:                                               ; preds = %77
  %80 = add nsw i32 %.0, 1
  %.not36 = icmp slt i32 %80, %1
  br i1 %.not36, label %82, label %81

81:                                               ; preds = %79
  call void @usage()
  br label %82

82:                                               ; preds = %81, %79
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds i8*, i8** %2, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @keymatch(i8* noundef %85, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2) #7
  %.not37 = icmp eq i32 %86, 0
  br i1 %.not37, label %89, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 20
  store i32 2, i32* %88, align 8
  br label %106

89:                                               ; preds = %82
  %90 = sext i32 %80 to i64
  %91 = getelementptr inbounds i8*, i8** %2, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @keymatch(i8* noundef %92, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 noundef 2) #7
  %.not38 = icmp eq i32 %93, 0
  br i1 %.not38, label %96, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 20
  store i32 0, i32* %95, align 8
  br label %105

96:                                               ; preds = %89
  %97 = sext i32 %80 to i64
  %98 = getelementptr inbounds i8*, i8** %2, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @keymatch(i8* noundef %99, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i32 noundef 2) #7
  %.not39 = icmp eq i32 %100, 0
  br i1 %.not39, label %103, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 20
  store i32 1, i32* %102, align 8
  br label %104

103:                                              ; preds = %96
  call void @usage()
  br label %104

104:                                              ; preds = %103, %101
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %87
  br label %253

107:                                              ; preds = %77
  %108 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i32 noundef 1) #7
  %.not11 = icmp eq i32 %108, 0
  br i1 %.not11, label %109, label %111

109:                                              ; preds = %107
  %110 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i32 noundef 1) #7
  %.not12 = icmp eq i32 %110, 0
  br i1 %.not12, label %122, label %111

111:                                              ; preds = %109, %107
  %112 = load i32, i32* @parse_switches.printed_version, align 4
  %.not35 = icmp eq i32 %112, 0
  br i1 %.not35, label %113, label %116

113:                                              ; preds = %111
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i64 0, i64 0)) #8
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %116

116:                                              ; preds = %113, %111
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %118 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %117, align 8
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %118, i64 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %252

122:                                              ; preds = %109
  %123 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 noundef 1) #7
  %.not13 = icmp eq i32 %123, 0
  br i1 %.not13, label %134, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 21
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 20
  store i32 1, i32* %126, align 8
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %128 = load i32, i32* %127, align 4
  %.not34 = icmp eq i32 %128, 0
  br i1 %.not34, label %129, label %131

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 22
  store i32 216, i32* %130, align 8
  br label %131

131:                                              ; preds = %129, %124
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 16
  store i32 1, i32* %132, align 8
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 17
  store i32 0, i32* %133, align 4
  br label %251

134:                                              ; preds = %122
  %135 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i32 noundef 1) #7
  %.not14 = icmp eq i32 %135, 0
  br i1 %.not14, label %137, label %136

136:                                              ; preds = %134
  store i32 1, i32* @requested_fmt, align 4
  br label %250

137:                                              ; preds = %134
  %138 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 noundef 2) #7
  %.not15 = icmp eq i32 %138, 0
  br i1 %.not15, label %139, label %141

139:                                              ; preds = %137
  %140 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i32 noundef 2) #7
  %.not16 = icmp eq i32 %140, 0
  br i1 %.not16, label %143, label %141

141:                                              ; preds = %139, %137
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  store i32 1, i32* %142, align 8
  br label %249

143:                                              ; preds = %139
  %144 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i32 noundef 3) #7
  %.not17 = icmp eq i32 %144, 0
  br i1 %.not17, label %166, label %145

145:                                              ; preds = %143
  %146 = add nsw i32 %.0, 1
  %.not32 = icmp slt i32 %146, %1
  br i1 %.not32, label %148, label %147

147:                                              ; preds = %145
  call void @usage()
  br label %148

148:                                              ; preds = %147, %145
  %.not33 = icmp eq i32 %4, 0
  br i1 %.not33, label %165, label %149

149:                                              ; preds = %148
  %150 = sext i32 %146 to i64
  %151 = getelementptr inbounds i8*, i8** %2, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call noalias %struct._IO_FILE* @fopen(i8* noundef %152, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7
  %154 = icmp eq %struct._IO_FILE* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = load i8*, i8** @progname, align 8
  %158 = sext i32 %146 to i64
  %159 = getelementptr inbounds i8*, i8** %2, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %157, i8* noundef %160) #8
  call void @exit(i32 noundef 1) #9
  unreachable

162:                                              ; preds = %149
  call void @read_color_map(%struct.jpeg_decompress_struct* noundef %0, %struct._IO_FILE* noundef nonnull %153) #7
  %163 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %153) #7
  %164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  store i32 1, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %148
  br label %248

166:                                              ; preds = %143
  %167 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0), i32 noundef 3) #7
  %.not18 = icmp eq i32 %167, 0
  br i1 %.not18, label %193, label %168

168:                                              ; preds = %166
  store i8 120, i8* %8, align 1
  %169 = add nsw i32 %.0, 1
  %.not31 = icmp slt i32 %169, %1
  br i1 %.not31, label %171, label %170

170:                                              ; preds = %168
  call void @usage()
  br label %171

171:                                              ; preds = %170, %168
  %172 = sext i32 %169 to i64
  %173 = getelementptr inbounds i8*, i8** %2, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %174, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i64* noundef nonnull %7, i8* noundef nonnull %8) #7
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  call void @usage()
  br label %178

178:                                              ; preds = %177, %171
  %179 = load i8, i8* %8, align 1
  %180 = icmp eq i8 %179, 109
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i8, i8* %8, align 1
  %183 = icmp eq i8 %182, 77
  br i1 %183, label %184, label %187

184:                                              ; preds = %181, %178
  %185 = load i64, i64* %7, align 8
  %186 = mul nsw i64 %185, 1000
  store i64 %186, i64* %7, align 8
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i64, i64* %7, align 8
  %189 = mul nsw i64 %188, 1000
  %190 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %191 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %190, align 8
  %192 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %191, i64 0, i32 11
  store i64 %189, i64* %192, align 8
  br label %247

193:                                              ; preds = %166
  %194 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 noundef 3) #7
  %.not19 = icmp eq i32 %194, 0
  br i1 %.not19, label %197, label %195

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 17
  store i32 0, i32* %196, align 4
  br label %246

197:                                              ; preds = %193
  %198 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i32 noundef 3) #7
  %.not20 = icmp eq i32 %198, 0
  br i1 %.not20, label %201, label %199

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 21
  store i32 0, i32* %200, align 4
  br label %245

201:                                              ; preds = %197
  %202 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i32 noundef 3) #7
  %.not21 = icmp eq i32 %202, 0
  br i1 %.not21, label %204, label %203

203:                                              ; preds = %201
  store i32 2, i32* @requested_fmt, align 4
  br label %244

204:                                              ; preds = %201
  %205 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), i32 noundef 4) #7
  %.not22 = icmp eq i32 %205, 0
  br i1 %.not22, label %213, label %206

206:                                              ; preds = %204
  %207 = add nsw i32 %.0, 1
  %.not30 = icmp slt i32 %207, %1
  br i1 %.not30, label %209, label %208

208:                                              ; preds = %206
  call void @usage()
  br label %209

209:                                              ; preds = %208, %206
  %210 = sext i32 %207 to i64
  %211 = getelementptr inbounds i8*, i8** %2, i64 %210
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** @outfilename, align 8
  br label %243

213:                                              ; preds = %204
  %214 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef 1) #7
  %.not23 = icmp eq i32 %214, 0
  br i1 %.not23, label %215, label %217

215:                                              ; preds = %213
  %216 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i32 noundef 1) #7
  %.not24 = icmp eq i32 %216, 0
  br i1 %.not24, label %218, label %217

217:                                              ; preds = %215, %213
  store i32 3, i32* @requested_fmt, align 4
  br label %242

218:                                              ; preds = %215
  %219 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i32 noundef 1) #7
  %.not25 = icmp eq i32 %219, 0
  br i1 %.not25, label %221, label %220

220:                                              ; preds = %218
  store i32 4, i32* @requested_fmt, align 4
  br label %241

221:                                              ; preds = %218
  %222 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 noundef 1) #7
  %.not26 = icmp eq i32 %222, 0
  br i1 %.not26, label %235, label %223

223:                                              ; preds = %221
  %224 = add nsw i32 %.0, 1
  %.not28 = icmp slt i32 %224, %1
  br i1 %.not28, label %226, label %225

225:                                              ; preds = %223
  call void @usage()
  br label %226

226:                                              ; preds = %225, %223
  %227 = sext i32 %224 to i64
  %228 = getelementptr inbounds i8*, i8** %2, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 11
  %231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 12
  %232 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %229, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i32* noundef nonnull %230, i32* noundef nonnull %231) #7
  %.not29 = icmp eq i32 %232, 2
  br i1 %.not29, label %234, label %233

233:                                              ; preds = %226
  call void @usage()
  br label %234

234:                                              ; preds = %233, %226
  br label %240

235:                                              ; preds = %221
  %236 = call i32 @keymatch(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i32 noundef 1) #7
  %.not27 = icmp eq i32 %236, 0
  br i1 %.not27, label %238, label %237

237:                                              ; preds = %235
  store i32 5, i32* @requested_fmt, align 4
  br label %239

238:                                              ; preds = %235
  call void @usage()
  br label %239

239:                                              ; preds = %238, %237
  br label %240

240:                                              ; preds = %239, %234
  %.1 = phi i32 [ %224, %234 ], [ %.0, %239 ]
  br label %241

241:                                              ; preds = %240, %220
  %.2 = phi i32 [ %.0, %220 ], [ %.1, %240 ]
  br label %242

242:                                              ; preds = %241, %217
  %.3 = phi i32 [ %.0, %217 ], [ %.2, %241 ]
  br label %243

243:                                              ; preds = %242, %209
  %.4 = phi i32 [ %207, %209 ], [ %.3, %242 ]
  br label %244

244:                                              ; preds = %243, %203
  %.5 = phi i32 [ %.0, %203 ], [ %.4, %243 ]
  br label %245

245:                                              ; preds = %244, %199
  %.6 = phi i32 [ %.0, %199 ], [ %.5, %244 ]
  br label %246

246:                                              ; preds = %245, %195
  %.7 = phi i32 [ %.0, %195 ], [ %.6, %245 ]
  br label %247

247:                                              ; preds = %246, %187
  %.8 = phi i32 [ %169, %187 ], [ %.7, %246 ]
  br label %248

248:                                              ; preds = %247, %165
  %.9 = phi i32 [ %146, %165 ], [ %.8, %247 ]
  br label %249

249:                                              ; preds = %248, %141
  %.10 = phi i32 [ %.0, %141 ], [ %.9, %248 ]
  br label %250

250:                                              ; preds = %249, %136
  %.11 = phi i32 [ %.0, %136 ], [ %.10, %249 ]
  br label %251

251:                                              ; preds = %250, %131
  %.12 = phi i32 [ %.0, %131 ], [ %.11, %250 ]
  br label %252

252:                                              ; preds = %251, %116
  %.13 = phi i32 [ %.0, %116 ], [ %.12, %251 ]
  br label %253

253:                                              ; preds = %252, %106
  %.14 = phi i32 [ %80, %106 ], [ %.13, %252 ]
  br label %254

254:                                              ; preds = %253, %76
  %.15 = phi i32 [ %50, %76 ], [ %.14, %253 ]
  br label %255

255:                                              ; preds = %254, %43
  %.16 = phi i32 [ %35, %43 ], [ %.15, %254 ]
  br label %256

256:                                              ; preds = %255, %25
  %.17 = phi i32 [ %.0, %25 ], [ %.16, %255 ]
  br label %257

257:                                              ; preds = %256, %20
  %.18 = phi i32 [ %.0, %20 ], [ %.17, %256 ]
  %258 = add nsw i32 %.18, 1
  br label %12, !llvm.loop !7

.loopexit:                                        ; preds = %12
  br label %259

259:                                              ; preds = %.loopexit, %21
  ret i32 %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i8* noundef %2) #8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %4) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.88, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %6) #10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.89, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %8) #10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.90, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %10) #10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.91, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %12) #10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %14) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0)) #8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0)) #8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0)) #8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0)) #8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0)) #8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.100, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %26) #10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0)) #8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0)) #8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0)) #8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.104, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %34) #10
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.105, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %36) #10
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.106, i64 0, i64 0), i64 62, i64 1, %struct._IO_FILE* %38) #10
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.107, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %40) #10
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.108, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %42) #10
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.109, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %44) #10
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.110, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %46) #10
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.111, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %48) #10
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %50) #10
  call void @exit(i32 noundef 1) #9
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local %struct._IO_FILE* @read_stdin() #1

declare dso_local %struct._IO_FILE* @write_stdout() #1

declare dso_local void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef, i8** noundef, i32 noundef) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %3 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %3, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %3, i64 0, i32 3
  %9 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %8, align 8
  %10 = call i32 %9(%struct.jpeg_decompress_struct* noundef %0) #7
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 5
  store i32 22, i32* %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #7
  br label %20

20:                                               ; preds = %11, %7
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %3, i64 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %3, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %25, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  ret i32 %29
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @keymatch(i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #5

declare dso_local void @read_color_map(%struct.jpeg_decompress_struct* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
