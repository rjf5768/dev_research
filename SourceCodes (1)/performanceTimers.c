; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/performanceTimers.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/performanceTimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TimersSt = type { i64, i64, i64, i64, i32, i32, double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.TimerGlobalSt = type { double, double, double }
%struct.timeval = type { i64, i64 }
%struct.RankReduceDataSt = type { double, i32 }

@.str = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"timestep\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  position\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"  velocity\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"  redistribute\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"    atomHalo\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"  force\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"    eamHalo\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"commHalo\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"commReduce\00", align 1
@timerName = dso_local global [11 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0)], align 16
@perfTimer = internal global [11 x %struct.TimersSt] zeroinitializer, align 16
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"\0A\0ATimings for Rank %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"        Timer        # Calls    Avg/Call (s)   Total (s)    %% Loop\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"___________________________________________________________________\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"%-16s%12lu     %8.4f      %8.4f    %8.2f\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"\0ATiming Statistics Across %d Ranks:\0A\00", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"        Timer        Rank: Min(s)       Rank: Max(s)      Avg(s)    Stdev(s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [79 x i8] c"_____________________________________________________________________________\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%-16s%6d:%10.4f  %6d:%10.4f  %10.4f  %10.4f\0A\00", align 1
@perfGlobal = internal global %struct.TimerGlobalSt zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [54 x i8] c"\0A---------------------------------------------------\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c" Average atom update rate:     %6.2f us/atom/task\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"---------------------------------------------------\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c" Average all atom update rate: %6.2f us/atom\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c" Average atom rate:            %6.2f atoms/us\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0APerformance Results:\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"  TotalRanks: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"  ReportingTimeUnits: seconds\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Performance Results For Rank %d:\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"  Timer: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"    CallCount:  %lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"    AvgPerCall: %8.4f\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"    Total:      %8.4f\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"    PercentLoop: %8.2f\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Performance Results Across Ranks:\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"    MinRank: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"    MinTime: %8.4f\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"    MaxRank: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"    MaxTime: %8.4f\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"    AvgTime: %8.4f\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"    StdevTime: %8.4f\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Performance Global Update Rates:\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"  AtomUpdateRate:\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"    AverageRate: %6.2f\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"    Units: us/atom/task\0A\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"  AllAtomUpdateRate:\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"    Units: us/atom\0A\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"  AtomRate:\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"    Units: atoms/us\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @profileStart(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 @getTime()
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %6, i32 0, i32 0
  store i64 %3, i64* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @getTime() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* noundef %1, i8* noundef null) #3
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 1000000, %5
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %6, %8
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @profileStop(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = call i64 @getTime()
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %10, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %17
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %24
  store i64 %30, i64* %28, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getElapsedTime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %4 = call double @getTick()
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = uitofp i64 %9 to double
  %11 = fmul double %4, %10
  store double %11, double* %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load double, double* %3, align 8
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define internal double @getTick() #0 {
  %1 = alloca double, align 8
  store double 0x3EB0C6F7A0B5ED8D, double* %1, align 8
  %2 = load double, double* %1, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printPerformanceResults(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  call void @timerStats()
  %11 = call i32 @printRank()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %195

14:                                               ; preds = %2
  %15 = call double @getTick()
  store double %15, double* %5, align 8
  %16 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 1, i32 1), align 8
  %17 = uitofp i64 %16 to double
  %18 = load double, double* %5, align 8
  %19 = fmul double %17, %18
  store double %19, double* %6, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = call i32 @getMyRank()
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %71, %14
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 11
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = uitofp i64 %35 to double
  %37 = load double, double* %5, align 8
  %38 = fmul double %36, %37
  store double %38, double* %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %30
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load double, double* %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = uitofp i64 %61 to double
  %63 = fdiv double %56, %62
  %64 = load double, double* %8, align 8
  %65 = load double, double* %8, align 8
  %66 = load double, double* %6, align 8
  %67 = fdiv double %65, %66
  %68 = fmul double %67, 1.000000e+02
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* noundef %50, i64 noundef %55, double noundef %63, double noundef %64, double noundef %68)
  br label %70

70:                                               ; preds = %45, %30
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %27, !llvm.loop !4

