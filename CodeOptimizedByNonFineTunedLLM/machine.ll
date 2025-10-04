; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/machine.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @CALL_FUNCTION1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %95 [
    i32 22, label %6
    i32 1, label %8
    i32 2, label %10
    i32 3, label %12
    i32 4, label %14
    i32 5, label %16
    i32 6, label %18
    i32 7, label %20
    i32 8, label %22
    i32 9, label %24
    i32 10, label %26
    i32 11, label %28
    i32 12, label %30
    i32 13, label %32
    i32 14, label %34
    i32 15, label %36
    i32 16, label %38
    i32 17, label %40
    i32 18, label %42
    i32 19, label %44
    i32 20, label %46
    i32 21, label %48
    i32 0, label %50
    i32 23, label %51
    i32 24, label %53
    i32 25, label %55
    i32 26, label %57
    i32 27, label %59
    i32 28, label %61
    i32 29, label %63
    i32 30, label %65
    i32 31, label %67
    i32 32, label %69
    i32 33, label %71
    i32 34, label %73
    i32 35, label %75
    i32 36, label %77
    i32 37, label %79
    i32 38, label %81
    i32 39, label %83
    i32 40, label %85
    i32 41, label %87
    i32 42, label %89
    i32 43, label %91
    i32 44, label %93
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDA_P to void (i32, ...)*)(i32 noundef %7)
  br label %95

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDX_P to void (i32, ...)*)(i32 noundef %9)
  br label %95

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDL_P to void (i32, ...)*)(i32 noundef %11)
  br label %95

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STA_P to void (i32, ...)*)(i32 noundef %13)
  br label %95

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STX_P to void (i32, ...)*)(i32 noundef %15)
  br label %95

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STL_P to void (i32, ...)*)(i32 noundef %17)
  br label %95

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @ADD_P to void (i32, ...)*)(i32 noundef %19)
  br label %95

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @SUB_P to void (i32, ...)*)(i32 noundef %21)
  br label %95

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @MUL_P to void (i32, ...)*)(i32 noundef %23)
  br label %95

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @DIV_P to void (i32, ...)*)(i32 noundef %25)
  br label %95

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @COMP_P to void (i32, ...)*)(i32 noundef %27)
  br label %95

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @TIX_P to void (i32, ...)*)(i32 noundef %29)
  br label %95

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @JEQ_P to void (i32, ...)*)(i32 noundef %31)
  br label %95

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @JGT_P to void (i32, ...)*)(i32 noundef %33)
  br label %95

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @JLT_P to void (i32, ...)*)(i32 noundef %35)
  br label %95

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @J_P to void (i32, ...)*)(i32 noundef %37)
  br label %95

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @AND_P to void (i32, ...)*)(i32 noundef %39)
  br label %95

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @OR_P to void (i32, ...)*)(i32 noundef %41)
  br label %95

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @JSUB_P to void (i32, ...)*)(i32 noundef %43)
  br label %95

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @RSUB_P to void (i32, ...)*)(i32 noundef %45)
  br label %95

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDCH_P to void (i32, ...)*)(i32 noundef %47)
  br label %95

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STCH_P to void (i32, ...)*)(i32 noundef %49)
  br label %95

50:                                               ; preds = %2
  br label %95

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDB_P to void (i32, ...)*)(i32 noundef %52)
  br label %95

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDS_P to void (i32, ...)*)(i32 noundef %54)
  br label %95

55:                                               ; preds = %2
  %56 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @LDT_P to void (i32, ...)*)(i32 noundef %56)
  br label %95

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STB_P to void (i32, ...)*)(i32 noundef %58)
  br label %95

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STS_P to void (i32, ...)*)(i32 noundef %60)
  br label %95

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STT_P to void (i32, ...)*)(i32 noundef %62)
  br label %95

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @ADDR_P to void (i32, ...)*)(i32 noundef %64)
  br label %95

65:                                               ; preds = %2
  %66 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @SUBR_P to void (i32, ...)*)(i32 noundef %66)
  br label %95

67:                                               ; preds = %2
  %68 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @MULR_P to void (i32, ...)*)(i32 noundef %68)
  br label %95

