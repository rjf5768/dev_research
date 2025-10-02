; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/nbench0.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/nbench/nbench0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortStruct = type { i32, i64, double, i16, i64 }
%struct.BitOpStruct = type { i32, i64, double, i64, i64 }
%struct.EmFloatStruct = type { i32, i64, i64, i64, double }
%struct.FourierStruct = type { i32, i64, i64, double }
%struct.AssignStruct = type { i32, i64, i64, double }
%struct.IDEAStruct = type { i32, i64, i64, i64, double }
%struct.HuffStruct = type { i32, i64, i64, i64, double }
%struct.NNetStruct = type { i32, i64, i64, double }
%struct.LUStruct = type { i32, i64, i64, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [51 x i8] c"You can enter your system description in nbench0.h\00", align 1
@sysname = dso_local global i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"It then will be printed here after you recompile\00", align 1
@compilername = dso_local global i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Have a nice day\00", align 1
@compilerversion = dso_local global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"NUMERIC SORT    \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"STRING SORT     \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"BITFIELD        \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"FP EMULATION    \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"FOURIER         \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ASSIGNMENT      \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"IDEA            \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"HUFFMAN         \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"NEURAL NET      \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"LU DECOMPOSITION\00", align 1
@ftestnames = dso_local global [10 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)], align 16
@bindex = dso_local global [10 x double] [double 3.899300e+01, double 2.238000e+00, double 0x41563D1200000000, double 2.084000e+00, double 8.792780e+02, double 2.628000e-01, double 6.538200e+01, double 3.606200e+01, double 6.225000e-01, double 1.930310e+01], align 16
@lx_bindex = dso_local global [10 x double] [double 1.187300e+02, double 1.445900e+01, double 2.791000e+07, double 9.031400e+00, double 1.565500e+03, double 1.013200e+00, double 2.202100e+02, double 1.129300e+02, double 1.479900e+00, double 2.673200e+01], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"GLOBALMINTICKS\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MINSECONDS\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ALLSTATS\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"OUTFILE\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CUSTOMRUN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DONUMSORT\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"NUMNUMARRAYS\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"NUMARRAYSIZE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"NUMMINSECONDS\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DOSTRINGSORT\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"STRARRAYSIZE\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"NUMSTRARRAYS\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"STRMINSECONDS\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"DOBITFIELD\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"NUMBITOPS\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"BITFIELDSIZE\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"BITMINSECONDS\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"DOEMF\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"EMFARRAYSIZE\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"EMFLOOPS\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"EMFMINSECONDS\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"DOFOUR\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"FOURSIZE\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"FOURMINSECONDS\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"DOASSIGN\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ASSIGNARRAYS\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"ASSIGNMINSECONDS\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"DOIDEA\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"IDEARRAYSIZE\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"IDEALOOPS\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"IDEAMINSECONDS\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DOHUFF\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"HUFARRAYSIZE\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"HUFFLOOPS\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"HUFFMINSECONDS\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"DONNET\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"NNETLOOPS\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"NNETMINSECONDS\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"DOLU\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"LUNUMARRAYS\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"LUMINSECONDS\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"ALIGN\00", align 1
@paramnames = dso_local global [42 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)], align 16
@global_numsortstruct = dso_local global %struct.SortStruct zeroinitializer, align 8
@global_strsortstruct = dso_local global %struct.SortStruct zeroinitializer, align 8
@global_bitopstruct = dso_local global %struct.BitOpStruct zeroinitializer, align 8
@global_emfloatstruct = dso_local global %struct.EmFloatStruct zeroinitializer, align 8
@global_fourierstruct = dso_local global %struct.FourierStruct zeroinitializer, align 8
@global_assignstruct = dso_local global %struct.AssignStruct zeroinitializer, align 8
@global_ideastruct = dso_local global %struct.IDEAStruct zeroinitializer, align 8
@global_huffstruct = dso_local global %struct.HuffStruct zeroinitializer, align 8
@global_nnetstruct = dso_local global %struct.NNetStruct zeroinitializer, align 8
@global_lustruct = dso_local global %struct.LUStruct zeroinitializer, align 8
@global_fstruct = dso_local global [10 x i8*] [i8* bitcast (%struct.SortStruct* @global_numsortstruct to i8*), i8* bitcast (%struct.SortStruct* @global_strsortstruct to i8*), i8* bitcast (%struct.BitOpStruct* @global_bitopstruct to i8*), i8* bitcast (%struct.EmFloatStruct* @global_emfloatstruct to i8*), i8* bitcast (%struct.FourierStruct* @global_fourierstruct to i8*), i8* bitcast (%struct.AssignStruct* @global_assignstruct to i8*), i8* bitcast (%struct.IDEAStruct* @global_ideastruct to i8*), i8* bitcast (%struct.HuffStruct* @global_huffstruct to i8*), i8* bitcast (%struct.NNetStruct* @global_nnetstruct to i8*), i8* bitcast (%struct.LUStruct* @global_lustruct to i8*)], align 16
@funcpointer = dso_local global [10 x void ()*] [void ()* @DoNumSort, void ()* @DoStringSort, void ()* @DoBitops, void ()* @DoEmFloat, void ()* @DoFourier, void ()* @DoAssign, void ()* @DoIDEA, void ()* @DoHuffman, void ()* @DoNNET, void ()* @DoLU], align 16
@global_min_ticks = dso_local global i64 0, align 8
@global_min_seconds = dso_local global i64 0, align 8
@global_allstats = dso_local global i32 0, align 4
@global_custrun = dso_local global i32 0, align 4
@global_align = dso_local global i32 0, align 4
@write_to_file = dso_local global i32 0, align 4
@mem_array_ents = dso_local global i32 0, align 4
@tests_to_do = dso_local global [10 x i32] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [36 x i8] c"BBBBBB   YYY   Y  TTTTTTT  EEEEEEE\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"BBB   B  YYY   Y    TTT    EEE\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"BBBBBB    YYY Y     TTT    EEEEEEE\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"BBB   B    YYY      TTT    EEE\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"BBBBBB     YYY      TTT    EEEEEEE\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"\0ABYTEmark (tm) Native Mode Benchmark ver. 2 (10/95)\0A\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.62 = private unnamed_addr constant [79 x i8] c"============================== ALL STATISTICS ===============================\0A\00", align 1
@buffer = dso_local global [1024 x i8] zeroinitializer, align 16
@.str.63 = private unnamed_addr constant [37 x i8] c"**Date and time of benchmark run: %s\00", align 1
@.str.64 = private unnamed_addr constant [72 x i8] c"**Sizeof: char:%u short:%u int:%u long:%u u8:%u u16:%u u32:%u int32:%u\0A\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"**%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"=============================================================================\0A\00", align 1
@.str.67 = private unnamed_addr constant [68 x i8] c"\0ANOTE!!! Iteration display disabled to prevent diffs from failing!\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"%s    :\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"  Iterations/sec.: %13.2f  Index: %6.2f\0A\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"  Absolute standard deviation: %g\0A\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"  Relative standard deviation: %g %%\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"  Number of runs: %lu\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Done with %s\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [79 x i8] c"==========================ORIGINAL BYTEMARK RESULTS==========================\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"INTEGER INDEX       : %.3f\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"FLOATING-POINT INDEX: %.3f\0A\00", align 1
@.str.77 = private unnamed_addr constant [75 x i8] c"Baseline (MSDOS*)   : Pentium* 90, 256 KB L2-cache, Watcom* compiler 10.0\0A\00", align 1
@.str.78 = private unnamed_addr constant [55 x i8] c"* Trademarks are property of their respective holder.\0A\00", align 1
@global_ofile_name = dso_local global [1024 x i8] zeroinitializer, align 16
@global_ofile = dso_local global %struct._IO_FILE* null, align 8
@mem_array = dso_local global [2 x [20 x i64]] zeroinitializer, align 16
@.str.79 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"**Error opening file: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"**COMMAND FILE ERROR at LINE:\0A %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"**COMMAND FILE ERROR -- UNKNOWN PARAM: %s\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"**Error opening output file: %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"Usage: %s [-v] [-c<FILE>]\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c" -v = verbose\0A\00", align 1
@.str.87 = private unnamed_addr constant [49 x i8] c" -c = input parameters thru command file <FILE>\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"  Number of arrays: %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"  Array size: %ld\0A\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"  Operations array size: %ld\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"  Bitfield array size: %ld\0A\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"  Number of loops: %lu\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"  Array size: %lu\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"  Number of coefficients: %lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"  Number of arrays: %lu\0A\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c" Number of loops: %lu\0A\00", align 1

