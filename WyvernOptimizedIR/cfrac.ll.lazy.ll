; ModuleID = './cfrac.ll'
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
  %3 = alloca i16*, align 8
  store i16* null, i16** %3, align 8
  %.not = icmp eq i16* %1, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load i16, i16* %1, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %1, align 2
  br label %7

7:                                                ; preds = %4, %2
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %9, label %40

9:                                                ; preds = %7
  %10 = call i32 @podd(i16* noundef %1) #7
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %25

11:                                               ; preds = %9
  %12 = call i16* @phalf(i16* noundef %1) #7
  %13 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %12) #7
  %14 = load i16*, i16** %3, align 8
  %15 = call i32 @podd(i16* noundef %14) #7
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %16, label %23

16:                                               ; preds = %11
  %17 = load i16*, i16** %3, align 8
  %18 = call float @pfKnuthEx28(i32 noundef 2, i16* noundef %17)
  %19 = fpext float %18 to double
  %20 = fmul double %19, 5.000000e-01
  %21 = fadd double %20, 0x3FE5555555555555
  %22 = fptrunc double %21 to float
  br label %24

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %16
  %.0 = phi float [ 0x3FD5555560000000, %23 ], [ %22, %16 ]
  br label %39

25:                                               ; preds = %9
  %26 = call i16* @phalf(i16* noundef %1) #7
  %27 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %26) #7
  %28 = load i16*, i16** %3, align 8
  %29 = call i32 @podd(i16* noundef %28) #7
  %.not5 = icmp eq i32 %29, 0
  br i1 %.not5, label %31, label %30

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %25
  %32 = load i16*, i16** %3, align 8
  %33 = call i16* @phalf(i16* noundef %32) #7
  %34 = call i32 @podd(i16* noundef %33) #7
  %.not6 = icmp eq i32 %34, 0
  br i1 %.not6, label %36, label %35

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %35
  %.1 = phi float [ 0x3FE5555560000000, %35 ], [ 0x3FF5555560000000, %36 ]
  br label %38

38:                                               ; preds = %37, %30
  %.2 = phi float [ 0x3FD5555560000000, %30 ], [ %.1, %37 ]
  br label %39

39:                                               ; preds = %38, %24
  %.3 = phi float [ %.2, %38 ], [ %.0, %24 ]
  br label %65

40:                                               ; preds = %7
  %41 = call i16* @utop(i32 noundef %0) #7
  %42 = call i16* @psetq(i16** noundef nonnull %3, i16* noundef %41) #7
  %43 = load i16*, i16** %3, align 8
  %44 = load i16*, i16** @pone, align 8
  %45 = call i16* @psub(i16* noundef %43, i16* noundef %44) #7
  %46 = call i16* @phalf(i16* noundef %45) #7
  %47 = load i16*, i16** %3, align 8
  %48 = call i16* @ppowmod(i16* noundef %1, i16* noundef %46, i16* noundef %47) #7
  %49 = load i16*, i16** @pone, align 8
  %50 = call i32 @pcmp(i16* noundef %48, i16* noundef %49) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %40
  %53 = shl i32 %0, 1
  %54 = uitofp i32 %53 to float
  %55 = fpext float %54 to double
  %56 = uitofp i32 %0 to float
  %57 = uitofp i32 %0 to float
  %58 = fmul float %56, %57
  %59 = fpext float %58 to double
  %60 = fadd double %59, -1.000000e+00
  %61 = fdiv double %55, %60
  %62 = fptrunc double %61 to float
  br label %64

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %52
  %.4 = phi float [ %62, %52 ], [ 0.000000e+00, %63 ]
  br label %65

65:                                               ; preds = %64, %39
  %.5 = phi float [ %.3, %39 ], [ %.4, %64 ]
  %66 = load i16*, i16** %3, align 8
  %.not1 = icmp eq i16* %66, null
  br i1 %.not1, label %75, label %67

67:                                               ; preds = %65
  %68 = load i16*, i16** %3, align 8
  %69 = load i16, i16* %68, align 2
  %70 = add i16 %69, -1
  store i16 %70, i16* %68, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i16*, i16** %3, align 8
  %74 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %73) #7
  br label %75

75:                                               ; preds = %72, %67, %65
  %.not2 = icmp eq i16* %1, null
  br i1 %.not2, label %82, label %76

76:                                               ; preds = %75
  %77 = load i16, i16* %1, align 2
  %78 = add i16 %77, -1
  store i16 %78, i16* %1, align 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %1) #7
  br label %82

82:                                               ; preds = %80, %76, %75
  %83 = load i32, i32* @debug, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #7
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = fpext float %.5 to double
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), double noundef %89) #7
  br label %91