69:                                               ; preds = %2
  %70 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @DIVR_P to void (i32, ...)*)(i32 noundef %70)
  br label %95

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @COMPR_P to void (i32, ...)*)(i32 noundef %72)
  br label %95

73:                                               ; preds = %2
  %74 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @SHIFTL_P to void (i32, ...)*)(i32 noundef %74)
  br label %95

75:                                               ; preds = %2
  %76 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @SHIFTR_P to void (i32, ...)*)(i32 noundef %76)
  br label %95

77:                                               ; preds = %2
  %78 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @RMO_P to void (i32, ...)*)(i32 noundef %78)
  br label %95

79:                                               ; preds = %2
  %80 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @SVC_P to void (i32, ...)*)(i32 noundef %80)
  br label %95

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @CLEAR_P to void (i32, ...)*)(i32 noundef %82)
  br label %95

83:                                               ; preds = %2
  %84 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @TIXR_P to void (i32, ...)*)(i32 noundef %84)
  br label %95

85:                                               ; preds = %2
  %86 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STI_P to void (i32, ...)*)(i32 noundef %86)
  br label %95

87:                                               ; preds = %2
  %88 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @RD_P to void (i32, ...)*)(i32 noundef %88)
  br label %95

89:                                               ; preds = %2
  %90 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @WD_P to void (i32, ...)*)(i32 noundef %90)
  br label %95

91:                                               ; preds = %2
  %92 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @TD_P to void (i32, ...)*)(i32 noundef %92)
  br label %95

93:                                               ; preds = %2
  %94 = load i32, i32* %4, align 4
  call void (i32, ...) bitcast (void (...)* @STSW_P to void (i32, ...)*)(i32 noundef %94)
  br label %95

95:                                               ; preds = %2, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
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
  %1 = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 0, i32 0), align 16
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 128, i32 0), align 16
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 128, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %36, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %39

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %15, i32 0, i32 0
  store i32 0, i32* %16, align 16
  br label %17

17:                                               ; preds = %12, %5
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %20, i32 0, i32 1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = icmp ne %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %27, i32 0, i32 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %30 = call i32 @fclose(%struct._IO_FILE* noundef %29)
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %33, i32 0, i32 1
  store %struct._IO_FILE* null, %struct._IO_FILE** %34, align 8
  br label %35

35:                                               ; preds = %24, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %2, !llvm.loop !4

39:                                               ; preds = %2
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_REG_NAME(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %9
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i8* noundef %7, i8* noundef %11, i8* noundef %12)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @INSTR_CODE(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8*, i8** @MEMORY, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* %3, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %8)
  %10 = sdiv i32 %9, 4
  ret i32 %10
}

