; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/cfrac.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/cfrac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@verbose = dso_local global i32 0, align 4
@debug = dso_local global i32 0, align 4
@pone = external dso_local global i16*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"f(%u,\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"d) = %9.7f\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"kN = \00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't compute factor base in findk\0A\00", align 1
@primes = external dso_local global [0 x i16], align 2
@.str.4 = private unnamed_addr constant [10 x i8] c"%u: %5.2f\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" log(k)/2=%5.2f\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@progName = dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"a:k:i:dv\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.8 = private unnamed_addr constant [69 x i8] c"usage: %s [-dv] [-a aborts ] [-k maxk ] [-i maxCount ] n [[ m ] k ]\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"maxk = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"k = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Iterations     : %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Early Aborts   : %u\0A\00", align 1
@cfracNabort = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Total Partials : %u\0A\00", align 1
@cfracTsolns = external dso_local global i32, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Used  Partials : %u\0A\00", align 1
@cfracT2solns = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Full Solutions : %u\0A\00", align 1
@cfracPsolns = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Factor Attempts: %u\0A\00", align 1
@cfracFsolns = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" * \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @pfKnuthEx28(i32 noundef %0, i16* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca float, align 4
  %6 = alloca i16*, align 8
  store i32 %0, i32* %3, align 4
  store i16* %1, i16** %4, align 8
  store i16* null, i16** %6, align 8
  %7 = load i16*, i16** %4, align 8
  %8 = icmp ne i16* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i16*, i16** %4, align 8
  %11 = load i16, i16* %10, align 2
  %12 = add i16 %11, 1
  store i16 %12, i16* %10, align 2
  %13 = zext i16 %11 to i32
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ false, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = load i16*, i16** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load i16*, i16** %4, align 8
  %23 = call i32 @podd(i16* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = load i16*, i16** %4, align 8
  %27 = call i16* @phalf(i16* noundef %26)
  %28 = call i16* @psetq(i16** noundef %6, i16* noundef %27)
  %29 = load i16*, i16** %6, align 8
  %30 = call i32 @podd(i16* noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i16*, i16** %6, align 8
  %34 = call float @pfKnuthEx28(i32 noundef 2, i16* noundef %33)
  %35 = fpext float %34 to double
  %36 = fdiv double %35, 2.000000e+00
  %37 = fadd double 0x3FE5555555555555, %36
  %38 = fptrunc double %37 to float
  store float %38, float* %5, align 4
  br label %40

39:                                               ; preds = %25
  store float 0x3FD5555560000000, float* %5, align 4
  br label %40

40:                                               ; preds = %39, %32
  br label %58

41:                                               ; preds = %21
  %42 = load i16*, i16** %4, align 8
  %43 = call i16* @phalf(i16* noundef %42)
  %44 = call i16* @psetq(i16** noundef %6, i16* noundef %43)
  %45 = load i16*, i16** %6, align 8
  %46 = call i32 @podd(i16* noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store float 0x3FD5555560000000, float* %5, align 4
  br label %57

49:                                               ; preds = %41
  %50 = load i16*, i16** %6, align 8
  %51 = call i16* @phalf(i16* noundef %50)
  %52 = call i32 @podd(i16* noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store float 0x3FE5555560000000, float* %5, align 4
  br label %56

55:                                               ; preds = %49
  store float 0x3FF5555560000000, float* %5, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %40
  br label %90

59:                                               ; preds = %15
  %60 = load i32, i32* %3, align 4
  %61 = call i16* @utop(i32 noundef %60)
  %62 = call i16* @psetq(i16** noundef %6, i16* noundef %61)
  %63 = load i16*, i16** %4, align 8
  %64 = load i16*, i16** %6, align 8
  %65 = load i16*, i16** @pone, align 8
  %66 = call i16* @psub(i16* noundef %64, i16* noundef %65)
  %67 = call i16* @phalf(i16* noundef %66)
  %68 = load i16*, i16** %6, align 8
  %69 = call i16* @ppowmod(i16* noundef %63, i16* noundef %67, i16* noundef %68)
  %70 = load i16*, i16** @pone, align 8
  %71 = call i32 @pcmp(i16* noundef %69, i16* noundef %70)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %74, %75
  %77 = uitofp i32 %76 to float
  %78 = fpext float %77 to double
  %79 = load i32, i32* %3, align 4
  %80 = uitofp i32 %79 to float
  %81 = load i32, i32* %3, align 4
  %82 = uitofp i32 %81 to float
  %83 = fmul float %80, %82
  %84 = fpext float %83 to double
  %85 = fsub double %84, 1.000000e+00
  %86 = fdiv double %78, %85
  %87 = fptrunc double %86 to float
  store float %87, float* %5, align 4
  br label %89

88:                                               ; preds = %59
  store float 0.000000e+00, float* %5, align 4
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i16*, i16** %6, align 8
  %92 = icmp ne i16* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i16*, i16** %6, align 8
  %95 = load i16, i16* %94, align 2
  %96 = add i16 %95, -1
  store i16 %96, i16* %94, align 2
  %97 = zext i16 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i16*, i16** %6, align 8
  %101 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %100)
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %99, %93, %90
  %104 = phi i1 [ false, %93 ], [ false, %90 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = load i16*, i16** %4, align 8
  %107 = icmp ne i16* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i16*, i16** %4, align 8
  %110 = load i16, i16* %109, align 2
  %111 = add i16 %110, -1
  store i16 %111, i16* %109, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i16*, i16** %4, align 8
  %116 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %115)
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %114, %108, %103
  %119 = phi i1 [ false, %108 ], [ false, %103 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* @debug, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %125 = load i32, i32* %3, align 4
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %125)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %128 = load float, float* %5, align 4
  %129 = fpext float %128 to double
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), double noundef %129)
  br label %131

131:                                              ; preds = %123, %118
  %132 = load float, float* %5, align 4
  ret float %132
}