74:                                               ; preds = %27
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i32 @getNRanks()
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 noundef %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0))
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %138, %74
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 11
  br i1 %84, label %85, label %141

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %85
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %105, i32 0, i32 6
  %107 = load double, double* %106, align 8
  %108 = load double, double* %5, align 8
  %109 = fmul double %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %117, i32 0, i32 7
  %119 = load double, double* %118, align 8
  %120 = load double, double* %5, align 8
  %121 = fmul double %119, %120
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %124, i32 0, i32 8
  %126 = load double, double* %125, align 8
  %127 = load double, double* %5, align 8
  %128 = fmul double %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %131, i32 0, i32 9
  %133 = load double, double* %132, align 8
  %134 = load double, double* %5, align 8
  %135 = fmul double %133, %134
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* noundef %97, i32 noundef %102, double noundef %109, i32 noundef %114, double noundef %121, double noundef %128, double noundef %135)
  br label %137

137:                                              ; preds = %92, %85
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %82, !llvm.loop !6

141:                                              ; preds = %82
  %142 = load i32, i32* %3, align 4
  %143 = sitofp i32 %142 to double
  %144 = call i32 @getNRanks()
  %145 = sitofp i32 %144 to double
  %146 = fdiv double %143, %145
  store double %146, double* %10, align 8
  %147 = load double, double* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 8), align 8
  %148 = load double, double* %5, align 8
  %149 = fmul double %147, %148
  %150 = fmul double %149, 1.000000e+06
  %151 = load double, double* %10, align 8
  %152 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 2), align 16
  %153 = uitofp i64 %152 to double
  %154 = fmul double %151, %153
  %155 = load i32, i32* %4, align 4
  %156 = sitofp i32 %155 to double
  %157 = fmul double %154, %156
  %158 = fdiv double %150, %157
  store double %158, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 0), align 8
  %159 = load double, double* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 8), align 8
  %160 = load double, double* %5, align 8
  %161 = fmul double %159, %160
  %162 = fmul double %161, 1.000000e+06
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 2), align 16
  %166 = mul i64 %164, %165
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %166, %168
  %170 = uitofp i64 %169 to double
  %171 = fdiv double %162, %170
  store double %171, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %172 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %173 = fdiv double 1.000000e+00, %172
  store double %173, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 2), align 8
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %174, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %177 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 0), align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %176, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0), double noundef %177)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0))
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %181, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %184 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %183, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), double noundef %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %186, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0))
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %188, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %191 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 2), align 8
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %190, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), double noundef %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %193, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0))
  br label %195

195:                                              ; preds = %141, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @timerStats() #0 {
  %1 = alloca [11 x double], align 16
  %2 = alloca [11 x double], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [11 x %struct.RankReduceDataSt], align 16
  %6 = alloca [11 x %struct.RankReduceDataSt], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %26, %0
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 11
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = uitofp i64 %21 to double
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 %24
  store double %22, double* %25, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %13, !llvm.loop !7

29:                                               ; preds = %13
  %30 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 0
  %31 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 0
  call void @addDoubleParallel(double* noundef %30, double* noundef %31, i32 noundef 11)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %47, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 11
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 %37
  %39 = load double, double* %38, align 8
  %40 = call i32 @getNRanks()
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %39, %41
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %45, i32 0, i32 8
  store double %42, double* %46, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %32, !llvm.loop !8

50:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 11
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = uitofp i64 %59 to double
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %5, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %63, i32 0, i32 0
  store double %60, double* %64, align 16
  %65 = call i32 @getMyRank()
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %5, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 8
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %51, !llvm.loop !9

73:                                               ; preds = %51
  %74 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %5, i64 0, i64 0
  %75 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %6, i64 0, i64 0
  call void @minRankDoubleParallel(%struct.RankReduceDataSt* noundef %74, %struct.RankReduceDataSt* noundef %75, i32 noundef 11)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %98, %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 11
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %6, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %82, i32 0, i32 0
  %84 = load double, double* %83, align 16
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %87, i32 0, i32 6
  store double %84, double* %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %6, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %96, i32 0, i32 4
  store i32 %93, i32* %97, align 8
  br label %98

98:                                               ; preds = %79
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %76, !llvm.loop !10

101:                                              ; preds = %76
  %102 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %5, i64 0, i64 0
  %103 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %6, i64 0, i64 0
  call void @maxRankDoubleParallel(%struct.RankReduceDataSt* noundef %102, %struct.RankReduceDataSt* noundef %103, i32 noundef 11)
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %126, %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 11
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %6, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %110, i32 0, i32 0
  %112 = load double, double* %111, align 16
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %115, i32 0, i32 7
  store double %112, double* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %6, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %124, i32 0, i32 5
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %104, !llvm.loop !11

129:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %152, %129
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 11
  br i1 %132, label %133, label %155

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = uitofp i64 %138 to double
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %142, i32 0, i32 8
  %144 = load double, double* %143, align 8
  %145 = fsub double %139, %144
  store double %145, double* %11, align 8
  %146 = load double, double* %11, align 8
  %147 = load double, double* %11, align 8
  %148 = fmul double %146, %147
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 %150
  store double %148, double* %151, align 8
  br label %152

152:                                              ; preds = %133
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %130, !llvm.loop !12

155:                                              ; preds = %130
  %156 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 0
  %157 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 0
  call void @addDoubleParallel(double* noundef %156, double* noundef %157, i32 noundef 11)
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %174, %155
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %159, 11
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 %163
  %165 = load double, double* %164, align 8
  %166 = call i32 @getNRanks()
  %167 = sitofp i32 %166 to double
  %168 = fdiv double %165, %167
  %169 = call double @sqrt(double noundef %168) #3
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %172, i32 0, i32 9
  store double %169, double* %173, align 8
  br label %174

174:                                              ; preds = %161
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %158, !llvm.loop !13

177:                                              ; preds = %158
  ret void
}

declare dso_local i32 @printRank() #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @getMyRank() #1

declare dso_local i32 @getNRanks() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printPerformanceResultsYaml(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %8 = call i32 @printRank()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %182

11:                                               ; preds = %1
  %12 = call double @getTick()
  store double %12, double* %3, align 8
  %13 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 1, i32 1), align 8
  %14 = uitofp i64 %13 to double
  %15 = load double, double* %3, align 8
  %16 = fmul double %14, %15
  store double %16, double* %4, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = call i32 @getNRanks()
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 noundef %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %25 = call i32 @getMyRank()
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 noundef %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %79, %11
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 11
  br i1 %29, label %30, label %82

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = uitofp i64 %42 to double
  %44 = load double, double* %3, align 8
  %45 = fmul double %43, %44
  store double %45, double* %6, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* noundef %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i64 noundef %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %60 = load double, double* %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = uitofp i64 %65 to double
  %67 = fdiv double %60, %66
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), double noundef %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %70 = load double, double* %6, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), double noundef %70)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %73 = load double, double* %6, align 8
  %74 = load double, double* %4, align 8
  %75 = fdiv double %73, %74
  %76 = fmul double %75, 1.000000e+02
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), double noundef %76)
  br label %78

78:                                               ; preds = %37, %30
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %27, !llvm.loop !14

82:                                               ; preds = %27
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %153, %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 11
  br i1 %87, label %88, label %156

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %152

95:                                               ; preds = %88
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* noundef %100)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 noundef %107)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %112, i32 0, i32 6
  %114 = load double, double* %113, align 8
  %115 = load double, double* %3, align 8
  %116 = fmul double %114, %115
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), double noundef %116)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %118, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 noundef %123)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %128, i32 0, i32 7
  %130 = load double, double* %129, align 8
  %131 = load double, double* %3, align 8
  %132 = fmul double %130, %131
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), double noundef %132)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %137, i32 0, i32 8
  %139 = load double, double* %138, align 8
  %140 = load double, double* %3, align 8
  %141 = fmul double %139, %140
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), double noundef %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.TimersSt, %struct.TimersSt* %146, i32 0, i32 9
  %148 = load double, double* %147, align 8
  %149 = load double, double* %3, align 8
  %150 = fmul double %148, %149
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %143, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), double noundef %150)
  br label %152

152:                                              ; preds = %95, %88
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %85, !llvm.loop !15

156:                                              ; preds = %85
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %157, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0))
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %159, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0))
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %162 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 0), align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), double noundef %162)
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %164, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0))
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %166, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0))
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %169 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 1), align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %168, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), double noundef %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0))
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0))
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %176 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i32 0, i32 2), align 8
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %175, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), double noundef %176)
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %178, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %180, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  br label %182

182:                                              ; preds = %156, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #2

declare dso_local void @addDoubleParallel(double* noundef, double* noundef, i32 noundef) #1

declare dso_local void @minRankDoubleParallel(%struct.RankReduceDataSt* noundef, %struct.RankReduceDataSt* noundef, i32 noundef) #1

declare dso_local void @maxRankDoubleParallel(%struct.RankReduceDataSt* noundef, %struct.RankReduceDataSt* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

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