declare dso_local i32 @INT(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BYTES_TO_BITS(i32 noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 8, %10
  %12 = icmp sle i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 2
  %17 = mul nsw i32 %16, 2
  %18 = sub nsw i32 %14, %17
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 8, %20
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8, !llvm.loop !6

31:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @BITS_TO_BYTE(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %13, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7, !llvm.loop !7

23:                                               ; preds = %7
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SET_CC(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [24 x i32], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 3
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %11 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  call void @BYTES_TO_BITS(i32 noundef %10, i32 noundef 3, i32* noundef %11)
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %12, 2
  %14 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 6
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 6
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = sub nsw i32 %15, %18
  %20 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 7
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [24 x i32], [24 x i32]* %3, i64 0, i64 0
  %22 = call i32 @BITS_TO_BYTE(i32* noundef %21, i32 noundef 24)
  store i32 %22, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  br label %25

23:                                               ; preds = %6, %1
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CC() #0 {
  %1 = alloca [24 x i32], align 16
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %3 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 0
  call void @BYTES_TO_BITS(i32 noundef %2, i32 noundef 3, i32* noundef %3)
  %4 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 6
  %5 = load i32, i32* %4, align 8
  %6 = mul nsw i32 %5, 2
  %7 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 7
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %6, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SUPERVISOR_MODE() #0 {
  %1 = alloca [24 x i32], align 16
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %3 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 0
  call void @BYTES_TO_BITS(i32 noundef %2, i32 noundef 3, i32* noundef %3)
  %4 = getelementptr inbounds [24 x i32], [24 x i32]* %1, i64 0, i64 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @DIGIT_TO_CHAR(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 9, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 48
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %3, align 1
  br label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 10
  %13 = add nsw i32 %12, 65
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  br label %15

15:                                               ; preds = %10, %6
  %16 = load i8, i8* %3, align 1
  ret i8 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @OPEN_DEVICE(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %6, i32 0, i32 0
  store i32 1, i32* %7, align 16
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %10, i32 0, i32 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  store i8 100, i8* %15, align 1
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 1
  store i8 101, i8* %16, align 1
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 2
  store i8 118, i8* %17, align 1
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 5
  store i8 0, i8* %18, align 1
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %22, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 0, i32 1), align 8
  br label %58

23:                                               ; preds = %14
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %27, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 128, i32 1), align 8
  br label %57

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 16
  %31 = call signext i8 @DIGIT_TO_CHAR(i32 noundef %30)
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 3
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sdiv i32 %34, 16
  %36 = mul nsw i32 %35, 16
  %37 = sub nsw i32 %33, %36
  %38 = call signext i8 @DIGIT_TO_CHAR(i32 noundef %37)
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 4
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %2, align 4
  %41 = icmp slt i32 %40, 128
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %44 = call noalias %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0))
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %47, i32 0, i32 1
  store %struct._IO_FILE* %44, %struct._IO_FILE** %48, align 8
  br label %56

49:                                               ; preds = %28
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %51 = call noalias %struct._IO_FILE* @fopen(i8* noundef %50, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0))
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %54, i32 0, i32 1
  store %struct._IO_FILE* %51, %struct._IO_FILE** %55, align 8
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57, %21
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_ADDRESS(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** @SYM_TAB, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %11, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  br label %12

12:                                               ; preds = %71, %3
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %14 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %13, null
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %15
  store i32 7, i32* %9, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %27 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br label %34

34:                                               ; preds = %25, %22
  %35 = phi i1 [ false, %22 ], [ %33, %25 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %22, !llvm.loop !8

40:                                               ; preds = %34
  %41 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %42 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %42, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %10, align 1
  %48 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %49 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %49, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %56 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %55, i32 0, i32 0
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %56, i64 0, i64 0
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %54, i8* noundef %57, i8* noundef %58)
  %60 = load i8, i8* %10, align 1
  %61 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %62 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [9 x i8], [9 x i8]* %62, i64 0, i64 %65
  store i8 %60, i8* %66, align 1
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  br label %99

67:                                               ; preds = %15
  %68 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  %69 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %68, i32 0, i32 5
  %70 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %69, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %70, %struct.SYMBOL_TABLE_ENTRY** %8, align 8
  br label %71

71:                                               ; preds = %67
  br label %12, !llvm.loop !9

72:                                               ; preds = %12
  %73 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i64 0, i64 0), align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 68
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %77, i32 noundef 10, i32 noundef 8, i8* noundef %78)
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef %79, i8* noundef %80, i8* noundef %81)
  br label %99

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  %85 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %84, i32 noundef 16, i32 noundef 6, i8* noundef %85)
  %86 = load i32, i32* @PRINT_INSTR, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %89, i8* noundef %90, i8* noundef %91)
  br label %98

93:                                               ; preds = %83
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %94, i8* noundef %95, i8* noundef %96)
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %40, %98, %76
  ret void
}

declare dso_local void @NUM_TO_STR(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_CONSTANT(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i64 0, i64 0), align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 68
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %8, align 4
  br label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to double
  %19 = fmul double 1.000000e+00, %18
  %20 = call double @log(double noundef %19) #3
  %21 = call double @log(double noundef 1.000000e+01) #3
  %22 = fdiv double %20, %21
  %23 = fptosi double %22 to i32
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %26, i32 noundef 10, i32 noundef %27, i8* noundef %28)
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i64 0, i64 0), i8* noundef %29, i8* noundef %30, i8* noundef %31)
  br label %63

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %46

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double 1.000000e+00, %39
  %41 = call double @log(double noundef %40) #3
  %42 = call double @log(double noundef 1.600000e+01) #3
  %43 = fdiv double %41, %42
  %44 = fptosi double %43 to i32
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %37, %36
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 noundef %47, i32 noundef 16, i32 noundef %48, i8* noundef %49)
  %50 = load i32, i32* @PRINT_INSTR, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0), i8* noundef %53, i8* noundef %54, i8* noundef %55)
  br label %62