declare dso_local i32 @podd(i16* noundef) #1

declare dso_local i16* @psetq(i16** noundef, i16* noundef) #1

declare dso_local i16* @phalf(i16* noundef) #1

declare dso_local i16* @utop(i32 noundef) #1

declare dso_local i32 @pcmp(i16* noundef, i16* noundef) #1

declare dso_local i16* @ppowmod(i16* noundef, i16* noundef, i16* noundef) #1

declare dso_local i16* @psub(i16* noundef, i16* noundef) #1

declare dso_local i32 @pfree(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @logf_(i32 noundef %0, i16* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i16*, i16** %5, align 8
  %9 = icmp ne i16* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i16*, i16** %5, align 8
  %12 = load i16, i16* %11, align 2
  %13 = add i16 %12, 1
  store i16 %13, i16* %11, align 2
  %14 = zext i16 %12 to i32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ false, %3 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = load i16*, i16** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i16* @itop(i32 noundef %21)
  %23 = load i16*, i16** %5, align 8
  %24 = call i16* @pmul(i16* noundef %22, i16* noundef %23)
  %25 = call float @pfKnuthEx28(i32 noundef %20, i16* noundef %24)
  %26 = fpext float %25 to double
  %27 = load i32, i32* %4, align 4
  %28 = uitofp i32 %27 to double
  %29 = call double @log(double noundef %28) #6
  %30 = fmul double %26, %29
  %31 = fptrunc double %30 to float
  store float %31, float* %7, align 4
  %32 = load i16*, i16** %5, align 8
  %33 = icmp ne i16* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %16
  %35 = load i16*, i16** %5, align 8
  %36 = load i16, i16* %35, align 2
  %37 = add i16 %36, -1
  store i16 %37, i16* %35, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i16*, i16** %5, align 8
  %42 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %40, %34, %16
  %45 = phi i1 [ false, %34 ], [ false, %16 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = load float, float* %7, align 4
  ret float %47
}

declare dso_local i16* @pmul(i16* noundef, i16* noundef) #1

declare dso_local i16* @itop(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findk(i16* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  store i16* %0, i16** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store float 0xC30C6BF520000000, float* %15, align 4
  %19 = load i16*, i16** %5, align 8
  %20 = icmp ne i16* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i16*, i16** %5, align 8
  %23 = load i16, i16* %22, align 2
  %24 = add i16 %23, 1
  store i16 %24, i16* %22, align 2
  %25 = zext i16 %23 to i32
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %21, %4
  %28 = phi i1 [ false, %4 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = load i16*, i16** %5, align 8
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %130, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %133

35:                                               ; preds = %31
  %36 = load i32, i32* @debug, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = call i32 @fputs(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i16* @utop(i32 noundef %42)
  %44 = load i16*, i16** %5, align 8
  %45 = call i16* @pmul(i16* noundef %43, i16* noundef %44)
  %46 = call i32 @fputp(%struct._IO_FILE* noundef %41, i16* noundef %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i16*, i16** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @pfactorbase(i16* noundef %52, i32 noundef %53, i32* noundef %11, i32 noundef %54)
  store i32* %55, i32** %16, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

61:                                               ; preds = %49
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store i16* getelementptr inbounds ([0 x i16], [0 x i16]* @primes, i64 0, i64 0), i16** %18, align 8
  br label %68

68:                                               ; preds = %74, %61
  %69 = load i16*, i16** %18, align 8
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %13, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load i16*, i16** %18, align 8
  %76 = getelementptr inbounds i16, i16* %75, i32 1
  store i16* %76, i16** %18, align 8
  %77 = load i16, i16* %75, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16*, i16** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call float @logf_(i32 noundef %78, i16* noundef %79, i32 noundef %80)
  %82 = load float, float* %14, align 4
  %83 = fadd float %82, %81
  store float %83, float* %14, align 4
  br label %68, !llvm.loop !4

84:                                               ; preds = %68
  %85 = load i32, i32* %9, align 4
  %86 = uitofp i32 %85 to double
  %87 = call double @log(double noundef %86) #6
  %88 = load float, float* %14, align 4
  %89 = fpext float %88 to double
  %90 = fneg double %87
  %91 = call double @llvm.fmuladd.f64(double %90, double 5.000000e-01, double %89)
  %92 = fptrunc double %91 to float
  store float %92, float* %14, align 4
  %93 = load i32, i32* @verbose, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load float, float* %14, align 4
  %99 = fpext float %98 to double
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 noundef %97, double noundef %99)
  br label %101

101:                                              ; preds = %95, %84
  %102 = load i32, i32* @debug, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %106 = load i32, i32* %9, align 4
  %107 = uitofp i32 %106 to double
  %108 = call double @log(double noundef %107) #6
  %109 = fmul double %108, 5.000000e-01
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double noundef %109)
  br label %111

111:                                              ; preds = %104, %101
  %112 = load i32, i32* @verbose, align 4
  %113 = icmp sgt i32 %112, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = call i32 @fputs(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %115)
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %118 = call i32 @fflush(%struct._IO_FILE* noundef %117)
  br label %119

119:                                              ; preds = %114, %111
  %120 = load float, float* %14, align 4
  %121 = load float, float* %15, align 4
  %122 = fcmp ogt float %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load float, float* %14, align 4
  store float %124, float* %15, align 4
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32*, i32** %16, align 8
  %129 = bitcast i32* %128 to i8*
  call void @free(i8* noundef %129) #6
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %31, !llvm.loop !6

133:                                              ; preds = %31
  %134 = load i32, i32* %12, align 4
  %135 = load i32*, i32** %6, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i16*, i16** %5, align 8
  %137 = icmp ne i16* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i16*, i16** %5, align 8
  %140 = load i16, i16* %139, align 2
  %141 = add i16 %140, -1
  store i16 %141, i16* %139, align 2
  %142 = zext i16 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i16*, i16** %5, align 8
  %146 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %145)
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %144, %138, %133
  %149 = phi i1 [ false, %138 ], [ false, %133 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %10, align 4
  ret i32 %151
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fputp(%struct._IO_FILE* noundef, i16* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32* @pfactorbase(i16* noundef, i32 noundef, i32* noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1073741824, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i16* null, i16** %12, align 8
  store i16* null, i16** %13, align 8
  store i32 3, i32* %14, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** @progName, align 8
  br label %18

18:                                               ; preds = %45, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 noundef %19, i8** noundef %20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %40 [
    i32 97, label %25
    i32 107, label %28
    i32 105, label %31
    i32 100, label %34
    i32 118, label %37
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @atoi(i8* noundef %26) #8
  store i32 %27, i32* %14, align 4
  br label %45

28:                                               ; preds = %23
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 @atoi(i8* noundef %29) #8
  store i32 %30, i32* %10, align 4
  br label %45

31:                                               ; preds = %23
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @atoi(i8* noundef %32) #8
  store i32 %33, i32* %8, align 4
  br label %45

34:                                               ; preds = %23
  %35 = load i32, i32* @debug, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @debug, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load i32, i32* @verbose, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @verbose, align 4
  br label %45

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %59, %40
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i8*, i8** @progName, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i8* noundef %43)
  store i32 1, i32* %3, align 4
  br label %204

45:                                               ; preds = %37, %34, %31, %28, %25
  br label %18, !llvm.loop !7

46:                                               ; preds = %18
  %47 = load i32, i32* @optind, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @optind, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %46
  br label %41

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %5, align 8
  %63 = load i8*, i8** %61, align 8
  %64 = call i16* @atop(i8* noundef %63)
  %65 = call i16* @psetq(i16** noundef %12, i16* noundef %64)
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %5, align 8
  %73 = load i8*, i8** %71, align 8
  %74 = call i32 @atoi(i8* noundef %73) #8
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %70, %60
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %5, align 8
  %83 = load i8*, i8** %81, align 8
  %84 = call i32 @atoi(i8* noundef %83) #8
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = udiv i32 %94, 2
  %96 = add i32 %95, 5
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* @verbose, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef %101)
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i16*, i16** %12, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @findk(i16* noundef %105, i32* noundef %6, i32 noundef %106, i32 noundef %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @verbose, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %113)
  br label %115

115:                                              ; preds = %111, %104
  br label %116

116:                                              ; preds = %115, %87
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @pcfracInit(i32 noundef %118, i32 noundef %119, i32 noundef %120)
  %122 = load i16*, i16** %12, align 8
  %123 = call i16* @pcfrac(i16* noundef %122, i32* noundef %9)
  %124 = call i16* @psetq(i16** noundef %13, i16* noundef %123)
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub i32 %125, %126
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @verbose, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %116
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %131)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %134)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %137 = load i32, i32* @cfracNabort, align 4
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %136, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %137)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %140 = load i32, i32* @cfracTsolns, align 4
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %139, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 noundef %140)
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = load i32, i32* @cfracT2solns, align 4
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef %143)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %146 = load i32, i32* @cfracPsolns, align 4
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %145, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef %146)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %149 = load i32, i32* @cfracFsolns, align 4
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 noundef %149)
  br label %151

