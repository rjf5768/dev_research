; ModuleID = './machine.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.INSTR_INFO = type { i8*, i32, i32 }
%struct.DEVICE_ENTRY = type { i32, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%_wyvern_thunk_type.8 = type { i32* (%_wyvern_thunk_type.8*)*, i32*, i1 }
%_wyvern_thunk_type.6 = type { i32* (%_wyvern_thunk_type.6*)*, i32*, i1 }

@MEMORY = dso_local global i8* null, align 8
@INTERVAL_TIMER = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"LDA\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LDX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LDL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"STL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"COMP\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"TIX\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"JEQ\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"JGT\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"JLT\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"JSUB\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"RSUB\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LDCH\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"STCH\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ADDF\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"SUBF\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"MULF\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"DIVF\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"LDB\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"LDS\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"LDF\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"LDT\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"STB\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"STS\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"STF\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"STT\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"COMPF\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"SUBR\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"MULR\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"DIVR\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"COMPR\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"SHIFTL\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"SHIFTR\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"RMO\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"SVC\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"TIXR\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"FIX\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"LPS\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"STI\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"WD\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"STSW\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"SSK\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"SIO\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"HIO\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"TIO\00", align 1
@INSTR = dso_local global [64 x %struct.INSTR_INFO] [%struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 3, i32 22 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3, i32 1 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 3, i32 2 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 3 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 4 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 5 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 6 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 7 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 8 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 9 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 3, i32 10 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 11 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 3, i32 12 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 13 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 3, i32 14 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 15 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 3, i32 16 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 3, i32 17 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 18 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 3, i32 19 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 3, i32 20 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 3, i32 21 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 3, i32 23 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 3, i32 24 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 3, i32 25 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 3, i32 26 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 3, i32 27 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i32 3, i32 28 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 29 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 2, i32 30 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 2, i32 31 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 2, i32 32 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 2, i32 33 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 2, i32 34 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 2, i32 35 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 2, i32 36 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 2, i32 37 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 2, i32 38 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 2, i32 39 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 3, i32 40 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 3, i32 41 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i32 3, i32 42 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 3, i32 43 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 3, i32 44 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }], align 16
@REG_NAMES = dso_local global [10 x [3 x i8]] [[3 x i8] c"A\00\00", [3 x i8] c"X\00\00", [3 x i8] c"L\00\00", [3 x i8] c"B\00\00", [3 x i8] c"S\00\00", [3 x i8] c"T\00\00", [3 x i8] c"F\00\00", [3 x i8] c"7\00\00", [3 x i8] c"PC\00", [3 x i8] c"SW\00"], align 16
@PRINT_INSTR = dso_local global i32 0, align 4
@DEVICE = dso_local global [256 x %struct.DEVICE_ENTRY] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"%S%S%S\00", align 1
@REGISTER = dso_local global [10 x i32] zeroinitializer, align 16
@.str.61 = private unnamed_addr constant [27 x i8] c"SET_CC called improperly.\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SYM_TAB = external dso_local global %struct.SYMBOL_TABLE_ENTRY*, align 8
@.str.64 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"%s%s [base 10]%s\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"%s%s [base 16]%s\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Address out of range.\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"======>\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"illegal register\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"illegal argument\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"illegal register,\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c",X\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"%d %s \00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@RETURN_STATUS = external dso_local global i32, align 4
@str = private unnamed_addr constant [26 x i8] c"SET_CC called improperly.\00", align 1
@str.1 = private unnamed_addr constant [17 x i8] c"illegal register\00", align 1
@str.2 = private unnamed_addr constant [17 x i8] c"illegal argument\00", align 1
@str.3 = private unnamed_addr constant [17 x i8] c"illegal register\00", align 1
@str.4 = private unnamed_addr constant [22 x i8] c"Address out of range.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CALL_FUNCTION1(i32 noundef %0, i32 noundef %1) #0 {
  switch i32 %0, label %48 [
    i32 22, label %3
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
    i32 12, label %15
    i32 13, label %16
    i32 14, label %17
    i32 15, label %18
    i32 16, label %19
    i32 17, label %20
    i32 18, label %21
    i32 19, label %22
    i32 20, label %23
    i32 21, label %24
    i32 0, label %25
    i32 23, label %26
    i32 24, label %27
    i32 25, label %28
    i32 26, label %29
    i32 27, label %30
    i32 28, label %31
    i32 29, label %32
    i32 30, label %33
    i32 31, label %34
    i32 32, label %35
    i32 33, label %36
    i32 34, label %37
    i32 35, label %38
    i32 36, label %39
    i32 37, label %40
    i32 38, label %41
    i32 39, label %42
    i32 40, label %43
    i32 41, label %44
    i32 42, label %45
    i32 43, label %46
    i32 44, label %47
  ]

3:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDA_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

4:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDX_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

5:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDL_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

6:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STA_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

7:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STX_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

8:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STL_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

9:                                                ; preds = %2
  call void (i32, ...) bitcast (void (...)* @ADD_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

10:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @SUB_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

11:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @MUL_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

12:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @DIV_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

13:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @COMP_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

14:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @TIX_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

15:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @JEQ_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

16:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @JGT_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

17:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @JLT_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

18:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @J_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

19:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @AND_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

20:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @OR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

21:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @JSUB_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

22:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @RSUB_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

23:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDCH_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

24:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STCH_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

25:                                               ; preds = %2
  br label %48

26:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDB_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

27:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDS_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

28:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @LDT_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

29:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STB_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

30:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STS_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

31:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STT_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

32:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @ADDR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

33:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @SUBR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

34:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @MULR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

35:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @DIVR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

36:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @COMPR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

37:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @SHIFTL_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

38:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @SHIFTR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

39:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @RMO_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

40:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @SVC_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

41:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @CLEAR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

42:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @TIXR_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

43:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STI_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

44:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @RD_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

45:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @WD_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

46:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @TD_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

47:                                               ; preds = %2
  call void (i32, ...) bitcast (void (...)* @STSW_P to void (i32, ...)*)(i32 noundef %1) #9
  br label %48

48:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  ret void
}

declare dso_local void @LDA_P(...) #1

declare dso_local void @LDX_P(...) #1

declare dso_local void @LDL_P(...) #1

declare dso_local void @STA_P(...) #1

declare dso_local void @STX_P(...) #1

declare dso_local void @STL_P(...) #1

declare dso_local void @ADD_P(...) #1

declare dso_local void @SUB_P(...) #1

declare dso_local void @MUL_P(...) #1

declare dso_local void @DIV_P(...) #1

declare dso_local void @COMP_P(...) #1

declare dso_local void @TIX_P(...) #1

declare dso_local void @JEQ_P(...) #1

declare dso_local void @JGT_P(...) #1

declare dso_local void @JLT_P(...) #1

declare dso_local void @J_P(...) #1

declare dso_local void @AND_P(...) #1

declare dso_local void @OR_P(...) #1

declare dso_local void @JSUB_P(...) #1

declare dso_local void @RSUB_P(...) #1

declare dso_local void @LDCH_P(...) #1

declare dso_local void @STCH_P(...) #1

declare dso_local void @LDB_P(...) #1

declare dso_local void @LDS_P(...) #1

declare dso_local void @LDT_P(...) #1

declare dso_local void @STB_P(...) #1

declare dso_local void @STS_P(...) #1

declare dso_local void @STT_P(...) #1

declare dso_local void @ADDR_P(...) #1

declare dso_local void @SUBR_P(...) #1

declare dso_local void @MULR_P(...) #1

declare dso_local void @DIVR_P(...) #1

declare dso_local void @COMPR_P(...) #1

declare dso_local void @SHIFTL_P(...) #1

declare dso_local void @SHIFTR_P(...) #1

declare dso_local void @RMO_P(...) #1

declare dso_local void @SVC_P(...) #1

declare dso_local void @CLEAR_P(...) #1

declare dso_local void @TIXR_P(...) #1

declare dso_local void @STI_P(...) #1

declare dso_local void @RD_P(...) #1

declare dso_local void @WD_P(...) #1

declare dso_local void @TD_P(...) #1