declare dso_local void @DoNumSort() #0

declare dso_local void @DoStringSort() #0

declare dso_local void @DoBitops() #0

declare dso_local void @DoEmFloat() #0

declare dso_local void @DoFourier() #0

declare dso_local void @DoAssign() #0

declare dso_local void @DoIDEA() #0

declare dso_local void @DoHuffman() #0

declare dso_local void @DoNNET() #0

declare dso_local void @DoLU() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 60, i64* @global_min_ticks, align 8
  store i64 5, i64* @global_min_seconds, align 8
  store i32 0, i32* @global_allstats, align 4
  store i32 0, i32* @global_custrun, align 4
  store i32 8, i32* @global_align, align 4
  store i32 0, i32* @write_to_file, align 4
  store double 1.000000e+00, double* %12, align 8
  store double 1.000000e+00, double* %13, align 8
  store double 1.000000e+00, double* %14, align 8
  store double 1.000000e+00, double* %15, align 8
  store double 1.000000e+00, double* %16, align 8
  store i32 0, i32* @mem_array_ents, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %25, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %18, !llvm.loop !4

28:                                               ; preds = %18
  call void @set_request_secs()
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 0), align 8
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 0), align 8
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 0), align 8
  store i64 32768, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 0), align 8
  store i64 3000, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 0), align 8
  store i64 4000, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 0), align 8
  store i64 5000, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 0), align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @parse_arg(i8* noundef %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  call void @display_help(i8* noundef %47)
  call void @exit(i32 noundef 0) #5
  unreachable

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %32, !llvm.loop !6

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %28
  call void @output_string(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i64 0, i64 0))
  %54 = load i32, i32* @global_allstats, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  call void @output_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0))
  %57 = call i64 @time(i64* noundef %8) #6
  %58 = call %struct.tm* @localtime(i64* noundef %8) #6
  store %struct.tm* %58, %struct.tm** %9, align 8
  %59 = load %struct.tm*, %struct.tm** %9, align 8
  %60 = call i8* @asctime(%struct.tm* noundef %59) #6
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i8* noundef %60) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.64, i64 0, i64 0), i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 4) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %63 = load i8*, i8** @sysname, align 8
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* noundef %63) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %65 = load i8*, i8** @compilername, align 8
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* noundef %65) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %67 = load i8*, i8** @compilerversion, align 8
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* noundef %67) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.66, i64 0, i64 0))
  br label %69

