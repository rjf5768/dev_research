; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/functs.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @speedup_test(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %12, i64* noundef %7)
  br label %14

14:                                               ; preds = %21, %1
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %17 = call i8* @strcpy(i8* noundef %15, i8* noundef %16) #3
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = call i8* @fgets(i8* noundef %18, i32 noundef 100, %struct._IO_FILE* noundef %19)
  br label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 69
  br i1 %25, label %14, label %26, !llvm.loop !4

26:                                               ; preds = %21
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %28, i64* noundef %6, i64* noundef %8) #3
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %30, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* noundef %31, i64* noundef %6, i64* noundef %9) #3
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* @loop_time, align 8
  %36 = load i64, i64* @loop_time, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 noundef %36)
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* @prog_time, align 8
  %39 = load i64, i64* @prog_time, align 8
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 noundef %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %41, %42
  %44 = uitofp i64 %43 to double
  %45 = load i64, i64* %9, align 8
  %46 = uitofp i64 %45 to double
  %47 = fdiv double %44, %46
  %48 = fmul double %47, 1.000000e+02
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), double noundef %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %50)
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
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %10)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %13 = call i8* @fgets(i8* noundef %11, i32 noundef 100, %struct._IO_FILE* noundef %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %15, i64* noundef %7)
  br label %17

17:                                               ; preds = %32, %1
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 2
  %19 = load i8, i8* %18, align 2
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 58
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = call i8* @strcpy(i8* noundef %26, i8* noundef %27) #3
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %31 = call i8* @fgets(i8* noundef %29, i32 noundef 100, %struct._IO_FILE* noundef %30)
  br label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 69
  br i1 %36, label %17, label %37, !llvm.loop !6

37:                                               ; preds = %32
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %38, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %39, i64* noundef %6, i64* noundef %8) #3
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* noundef %41)
  %42 = load i64, i64* %9, align 8
  ret i64 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_hard_raws() #0 {
  %1 = alloca %struct.hard_raw*, align 8
  store %struct.hard_raw* null, %struct.hard_raw** %1, align 8
  %2 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %2, %struct.hard_raw** %1, align 8
  br label %3

3:                                                ; preds = %35, %0
  %4 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %5 = icmp ne %struct.hard_raw* %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %8 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %11 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %6
  %15 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %16 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %15, i32 0, i32 1
  %17 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %18 = icmp ne %struct.hard_raw* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %21 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %20, i32 0, i32 0
  %22 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %23 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %24 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %23, i32 0, i32 1
  %25 = load %struct.hard_raw*, %struct.hard_raw** %24, align 8
  %26 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %25, i32 0, i32 0
  store %struct.hard_raw* %22, %struct.hard_raw** %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %29 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %28, i32 0, i32 0
  %30 = load %struct.hard_raw*, %struct.hard_raw** %29, align 8
  store %struct.hard_raw* %30, %struct.hard_raw** %1, align 8
  br label %35

31:                                               ; preds = %6
  %32 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %33 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %32, i32 0, i32 0
  %34 = load %struct.hard_raw*, %struct.hard_raw** %33, align 8
  store %struct.hard_raw* %34, %struct.hard_raw** %1, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %3, !llvm.loop !7

36:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @specul_time_o(%struct.epoch_t* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.epoch_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hard_raw*, align 8
  store %struct.epoch_t* %0, %struct.epoch_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %45, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %22, i64 %24
  %26 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %28, i64 %30
  %32 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %27, %33
  %35 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %38, i32 0, i32 5
  store i64 %34, i64* %39, align 8
  %40 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %40, i64 %42
  %44 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %17, !llvm.loop !8

48:                                               ; preds = %17
  store %struct.hard_raw* null, %struct.hard_raw** %16, align 8
  %49 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %49, %struct.hard_raw** %16, align 8
  br label %50

50:                                               ; preds = %97, %48
  %51 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %52 = icmp ne %struct.hard_raw* %51, null
  br i1 %52, label %53, label %101

53:                                               ; preds = %50
  %54 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %55 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %58 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %59 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %57, i64 %61
  %63 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %56, %64
  %66 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %67 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %68 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %66, i64 %70
  %72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ugt i64 %65, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %53
  %76 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %77 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %80 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %81 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %79, i64 %83
  %85 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %78, %86
  %88 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %89 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %90 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %88, i64 %92
  %94 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %93, i32 0, i32 6
  store i64 %87, i64* %94, align 8
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %15, align 8
  br label %97

97:                                               ; preds = %75, %53
  %98 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %99 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %98, i32 0, i32 0
  %100 = load %struct.hard_raw*, %struct.hard_raw** %99, align 8
  store %struct.hard_raw* %100, %struct.hard_raw** %16, align 8
  br label %50, !llvm.loop !9

101:                                              ; preds = %50
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %125, %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %107, i64 %109
  %111 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %113, i64 %115
  %117 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %112, %118
  %120 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %120, i64 %122
  %124 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %123, i32 0, i32 5
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %106
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %102, !llvm.loop !10

128:                                              ; preds = %102
  %129 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %130 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %129, i64 0
  %131 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %154, %128
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %133
  %138 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %138, i64 %140
  %142 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %147, i64 %149
  %151 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %14, align 8
  br label %153

153:                                              ; preds = %146, %137
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %133, !llvm.loop !11

157:                                              ; preds = %133
  %158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i64, i64* %15, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %159, %161
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %162, %164
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %12, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = add i64 %165, %169
  %171 = load i64, i64* %14, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %14, align 8
  %173 = load i64, i64* %14, align 8
  %174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 noundef %173)
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %180, label %177

