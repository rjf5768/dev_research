; ModuleID = './nbench0.ll'
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
@str = private unnamed_addr constant [14 x i8] c" -v = verbose\00", align 1
@str.1 = private unnamed_addr constant [48 x i8] c" -c = input parameters thru command file <FILE>\00", align 1

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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = alloca i64, align 8
  store i64 60, i64* @global_min_ticks, align 8
  store i64 5, i64* @global_min_seconds, align 8
  store i32 0, i32* @global_allstats, align 4
  store i32 0, i32* @global_custrun, align 4
  store i32 8, i32* @global_align, align 4
  store i32 0, i32* @write_to_file, align 4
  store i32 0, i32* @mem_array_ents, align 4
  br label %4

4:                                                ; preds = %9, %2
  %.07 = phi i32 [ 0, %2 ], [ %10, %9 ]
  %5 = icmp ult i32 %.07, 10
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = zext i32 %.07 to i64
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %7
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i32 %.07, 1
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  call void @set_request_secs()
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 0), align 8
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 0), align 8
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 0), align 8
  store i64 32768, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 0), align 8
  store i64 3000, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i64 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i64 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 0), align 8
  store i64 4000, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 0), align 8
  store i64 5000, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i64 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i64 0, i32 0), align 8
  %12 = icmp sgt i32 %0, 1
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %25, %13
  %.18 = phi i32 [ 1, %13 ], [ %26, %25 ]
  %15 = icmp slt i32 %.18, %0
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = zext i32 %.18 to i64
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @parse_arg(i8* noundef %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i8*, i8** %1, align 8
  call void @display_help(i8* noundef %23)
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.18, 1
  br label %14, !llvm.loop !6

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %11
  call void @output_string(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i64 0, i64 0))
  %29 = load i32, i32* @global_allstats, align 4
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %42, label %30

30:                                               ; preds = %28
  call void @output_string(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0))
  %31 = call i64 @time(i64* noundef nonnull %3) #11
  %32 = call %struct.tm* @localtime(i64* noundef nonnull %3) #11
  %33 = call i8* @asctime(%struct.tm* noundef %32) #11
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i8* noundef %33) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([72 x i8], [72 x i8]* @.str.64, i64 0, i64 0), i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 4) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %36 = load i8*, i8** @sysname, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* noundef %36) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %38 = load i8*, i8** @compilername, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* noundef %38) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %40 = load i8*, i8** @compilerversion, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* noundef %40) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.66, i64 0, i64 0))
  br label %42

42:                                               ; preds = %30, %28
  call void @output_string(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.67, i64 0, i64 0))
  br label %43

43:                                               ; preds = %94, %42
  %.014 = phi double [ 1.000000e+00, %42 ], [ %.317, %94 ]
  %.011 = phi double [ 1.000000e+00, %42 ], [ %.3, %94 ]
  %.29 = phi i32 [ 0, %42 ], [ %95, %94 ]
  %.04 = phi double [ 1.000000e+00, %42 ], [ %.26, %94 ]
  %.01 = phi double [ 1.000000e+00, %42 ], [ %.23, %94 ]
  %.0 = phi double [ 1.000000e+00, %42 ], [ %.2, %94 ]
  %44 = icmp ult i32 %.29, 10
  br i1 %44, label %45, label %96

45:                                               ; preds = %43
  %46 = zext i32 %.29 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %.not18 = icmp eq i32 %48, 0
  br i1 %.not18, label %93, label %49

49:                                               ; preds = %45
  %50 = zext i32 %.29 to i64
  %51 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i8* noundef %52) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br label %54

54:                                               ; preds = %60, %49
  %.010 = phi i32 [ 0, %49 ], [ %61, %60 ]
  %55 = icmp eq i32 %.010, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = zext i32 %.29 to i64
  %58 = getelementptr inbounds [10 x void ()*], [10 x void ()*]* @funcpointer, i64 0, i64 %57
  %59 = load void ()*, void ()** %58, align 8
  call void %59() #11
  br label %60

60:                                               ; preds = %56
  %61 = add nuw nsw i32 %.010, 1
  br label %54, !llvm.loop !7

62:                                               ; preds = %54
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i64 0, i64 0), double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %64 = icmp eq i32 %.29, 4
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = icmp eq i32 %.29, 8
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = icmp eq i32 %.29, 9
  br i1 %68, label %69, label %70