69:                                               ; preds = %56, %53
  call void @output_string(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.67, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %187, %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %190

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %186

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i8* noundef %83) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %93, %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x void ()*], [10 x void ()*]* @funcpointer, i64 0, i64 %90
  %92 = load void ()*, void ()** %91, align 8
  call void %92()
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %85, !llvm.loop !7

96:                                               ; preds = %85
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i64 0, i64 0), double noundef 0.000000e+00, double noundef 0.000000e+00) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %123

106:                                              ; preds = %103, %100, %96
  %107 = load double, double* %16, align 8
  %108 = load double, double* %10, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x double], [10 x double]* @bindex, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fdiv double %108, %112
  %114 = fmul double %107, %113
  store double %114, double* %16, align 8
  %115 = load double, double* %14, align 8
  %116 = load double, double* %10, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i64 0, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fdiv double %116, %120
  %122 = fmul double %115, %121
  store double %122, double* %14, align 8
  br label %162

123:                                              ; preds = %103
  %124 = load double, double* %15, align 8
  %125 = load double, double* %10, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x double], [10 x double]* @bindex, i64 0, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fdiv double %125, %129
  %131 = fmul double %124, %130
  store double %131, double* %15, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 6
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %152

143:                                              ; preds = %140, %137, %134, %123
  %144 = load double, double* %13, align 8
  %145 = load double, double* %10, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i64 0, i64 %147
  %149 = load double, double* %148, align 8
  %150 = fdiv double %145, %149
  %151 = fmul double %144, %150
  store double %151, double* %13, align 8
  br label %161