177:                                              ; preds = %157
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %187

180:                                              ; preds = %177, %157
  %181 = load i64, i64* @loop_time, align 8
  %182 = uitofp i64 %181 to double
  %183 = load i64, i64* %14, align 8
  %184 = uitofp i64 %183 to double
  %185 = fdiv double %182, %184
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double noundef %185)
  br label %187

187:                                              ; preds = %180, %177
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, 3
  br i1 %192, label %193, label %204

193:                                              ; preds = %190, %187
  %194 = load i64, i64* @prog_time, align 8
  %195 = uitofp i64 %194 to double
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* @prog_time, align 8
  %198 = add i64 %196, %197
  %199 = load i64, i64* @loop_time, align 8
  %200 = sub i64 %198, %199
  %201 = uitofp i64 %200 to double
  %202 = fdiv double %195, %201
  %203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), double noundef %202)
  br label %204

204:                                              ; preds = %193, %190
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %206 = icmp ne %struct._IO_FILE* %205, null
  br i1 %206, label %207, label %240

207:                                              ; preds = %204
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %213, label %221

213:                                              ; preds = %210, %207
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %215 = load i64, i64* @loop_time, align 8
  %216 = uitofp i64 %215 to double
  %217 = load i64, i64* %14, align 8
  %218 = uitofp i64 %217 to double
  %219 = fdiv double %216, %218
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %214, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), double noundef %219)
  br label %221

221:                                              ; preds = %213, %210
  %222 = load i32, i32* %10, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %10, align 4
  %226 = icmp eq i32 %225, 3
  br i1 %226, label %227, label %239

227:                                              ; preds = %224, %221
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %229 = load i64, i64* @prog_time, align 8
  %230 = uitofp i64 %229 to double
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* @prog_time, align 8
  %233 = add i64 %231, %232
  %234 = load i64, i64* @loop_time, align 8
  %235 = sub i64 %233, %234
  %236 = uitofp i64 %235 to double
  %237 = fdiv double %230, %236
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %228, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), double noundef %237)
  br label %239

239:                                              ; preds = %227, %224
  br label %240

240:                                              ; preds = %239, %204
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @specul_time_r(%struct.epoch_t* noundef %0, i32 noundef %1, i32 noundef %2, %struct._IO_FILE* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.epoch_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.hard_raw*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.hard_raw*, align 8
  store %struct.epoch_t* %0, %struct.epoch_t** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct._IO_FILE* %3, %struct._IO_FILE** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %172

24:                                               ; preds = %7
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %54, %24
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %31, i64 %33
  %35 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %37, i64 %39
  %41 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %36, %42
  %44 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %44, i64 %46
  %48 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %47, i32 0, i32 5
  store i64 %43, i64* %48, align 8
  %49 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %49, i64 %51
  %53 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %26, !llvm.loop !12

57:                                               ; preds = %26
  store %struct.hard_raw* null, %struct.hard_raw** %18, align 8
  %58 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %58, %struct.hard_raw** %18, align 8
  br label %59

59:                                               ; preds = %111, %57
  %60 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %61 = icmp ne %struct.hard_raw* %60, null
  br i1 %61, label %62, label %115

62:                                               ; preds = %59
  %63 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %64 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %67 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %68 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %66, i64 %70
  %72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %65, %73
  %75 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %76 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %77 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %75, i64 %79
  %81 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %74, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %62
  %85 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %86 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %87 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %85, i64 %89
  %91 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %94 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %95 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %93, i64 %97
  %99 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %92, %100
  %102 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %103 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %104 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %102, i64 %106
  %108 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %107, i32 0, i32 6
  store i64 %101, i64* %108, align 8
  %109 = load i64, i64* %17, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %17, align 8
  br label %111

111:                                              ; preds = %84, %62
  %112 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %113 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %112, i32 0, i32 0
  %114 = load %struct.hard_raw*, %struct.hard_raw** %113, align 8
  store %struct.hard_raw* %114, %struct.hard_raw** %18, align 8
  br label %59, !llvm.loop !13

115:                                              ; preds = %59
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %139, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %121, i64 %123
  %125 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %127, i64 %129
  %131 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %126, %132
  %134 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %134, i64 %136
  %138 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %137, i32 0, i32 5
  store i64 %133, i64* %138, align 8
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %116, !llvm.loop !14

142:                                              ; preds = %116
  %143 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %144 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %143, i64 0
  %145 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %168, %142
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %152, i64 %154
  %156 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %16, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %151
  %161 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %161, i64 %163
  %165 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %16, align 8
  br label %167

167:                                              ; preds = %160, %151
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %147, !llvm.loop !15

171:                                              ; preds = %147
  br label %394

172:                                              ; preds = %7
  store i64 0, i64* %20, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 noundef %173)
  store i32 0, i32* %15, align 4
  br label %175