151:                                              ; preds = %130, %116
  %152 = load i16*, i16** %13, align 8
  %153 = icmp ne i16* %152, null
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %156 = load i16*, i16** %12, align 8
  %157 = call i32 @fputp(%struct._IO_FILE* noundef %155, i16* noundef %156)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %159 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* noundef %158)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %161 = load i16*, i16** %13, align 8
  %162 = call i32 @fputp(%struct._IO_FILE* noundef %160, i16* noundef %161)
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %164 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), %struct._IO_FILE* noundef %163)
  %165 = load i16*, i16** %12, align 8
  %166 = load i16*, i16** %13, align 8
  %167 = call i16* @pdivmod(i16* noundef %165, i16* noundef %166, i16** noundef %12, i16** noundef null)
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %169 = load i16*, i16** %12, align 8
  %170 = call i32 @fputp(%struct._IO_FILE* noundef %168, i16* noundef %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %172 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %171)
  br label %173

173:                                              ; preds = %154, %151
  %174 = load i16*, i16** %13, align 8
  %175 = icmp ne i16* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i16*, i16** %13, align 8
  %178 = load i16, i16* %177, align 2
  %179 = add i16 %178, -1
  store i16 %179, i16* %177, align 2
  %180 = zext i16 %179 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i16*, i16** %13, align 8
  %184 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %183)
  %185 = icmp ne i32 %184, 0
  br label %186

186:                                              ; preds = %182, %176, %173
  %187 = phi i1 [ false, %176 ], [ false, %173 ], [ %185, %182 ]
  %188 = zext i1 %187 to i32
  %189 = load i16*, i16** %12, align 8
  %190 = icmp ne i16* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load i16*, i16** %12, align 8
  %193 = load i16, i16* %192, align 2
  %194 = add i16 %193, -1
  store i16 %194, i16* %192, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i16*, i16** %12, align 8
  %199 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %198)
  %200 = icmp ne i32 %199, 0
  br label %201

201:                                              ; preds = %197, %191, %186
  %202 = phi i1 [ false, %191 ], [ false, %186 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %201, %41
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @getopt(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

declare dso_local i16* @atop(i8* noundef) #1

declare dso_local i32 @pcfracInit(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i16* @pcfrac(i16* noundef, i32* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }

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
