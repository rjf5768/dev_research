; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/djpeg.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jpeg_decompress_struct, align 8
  %7 = alloca %struct.jpeg_error_mgr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.djpeg_dest_struct*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.djpeg_dest_struct* null, %struct.djpeg_dest_struct** %9, align 8
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
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  store %struct.jpeg_error_mgr* %26, %struct.jpeg_error_mgr** %27, align 8
  call void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 61, i64 noundef 616)
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 11
  store i8** getelementptr inbounds ([44 x i8*], [44 x i8*]* @cdjpeg_message_table, i64 0, i64 0), i8*** %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 12
  store i32 1000, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 13
  store i32 1043, i32* %30, align 4
  call void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 254, i32 (%struct.jpeg_decompress_struct*)* noundef @COM_handler)
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @parse_switches(%struct.jpeg_decompress_struct* noundef %6, i32 noundef %31, i8** noundef %32, i32 noundef 0, i32 noundef 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8*, i8** @progname, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %40)
  call void @usage()
  br label %42

42:                                               ; preds = %38, %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call noalias %struct._IO_FILE* @fopen(i8* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %52, %struct._IO_FILE** %10, align 8
  %53 = icmp eq %struct._IO_FILE* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i8*, i8** @progname, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %56, i8* noundef %61)
  call void @exit(i32 noundef 1) #5
  unreachable

63:                                               ; preds = %46
  br label %66

64:                                               ; preds = %42
  %65 = call %struct._IO_FILE* @read_stdin()
  store %struct._IO_FILE* %65, %struct._IO_FILE** %10, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i8*, i8** @outfilename, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i8*, i8** @outfilename, align 8
  %71 = call noalias %struct._IO_FILE* @fopen(i8* noundef %70, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %71, %struct._IO_FILE** %11, align 8
  %72 = icmp eq %struct._IO_FILE* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load i8*, i8** @progname, align 8
  %76 = load i8*, i8** @outfilename, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %75, i8* noundef %76)
  call void @exit(i32 noundef 1) #5
  unreachable

78:                                               ; preds = %69
  br label %81

79:                                               ; preds = %66
  %80 = call %struct._IO_FILE* @write_stdout()
  store %struct._IO_FILE* %80, %struct._IO_FILE** %11, align 8
  br label %81

81:                                               ; preds = %79, %78
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void @jpeg_stdio_src(%struct.jpeg_decompress_struct* noundef %6, %struct._IO_FILE* noundef %82)
  %83 = call i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 1)
  %84 = load i32, i32* %4, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = call i32 @parse_switches(%struct.jpeg_decompress_struct* noundef %6, i32 noundef %84, i8** noundef %85, i32 noundef 0, i32 noundef 1)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @requested_fmt, align 4
  switch i32 %87, label %98 [
    i32 0, label %88
    i32 2, label %90
    i32 1, label %92
    i32 3, label %94
    i32 5, label %96
  ]

88:                                               ; preds = %81
  %89 = call %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 0)
  store %struct.djpeg_dest_struct* %89, %struct.djpeg_dest_struct** %9, align 8
  br label %107

90:                                               ; preds = %81
  %91 = call %struct.djpeg_dest_struct* @jinit_write_bmp(%struct.jpeg_decompress_struct* noundef %6, i32 noundef 1)
  store %struct.djpeg_dest_struct* %91, %struct.djpeg_dest_struct** %9, align 8
  br label %107

92:                                               ; preds = %81
  %93 = call %struct.djpeg_dest_struct* @jinit_write_gif(%struct.jpeg_decompress_struct* noundef %6)
  store %struct.djpeg_dest_struct* %93, %struct.djpeg_dest_struct** %9, align 8
  br label %107

94:                                               ; preds = %81
  %95 = call %struct.djpeg_dest_struct* @jinit_write_ppm(%struct.jpeg_decompress_struct* noundef %6)
  store %struct.djpeg_dest_struct* %95, %struct.djpeg_dest_struct** %9, align 8
  br label %107