152:                                              ; preds = %140
  %153 = load double, double* %12, align 8
  %154 = load double, double* %10, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i64 0, i64 %156
  %158 = load double, double* %157, align 8
  %159 = fdiv double %154, %158
  %160 = fmul double %153, %159
  store double %160, double* %12, align 8
  br label %161

161:                                              ; preds = %152, %143
  br label %162

162:                                              ; preds = %161, %106
  %163 = load i32, i32* @global_allstats, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load double, double* %11, align 8
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), double noundef %166) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %168 = load double, double* %10, align 8
  %169 = fcmp ogt double %168, 1.000000e-100
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load double, double* %11, align 8
  %172 = fmul double 1.000000e+02, %171
  %173 = load double, double* %10, align 8
  %174 = fdiv double %172, %173
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i64 0, i64 0), double noundef %174) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br label %176

176:                                              ; preds = %170, %165
  %177 = load i64, i64* %17, align 8
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i64 0, i64 0), i64 noundef %177) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  call void @show_stats(i32 noundef %179)
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i64 0, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0), i8* noundef %183) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br label %185

185:                                              ; preds = %176, %162
  br label %186

186:                                              ; preds = %185, %73
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %70, !llvm.loop !8

190:                                              ; preds = %70
  %191 = load i32, i32* @global_custrun, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  call void @output_string(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.74, i64 0, i64 0))
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i64 0, i64 0), double noundef 0.000000e+00) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0), double noundef 0.000000e+00) #6
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.77, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.78, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %190
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_request_secs() #1 {
  %1 = load i64, i64* @global_min_seconds, align 8
  store i64 %1, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 1), align 8
  %2 = load i64, i64* @global_min_seconds, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 1), align 8
  %3 = load i64, i64* @global_min_seconds, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 1), align 8
  %4 = load i64, i64* @global_min_seconds, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 1), align 8
  %5 = load i64, i64* @global_min_seconds, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 1), align 8
  %6 = load i64, i64* @global_min_seconds, align 8
  store i64 %6, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 1), align 8
  %7 = load i64, i64* @global_min_seconds, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 1), align 8
  %8 = load i64, i64* @global_min_seconds, align 8
  store i64 %8, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 1), align 8
  %9 = load i64, i64* @global_min_seconds, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 1), align 8
  %10 = load i64, i64* @global_min_seconds, align 8
  store i64 %10, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_arg(i8* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %3, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 45
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* noundef %16) #7
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @toupper(i32 noundef %25) #7
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %27, i8* %31, align 1
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %13, !llvm.loop !9

35:                                               ; preds = %13
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %54 [
    i32 63, label %40
    i32 86, label %41
    i32 67, label %42
  ]

40:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %56

41:                                               ; preds = %35
  store i32 1, i32* @global_allstats, align 4
  store i32 0, i32* %2, align 4
  br label %56

42:                                               ; preds = %35
  %43 = load i8*, i8** %3, align 8
  %44 = call noalias %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0))
  store %struct._IO_FILE* %44, %struct._IO_FILE** %5, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %46 = icmp eq %struct._IO_FILE* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i64 0, i64 0), i8* noundef %48)
  store i32 -1, i32* %2, align 4
  br label %56

50:                                               ; preds = %42
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @read_comfile(%struct._IO_FILE* noundef %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = call i32 @fclose(%struct._IO_FILE* noundef %52)
  br label %55

54:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %47, %41, %40, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal void @display_help(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i64 0, i64 0), i8* noundef %3)
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.87, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @output_string(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), i8* noundef %3)
  %5 = load i32, i32* @write_to_file, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), i8* noundef %9)
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @asctime(%struct.tm* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @show_stats(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %81 [
    i32 0, label %5
    i32 1, label %15
    i32 2, label %25
    i32 3, label %34
    i32 4, label %43
    i32 5, label %48
    i32 6, label %53
    i32 7, label %62
    i32 8, label %71
    i32 9, label %76
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %7 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 3), align 8
  %8 = zext i16 %7 to i32
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %6, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 noundef %8) #6
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %10)
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %12 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i64 noundef %12) #6
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %14)
  br label %81

