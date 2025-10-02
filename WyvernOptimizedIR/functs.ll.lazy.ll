; ModuleID = './functs.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/functs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.epoch_t = type { %struct.trans_t*, %struct.trans_t*, i32, i64, i64, i64, i64 }
%struct.trans_t = type { i32, i64, i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %lu %lu\00", align 1
@loop_time = dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Time for loop: %lu issues\0A\00", align 1
@prog_time = dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Time for program: %lu issues\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Loop is %0.3g %% of program\0A\00", align 1
@hard_raw_list = external dso_local global %struct.hard_raw*, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"OPTIMUM RESTART RESULTS\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Time for speculative loop is %lu issues\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Potential speedup for loop: %0.3g times\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Potential speedup for program: %0.3g times\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"optloop: %0.3g\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"optprog: %0.3g\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"REALISTIC RESTART RESULTS -- %d CPUs\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"realloop: %d %0.3g\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"realprog: %d %0.3g\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"OPTIMUM RESTART RESULTS\00", align 1
@str.1 = private unnamed_addr constant [54 x i8] c"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @speedup_test(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @rewind(%struct._IO_FILE* noundef %0) #5
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %9, i64* noundef nonnull %6) #5
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  br label %12

12:                                               ; preds = %18, %1
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %15 = call i8* @strcpy(i8* noundef nonnull %13, i8* noundef nonnull %14) #5
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %17 = call i8* @fgets(i8* noundef nonnull %16, i32 noundef 100, %struct._IO_FILE* noundef %0) #5
  br label %18

18:                                               ; preds = %12
  %19 = load i8, i8* %11, align 16
  %.not = icmp eq i8 %19, 69
  br i1 %.not, label %20, label %12, !llvm.loop !4

20:                                               ; preds = %18
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %22, i64* noundef nonnull %5, i64* noundef nonnull %7) #5
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %25, i64* noundef nonnull %5, i64* noundef nonnull %8) #5
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* @loop_time, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 noundef %29) #5
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* @prog_time, align 8
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 noundef %31) #5
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %33, %34
  %36 = uitofp i64 %35 to double
  %37 = load i64, i64* %8, align 8
  %38 = uitofp i64 %37 to double
  %39 = fdiv double %36, %38
  %40 = fmul double %39, 1.000000e+02
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), double noundef %40) #5
  call void @rewind(%struct._IO_FILE* noundef %0) #5
  ret void
}

declare dso_local void @rewind(%struct._IO_FILE* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #2

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @imix_test(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @rewind(%struct._IO_FILE* noundef %0) #5
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %9 = call i8* @fgets(i8* noundef nonnull %8, i32 noundef 100, %struct._IO_FILE* noundef %0) #5
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %10, i64* noundef nonnull %6) #5
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  br label %13

13:                                               ; preds = %25, %1
  %.0 = phi i64 [ 0, %1 ], [ %.1, %25 ]
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 2
  %15 = load i8, i8* %14, align 2
  %16 = icmp eq i8 %15, 58
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = add i64 %.0, 1
  br label %19

19:                                               ; preds = %17, %13
  %.1 = phi i64 [ %18, %17 ], [ %.0, %13 ]
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %22 = call i8* @strcpy(i8* noundef nonnull %20, i8* noundef nonnull %21) #5
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i64 0, i64 0
  %24 = call i8* @fgets(i8* noundef nonnull %23, i32 noundef 100, %struct._IO_FILE* noundef %0) #5
  br label %25

25:                                               ; preds = %19
  %26 = load i8, i8* %12, align 16
  %.not = icmp eq i8 %26, 69
  br i1 %.not, label %27, label %13, !llvm.loop !6

27:                                               ; preds = %25
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %29, i64* noundef nonnull %5, i64* noundef nonnull %7) #5
  call void @rewind(%struct._IO_FILE* noundef %0) #5
  ret i64 %.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @find_hard_raws() #3 {
  br label %1

1:                                                ; preds = %19, %0
  %.0.in = phi %struct.hard_raw** [ @hard_raw_list, %0 ], [ %.1.in, %19 ]
  %.0 = load %struct.hard_raw*, %struct.hard_raw** %.0.in, align 8
  %.not = icmp eq %struct.hard_raw* %.0, null
  br i1 %.not, label %20, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 8
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %4, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 1
  %10 = load %struct.hard_raw*, %struct.hard_raw** %9, align 8
  %.not1 = icmp eq %struct.hard_raw* %10, null
  br i1 %.not1, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 0
  %13 = load %struct.hard_raw*, %struct.hard_raw** %12, align 8
  %14 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 1
  %15 = load %struct.hard_raw*, %struct.hard_raw** %14, align 8
  %16 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %15, i64 0, i32 0
  store %struct.hard_raw* %13, %struct.hard_raw** %16, align 8
  br label %17