declare dso_local void @STSW_P(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @RESET_DEVICES() #0 {
  store i32 0, i32* getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 0, i32 0), align 16
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 128, i32 0), align 16
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 128, i32 1), align 8
  br label %1

1:                                                ; preds = %23, %0
  %.0 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %2 = icmp ult i32 %.0, 256
  br i1 %2, label %3, label %25

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %4, i32 0
  %6 = load i32, i32* %5, align 16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %9, i32 0
  store i32 0, i32* %10, align 16
  br label %11

11:                                               ; preds = %8, %3
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %12, i32 1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %.not = icmp eq %struct._IO_FILE* %14, null
  br i1 %.not, label %22, label %15

15:                                               ; preds = %11
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %16, i32 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i32 @fclose(%struct._IO_FILE* noundef %18) #9
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %20, i32 1
  store %struct._IO_FILE* null, %struct._IO_FILE** %21, align 8
  br label %22

22:                                               ; preds = %15, %11
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

25:                                               ; preds = %1
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_REG_NAME(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %4, i64 0
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %5, i8* noundef %2) #9
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @INSTR_CODE(i32 noundef %0) #0 {
  %2 = load i8*, i8** @MEMORY, align 8
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i8, i8* %2, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %6) #9
  %8 = sdiv i32 %7, 4
  ret i32 %8
}

declare dso_local i32 @INT(...) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @BYTES_TO_BITS(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) #2 {
  br label %4

4:                                                ; preds = %12, %3
  %.01 = phi i32 [ 1, %3 ], [ %14, %12 ]
  %.0 = phi i32 [ %0, %3 ], [ %13, %12 ]
  %5 = shl nsw i32 %1, 3
  %.not = icmp sgt i32 %.01, %5
  br i1 %.not, label %15, label %6

6:                                                ; preds = %4
  %7 = srem i32 %.0, 2
  %8 = shl nsw i32 %1, 3
  %9 = sub nsw i32 %8, %.01
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %2, i64 %10
  store i32 %7, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = sdiv i32 %.0, 2
  %14 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !6

15:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @BITS_TO_BYTE(i32* nocapture noundef readonly %0, i32 noundef %1) #3 {
  br label %3

3:                                                ; preds = %6, %2
  %.01 = phi i32 [ 0, %2 ], [ %12, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = shl nsw i32 %.0, 1
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !7

13:                                               ; preds = %3
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SET_CC(i32 noundef %0) #0 {
  %2 = alloca [24 x i32], align 16
  %3 = icmp sgt i32 %0, -1
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = icmp slt i32 %0, 4
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %8 = getelementptr inbounds [24 x i32], [24 x i32]* %2, i64 0, i64 0
  call void @BYTES_TO_BITS(i32 noundef %7, i32 noundef 3, i32* noundef nonnull %8)
  %9 = sdiv i32 %0, 2
  %10 = getelementptr inbounds [24 x i32], [24 x i32]* %2, i64 0, i64 6
  store i32 %9, i32* %10, align 8
  %.neg = mul i32 %9, -2
  %11 = add i32 %.neg, %0
  %12 = getelementptr inbounds [24 x i32], [24 x i32]* %2, i64 0, i64 7
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds [24 x i32], [24 x i32]* %2, i64 0, i64 0
  %14 = call i32 @BITS_TO_BYTE(i32* noundef nonnull %13, i32 noundef 24)
  store i32 %14, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  br label %16

15:                                               ; preds = %4, %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @CC() #4 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.8, align 8
  %1 = alloca [24 x i32], align 16
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.8*)* @_wyvern_slice_memo_CC_296336703, i32* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_BYTES_TO_BITS_2652651801(i32 noundef %2, i32 noundef 3, %_wyvern_thunk_type.8* noundef nonnull %_wyvern_thunk_alloca)
  %3 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 6
  %4 = load i32, i32* %3, align 8
  %5 = shl nsw i32 %4, 1
  %6 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 7
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %5, %7
  ret i32 %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @SUPERVISOR_MODE() #4 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.6, align 8
  %1 = alloca [24 x i32], align 16
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.6*)* @_wyvern_slice_memo_SUPERVISOR_MODE_489596376, i32* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_BYTES_TO_BITS_2927368251(i32 noundef %2, i32 noundef 3, %_wyvern_thunk_type.6* noundef nonnull %_wyvern_thunk_alloca)
  %3 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 0
  %4 = load i32, i32* %3, align 16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i8 @DIGIT_TO_CHAR(i32 noundef %0) #5 {
  %2 = icmp slt i32 %0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  %5 = add i8 %4, 48
  br label %9