15:                                               ; preds = %1
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %17 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 3), align 8
  %18 = zext i16 %17 to i32
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %16, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 noundef %18) #6
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %20)
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %22 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i64 noundef %22) #6
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %24)
  br label %81

25:                                               ; preds = %1
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %27 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 3), align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %26, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), i64 noundef %27) #6
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %29)
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %31 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %30, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i64 0, i64 0), i64 noundef %31) #6
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %33)
  br label %81

34:                                               ; preds = %1
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %36 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 3), align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %35, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 noundef %36) #6
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %38)
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %40 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %39, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 noundef %40) #6
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %42)
  br label %81

43:                                               ; preds = %1
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %45 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 2), align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %44, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i64 noundef %45) #6
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %47)
  br label %81

48:                                               ; preds = %1
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %50 = load i64, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 2), align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %49, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0), i64 noundef %50) #6
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %52)
  br label %81

53:                                               ; preds = %1
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %55 = load i64, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 2), align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %54, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 noundef %55) #6
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %57)
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %59 = load i64, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 3), align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %58, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), i64 noundef %59) #6
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %61)
  br label %81

62:                                               ; preds = %1
  %63 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %64 = load i64, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 2), align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %63, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 noundef %64) #6
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %66)
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %68 = load i64, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 3), align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %67, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 noundef %68) #6
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %70)
  br label %81

71:                                               ; preds = %1
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %73 = load i64, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 2), align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %72, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 noundef %73) #6
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %75)
  br label %81

76:                                               ; preds = %1
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %78 = load i64, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 2), align 8
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %77, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0), i64 noundef %78) #6
  %80 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* noundef %80)
  br label %81

81:                                               ; preds = %1, %76, %71, %62, %53, %48, %43, %34, %25, %15, %5
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #0

declare dso_local i32 @printf(i8* noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define internal void @read_comfile(%struct._IO_FILE* noundef %0) #1 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [40 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  br label %6

6:                                                ; preds = %201, %1
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %9 = call i8* @fgets(i8* noundef %7, i32 noundef 39, %struct._IO_FILE* noundef %8)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %202

11:                                               ; preds = %6
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %13 = call i64 @strlen(i8* noundef %12) #7
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %17 = call i64 @strlen(i8* noundef %16) #7
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 %18
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %22 = call i8* @strchr(i8* noundef %21, i32 noundef 61) #7
  store i8* %22, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0), i8* noundef %25)
  br label %201

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8 0, i8* %28, align 1
  %30 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  call void @strtoupper(i8* noundef %30)
  store i32 41, i32* %5, align 4
  br label %31

31:                                               ; preds = %41, %27
  %32 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [42 x i8*], [42 x i8*]* @paramnames, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* noundef %32, i8* noundef %36) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %31, label %45, !llvm.loop !10

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i64 0, i64 0), i8* noundef %49)
  br label %201

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %200 [
    i32 0, label %53
    i32 1, label %56
    i32 2, label %59
    i32 3, label %62
    i32 4, label %71
    i32 5, label %87
    i32 6, label %90
    i32 7, label %94
    i32 8, label %97
    i32 9, label %100
    i32 10, label %103
    i32 11, label %106
    i32 12, label %110
    i32 13, label %113
    i32 14, label %116
    i32 15, label %119
    i32 16, label %122
    i32 17, label %125
    i32 18, label %128
    i32 19, label %131
    i32 20, label %134
    i32 21, label %137
    i32 22, label %140
    i32 23, label %143
    i32 24, label %146
    i32 25, label %149
    i32 26, label %152
    i32 27, label %155
    i32 28, label %158
    i32 29, label %161
    i32 30, label %164
    i32 31, label %167
    i32 32, label %170
    i32 33, label %173
    i32 34, label %176
    i32 35, label %179
    i32 36, label %182
    i32 37, label %185
    i32 38, label %188
    i32 39, label %191
    i32 40, label %194
    i32 41, label %197
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @atol(i8* noundef %54) #7
  store i64 %55, i64* @global_min_ticks, align 8
  br label %200

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @atol(i8* noundef %57) #7
  store i64 %58, i64* @global_min_seconds, align 8
  call void @set_request_secs()
  br label %200

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @getflag(i8* noundef %60)
  store i32 %61, i32* @global_allstats, align 4
  br label %200

62:                                               ; preds = %51
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @strcpy(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0), i8* noundef %63) #6
  %65 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0))
  store %struct._IO_FILE* %65, %struct._IO_FILE** @global_ofile, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %67 = icmp eq %struct._IO_FILE* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0))
  call void @ErrorExit()
  br label %70