17:                                               ; preds = %11, %8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %17
  %.1.in = getelementptr %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 0
  br label %1, !llvm.loop !7

20:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @specul_time_o(%struct.epoch_t* nocapture noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  br label %7

7:                                                ; preds = %21, %6
  %.04 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %8 = icmp slt i32 %.04, %1
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = zext i32 %.04 to i64
  %11 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %10, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = zext i32 %.04 to i64
  %14 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %13, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %12, %15
  %17 = zext i32 %.04 to i64
  %18 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %17, i32 5
  store i64 %16, i64* %18, align 8
  %19 = zext i32 %.04 to i64
  %20 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %19, i32 6
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %9
  %22 = add nuw nsw i32 %.04, 1
  br label %7, !llvm.loop !8

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %54, %23
  %.01 = phi i64 [ 0, %23 ], [ %.1, %54 ]
  %.0.in = phi %struct.hard_raw** [ @hard_raw_list, %23 ], [ %55, %54 ]
  %.0 = load %struct.hard_raw*, %struct.hard_raw** %.0.in, align 8
  %.not = icmp eq %struct.hard_raw* %.0, null
  br i1 %.not, label %56, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %30, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %27, %32
  %34 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %36, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %33, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %45, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %42, %47
  %49 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %51, i32 6
  store i64 %48, i64* %52, align 8
  %53 = add i64 %.01, 1
  br label %54

54:                                               ; preds = %40, %25
  %.1 = phi i64 [ %53, %40 ], [ %.01, %25 ]
  %55 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 0
  br label %24, !llvm.loop !9

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %69, %56
  %.15 = phi i32 [ 0, %56 ], [ %70, %69 ]
  %58 = icmp slt i32 %.15, %1
  br i1 %58, label %59, label %71

59:                                               ; preds = %57
  %60 = zext i32 %.15 to i64
  %61 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %60, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = zext i32 %.15 to i64
  %64 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %63, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  %67 = zext i32 %.15 to i64
  %68 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %67, i32 5
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %59
  %70 = add nuw nsw i32 %.15, 1
  br label %57, !llvm.loop !10

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 0, i32 5
  %73 = load i64, i64* %72, align 8
  br label %74

74:                                               ; preds = %86, %71
  %.2 = phi i32 [ 0, %71 ], [ %87, %86 ]
  %.02 = phi i64 [ %73, %71 ], [ %.13, %86 ]
  %75 = icmp slt i32 %.2, %1
  br i1 %75, label %76, label %88

76:                                               ; preds = %74
  %77 = zext i32 %.2 to i64
  %78 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %77, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ugt i64 %79, %.02
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = zext i32 %.2 to i64
  %83 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %82, i32 5
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %76
  %.13 = phi i64 [ %84, %81 ], [ %.02, %76 ]
  br label %86

86:                                               ; preds = %85
  %87 = add nuw nsw i32 %.2, 1
  br label %74, !llvm.loop !11

88:                                               ; preds = %74
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str, i64 0, i64 0))
  %89 = sext i32 %1 to i64
  %90 = add i64 %.01, %89
  %91 = sext i32 %4 to i64
  %92 = mul i64 %90, %91
  %93 = mul nsw i32 %1, %5
  %94 = sext i32 %93 to i64
  %95 = add i64 %92, %94
  %96 = add i64 %.02, %95
  %97 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 noundef %96) #5
  %98 = icmp eq i32 %3, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %88
  %100 = icmp eq i32 %3, 3
  br i1 %100, label %101, label %107

101:                                              ; preds = %99, %88
  %102 = load i64, i64* @loop_time, align 8
  %103 = uitofp i64 %102 to double
  %104 = uitofp i64 %96 to double
  %105 = fdiv double %103, %104
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double noundef %105) #5
  br label %107

107:                                              ; preds = %101, %99
  %108 = icmp eq i32 %3, 2
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = icmp eq i32 %3, 3
  br i1 %110, label %111, label %120