96:                                               ; preds = %81
  %97 = call %struct.djpeg_dest_struct* @jinit_write_targa(%struct.jpeg_decompress_struct* noundef %6)
  store %struct.djpeg_dest_struct* %97, %struct.djpeg_dest_struct** %9, align 8
  br label %107

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %100 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %99, align 8
  %101 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %100, i32 0, i32 5
  store i32 1042, i32* %101, align 8
  %102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 0
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %102, align 8
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i32 0, i32 0
  %105 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %104, align 8
  %106 = bitcast %struct.jpeg_decompress_struct* %6 to %struct.jpeg_common_struct*
  call void %105(%struct.jpeg_common_struct* noundef %106)
  br label %107

107:                                              ; preds = %98, %96, %94, %92, %90, %88
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %109 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %110 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %109, i32 0, i32 3
  store %struct._IO_FILE* %108, %struct._IO_FILE** %110, align 8
  %111 = call i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef %6)
  %112 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %113 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %112, i32 0, i32 0
  %114 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %113, align 8
  %115 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  call void %114(%struct.jpeg_decompress_struct* noundef %6, %struct.djpeg_dest_struct* noundef %115)
  br label %116

116:                                              ; preds = %122, %107
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 33
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 27
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %124 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %123, i32 0, i32 4
  %125 = load i8**, i8*** %124, align 8
  %126 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %127 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef %6, i8** noundef %125, i32 noundef %128)
  store i32 %129, i32* %12, align 4
  %130 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %131 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %130, i32 0, i32 1
  %132 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*, i32)** %131, align 8
  %133 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %134 = load i32, i32* %12, align 4
  call void %132(%struct.jpeg_decompress_struct* noundef %6, %struct.djpeg_dest_struct* noundef %133, i32 noundef %134)
  br label %116, !llvm.loop !4

135:                                              ; preds = %116
  %136 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  %137 = getelementptr inbounds %struct.djpeg_dest_struct, %struct.djpeg_dest_struct* %136, i32 0, i32 2
  %138 = load void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)*, void (%struct.jpeg_decompress_struct*, %struct.djpeg_dest_struct*)** %137, align 8
  %139 = load %struct.djpeg_dest_struct*, %struct.djpeg_dest_struct** %9, align 8
  call void %138(%struct.jpeg_decompress_struct* noundef %6, %struct.djpeg_dest_struct* noundef %139)
  %140 = call i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef %6)
  call void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef %6)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %143 = icmp ne %struct._IO_FILE* %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %146 = call i32 @fclose(%struct._IO_FILE* noundef %145)
  br label %147

147:                                              ; preds = %144, %135
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %150 = icmp ne %struct._IO_FILE* %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %153 = call i32 @fclose(%struct._IO_FILE* noundef %152)
  br label %154

154:                                              ; preds = %151, %147
  %155 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 2, i32 0
  call void @exit(i32 noundef %159) #5
  unreachable
}

declare dso_local %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* noundef) #1

declare dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* noundef, i32 noundef, i32 (%struct.jpeg_decompress_struct*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @COM_handler(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 1
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %15 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %14)
  %16 = shl i32 %15, 8
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %19 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %18)
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = sub nsw i64 %23, 2
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i64 noundef %29)
  br label %31

31:                                               ; preds = %27, %1
  br label %32

32:                                               ; preds = %86, %31
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %4, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %38 = call i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  br label %84

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 13
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  br label %83

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 92
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0))
  br label %82

63:                                               ; preds = %57
  %64 = call i16** @__ctype_b_loc() #6
  %65 = load i16*, i16** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  %69 = load i16, i16* %68, align 2
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 16384
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 @putc(i32 noundef %74, %struct._IO_FILE* noundef %75)
  br label %81

77:                                               ; preds = %63
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i32 noundef %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %56
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %36
  br label %32, !llvm.loop !6