69:                                               ; preds = %67, %65, %62
  br label %81

70:                                               ; preds = %67
  %71 = icmp eq i32 %.29, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %70
  %73 = icmp eq i32 %.29, 3
  br i1 %73, label %78, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %.29, 6
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = icmp eq i32 %.29, 7
  br i1 %77, label %78, label %79

78:                                               ; preds = %76, %74, %72, %70
  br label %80

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %78
  %.115 = phi double [ %.014, %78 ], [ 0x7FF8000000000000, %79 ]
  %.112 = phi double [ 0x7FF8000000000000, %78 ], [ %.011, %79 ]
  br label %81

81:                                               ; preds = %80, %69
  %.216 = phi double [ %.014, %69 ], [ %.115, %80 ]
  %.213 = phi double [ %.011, %69 ], [ %.112, %80 ]
  %.15 = phi double [ 0x7FF8000000000000, %69 ], [ %.04, %80 ]
  %.12 = phi double [ %.01, %69 ], [ 0x7FF8000000000000, %80 ]
  %.1 = phi double [ 0x7FF8000000000000, %69 ], [ %.0, %80 ]
  %82 = load i32, i32* @global_allstats, align 4
  %.not19 = icmp eq i32 %82, 0
  br i1 %.not19, label %92, label %83

83:                                               ; preds = %81
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), double noundef undef) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br i1 false, label %85, label %86

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %83
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i64 0, i64 0), i64 noundef undef) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @show_stats(i32 noundef %.29)
  %88 = zext i32 %.29 to i64
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0), i8* noundef %90) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92, %45
  %.317 = phi double [ %.216, %92 ], [ %.014, %45 ]
  %.3 = phi double [ %.213, %92 ], [ %.011, %45 ]
  %.26 = phi double [ %.15, %92 ], [ %.04, %45 ]
  %.23 = phi double [ %.12, %92 ], [ %.01, %45 ]
  %.2 = phi double [ %.1, %92 ], [ %.0, %45 ]
  br label %94

94:                                               ; preds = %93
  %95 = add nuw nsw i32 %.29, 1
  br label %43, !llvm.loop !8

96:                                               ; preds = %43
  %97 = load i32, i32* @global_custrun, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  call void @output_string(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.74, i64 0, i64 0))
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i64 0, i64 0), double noundef 0.000000e+00) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0), double noundef 0.000000e+00) #11
  call void @output_string(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.77, i64 0, i64 0))
  call void @output_string(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.78, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %96
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %102, %22
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @set_request_secs() #2 {
  %1 = load i64, i64* @global_min_seconds, align 8
  store i64 %1, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 1), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 1), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 1), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 1), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i64 0, i32 1), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i64 0, i32 1), align 8
  %2 = load i64, i64* @global_min_seconds, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 1), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 1), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i64 0, i32 1), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_arg(i8* noundef %0) #3 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1
  %3 = load i8, i8* %0, align 1
  %.not = icmp eq i8 %3, 45
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %36

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %19, %5
  %.01 = phi i32 [ 0, %5 ], [ %20, %19 ]
  %7 = zext i32 %.01 to i64
  %8 = call i64 @strlen(i8* noundef nonnull %2) #12
  %9 = icmp ugt i64 %8, %7
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds i8, i8* %2, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @toupper(i32 noundef %14) #12
  %16 = trunc i32 %15 to i8
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds i8, i8* %2, i64 %17
  store i8 %16, i8* %18, align 1
  br label %19

19:                                               ; preds = %10
  %20 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !9

21:                                               ; preds = %6
  %22 = getelementptr inbounds i8, i8* %0, i64 2
  %23 = load i8, i8* %2, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %34 [
    i32 63, label %25
    i32 86, label %26
    i32 67, label %27
  ]

25:                                               ; preds = %21
  br label %36

26:                                               ; preds = %21
  store i32 1, i32* @global_allstats, align 4
  br label %36

27:                                               ; preds = %21
  %28 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0)) #11
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i64 0, i64 0), i8* noundef nonnull %22) #11
  br label %36

32:                                               ; preds = %27
  call void @read_comfile(%struct._IO_FILE* noundef nonnull %28)
  %33 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %28) #11
  br label %35