6:                                                ; preds = %1
  %7 = trunc i32 %0 to i8
  %8 = add i8 %7, 55
  br label %9

9:                                                ; preds = %6, %3
  %.0 = phi i8 [ %5, %3 ], [ %8, %6 ]
  ret i8 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @OPEN_DEVICE(i32 noundef %0) #0 {
  %2 = alloca [6 x i8], align 1
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %3, i32 0
  store i32 1, i32* %4, align 16
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %5, i32 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  store i8 100, i8* %10, align 1
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 1
  store i8 101, i8* %11, align 1
  %12 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 2
  store i8 118, i8* %12, align 1
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %0, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %16, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 0, i32 1), align 8
  br label %41

17:                                               ; preds = %9
  %18 = icmp eq i32 %0, 128
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %20, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 128, i32 1), align 8
  br label %40

21:                                               ; preds = %17
  %22 = sdiv i32 %0, 16
  %23 = call signext i8 @DIGIT_TO_CHAR(i32 noundef %22)
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = srem i32 %0, 16
  %26 = call signext i8 @DIGIT_TO_CHAR(i32 noundef %25)
  %27 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 4
  store i8 %26, i8* %27, align 1
  %28 = icmp slt i32 %0, 128
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %31 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #9
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %32, i32 1
  store %struct._IO_FILE* %31, %struct._IO_FILE** %33, align 8
  br label %39

34:                                               ; preds = %21
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %36 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #9
  %37 = sext i32 %0 to i64
  %38 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %37, i32 1
  store %struct._IO_FILE* %36, %struct._IO_FILE** %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %19
  br label %41

41:                                               ; preds = %40, %15
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_ADDRESS(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca [9 x i8], align 1
  br label %5

5:                                                ; preds = %37, %3
  %.01.in = phi %struct.SYMBOL_TABLE_ENTRY** [ @SYM_TAB, %3 ], [ %38, %37 ]
  %.01 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %.01.in, align 8
  %.not = icmp eq %struct.SYMBOL_TABLE_ENTRY* %.01, null
  br i1 %.not, label %39, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %21, %10
  %.0 = phi i32 [ 7, %10 ], [ %22, %21 ]
  %12 = icmp sgt i32 %.0, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 32
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i1 [ false, %11 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.0, -1
  br label %11, !llvm.loop !8

23:                                               ; preds = %18
  %24 = add nsw i32 %.0, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = add nsw i32 %.0, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 0, i64 %29
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 0, i64 0
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %31, i8* noundef %2) #9
  %33 = add nsw i32 %.0, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 0, i64 %34
  store i8 %27, i8* %35, align 1
  br label %56

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %.01, i64 0, i32 5
  br label %5, !llvm.loop !9

39:                                               ; preds = %5
  %40 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i64 0, i64 0), align 1
  %41 = icmp eq i8 %40, 68
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %1, i32 noundef 10, i32 noundef 8, i8* noundef nonnull %43) #9
  %44 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %44, i8* noundef %2) #9
  br label %56

46:                                               ; preds = %39
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %1, i32 noundef 16, i32 noundef 6, i8* noundef nonnull %47) #9
  %48 = load i32, i32* @PRINT_INSTR, align 4
  %.not3 = icmp eq i32 %48, 0
  br i1 %.not3, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %50, i8* noundef %2) #9
  br label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %54 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %53, i8* noundef %2) #9
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %42, %23
  ret void
}