91:                                               ; preds = %85, %82
  ret float %.5
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
  %.not = icmp eq i16* %1, null
  br i1 %.not, label %7, label %4

4:                                                ; preds = %3
  %5 = load i16, i16* %1, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %1, align 2
  br label %7

7:                                                ; preds = %4, %3
  %8 = call i16* @itop(i32 noundef %2) #7
  %9 = call i16* @pmul(i16* noundef %8, i16* noundef %1) #7
  %10 = call float @pfKnuthEx28(i32 noundef %0, i16* noundef %9)
  %11 = uitofp i32 %0 to double
  %12 = call double @log(double noundef %11) #7
  %.not1 = icmp eq i16* %1, null
  br i1 %.not1, label %19, label %13

13:                                               ; preds = %7
  %14 = load i16, i16* %1, align 2
  %15 = add i16 %14, -1
  store i16 %15, i16* %1, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %1) #7
  br label %19

19:                                               ; preds = %17, %13, %7
  %20 = fpext float %10 to double
  %21 = fmul double %12, %20
  %22 = fptrunc double %21 to float
  ret float %22
}

declare dso_local i16* @pmul(i16* noundef, i16* noundef) #1

declare dso_local i16* @itop(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findk(i16* noundef %0, i32* nocapture noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %.not = icmp eq i16* %0, null
  br i1 %.not, label %9, label %6

6:                                                ; preds = %4
  %7 = load i16, i16* %0, align 2
  %8 = add i16 %7, 1
  store i16 %8, i16* %0, align 2
  br label %9

9:                                                ; preds = %6, %4
  br label %10

10:                                               ; preds = %79, %9
  %.06 = phi i32 [ 0, %9 ], [ %.17, %79 ]
  %.05 = phi i32 [ 1, %9 ], [ %80, %79 ]
  %.03 = phi i32 [ 0, %9 ], [ %.14, %79 ]
  %.01 = phi float [ 0xC30C6BF520000000, %9 ], [ %.1, %79 ]
  %11 = icmp ult i32 %.05, %3
  br i1 %11, label %12, label %81

12:                                               ; preds = %10
  %13 = load i32, i32* @debug, align 4
  %.not11 = icmp eq i32 %13, 0
  br i1 %.not11, label %23, label %14

14:                                               ; preds = %12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i16* @utop(i32 noundef %.05) #7
  %19 = call i16* @pmul(i16* noundef %18, i16* noundef %0) #7
  %20 = call i32 @fputp(%struct._IO_FILE* noundef %17, i16* noundef %19) #7
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %21) #7
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* %5, align 4
  %25 = call i32* @pfactorbase(i16* noundef %0, i32 noundef %.05, i32* noundef nonnull %5, i32 noundef %2) #7
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %28) #8
  call void @exit(i32 noundef 1) #9
  unreachable

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %39, %30
  %.02 = phi float [ 0.000000e+00, %30 ], [ %44, %39 ]
  %.0 = phi i16* [ getelementptr inbounds ([0 x i16], [0 x i16]* @primes, i64 0, i64 0), %30 ], [ %40, %39 ]
  %37 = load i16, i16* %.0, align 2
  %38 = zext i16 %37 to i32
  %.not12 = icmp ult i32 %35, %38
  br i1 %.not12, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i16, i16* %.0, i64 1
  %41 = load i16, i16* %.0, align 2
  %42 = zext i16 %41 to i32
  %43 = call float @logf_(i32 noundef %42, i16* noundef %0, i32 noundef %.05)
  %44 = fadd float %.02, %43
  br label %36, !llvm.loop !4

45:                                               ; preds = %36
  %46 = uitofp i32 %.05 to double
  %47 = call double @log(double noundef %46) #7
  %48 = fpext float %.02 to double
  %49 = fneg double %47
  %50 = call double @llvm.fmuladd.f64(double %49, double 5.000000e-01, double %48)
  %51 = fptrunc double %50 to float
  %52 = load i32, i32* @verbose, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = fpext float %51 to double
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 noundef %.05, double noundef %56) #7
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32, i32* @debug, align 4
  %.not13 = icmp eq i32 %59, 0
  br i1 %.not13, label %66, label %60

60:                                               ; preds = %58
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = uitofp i32 %.05 to double
  %63 = call double @log(double noundef %62) #7
  %64 = fmul double %63, 5.000000e-01
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double noundef %64) #7
  br label %66

66:                                               ; preds = %60, %58
  %67 = load i32, i32* @verbose, align 4
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = call i32 @fflush(%struct._IO_FILE* noundef %71) #7
  br label %73