34:                                               ; preds = %21
  br label %36

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %34, %30, %26, %25, %4
  %.0 = phi i32 [ -1, %4 ], [ -1, %34 ], [ -1, %30 ], [ 0, %35 ], [ 0, %26 ], [ -1, %25 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @display_help(i8* noundef %0) #1 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i64 0, i64 0), i8* noundef %0) #11
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @output_string(i8* noundef %0) #3 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), i8* noundef %0) #11
  %3 = load i32, i32* @write_to_file, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %fputs = call i32 @fputs(i8* %0, %struct._IO_FILE* %5)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #5

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #5

; Function Attrs: nounwind
declare dso_local i8* @asctime(%struct.tm* noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal void @show_stats(i32 noundef %0) #3 {
  %2 = alloca [80 x i8], align 16
  switch i32 %0, label %79 [
    i32 0, label %3
    i32 1, label %13
    i32 2, label %23
    i32 3, label %32
    i32 4, label %41
    i32 5, label %46
    i32 6, label %51
    i32 7, label %60
    i32 8, label %69
    i32 9, label %74
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %5 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 3), align 8
  %6 = zext i16 %5 to i32
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %4, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 noundef %6) #11
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %8)
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %10 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 4), align 8
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %9, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i64 noundef %10) #11
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %12)
  br label %79

13:                                               ; preds = %1
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %15 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 3), align 8
  %16 = zext i16 %15 to i32
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %14, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 noundef %16) #11
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %18)
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %20 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 4), align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %19, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i64 noundef %20) #11
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %22)
  br label %79

23:                                               ; preds = %1
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %25 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 3), align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %24, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), i64 noundef %25) #11
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %27)
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %29 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 4), align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %28, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i64 0, i64 0), i64 noundef %29) #11
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %31)
  br label %79

32:                                               ; preds = %1
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %34 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 3), align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %33, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 noundef %34) #11
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %36)
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %38 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 2), align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %37, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 noundef %38) #11
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %40)
  br label %79

41:                                               ; preds = %1
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %43 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i64 0, i32 2), align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %42, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i64 noundef %43) #11
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %45)
  br label %79

46:                                               ; preds = %1
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %48 = load i64, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i64 0, i32 2), align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %47, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0), i64 noundef %48) #11
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %50)
  br label %79

51:                                               ; preds = %1
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %53 = load i64, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 2), align 8
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %52, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 noundef %53) #11
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %55)
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %57 = load i64, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 3), align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %56, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), i64 noundef %57) #11
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %59)
  br label %79

60:                                               ; preds = %1
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %62 = load i64, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 2), align 8
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %61, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 noundef %62) #11
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %64)
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %66 = load i64, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 3), align 8
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %65, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 noundef %66) #11
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %68)
  br label %79

69:                                               ; preds = %1
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %71 = load i64, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i64 0, i32 2), align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %70, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 noundef %71) #11
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %73)
  br label %79

74:                                               ; preds = %1
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %76 = load i64, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i64 0, i32 2), align 8
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %75, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0), i64 noundef %76) #11
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  call void @output_string(i8* noundef nonnull %78)
  br label %79

79:                                               ; preds = %74, %69, %60, %51, %46, %41, %32, %23, %13, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #6

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #0

declare dso_local i32 @printf(i8* noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define internal void @read_comfile(%struct._IO_FILE* noundef %0) #3 {
  %2 = alloca [40 x i8], align 16
  br label %3

3:                                                ; preds = %143, %1
  %4 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %5 = call i8* @fgets(i8* noundef nonnull %4, i32 noundef 39, %struct._IO_FILE* noundef %0) #11
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %144, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %strlenfirst = load i8, i8* %7, align 16
  %.not2 = icmp eq i8 %strlenfirst, 0
  br i1 %.not2, label %13, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %10 = call i64 @strlen(i8* noundef nonnull %9) #12
  %11 = add i64 %10, -1
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %11
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %8, %6
  %14 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %15 = call i8* @strchr(i8* noundef nonnull %14, i32 noundef 61) #12
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull %18) #11
  br label %143

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %15, align 1
  %22 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @strtoupper(i8* noundef nonnull %22)
  br label %23