declare dso_local void @NUM_TO_STR(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_CONSTANT(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca [9 x i8], align 1
  %5 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i64 0, i64 0), align 1
  %6 = icmp eq i8 %5, 68
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %17

10:                                               ; preds = %7
  %11 = sitofp i32 %1 to double
  %12 = call double @log(double noundef %11) #9
  %13 = call double @log(double noundef 1.000000e+01) #9
  %14 = fdiv double %12, 0x40026BB1BBB55516
  %15 = fptosi double %14 to i32
  %16 = add nsw i32 %15, 1
  br label %17

17:                                               ; preds = %10, %9
  %.0 = phi i32 [ 1, %9 ], [ %16, %10 ]
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %1, i32 noundef 10, i32 noundef %.0, i8* noundef nonnull %18) #9
  %19 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %19, i8* noundef %2) #9
  br label %41

21:                                               ; preds = %3
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %31

24:                                               ; preds = %21
  %25 = sitofp i32 %1 to double
  %26 = call double @log(double noundef %25) #9
  %27 = call double @log(double noundef 1.600000e+01) #9
  %28 = fdiv double %26, 0x40062E42FEFA39EF
  %29 = fptosi double %28 to i32
  %30 = add nsw i32 %29, 1
  br label %31

31:                                               ; preds = %24, %23
  %.1 = phi i32 [ 1, %23 ], [ %30, %24 ]
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %1, i32 noundef 16, i32 noundef %.1, i8* noundef nonnull %32) #9
  %33 = load i32, i32* @PRINT_INSTR, align 4
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %35, i8* noundef %2) #9
  br label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %0, i8* noundef nonnull %38, i8* noundef %2) #9
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %17
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_INSTRUCTION(i32 noundef %0, i32 noundef %1, i32* nocapture noundef %2) #0 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1, i32* @PRINT_INSTR, align 4
  %7 = call i32 @INSTR_CODE(i32 noundef %0)
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %0, 1048575
  br i1 %10, label %11, label %14

11:                                               ; preds = %9, %3
  store i32 0, i32* %2, align 4
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %13, label %12

12:                                               ; preds = %11
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.4, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %11
  br label %70

14:                                               ; preds = %9
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %15, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %20, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %14
  %24 = load i8*, i8** @MEMORY, align 8
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %28) #9
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  call void @BYTES_TO_BITS(i32 noundef %29, i32 noundef 1, i32* noundef nonnull %30)
  %31 = load i8*, i8** @MEMORY, align 8
  %32 = add nsw i32 %0, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %36) #9
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 8
  call void @BYTES_TO_BITS(i32 noundef %37, i32 noundef 1, i32* noundef nonnull %38)
  %39 = load i8*, i8** @MEMORY, align 8
  %40 = add nsw i32 %0, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %44) #9
  %46 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 16
  call void @BYTES_TO_BITS(i32 noundef %45, i32 noundef 1, i32* noundef nonnull %46)
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 11
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %67

50:                                               ; preds = %23
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 6
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54, %50
  store i32 4, i32* %2, align 4
  %59 = load i8*, i8** @MEMORY, align 8
  %60 = add nsw i32 %0, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %64) #9
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 24
  call void @BYTES_TO_BITS(i32 noundef %65, i32 noundef 1, i32* noundef nonnull %66)
  br label %68

67:                                               ; preds = %54, %23
  store i32 3, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %68, %19
  br label %70

70:                                               ; preds = %69, %13
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %210, label %71

71:                                               ; preds = %70
  call void @PRINT_ADDRESS(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i32 noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0))
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  %putchar9 = call i32 @putchar(i32 43)
  br label %76

75:                                               ; preds = %71
  %putchar = call i32 @putchar(i32 32)
  br label %76

76:                                               ; preds = %75, %74
  %77 = sext i32 %7 to i64
  %78 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %77, i32 0
  %79 = load i8*, i8** %78, align 16
  %80 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef %79) #9
  %81 = load i32, i32* %2, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %210

84:                                               ; preds = %76
  %85 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  store i32 %0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %146

88:                                               ; preds = %84
  call void @FORMAT2(i32* noundef nonnull %5, i32* noundef nonnull %6) #9
  store i32 %85, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %89 = icmp eq i32 %7, 45
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %7, 46
  br i1 %91, label %92, label %101