73:                                               ; preds = %69, %66
  %74 = fcmp olt float %.01, %51
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = load i32, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %73
  %.17 = phi i32 [ %.05, %75 ], [ %.06, %73 ]
  %.14 = phi i32 [ %76, %75 ], [ %.03, %73 ]
  %.1 = phi float [ %51, %75 ], [ %.01, %73 ]
  %78 = bitcast i32* %25 to i8*
  call void @free(i8* noundef %78) #7
  br label %79

79:                                               ; preds = %77
  %80 = add i32 %.05, 1
  br label %10, !llvm.loop !6

81:                                               ; preds = %10
  store i32 %.03, i32* %1, align 4
  %.not10 = icmp eq i16* %0, null
  br i1 %.not10, label %88, label %82

82:                                               ; preds = %81
  %83 = load i16, i16* %0, align 2
  %84 = add i16 %83, -1
  store i16 %84, i16* %0, align 2
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef nonnull %0) #7
  br label %88

88:                                               ; preds = %86, %82, %81
  ret i32 %.06
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fputp(%struct._IO_FILE* noundef, i16* noundef) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32* @pfactorbase(i16* noundef, i32 noundef, i32* noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  store i32 0, i32* %3, align 4
  store i16* null, i16** %5, align 8
  store i16* null, i16** %6, align 8
  %7 = load i8*, i8** %1, align 8
  store i8* %7, i8** @progName, align 8
  br label %8

8:                                                ; preds = %31, %2
  %.08 = phi i32 [ 3, %2 ], [ %.19, %31 ]
  %.06 = phi i32 [ 0, %2 ], [ %.17, %31 ]
  %.04 = phi i32 [ 1073741824, %2 ], [ %.15, %31 ]
  %9 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @getopt to i32 (i32, i8**, i8*, ...)*)(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #7
  %.not = icmp eq i32 %9, -1
  br i1 %.not, label %32, label %10

10:                                               ; preds = %8
  switch i32 %9, label %26 [
    i32 97, label %11
    i32 107, label %14
    i32 105, label %17
    i32 100, label %20
    i32 118, label %23
  ]

11:                                               ; preds = %10
  %12 = load i8*, i8** @optarg, align 8
  %13 = call i32 @atoi(i8* noundef %12) #10
  br label %31

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8
  %16 = call i32 @atoi(i8* noundef %15) #10
  br label %31

17:                                               ; preds = %10
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i32 @atoi(i8* noundef %18) #10
  br label %31

20:                                               ; preds = %10
  %21 = load i32, i32* @debug, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @debug, align 4
  br label %31

23:                                               ; preds = %10
  %24 = load i32, i32* @verbose, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @verbose, align 4
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %40, %26
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @progName, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i8* noundef %29) #11
  br label %149

31:                                               ; preds = %23, %20, %17, %14, %11
  %.19 = phi i32 [ %.08, %23 ], [ %.08, %20 ], [ %.08, %17 ], [ %.08, %14 ], [ %13, %11 ]
  %.17 = phi i32 [ %.06, %23 ], [ %.06, %20 ], [ %.06, %17 ], [ %16, %14 ], [ %.06, %11 ]
  %.15 = phi i32 [ %.04, %23 ], [ %.04, %20 ], [ %19, %17 ], [ %.04, %14 ], [ %.04, %11 ]
  br label %8, !llvm.loop !7

32:                                               ; preds = %8
  %33 = load i32, i32* @optind, align 4
  %34 = sub nsw i32 %0, %33
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35
  %37 = icmp slt i32 %34, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = icmp sgt i32 %34, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %32
  br label %27

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8*, i8** %36, i64 1
  %43 = load i8*, i8** %36, align 8
  %44 = call i16* @atop(i8* noundef %43) #7
  %45 = call i16* @psetq(i16** noundef nonnull %5, i16* noundef %44) #7
  %46 = add nsw i32 %34, -1
  %.not13 = icmp eq i32 %46, 0
  br i1 %.not13, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds i8*, i8** %42, i64 1
  %49 = load i8*, i8** %42, align 8
  %50 = call i32 @atoi(i8* noundef %49) #10
  store i32 %50, i32* %3, align 4
  %51 = add nsw i32 %34, -2
  br label %52

52:                                               ; preds = %47, %41
  %.02 = phi i8** [ %48, %47 ], [ %42, %41 ]
  %.01 = phi i32 [ %51, %47 ], [ %46, %41 ]
  %.not14 = icmp eq i32 %.01, 0
  br i1 %.not14, label %56, label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %.02, align 8
  %55 = call i32 @atoi(i8* noundef %54) #10
  br label %56