111:                                              ; preds = %109, %107
  %112 = load i64, i64* @prog_time, align 8
  %113 = uitofp i64 %112 to double
  %114 = add i64 %96, %112
  %115 = load i64, i64* @loop_time, align 8
  %116 = sub i64 %114, %115
  %117 = uitofp i64 %116 to double
  %118 = fdiv double %113, %117
  %119 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), double noundef %118) #5
  br label %120

120:                                              ; preds = %111, %109
  %.not6 = icmp eq %struct._IO_FILE* %2, null
  br i1 %.not6, label %145, label %121

121:                                              ; preds = %120
  %122 = icmp eq i32 %3, 1
  br i1 %122, label %125, label %123

123:                                              ; preds = %121
  %124 = icmp eq i32 %3, 3
  br i1 %124, label %125, label %131

125:                                              ; preds = %123, %121
  %126 = load i64, i64* @loop_time, align 8
  %127 = uitofp i64 %126 to double
  %128 = uitofp i64 %96 to double
  %129 = fdiv double %127, %128
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), double noundef %129) #5
  br label %131

131:                                              ; preds = %125, %123
  %132 = icmp eq i32 %3, 2
  br i1 %132, label %135, label %133

133:                                              ; preds = %131
  %134 = icmp eq i32 %3, 3
  br i1 %134, label %135, label %144

135:                                              ; preds = %133, %131
  %136 = load i64, i64* @prog_time, align 8
  %137 = uitofp i64 %136 to double
  %138 = add i64 %96, %136
  %139 = load i64, i64* @loop_time, align 8
  %140 = sub i64 %138, %139
  %141 = uitofp i64 %140 to double
  %142 = fdiv double %137, %141
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), double noundef %142) #5
  br label %144

144:                                              ; preds = %135, %133
  br label %145

145:                                              ; preds = %144, %120
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @specul_time_r(%struct.epoch_t* noundef %0, i32 noundef %1, i32 noundef %2, %struct._IO_FILE* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %93

9:                                                ; preds = %7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %24, %9
  %.012 = phi i32 [ 0, %9 ], [ %25, %24 ]
  %11 = icmp slt i32 %.012, %1
  br i1 %11, label %12, label %26

12:                                               ; preds = %10
  %13 = zext i32 %.012 to i64
  %14 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %13, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = zext i32 %.012 to i64
  %17 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %16, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = zext i32 %.012 to i64
  %21 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %20, i32 5
  store i64 %19, i64* %21, align 8
  %22 = zext i32 %.012 to i64
  %23 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %22, i32 6
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %12
  %25 = add nuw nsw i32 %.012, 1
  br label %10, !llvm.loop !12

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %58, %26
  %.05 = phi i64 [ 0, %26 ], [ %.16, %58 ]
  %.04.in = phi %struct.hard_raw** [ @hard_raw_list, %26 ], [ %59, %58 ]
  %.04 = load %struct.hard_raw*, %struct.hard_raw** %.04.in, align 8
  %.not18 = icmp eq %struct.hard_raw* %.04, null
  br i1 %.not18, label %60, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.04, i64 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.04, i64 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %33, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %30, %35
  %37 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.04, i64 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %39, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %36, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.04, i64 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %46, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = sext i32 %45 to i64
  %50 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %49, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.04, i64 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %55, i32 6
  store i64 %52, i64* %56, align 8
  %57 = add i64 %.05, 1
  br label %58

58:                                               ; preds = %43, %28
  %.16 = phi i64 [ %57, %43 ], [ %.05, %28 ]
  %59 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.04, i64 0, i32 0
  br label %27, !llvm.loop !13

60:                                               ; preds = %27
  br label %61

61:                                               ; preds = %73, %60
  %.113 = phi i32 [ 0, %60 ], [ %74, %73 ]
  %62 = icmp slt i32 %.113, %1
  br i1 %62, label %63, label %75

63:                                               ; preds = %61
  %64 = zext i32 %.113 to i64
  %65 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %64, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = zext i32 %.113 to i64
  %68 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %67, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = zext i32 %.113 to i64
  %72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %71, i32 5
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %63
  %74 = add nuw nsw i32 %.113, 1
  br label %61, !llvm.loop !14

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 0, i32 5
  %77 = load i64, i64* %76, align 8
  br label %78

78:                                               ; preds = %90, %75
  %.214 = phi i32 [ 0, %75 ], [ %91, %90 ]
  %.07 = phi i64 [ %77, %75 ], [ %.18, %90 ]
  %79 = icmp slt i32 %.214, %1
  br i1 %79, label %80, label %92

80:                                               ; preds = %78
  %81 = zext i32 %.214 to i64
  %82 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %81, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ugt i64 %83, %.07
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = zext i32 %.214 to i64
  %87 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %86, i32 5
  %88 = load i64, i64* %87, align 8
  br label %89

89:                                               ; preds = %85, %80
  %.18 = phi i64 [ %88, %85 ], [ %.07, %80 ]
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.214, 1
  br label %78, !llvm.loop !15

92:                                               ; preds = %78
  br label %219

93:                                               ; preds = %7
  %94 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 noundef %2) #5
  br label %95