23:                                               ; preds = %32, %20
  %.0 = phi i32 [ 41, %20 ], [ %33, %32 ]
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds [42 x i8*], [42 x i8*]* @paramnames, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* noundef nonnull %24, i8* noundef nonnull dereferenceable(1) %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %.0, -1
  %34 = icmp sgt i32 %.0, 0
  br i1 %34, label %23, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %32
  br label %35

35:                                               ; preds = %.loopexit, %30
  %.1 = phi i32 [ %.0, %30 ], [ %33, %.loopexit ]
  %36 = icmp slt i32 %.1, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %38) #11
  br label %143

40:                                               ; preds = %35
  switch i32 %.1, label %142 [
    i32 0, label %41
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
    i32 4, label %54
    i32 5, label %66
    i32 6, label %68
    i32 7, label %71
    i32 8, label %73
    i32 9, label %75
    i32 10, label %77
    i32 11, label %79
    i32 12, label %82
    i32 13, label %84
    i32 14, label %86
    i32 15, label %88
    i32 16, label %90
    i32 17, label %92
    i32 18, label %94
    i32 19, label %96
    i32 20, label %98
    i32 21, label %100
    i32 22, label %102
    i32 23, label %104
    i32 24, label %106
    i32 25, label %108
    i32 26, label %110
    i32 27, label %112
    i32 28, label %114
    i32 29, label %116
    i32 30, label %118
    i32 31, label %120
    i32 32, label %122
    i32 33, label %124
    i32 34, label %126
    i32 35, label %128
    i32 36, label %130
    i32 37, label %132
    i32 38, label %134
    i32 39, label %136
    i32 40, label %138
    i32 41, label %140
  ]

41:                                               ; preds = %40
  %42 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %42, i64* @global_min_ticks, align 8
  br label %142

43:                                               ; preds = %40
  %44 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %44, i64* @global_min_seconds, align 8
  call void @set_request_secs()
  br label %142

45:                                               ; preds = %40
  %46 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %46, i32* @global_allstats, align 4
  br label %142

47:                                               ; preds = %40
  %48 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0), i8* noundef nonnull %21) #11
  %49 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0)) #11
  store %struct._IO_FILE* %49, %struct._IO_FILE** @global_ofile, align 8
  %50 = icmp eq %struct._IO_FILE* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0)) #11
  call void @ErrorExit() #11
  br label %53

53:                                               ; preds = %51, %47
  store i32 -1, i32* @write_to_file, align 4
  br label %142

54:                                               ; preds = %40
  %55 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %55, i32* @global_custrun, align 4
  br label %56

56:                                               ; preds = %63, %54
  %.2 = phi i32 [ 0, %54 ], [ %64, %63 ]
  %57 = icmp ult i32 %.2, 10
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  %59 = load i32, i32* @global_custrun, align 4
  %60 = sub nsw i32 1, %59
  %61 = zext i32 %.2 to i64
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %61
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58
  %64 = add nuw nsw i32 %.2, 1
  br label %56, !llvm.loop !11

65:                                               ; preds = %56
  br label %142

66:                                               ; preds = %40
  %67 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %67, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 0), align 16
  br label %142

68:                                               ; preds = %40
  %69 = call i32 @atoi(i8* noundef nonnull %21) #12
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 0), align 8
  br label %142

71:                                               ; preds = %40
  %72 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %72, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 4), align 8
  br label %142

73:                                               ; preds = %40
  %74 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %74, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i64 0, i32 1), align 8
  br label %142

75:                                               ; preds = %40
  %76 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %76, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 1), align 4
  br label %142

77:                                               ; preds = %40
  %78 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %78, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 4), align 8
  br label %142

79:                                               ; preds = %40
  %80 = call i32 @atoi(i8* noundef nonnull %21) #12
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 0), align 8
  br label %142

82:                                               ; preds = %40
  %83 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %83, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i64 0, i32 1), align 8
  br label %142

84:                                               ; preds = %40
  %85 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %85, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 2), align 8
  br label %142

86:                                               ; preds = %40
  %87 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %87, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 0), align 8
  br label %142

88:                                               ; preds = %40
  %89 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %89, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 4), align 8
  br label %142

90:                                               ; preds = %40
  %91 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %91, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i64 0, i32 1), align 8
  br label %142

92:                                               ; preds = %40
  %93 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %93, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 3), align 4
  br label %142