57:                                               ; preds = %46
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %58, i8* noundef %59, i8* noundef %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %25
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @PRINT_INSTRUCTION(i32 noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* @PRINT_INSTR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @INSTR_CODE(i32 noundef %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 0, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 1048576, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %17, %3
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  br label %94

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %93

41:                                               ; preds = %27
  %42 = load i8*, i8** @MEMORY, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %47)
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  call void @BYTES_TO_BITS(i32 noundef %48, i32 noundef 1, i32* noundef %49)
  %50 = load i8*, i8** @MEMORY, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %56)
  %58 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 8
  call void @BYTES_TO_BITS(i32 noundef %57, i32 noundef 1, i32* noundef %58)
  %59 = load i8*, i8** @MEMORY, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %65)
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 16
  call void @BYTES_TO_BITS(i32 noundef %66, i32 noundef 1, i32* noundef %67)
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 11
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %90

71:                                               ; preds = %41
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 6
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %75, %71
  %80 = load i32*, i32** %6, align 8
  store i32 4, i32* %80, align 4
  %81 = load i8*, i8** @MEMORY, align 8
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 noundef %87)
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 24
  call void @BYTES_TO_BITS(i32 noundef %88, i32 noundef 1, i32* noundef %89)
  br label %92

90:                                               ; preds = %75, %41
  %91 = load i32*, i32** %6, align 8
  store i32 3, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %79
  br label %93

93:                                               ; preds = %92, %34
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %272

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  call void @PRINT_ADDRESS(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i32 noundef %98, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0))
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0))
  br label %106

104:                                              ; preds = %97
  %105 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 16
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef %111)
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %272

117:                                              ; preds = %106
  %118 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %196

123:                                              ; preds = %117
  call void @FORMAT2(i32* noundef %10, i32* noundef %11)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 45
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 46
  br i1 %129, label %130, label %142

130:                                              ; preds = %127, %123
  %131 = load i32, i32* %10, align 4
  %132 = icmp sge i32 %131, 10
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i64 0, i64 0))
  br label %141

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %137
  %139 = getelementptr inbounds [3 x i8], [3 x i8]* %138, i64 0, i64 0
  %140 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* noundef %139)
  br label %141

141:                                              ; preds = %135, %133
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %272

142:                                              ; preds = %127
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 44
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = icmp sgt i32 %146, 4
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0))
  br label %153

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  %152 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i32 noundef %151)
  br label %153

153:                                              ; preds = %150, %148
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %272

154:                                              ; preds = %142
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 41
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 42
  br i1 %159, label %160, label %173

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %10, align 4
  %162 = icmp sge i32 %161, 10
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0))
  br label %171

165:                                              ; preds = %160
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %167
  %169 = getelementptr inbounds [3 x i8], [3 x i8]* %168, i64 0, i64 0
  %170 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef %169)
  br label %171

171:                                              ; preds = %165, %163
  %172 = load i32, i32* %11, align 4
  call void @PRINT_CONSTANT(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0), i32 noundef %172, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %272

173:                                              ; preds = %157
  %174 = load i32, i32* %10, align 4
  %175 = icmp sge i32 %174, 10
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i64 0, i64 0))
  br label %184

178:                                              ; preds = %173
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %180
  %182 = getelementptr inbounds [3 x i8], [3 x i8]* %181, i64 0, i64 0
  %183 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef %182)
  br label %184

184:                                              ; preds = %178, %176
  %185 = load i32, i32* %11, align 4
  %186 = icmp sge i32 %185, 10
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i64 0, i64 0))
  br label %195

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i64 0, i64 %191
  %193 = getelementptr inbounds [3 x i8], [3 x i8]* %192, i64 0, i64 0
  %194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* noundef %193)
  br label %195