92:                                               ; preds = %90, %88
  %93 = load i32, i32* %5, align 4
  %94 = icmp sgt i32 %93, 9
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.3, i64 0, i64 0))
  br label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %98, i64 0
  %puts7 = call i32 @puts(i8* nonnull %99)
  br label %100

100:                                              ; preds = %96, %95
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %210

101:                                              ; preds = %90
  %102 = icmp eq i32 %7, 44
  br i1 %102, label %103, label %111

103:                                              ; preds = %101
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.2, i64 0, i64 0))
  br label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i32 noundef %108) #9
  br label %110

110:                                              ; preds = %107, %106
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %210

111:                                              ; preds = %101
  %112 = icmp eq i32 %7, 41
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = icmp eq i32 %7, 42
  br i1 %114, label %115, label %127

115:                                              ; preds = %113, %111
  %116 = load i32, i32* %5, align 4
  %117 = icmp sgt i32 %116, 9
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %125

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %122, i64 0
  %124 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef nonnull %123) #9
  br label %125

125:                                              ; preds = %120, %118
  %126 = load i32, i32* %6, align 4
  call void @PRINT_CONSTANT(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0), i32 noundef %126, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %210

127:                                              ; preds = %113
  %128 = load i32, i32* %5, align 4
  %129 = icmp sgt i32 %128, 9
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %137

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %134, i64 0
  %136 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef nonnull %135) #9
  br label %137

137:                                              ; preds = %132, %130
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %138, 9
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.1, i64 0, i64 0))
  br label %145

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %143, i64 0
  %puts = call i32 @puts(i8* nonnull %144)
  br label %145

145:                                              ; preds = %141, %140
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %210

146:                                              ; preds = %84
  %147 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 6
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 7
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  %putchar4 = call i32 @putchar(i32 64)
  br label %166

155:                                              ; preds = %150, %146
  %156 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 6
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 7
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  %putchar3 = call i32 @putchar(i32 35)
  br label %165

164:                                              ; preds = %159, %155
  %putchar1 = call i32 @putchar(i32 32)
  br label %165

165:                                              ; preds = %164, %163
  br label %166

166:                                              ; preds = %165, %154
  %167 = load i32, i32* %2, align 4
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %195

169:                                              ; preds = %166
  %170 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 12
  %171 = call i32 @BITS_TO_BYTE(i32* noundef nonnull %170, i32 noundef 12)
  %172 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 9
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 3), align 4
  %177 = add nsw i32 %171, %176
  br label %178

178:                                              ; preds = %175, %169
  %.0 = phi i32 [ %177, %175 ], [ %171, %169 ]
  %179 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 10
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = icmp sgt i32 %.0, 2047
  br i1 %183, label %184, label %189

184:                                              ; preds = %182
  %185 = add nsw i32 %.0, -4096
  %186 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %187 = add nsw i32 %185, %186
  %188 = add nsw i32 %187, 3
  br label %193

189:                                              ; preds = %182
  %190 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %191 = add nsw i32 %190, 3
  %192 = add nsw i32 %.0, %191
  br label %193

193:                                              ; preds = %189, %184
  %.1 = phi i32 [ %188, %184 ], [ %192, %189 ]
  br label %194

194:                                              ; preds = %193, %178
  %.2 = phi i32 [ %.1, %193 ], [ %.0, %178 ]
  br label %198

195:                                              ; preds = %166
  %196 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 12
  %197 = call i32 @BITS_TO_BYTE(i32* noundef nonnull %196, i32 noundef 20)
  br label %198

198:                                              ; preds = %195, %194
  %.3 = phi i32 [ %.2, %194 ], [ %197, %195 ]
  %199 = icmp slt i32 %.3, 1048576
  br i1 %199, label %200, label %201

200:                                              ; preds = %198
  call void @PRINT_ADDRESS(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0), i32 noundef %.3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0))
  br label %203

201:                                              ; preds = %198
  %202 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0)) #9
  br label %203

203:                                              ; preds = %201, %200
  %204 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 8
  %205 = load i32, i32* %204, align 16
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #9
  br label %209

209:                                              ; preds = %207, %203
  store i32 %85, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %putchar2 = call i32 @putchar(i32 10)
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %210