94:                                               ; preds = %40
  %95 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %95, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 2), align 8
  br label %142

96:                                               ; preds = %40
  %97 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %97, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 3), align 8
  br label %142

98:                                               ; preds = %40
  %99 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %99, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i64 0, i32 1), align 8
  br label %142

100:                                              ; preds = %40
  %101 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %101, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 4), align 16
  br label %142

102:                                              ; preds = %40
  %103 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %103, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i64 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i64 0, i32 0), align 8
  br label %142

104:                                              ; preds = %40
  %105 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %105, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i64 0, i32 1), align 8
  br label %142

106:                                              ; preds = %40
  %107 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %107, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 5), align 4
  br label %142

108:                                              ; preds = %40
  %109 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %109, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i64 0, i32 2), align 8
  br label %142

110:                                              ; preds = %40
  %111 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %111, i64* getelementptr inbounds (%struct.AssignStruct, %struct.AssignStruct* @global_assignstruct, i64 0, i32 1), align 8
  br label %142

112:                                              ; preds = %40
  %113 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %113, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 6), align 8
  br label %142

114:                                              ; preds = %40
  %115 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %115, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 2), align 8
  br label %142

116:                                              ; preds = %40
  %117 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %117, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 3), align 8
  br label %142

118:                                              ; preds = %40
  %119 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %119, i64* getelementptr inbounds (%struct.IDEAStruct, %struct.IDEAStruct* @global_ideastruct, i64 0, i32 1), align 8
  br label %142

120:                                              ; preds = %40
  %121 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %121, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 7), align 4
  br label %142

122:                                              ; preds = %40
  %123 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %123, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 2), align 8
  br label %142

124:                                              ; preds = %40
  %125 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %125, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 0), align 8
  br label %142

126:                                              ; preds = %40
  %127 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %127, i64* getelementptr inbounds (%struct.HuffStruct, %struct.HuffStruct* @global_huffstruct, i64 0, i32 1), align 8
  br label %142

128:                                              ; preds = %40
  %129 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %129, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 8), align 16
  br label %142

130:                                              ; preds = %40
  %131 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %131, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i64 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i64 0, i32 0), align 8
  br label %142

132:                                              ; preds = %40
  %133 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %133, i64* getelementptr inbounds (%struct.NNetStruct, %struct.NNetStruct* @global_nnetstruct, i64 0, i32 1), align 8
  br label %142

134:                                              ; preds = %40
  %135 = call i32 @getflag(i8* noundef nonnull %21)
  store i32 %135, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 9), align 4
  br label %142

136:                                              ; preds = %40
  %137 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %137, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i64 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i64 0, i32 0), align 8
  br label %142

138:                                              ; preds = %40
  %139 = call i64 @atol(i8* noundef nonnull %21) #12
  store i64 %139, i64* getelementptr inbounds (%struct.LUStruct, %struct.LUStruct* @global_lustruct, i64 0, i32 1), align 8
  br label %142

140:                                              ; preds = %40
  %141 = call i32 @atoi(i8* noundef nonnull %21) #12
  store i32 %141, i32* @global_align, align 4
  br label %142

142:                                              ; preds = %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %79, %77, %75, %73, %71, %68, %66, %65, %53, %45, %43, %41, %40
  br label %143

143:                                              ; preds = %142, %37, %17
  br label %3, !llvm.loop !12

144:                                              ; preds = %3
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #0

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #6

; Function Attrs: nofree noinline nounwind uwtable
define internal void @strtoupper(i8* nocapture noundef %0) #7 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi i8* [ %0, %1 ], [ %7, %8 ]
  %3 = load i8, i8* %.0, align 1
  %4 = sext i8 %3 to i32
  %5 = call i32 @toupper(i32 noundef %4) #12
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %.0, align 1
  %7 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %10, label %2, !llvm.loop !13

10:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #6

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @getflag(i8* nocapture noundef readonly %0) #8 {
  %2 = load i8, i8* %0, align 1
  %3 = sext i8 %2 to i32
  %4 = call i32 @toupper(i32 noundef %3) #12
  %5 = icmp eq i32 %4, 84
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %6
  %.0 = phi i32 [ 1, %6 ], [ 0, %7 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #5

declare dso_local void @ErrorExit() #0

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #6

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #0

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #9

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

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