195:                                              ; preds = %189, %187
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %272

196:                                              ; preds = %117
  %197 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 6
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 7
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0))
  br label %219

206:                                              ; preds = %200, %196
  %207 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 6
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 7
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i64 0, i64 0))
  br label %218

216:                                              ; preds = %210, %206
  %217 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %214
  br label %219

219:                                              ; preds = %218, %204
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %223, label %253

223:                                              ; preds = %219
  %224 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 12
  %225 = call i32 @BITS_TO_BYTE(i32* noundef %224, i32 noundef 12)
  store i32 %225, i32* %12, align 4
  %226 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 9
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 3), align 4
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %12, align 4
  br label %233

233:                                              ; preds = %229, %223
  %234 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 10
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %252

237:                                              ; preds = %233
  %238 = load i32, i32* %12, align 4
  %239 = icmp sge i32 %238, 2048
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i32, i32* %12, align 4
  %242 = sub nsw i32 %241, 4096
  %243 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %244 = add nsw i32 %242, %243
  %245 = add nsw i32 %244, 3
  store i32 %245, i32* %12, align 4
  br label %251

246:                                              ; preds = %237
  %247 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %248 = add nsw i32 %247, 3
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %12, align 4
  br label %251

251:                                              ; preds = %246, %240
  br label %252

252:                                              ; preds = %251, %233
  br label %256

253:                                              ; preds = %219
  %254 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 12
  %255 = call i32 @BITS_TO_BYTE(i32* noundef %254, i32 noundef 20)
  store i32 %255, i32* %12, align 4
  br label %256

256:                                              ; preds = %253, %252
  %257 = load i32, i32* %12, align 4
  %258 = icmp slt i32 %257, 1048576
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = load i32, i32* %12, align 4
  call void @PRINT_ADDRESS(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0), i32 noundef %260, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0))
  br label %263

261:                                              ; preds = %256
  %262 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %259
  %264 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 8
  %265 = load i32, i32* %264, align 16
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %263
  %270 = load i32, i32* %9, align 4
  store i32 %270, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %271 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  store i32 0, i32* @PRINT_INSTR, align 4
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %272

272:                                              ; preds = %116, %141, %153, %171, %195, %269, %94
  ret void
}

declare dso_local void @FORMAT2(i32* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @EXEC(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %73, %2
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %7 = call i32 @INSTR_CODE(i32 noundef %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %5
  %14 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %15 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %16 = call i32 @INSTR_CODE(i32 noundef %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 16
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i32 noundef %14, i8* noundef %20)
  %22 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %23 = call i32 @INSTR_CODE(i32 noundef %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = call i32 @FORMAT3_4(i32 noundef 1, i32 noundef 3)
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), i32 noundef %30)
  br label %41

32:                                               ; preds = %13
  %33 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %34 = call i32 @INSTR_CODE(i32 noundef %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  br label %41

41:                                               ; preds = %32, %29
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i64 0, i64 0))
  br label %51

43:                                               ; preds = %5
  %44 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %45 = call i32 @INSTR_CODE(i32 noundef %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  call void @CALL_FUNCTION1(i32 noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %43, %41
  %52 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 8), align 16
  %53 = icmp eq i32 %52, 16777215
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* @RETURN_STATUS, align 4
  br label %66

55:                                               ; preds = %51
  %56 = load i32, i32* @INTERVAL_TIMER, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* @INTERVAL_TIMER, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @INTERVAL_TIMER, align 4
  %61 = load i32, i32* @INTERVAL_TIMER, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 noundef 3, i32 noundef 0)
  br label %64

64:                                               ; preds = %63, %58
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @RETURN_STATUS, align 4
  %72 = icmp eq i32 %71, 0
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i1 [ false, %67 ], [ %72, %70 ]
  br i1 %74, label %5, label %75, !llvm.loop !10

75:                                               ; preds = %73
  ret void
}

declare dso_local i32 @FORMAT3_4(i32 noundef, i32 noundef) #1

declare dso_local void @SIGNAL_INTERUPT(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