210:                                              ; preds = %209, %145, %125, %110, %100, %83, %70
  ret void
}

declare dso_local void @FORMAT2(i32* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @EXEC(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %60, %2
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %5 = call i32 @INSTR_CODE(i32 noundef %4)
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %6, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %12 = call i32 @INSTR_CODE(i32 noundef %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %13, i32 0
  %15 = load i8*, i8** %14, align 16
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i32 noundef %11, i8* noundef %15) #9
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %18 = call i32 @INSTR_CODE(i32 noundef %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %19, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = call i32 @FORMAT3_4(i32 noundef 1, i32 noundef 3) #9
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), i32 noundef %24) #9
  br label %34

26:                                               ; preds = %10
  %27 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %28 = call i32 @INSTR_CODE(i32 noundef %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %29, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  br label %34

34:                                               ; preds = %26, %23
  %putchar = call i32 @putchar(i32 10)
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %37 = call i32 @INSTR_CODE(i32 noundef %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %38, i32 2
  %40 = load i32, i32* %39, align 4
  call void @CALL_FUNCTION1(i32 noundef %40, i32 noundef %1)
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %43 = icmp eq i32 %42, 16777215
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* @RETURN_STATUS, align 4
  br label %55

45:                                               ; preds = %41
  %46 = load i32, i32* @INTERVAL_TIMER, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @INTERVAL_TIMER, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @INTERVAL_TIMER, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 3, i32 noundef 0) #9
  br label %53

53:                                               ; preds = %52, %48
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %57, label %60

57:                                               ; preds = %56
  %58 = load i32, i32* @RETURN_STATUS, align 4
  %59 = icmp eq i32 %58, 0
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i1 [ false, %56 ], [ %59, %57 ]
  br i1 %61, label %3, label %62, !llvm.loop !10

62:                                               ; preds = %60
  ret void
}

declare dso_local i32 @FORMAT3_4(i32 noundef, i32 noundef) #1

declare dso_local void @SIGNAL_INTERUPT(...) #1

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_SUPERVISOR_MODE_489596376(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [24 x i32], align 16
  %1 = getelementptr inbounds [24 x i32], [24 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @_wyvern_calleeclone_BYTES_TO_BITS_2927368251(i32 noundef %0, i32 noundef %1, %_wyvern_thunk_type.6* noundef %_wyvern_thunkptr) #2 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi i32 [ 1, %2 ], [ %13, %11 ]
  %.0 = phi i32 [ %0, %2 ], [ %12, %11 ]
  %4 = shl nsw i32 %1, 3
  %.not = icmp sgt i32 %.01, %4
  br i1 %.not, label %14, label %5

5:                                                ; preds = %3
  %6 = srem i32 %.0, 2
  %7 = shl nsw i32 %1, 3
  %8 = sub nsw i32 %7, %.01
  %9 = sext i32 %8 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.6*)*, i32* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #9
  %10 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %9
  store i32 %6, i32* %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = sdiv i32 %.0, 2
  %13 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

14:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_CC_296336703(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [24 x i32], align 16
  %1 = getelementptr inbounds [24 x i32], [24 x i32]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %1, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @_wyvern_calleeclone_BYTES_TO_BITS_2652651801(i32 noundef %0, i32 noundef %1, %_wyvern_thunk_type.8* noundef %_wyvern_thunkptr) #2 {
  br label %3

3:                                                ; preds = %11, %2
  %.01 = phi i32 [ 1, %2 ], [ %13, %11 ]
  %.0 = phi i32 [ %0, %2 ], [ %12, %11 ]
  %4 = shl nsw i32 %1, 3
  %.not = icmp sgt i32 %.01, %4
  br i1 %.not, label %14, label %5

5:                                                ; preds = %3
  %6 = srem i32 %.0, 2
  %7 = shl nsw i32 %1, 3
  %8 = sub nsw i32 %7, %.01
  %9 = sext i32 %8 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.8*)*, i32* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #9
  %10 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %9
  store i32 %6, i32* %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = sdiv i32 %.0, 2
  %13 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

14:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