87:                                               ; preds = %32
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_switches(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i8** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 3, i32* @requested_fmt, align 4
  store i8* null, i8** @outfilename, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 7
  store i32 0, i32* %20, align 4
  store i32 1, i32* %11, align 4
  br label %21

21:                                               ; preds = %409, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %412

25:                                               ; preds = %21
  %26 = load i8**, i8*** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8* null, i8** @outfilename, align 8
  br label %409

40:                                               ; preds = %35
  br label %412

41:                                               ; preds = %25
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @keymatch(i8* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i32 noundef 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* @requested_fmt, align 4
  br label %408

48:                                               ; preds = %41
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @keymatch(i8* noundef %49, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i32 noundef 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @keymatch(i8* noundef %53, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i32 noundef 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @keymatch(i8* noundef %57, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i32 noundef 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @keymatch(i8* noundef %61, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i32 noundef 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60, %56, %52, %48
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call void @usage()
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i8**, i8*** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %75, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32* noundef %13) #7
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  call void @usage()
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 22
  store i32 %80, i32* %82, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 19
  store i32 1, i32* %84, align 4
  br label %407

85:                                               ; preds = %60
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @keymatch(i8* noundef %86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i32 noundef 2)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  call void @usage()
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i8**, i8*** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @keymatch(i8* noundef %100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i32 noundef 1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 16
  store i32 0, i32* %105, align 8
  br label %131

106:                                              ; preds = %95
  %107 = load i8**, i8*** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @keymatch(i8* noundef %111, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 noundef 2)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %115, i32 0, i32 16
  store i32 1, i32* %116, align 8
  br label %130

117:                                              ; preds = %106
  %118 = load i8**, i8*** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @keymatch(i8* noundef %122, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i32 noundef 2)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 16
  store i32 2, i32* %127, align 8
  br label %129

128:                                              ; preds = %117
  call void @usage()
  br label %129

129:                                              ; preds = %128, %125
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %103
  br label %406

132:                                              ; preds = %85
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @keymatch(i8* noundef %133, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i32 noundef 2)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %179

136:                                              ; preds = %132
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  call void @usage()
  br label %142

142:                                              ; preds = %141, %136
  %143 = load i8**, i8*** %8, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @keymatch(i8* noundef %147, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i32 noundef 2)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %151, i32 0, i32 20
  store i32 2, i32* %152, align 8
  br label %178

153:                                              ; preds = %142
  %154 = load i8**, i8*** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @keymatch(i8* noundef %158, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 noundef 2)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %163 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %162, i32 0, i32 20
  store i32 0, i32* %163, align 8
  br label %177

164:                                              ; preds = %153
  %165 = load i8**, i8*** %8, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @keymatch(i8* noundef %169, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i32 noundef 2)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %174 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %173, i32 0, i32 20
  store i32 1, i32* %174, align 8
  br label %176

175:                                              ; preds = %164
  call void @usage()
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %176, %161
  br label %178

178:                                              ; preds = %177, %150
  br label %405

179:                                              ; preds = %132
  %180 = load i8*, i8** %12, align 8
  %181 = call i32 @keymatch(i8* noundef %180, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i32 noundef 1)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i8*, i8** %12, align 8
  %185 = call i32 @keymatch(i8* noundef %184, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i32 noundef 1)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %183, %179
  %188 = load i32, i32* @parse_switches.printed_version, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %191, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i64 0, i64 0))
  store i32 1, i32* @parse_switches.printed_version, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 0
  %196 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %195, align 8
  %197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %404

200:                                              ; preds = %183
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @keymatch(i8* noundef %201, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i32 noundef 1)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %205, i32 0, i32 21
  store i32 0, i32* %206, align 4
  %207 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %208 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %207, i32 0, i32 20
  store i32 1, i32* %208, align 8
  %209 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %209, i32 0, i32 19
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %204
  %214 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %215 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %214, i32 0, i32 22
  store i32 216, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %204
  %217 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %218 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %217, i32 0, i32 16
  store i32 1, i32* %218, align 8
  %219 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %220 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %219, i32 0, i32 17
  store i32 0, i32* %220, align 4
  br label %403

221:                                              ; preds = %200
  %222 = load i8*, i8** %12, align 8
  %223 = call i32 @keymatch(i8* noundef %222, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i32 noundef 1)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32 1, i32* @requested_fmt, align 4
  br label %402

226:                                              ; preds = %221
  %227 = load i8*, i8** %12, align 8
  %228 = call i32 @keymatch(i8* noundef %227, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 noundef 2)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = load i8*, i8** %12, align 8
  %232 = call i32 @keymatch(i8* noundef %231, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i32 noundef 2)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230, %226
  %235 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %236 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %235, i32 0, i32 10
  store i32 1, i32* %236, align 8
  br label %401

237:                                              ; preds = %230
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @keymatch(i8* noundef %238, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i32 noundef 3)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %275

241:                                              ; preds = %237
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp sge i32 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  call void @usage()
  br label %247

247:                                              ; preds = %246, %241
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %274

250:                                              ; preds = %247
  %251 = load i8**, i8*** %8, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = call noalias %struct._IO_FILE* @fopen(i8* noundef %255, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %256, %struct._IO_FILE** %14, align 8
  %257 = icmp eq %struct._IO_FILE* %256, null
  br i1 %257, label %258, label %267

258:                                              ; preds = %250
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %260 = load i8*, i8** @progname, align 8
  %261 = load i8**, i8*** %8, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %259, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* noundef %260, i8* noundef %265)
  call void @exit(i32 noundef 1) #5
  unreachable

267:                                              ; preds = %250
  %268 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @read_color_map(%struct.jpeg_decompress_struct* noundef %268, %struct._IO_FILE* noundef %269)
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %271 = call i32 @fclose(%struct._IO_FILE* noundef %270)
  %272 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %273 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %272, i32 0, i32 19
  store i32 1, i32* %273, align 4
  br label %274

274:                                              ; preds = %267, %247
  br label %400

275:                                              ; preds = %237
  %276 = load i8*, i8** %12, align 8
  %277 = call i32 @keymatch(i8* noundef %276, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0), i32 noundef 3)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %312

279:                                              ; preds = %275
  store i8 120, i8* %16, align 1
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp sge i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  call void @usage()
  br label %285

285:                                              ; preds = %284, %279
  %286 = load i8**, i8*** %8, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %290, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i64 0, i64 0), i64* noundef %15, i8* noundef %16) #7
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  call void @usage()
  br label %294

294:                                              ; preds = %293, %285
  %295 = load i8, i8* %16, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 %296, 109
  br i1 %297, label %302, label %298

298:                                              ; preds = %294
  %299 = load i8, i8* %16, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 77
  br i1 %301, label %302, label %305

302:                                              ; preds = %298, %294
  %303 = load i64, i64* %15, align 8
  %304 = mul nsw i64 %303, 1000
  store i64 %304, i64* %15, align 8
  br label %305

305:                                              ; preds = %302, %298
  %306 = load i64, i64* %15, align 8
  %307 = mul nsw i64 %306, 1000
  %308 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %309 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %308, i32 0, i32 1
  %310 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %309, align 8
  %311 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %310, i32 0, i32 11
  store i64 %307, i64* %311, align 8
  br label %399

312:                                              ; preds = %275
  %313 = load i8*, i8** %12, align 8
  %314 = call i32 @keymatch(i8* noundef %313, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 noundef 3)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %318 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %317, i32 0, i32 17
  store i32 0, i32* %318, align 4
  br label %398

319:                                              ; preds = %312
  %320 = load i8*, i8** %12, align 8
  %321 = call i32 @keymatch(i8* noundef %320, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i32 noundef 3)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %319
  %324 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %325 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %324, i32 0, i32 21
  store i32 0, i32* %325, align 4
  br label %397

326:                                              ; preds = %319
  %327 = load i8*, i8** %12, align 8
  %328 = call i32 @keymatch(i8* noundef %327, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i32 noundef 3)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i32 2, i32* @requested_fmt, align 4
  br label %396

331:                                              ; preds = %326
  %332 = load i8*, i8** %12, align 8
  %333 = call i32 @keymatch(i8* noundef %332, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0), i32 noundef 4)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %331
  %336 = load i32, i32* %11, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %11, align 4
  %338 = load i32, i32* %7, align 4
  %339 = icmp sge i32 %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  call void @usage()
  br label %341