56:                                               ; preds = %53, %52
  %.03 = phi i32 [ %55, %53 ], [ 0, %52 ]
  %57 = icmp eq i32 %.03, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %56
  %59 = icmp eq i32 %.06, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  %61 = load i32, i32* %3, align 4
  %62 = lshr i32 %61, 1
  %63 = add nuw i32 %62, 5
  %64 = load i32, i32* @verbose, align 4
  %.not20 = icmp eq i32 %64, 0
  br i1 %.not20, label %68, label %65

65:                                               ; preds = %60
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 noundef %63) #7
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %58
  %.2 = phi i32 [ %63, %68 ], [ %.06, %58 ]
  %70 = load i16*, i16** %5, align 8
  %71 = call i32 @findk(i16* noundef %70, i32* noundef nonnull %3, i32 noundef %.08, i32 noundef %.2)
  %72 = load i32, i32* @verbose, align 4
  %.not19 = icmp eq i32 %72, 0
  br i1 %.not19, label %76, label %73

73:                                               ; preds = %69
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 noundef %71) #7
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %56
  %.1 = phi i32 [ %71, %76 ], [ %.03, %56 ]
  store i32 %.04, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @pcfracInit(i32 noundef %78, i32 noundef %.1, i32 noundef %.08) #7
  %80 = load i16*, i16** %5, align 8
  %81 = call i16* @pcfrac(i16* noundef %80, i32* noundef nonnull %4) #7
  %82 = call i16* @psetq(i16** noundef nonnull %6, i16* noundef %81) #7
  %83 = load i32, i32* %4, align 4
  %84 = sub i32 %.04, %83
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @verbose, align 4
  %.not15 = icmp eq i32 %85, 0
  br i1 %.not15, label %107, label %86

86:                                               ; preds = %77
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %88 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %87) #7
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %90) #7
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = load i32, i32* @cfracNabort, align 4
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %93) #7
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %96 = load i32, i32* @cfracTsolns, align 4
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 noundef %96) #7
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %99 = load i32, i32* @cfracT2solns, align 4
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 noundef %99) #7
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = load i32, i32* @cfracPsolns, align 4
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef %102) #7
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = load i32, i32* @cfracFsolns, align 4
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 noundef %105) #7
  br label %107

107:                                              ; preds = %86, %77
  %108 = load i16*, i16** %6, align 8
  %.not16 = icmp eq i16* %108, null
  br i1 %.not16, label %128, label %109

109:                                              ; preds = %107
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %111 = load i16*, i16** %5, align 8
  %112 = call i32 @fputp(%struct._IO_FILE* noundef %110, i16* noundef %111) #7
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %113)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = load i16*, i16** %6, align 8
  %117 = call i32 @fputp(%struct._IO_FILE* noundef %115, i16* noundef %116) #7
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %119 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %118)
  %120 = load i16*, i16** %5, align 8
  %121 = load i16*, i16** %6, align 8
  %122 = call i16* @pdivmod(i16* noundef %120, i16* noundef %121, i16** noundef nonnull %5, i16** noundef null) #7
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %124 = load i16*, i16** %5, align 8
  %125 = call i32 @fputp(%struct._IO_FILE* noundef %123, i16* noundef %124) #7
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = call i32 @putc(i32 noundef 10, %struct._IO_FILE* noundef %126) #7
  br label %128

128:                                              ; preds = %109, %107
  %129 = load i16*, i16** %6, align 8
  %.not17 = icmp eq i16* %129, null
  br i1 %.not17, label %138, label %130

130:                                              ; preds = %128
  %131 = load i16*, i16** %6, align 8
  %132 = load i16, i16* %131, align 2
  %133 = add i16 %132, -1
  store i16 %133, i16* %131, align 2
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i16*, i16** %6, align 8
  %137 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %136) #7
  br label %138

138:                                              ; preds = %135, %130, %128
  %139 = load i16*, i16** %5, align 8
  %.not18 = icmp eq i16* %139, null
  br i1 %.not18, label %148, label %140

140:                                              ; preds = %138
  %141 = load i16*, i16** %5, align 8
  %142 = load i16, i16* %141, align 2
  %143 = add i16 %142, -1
  store i16 %143, i16* %141, align 2
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i16*, i16** %5, align 8
  %147 = call i32 (i16*, ...) bitcast (i32 (...)* @pfree to i32 (i16*, ...)*)(i16* noundef %146) #7
  br label %148

148:                                              ; preds = %145, %140, %138
  br label %149

149:                                              ; preds = %148, %27
  %.0 = phi i32 [ 1, %27 ], [ 0, %148 ]
  ret i32 %.0
}

declare dso_local i32 @getopt(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

declare dso_local i16* @atop(i8* noundef) #1

declare dso_local i32 @pcfracInit(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i16* @pcfrac(i16* noundef, i32* noundef) #1

declare dso_local i16* @pdivmod(i16* noundef, i16* noundef, i16** noundef, i16** noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }

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