95:                                               ; preds = %109, %93
  %.315 = phi i32 [ 0, %93 ], [ %110, %109 ]
  %96 = icmp slt i32 %.315, %1
  br i1 %96, label %97, label %111

97:                                               ; preds = %95
  %98 = zext i32 %.315 to i64
  %99 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %98, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = zext i32 %.315 to i64
  %102 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %101, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %100, %103
  %105 = zext i32 %.315 to i64
  %106 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %105, i32 5
  store i64 %104, i64* %106, align 8
  %107 = zext i32 %.315 to i64
  %108 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %107, i32 6
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %97
  %110 = add nuw nsw i32 %.315, 1
  br label %95, !llvm.loop !16

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %148, %111
  %.416 = phi i32 [ %2, %111 ], [ %149, %148 ]
  %113 = icmp slt i32 %.416, %1
  br i1 %113, label %114, label %150

114:                                              ; preds = %112
  %115 = sub nsw i32 %.416, %2
  br label %116

116:                                              ; preds = %136, %114
  %.02 = phi i32 [ %115, %114 ], [ %137, %136 ]
  %.01 = phi i64 [ 0, %114 ], [ %.1, %136 ]
  %117 = icmp slt i32 %.02, %.416
  br i1 %117, label %118, label %138

118:                                              ; preds = %116
  %119 = sext i32 %.02 to i64
  %120 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %119, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = sext i32 %.02 to i64
  %123 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %122, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %121, %124
  %126 = icmp ugt i64 %125, %.01
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = sext i32 %.02 to i64
  %129 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %128, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = sext i32 %.02 to i64
  %132 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %131, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  br label %135

135:                                              ; preds = %127, %118
  %.1 = phi i64 [ %134, %127 ], [ %.01, %118 ]
  br label %136

136:                                              ; preds = %135
  %137 = add nsw i32 %.02, 1
  br label %116, !llvm.loop !17

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %145, %138
  %.13 = phi i32 [ %.416, %138 ], [ %146, %145 ]
  %140 = add nsw i32 %.416, %2
  %141 = icmp slt i32 %.13, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = sext i32 %.13 to i64
  %144 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %143, i32 6
  store i64 %.01, i64* %144, align 8
  br label %145

145:                                              ; preds = %142
  %146 = add nsw i32 %.13, 1
  br label %139, !llvm.loop !18

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147
  %149 = add nsw i32 %.416, %2
  br label %112, !llvm.loop !19

150:                                              ; preds = %112
  br label %151

151:                                              ; preds = %184, %150
  %.2 = phi i64 [ 0, %150 ], [ %.3, %184 ]
  %.0.in = phi %struct.hard_raw** [ @hard_raw_list, %150 ], [ %185, %184 ]
  %.0 = load %struct.hard_raw*, %struct.hard_raw** %.0.in, align 8
  %.not = icmp eq %struct.hard_raw* %.0, null
  br i1 %.not, label %186, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %157, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %154, %159
  %161 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %163, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp ugt i64 %160, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %152
  %168 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %170, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = sext i32 %169 to i64
  %174 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %173, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %172, %175
  %177 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %179, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %176
  store i64 %182, i64* %180, align 8
  %183 = add i64 %.2, 1
  br label %184

184:                                              ; preds = %167, %152
  %.3 = phi i64 [ %183, %167 ], [ %.2, %152 ]
  %185 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %.0, i64 0, i32 0
  br label %151, !llvm.loop !20

186:                                              ; preds = %151
  br label %187

187:                                              ; preds = %199, %186
  %.5 = phi i32 [ 0, %186 ], [ %200, %199 ]
  %188 = icmp slt i32 %.5, %1
  br i1 %188, label %189, label %201