175:                                              ; preds = %203, %172
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %175
  %180 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %180, i64 %182
  %184 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %186, i64 %188
  %190 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %185, %191
  %193 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %193, i64 %195
  %197 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %196, i32 0, i32 5
  store i64 %192, i64* %197, align 8
  %198 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %198, i64 %200
  %202 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %201, i32 0, i32 6
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %179
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %15, align 4
  br label %175, !llvm.loop !16

206:                                              ; preds = %175
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %273, %206
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %277

212:                                              ; preds = %208
  store i64 0, i64* %20, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %10, align 4
  %215 = sub nsw i32 %213, %214
  store i32 %215, i32* %19, align 4
  br label %216

216:                                              ; preds = %251, %212
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %254

220:                                              ; preds = %216
  %221 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %221, i64 %223
  %225 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %227, i64 %229
  %231 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %226, %232
  %234 = load i64, i64* %20, align 8
  %235 = icmp ugt i64 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %220
  %237 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %237, i64 %239
  %241 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %240, i32 0, i32 5
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %243, i64 %245
  %247 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %242, %248
  store i64 %249, i64* %20, align 8
  br label %250

250:                                              ; preds = %236, %220
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %19, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %19, align 4
  br label %216, !llvm.loop !17

254:                                              ; preds = %216
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %19, align 4
  br label %256

256:                                              ; preds = %269, %254
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %258, %259
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %256
  %263 = load i64, i64* %20, align 8
  %264 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %264, i64 %266
  %268 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %267, i32 0, i32 6
  store i64 %263, i64* %268, align 8
  br label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %19, align 4
  br label %256, !llvm.loop !18

272:                                              ; preds = %256
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %15, align 4
  br label %208, !llvm.loop !19

277:                                              ; preds = %208
  store %struct.hard_raw* null, %struct.hard_raw** %21, align 8
  %278 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %278, %struct.hard_raw** %21, align 8
  br label %279

279:                                              ; preds = %333, %277
  %280 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %281 = icmp ne %struct.hard_raw* %280, null
  br i1 %281, label %282, label %337

282:                                              ; preds = %279
  %283 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %284 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %287 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %288 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %286, i64 %290
  %292 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %291, i32 0, i32 6
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %285, %293
  %295 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %296 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %297 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %295, i64 %299
  %301 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = icmp ugt i64 %294, %302
  br i1 %303, label %304, label %333

304:                                              ; preds = %282
  %305 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %306 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %307 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %305, i64 %309
  %311 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %314 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %315 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %313, i64 %317
  %319 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %318, i32 0, i32 6
  %320 = load i64, i64* %319, align 8
  %321 = add i64 %312, %320
  %322 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %323 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %324 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %322, i64 %326
  %328 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = add i64 %329, %321
  store i64 %330, i64* %328, align 8
  %331 = load i64, i64* %17, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* %17, align 8
  br label %333

333:                                              ; preds = %304, %282
  %334 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %335 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %334, i32 0, i32 0
  %336 = load %struct.hard_raw*, %struct.hard_raw** %335, align 8
  store %struct.hard_raw* %336, %struct.hard_raw** %21, align 8
  br label %279, !llvm.loop !20

337:                                              ; preds = %279
  store i32 0, i32* %15, align 4
  br label %338

338:                                              ; preds = %361, %337
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %364

342:                                              ; preds = %338
  %343 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %344 = load i32, i32* %15, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %343, i64 %345
  %347 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %350 = load i32, i32* %15, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %349, i64 %351
  %353 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = add i64 %348, %354
  %356 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %356, i64 %358
  %360 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %359, i32 0, i32 5
  store i64 %355, i64* %360, align 8
  br label %361