341:                                              ; preds = %340, %335
  %342 = load i8**, i8*** %8, align 8
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  %346 = load i8*, i8** %345, align 8
  store i8* %346, i8** @outfilename, align 8
  br label %395

347:                                              ; preds = %331
  %348 = load i8*, i8** %12, align 8
  %349 = call i32 @keymatch(i8* noundef %348, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 noundef 1)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = load i8*, i8** %12, align 8
  %353 = call i32 @keymatch(i8* noundef %352, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i32 noundef 1)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %351, %347
  store i32 3, i32* @requested_fmt, align 4
  br label %394

356:                                              ; preds = %351
  %357 = load i8*, i8** %12, align 8
  %358 = call i32 @keymatch(i8* noundef %357, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i32 noundef 1)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store i32 4, i32* @requested_fmt, align 4
  br label %393

361:                                              ; preds = %356
  %362 = load i8*, i8** %12, align 8
  %363 = call i32 @keymatch(i8* noundef %362, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 noundef 1)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %385

365:                                              ; preds = %361
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %11, align 4
  %368 = load i32, i32* %7, align 4
  %369 = icmp sge i32 %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %365
  call void @usage()
  br label %371

371:                                              ; preds = %370, %365
  %372 = load i8**, i8*** %8, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %372, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %378 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %377, i32 0, i32 11
  %379 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %380 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %379, i32 0, i32 12
  %381 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %376, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i32* noundef %378, i32* noundef %380) #7
  %382 = icmp ne i32 %381, 2
  br i1 %382, label %383, label %384