70:                                               ; preds = %68, %62
  store i32 -1, i32* @write_to_file, align 4
  br label %200

71:                                               ; preds = %51
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @getflag(i8* noundef %72)
  store i32 %73, i32* @global_custrun, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %83, %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @global_custrun, align 4
  %79 = sub nsw i32 1, %78
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %74, !llvm.loop !11

86:                                               ; preds = %74
  br label %200

87:                                               ; preds = %51
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @getflag(i8* noundef %88)
  store i32 %89, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 0), align 16
  br label %200

90:                                               ; preds = %51
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @atoi(i8* noundef %91) #7
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 0), align 8
  br label %200

94:                                               ; preds = %51
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 @atol(i8* noundef %95) #7
  store i64 %96, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  br label %200

97:                                               ; preds = %51
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @atol(i8* noundef %98) #7
  store i64 %99, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 1), align 8
  br label %200

100:                                              ; preds = %51
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @getflag(i8* noundef %101)
  store i32 %102, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 1), align 4
  br label %200

103:                                              ; preds = %51
  %104 = load i8*, i8** %4, align 8
  %105 = call i64 @atol(i8* noundef %104) #7
  store i64 %105, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  br label %200

106:                                              ; preds = %51
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @atoi(i8* noundef %107) #7
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 0), align 8
  br label %200

110:                                              ; preds = %51
  %111 = load i8*, i8** %4, align 8
  %112 = call i64 @atol(i8* noundef %111) #7
  store i64 %112, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 1), align 8
  br label %200

113:                                              ; preds = %51
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @getflag(i8* noundef %114)
  store i32 %115, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 2), align 8
  br label %200

116:                                              ; preds = %51
  %117 = load i8*, i8** %4, align 8
  %118 = call i64 @atol(i8* noundef %117) #7
  store i64 %118, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 0), align 8
  br label %200

119:                                              ; preds = %51
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @atol(i8* noundef %120) #7
  store i64 %121, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  br label %200

122:                                              ; preds = %51
  %123 = load i8*, i8** %4, align 8
  %124 = call i64 @atol(i8* noundef %123) #7
  store i64 %124, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 1), align 8
  br label %200

125:                                              ; preds = %51
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @getflag(i8* noundef %126)
  store i32 %127, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 3), align 4
  br label %200

128:                                              ; preds = %51
  %129 = load i8*, i8** %4, align 8
  %130 = call i64 @atol(i8* noundef %129) #7
  store i64 %130, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  br label %200

131:                                              ; preds = %51
  %132 = load i8*, i8** %4, align 8
  %133 = call i64 @atol(i8* noundef %132) #7
  store i64 %133, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 3), align 8
  br label %200

134:                                              ; preds = %51
  %135 = load i8*, i8** %4, align 8
  %136 = call i64 @atol(i8* noundef %135) #7
  store i64 %136, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 1), align 8
  br label %200

137:                                              ; preds = %51
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @getflag(i8* noundef %138)
  store i32 %139, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 4), align 16
  br label %200

140:                                              ; preds = %51
  %141 = load i8*, i8** %4, align 8
  %142 = call i64 @atol(i8* noundef %141) #7
  store i64 %142, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 0), align 8
  br label %200

143:                                              ; preds = %51
  %144 = load i8*, i8** %4, align 8
  %145 = call i64 @atol(i8* noundef %144) #7
  store i64 %145, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 1), align 8
  br label %200