189:                                              ; preds = %187
  %190 = zext i32 %.5 to i64
  %191 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %190, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = zext i32 %.5 to i64
  %194 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %193, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %192, %195
  %197 = zext i32 %.5 to i64
  %198 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %197, i32 5
  store i64 %196, i64* %198, align 8
  br label %199

199:                                              ; preds = %189
  %200 = add nuw nsw i32 %.5, 1
  br label %187, !llvm.loop !21

201:                                              ; preds = %187
  %202 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 0, i32 5
  %203 = load i64, i64* %202, align 8
  br label %204

204:                                              ; preds = %216, %201
  %.6 = phi i32 [ 0, %201 ], [ %217, %216 ]
  %.29 = phi i64 [ %203, %201 ], [ %.310, %216 ]
  %205 = icmp slt i32 %.6, %1
  br i1 %205, label %206, label %218

206:                                              ; preds = %204
  %207 = zext i32 %.6 to i64
  %208 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %207, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = icmp ugt i64 %209, %.29
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = zext i32 %.6 to i64
  %213 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %0, i64 %212, i32 5
  %214 = load i64, i64* %213, align 8
  br label %215

215:                                              ; preds = %211, %206
  %.310 = phi i64 [ %214, %211 ], [ %.29, %206 ]
  br label %216

216:                                              ; preds = %215
  %217 = add nuw nsw i32 %.6, 1
  br label %204, !llvm.loop !22

218:                                              ; preds = %204
  br label %219

219:                                              ; preds = %218, %92
  %.411 = phi i64 [ %.07, %92 ], [ %.29, %218 ]
  %.4 = phi i64 [ %.05, %92 ], [ %.2, %218 ]
  %220 = sext i32 %1 to i64
  %221 = add i64 %.4, %220
  %222 = sext i32 %5 to i64
  %223 = mul i64 %221, %222
  %224 = mul nsw i32 %1, %6
  %225 = sext i32 %224 to i64
  %226 = add i64 %223, %225
  %227 = add i64 %.411, %226
  %228 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 noundef %227) #5
  %229 = icmp eq i32 %4, 1
  br i1 %229, label %232, label %230

230:                                              ; preds = %219
  %231 = icmp eq i32 %4, 3
  br i1 %231, label %232, label %238

232:                                              ; preds = %230, %219
  %233 = load i64, i64* @loop_time, align 8
  %234 = uitofp i64 %233 to double
  %235 = uitofp i64 %227 to double
  %236 = fdiv double %234, %235
  %237 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double noundef %236) #5
  br label %238

238:                                              ; preds = %232, %230
  %239 = icmp eq i32 %4, 2
  br i1 %239, label %242, label %240

240:                                              ; preds = %238
  %241 = icmp eq i32 %4, 3
  br i1 %241, label %242, label %251

242:                                              ; preds = %240, %238
  %243 = load i64, i64* @prog_time, align 8
  %244 = uitofp i64 %243 to double
  %245 = add i64 %227, %243
  %246 = load i64, i64* @loop_time, align 8
  %247 = sub i64 %245, %246
  %248 = uitofp i64 %247 to double
  %249 = fdiv double %244, %248
  %250 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), double noundef %249) #5
  br label %251

251:                                              ; preds = %242, %240
  %.not17 = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not17, label %276, label %252

252:                                              ; preds = %251
  %253 = icmp eq i32 %4, 1
  br i1 %253, label %256, label %254

254:                                              ; preds = %252
  %255 = icmp eq i32 %4, 3
  br i1 %255, label %256, label %262

256:                                              ; preds = %254, %252
  %257 = load i64, i64* @loop_time, align 8
  %258 = uitofp i64 %257 to double
  %259 = uitofp i64 %227 to double
  %260 = fdiv double %258, %259
  %261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef %2, double noundef %260) #5
  br label %262

262:                                              ; preds = %256, %254
  %263 = icmp eq i32 %4, 2
  br i1 %263, label %266, label %264

264:                                              ; preds = %262
  %265 = icmp eq i32 %4, 3
  br i1 %265, label %266, label %275

266:                                              ; preds = %264, %262
  %267 = load i64, i64* @prog_time, align 8
  %268 = uitofp i64 %267 to double
  %269 = add i64 %227, %267
  %270 = load i64, i64* @loop_time, align 8
  %271 = sub i64 %269, %270
  %272 = uitofp i64 %271 to double
  %273 = fdiv double %268, %272
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 noundef %2, double noundef %273) #5
  br label %275

275:                                              ; preds = %266, %264
  br label %276

276:                                              ; preds = %275, %251
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