383:                                              ; preds = %371
  call void @usage()
  br label %384

384:                                              ; preds = %383, %371
  br label %392

385:                                              ; preds = %361
  %386 = load i8*, i8** %12, align 8
  %387 = call i32 @keymatch(i8* noundef %386, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i32 noundef 1)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %385
  store i32 5, i32* @requested_fmt, align 4
  br label %391

390:                                              ; preds = %385
  call void @usage()
  br label %391

391:                                              ; preds = %390, %389
  br label %392

392:                                              ; preds = %391, %384
  br label %393

393:                                              ; preds = %392, %360
  br label %394

394:                                              ; preds = %393, %355
  br label %395

395:                                              ; preds = %394, %341
  br label %396

396:                                              ; preds = %395, %330
  br label %397

397:                                              ; preds = %396, %323
  br label %398

398:                                              ; preds = %397, %316
  br label %399

399:                                              ; preds = %398, %305
  br label %400

400:                                              ; preds = %399, %274
  br label %401

401:                                              ; preds = %400, %234
  br label %402

402:                                              ; preds = %401, %225
  br label %403

403:                                              ; preds = %402, %216
  br label %404

404:                                              ; preds = %403, %193
  br label %405

405:                                              ; preds = %404, %178
  br label %406

406:                                              ; preds = %405, %131
  br label %407

407:                                              ; preds = %406, %79
  br label %408

408:                                              ; preds = %407, %47
  br label %409

409:                                              ; preds = %408, %39
  %410 = load i32, i32* %11, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %11, align 4
  br label %21, !llvm.loop !7

412:                                              ; preds = %40, %21
  %413 = load i32, i32* %11, align 4
  ret i32 %413
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0), i8* noundef %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.88, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.89, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.90, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.91, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.100, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.94, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.104, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.105, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.106, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.107, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.108, i64 0, i64 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.109, i64 0, i64 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.110, i64 0, i64 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.111, i64 0, i64 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

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
define internal i32 @jpeg_getc(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.jpeg_source_mgr*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 5
  %6 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %5, align 8
  store %struct.jpeg_source_mgr* %6, %struct.jpeg_source_mgr** %3, align 8
  %7 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %12, i32 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %13, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = call i32 %14(%struct.jpeg_decompress_struct* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 22, i32* %22, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %29 = bitcast %struct.jpeg_decompress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* noundef %29)
  br label %30

30:                                               ; preds = %18, %11
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %3, align 8
  %37 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %37, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  ret i32 %41
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @keymatch(i8* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #4

declare dso_local void @read_color_map(%struct.jpeg_decompress_struct* noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }

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