146:                                              ; preds = %51
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @getflag(i8* noundef %147)
  store i32 %148, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 5), align 4
  br label %200

149:                                              ; preds = %51
  %150 = load i8*, i8** %4, align 8
  %151 = call i64 @atol(i8* noundef %150) #7
  store i64 %151, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 2), align 8
  br label %200

152:                                              ; preds = %51
  %153 = load i8*, i8** %4, align 8
  %154 = call i64 @atol(i8* noundef %153) #7
  store i64 %154, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i32 0, i32 1), align 8
  br label %200

155:                                              ; preds = %51
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @getflag(i8* noundef %156)
  store i32 %157, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 6), align 8
  br label %200

158:                                              ; preds = %51
  %159 = load i8*, i8** %4, align 8
  %160 = call i64 @atol(i8* noundef %159) #7
  store i64 %160, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 2), align 8
  br label %200

161:                                              ; preds = %51
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @atol(i8* noundef %162) #7
  store i64 %163, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 3), align 8
  br label %200

164:                                              ; preds = %51
  %165 = load i8*, i8** %4, align 8
  %166 = call i64 @atol(i8* noundef %165) #7
  store i64 %166, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i32 0, i32 1), align 8
  br label %200

167:                                              ; preds = %51
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @getflag(i8* noundef %168)
  store i32 %169, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 7), align 4
  br label %200

170:                                              ; preds = %51
  %171 = load i8*, i8** %4, align 8
  %172 = call i64 @atol(i8* noundef %171) #7
  store i64 %172, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 2), align 8
  br label %200

173:                                              ; preds = %51
  %174 = load i8*, i8** %4, align 8
  %175 = call i64 @atol(i8* noundef %174) #7
  store i64 %175, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 0), align 8
  br label %200

176:                                              ; preds = %51
  %177 = load i8*, i8** %4, align 8
  %178 = call i64 @atol(i8* noundef %177) #7
  store i64 %178, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i32 0, i32 1), align 8
  br label %200

179:                                              ; preds = %51
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @getflag(i8* noundef %180)
  store i32 %181, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 8), align 16
  br label %200

182:                                              ; preds = %51
  %183 = load i8*, i8** %4, align 8
  %184 = call i64 @atol(i8* noundef %183) #7
  store i64 %184, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 0), align 8
  br label %200

185:                                              ; preds = %51
  %186 = load i8*, i8** %4, align 8
  %187 = call i64 @atol(i8* noundef %186) #7
  store i64 %187, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i32 0, i32 1), align 8
  br label %200

188:                                              ; preds = %51
  %189 = load i8*, i8** %4, align 8
  %190 = call i32 @getflag(i8* noundef %189)
  store i32 %190, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 9), align 4
  br label %200

191:                                              ; preds = %51
  %192 = load i8*, i8** %4, align 8
  %193 = call i64 @atol(i8* noundef %192) #7
  store i64 %193, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 0), align 8
  br label %200

194:                                              ; preds = %51
  %195 = load i8*, i8** %4, align 8
  %196 = call i64 @atol(i8* noundef %195) #7
  store i64 %196, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i32 0, i32 1), align 8
  br label %200

197:                                              ; preds = %51
  %198 = load i8*, i8** %4, align 8
  %199 = call i32 @atoi(i8* noundef %198) #7
  store i32 %199, i32* @global_align, align 4
  br label %200

200:                                              ; preds = %51, %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %106, %103, %100, %97, %94, %90, %87, %86, %70, %59, %56, %53
  br label %201

201:                                              ; preds = %200, %48, %24
  br label %6, !llvm.loop !12

202:                                              ; preds = %6
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #0

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #0

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @strtoupper(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %12, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 @toupper(i32 noundef %6) #7
  %8 = trunc i32 %7 to i8
  %9 = load i8*, i8** %2, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %3, label %17, !llvm.loop !13

17:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @getflag(i8* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 @toupper(i32 noundef %6) #7
  %8 = icmp eq i32 %7, 84
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local void @ErrorExit() #0

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #0

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