361:                                              ; preds = %342
  %362 = load i32, i32* %15, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %15, align 4
  br label %338, !llvm.loop !21

364:                                              ; preds = %338
  %365 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %366 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %365, i64 0
  %367 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %369

369:                                              ; preds = %390, %364
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %393

373:                                              ; preds = %369
  %374 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %374, i64 %376
  %378 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %377, i32 0, i32 5
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* %16, align 8
  %381 = icmp ugt i64 %379, %380
  br i1 %381, label %382, label %389

382:                                              ; preds = %373
  %383 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %383, i64 %385
  %387 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %386, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %16, align 8
  br label %389

389:                                              ; preds = %382, %373
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %15, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %15, align 4
  br label %369, !llvm.loop !22

393:                                              ; preds = %369
  br label %394

394:                                              ; preds = %393, %171
  %395 = load i64, i64* %17, align 8
  %396 = load i32, i32* %9, align 4
  %397 = sext i32 %396 to i64
  %398 = add i64 %395, %397
  %399 = load i32, i32* %13, align 4
  %400 = sext i32 %399 to i64
  %401 = mul i64 %398, %400
  %402 = load i32, i32* %9, align 4
  %403 = load i32, i32* %14, align 4
  %404 = mul nsw i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = add i64 %401, %405
  %407 = load i64, i64* %16, align 8
  %408 = add i64 %407, %406
  store i64 %408, i64* %16, align 8
  %409 = load i64, i64* %16, align 8
  %410 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 noundef %409)
  %411 = load i32, i32* %12, align 4
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %416, label %413

413:                                              ; preds = %394
  %414 = load i32, i32* %12, align 4
  %415 = icmp eq i32 %414, 3
  br i1 %415, label %416, label %423

416:                                              ; preds = %413, %394
  %417 = load i64, i64* @loop_time, align 8
  %418 = uitofp i64 %417 to double
  %419 = load i64, i64* %16, align 8
  %420 = uitofp i64 %419 to double
  %421 = fdiv double %418, %420
  %422 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double noundef %421)
  br label %423

423:                                              ; preds = %416, %413
  %424 = load i32, i32* %12, align 4
  %425 = icmp eq i32 %424, 2
  br i1 %425, label %429, label %426

426:                                              ; preds = %423
  %427 = load i32, i32* %12, align 4
  %428 = icmp eq i32 %427, 3
  br i1 %428, label %429, label %440

429:                                              ; preds = %426, %423
  %430 = load i64, i64* @prog_time, align 8
  %431 = uitofp i64 %430 to double
  %432 = load i64, i64* %16, align 8
  %433 = load i64, i64* @prog_time, align 8
  %434 = add i64 %432, %433
  %435 = load i64, i64* @loop_time, align 8
  %436 = sub i64 %434, %435
  %437 = uitofp i64 %436 to double
  %438 = fdiv double %431, %437
  %439 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), double noundef %438)
  br label %440

440:                                              ; preds = %429, %426
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %442 = icmp ne %struct._IO_FILE* %441, null
  br i1 %442, label %443, label %478

443:                                              ; preds = %440
  %444 = load i32, i32* %12, align 4
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %12, align 4
  %448 = icmp eq i32 %447, 3
  br i1 %448, label %449, label %458

449:                                              ; preds = %446, %443
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %451 = load i32, i32* %10, align 4
  %452 = load i64, i64* @loop_time, align 8
  %453 = uitofp i64 %452 to double
  %454 = load i64, i64* %16, align 8
  %455 = uitofp i64 %454 to double
  %456 = fdiv double %453, %455
  %457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %450, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef %451, double noundef %456)
  br label %458

458:                                              ; preds = %449, %446
  %459 = load i32, i32* %12, align 4
  %460 = icmp eq i32 %459, 2
  br i1 %460, label %464, label %461

461:                                              ; preds = %458
  %462 = load i32, i32* %12, align 4
  %463 = icmp eq i32 %462, 3
  br i1 %463, label %464, label %477

464:                                              ; preds = %461, %458
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %466 = load i32, i32* %10, align 4
  %467 = load i64, i64* @prog_time, align 8
  %468 = uitofp i64 %467 to double
  %469 = load i64, i64* %16, align 8
  %470 = load i64, i64* @prog_time, align 8
  %471 = add i64 %469, %470
  %472 = load i64, i64* @loop_time, align 8
  %473 = sub i64 %471, %472
  %474 = uitofp i64 %473 to double
  %475 = fdiv double %468, %474
  %476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %465, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 noundef %466, double noundef %475)
  br label %477

477:                                              ; preds = %464, %461
  br label %478

478:                                              ; preds = %477, %440
  ret void
}

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
