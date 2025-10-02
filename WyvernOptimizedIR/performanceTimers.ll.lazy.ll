; ModuleID = './performanceTimers.ll'
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
  %2 = call i64 @getTime()
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %3, i32 0
  store i64 %2, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @getTime() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %1, i8* noundef null) #6
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %5, %7
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @profileStop(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %2, i32 2
  %4 = load i64, i64* %3, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %3, align 8
  %6 = call i64 @getTime()
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %7, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %6, %9
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %11, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = zext i32 %0 to i64
  %16 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %15, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %10
  store i64 %18, i64* %16, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @getElapsedTime(i32 noundef %0) #1 {
  %2 = call double @getTick()
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %3, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = uitofp i64 %5 to double
  %7 = fmul double %2, %6
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %8, i32 3
  store i64 0, i64* %9, align 8
  ret double %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @getTick() #2 {
  ret double 0x3EB0C6F7A0B5ED8D
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printPerformanceResults(i32 noundef %0, i32 noundef %1) #0 {
  call void @timerStats()
  %3 = call i32 @printRank() #6
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %138

5:                                                ; preds = %2
  %6 = call double @getTick()
  %7 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 1, i32 1), align 16
  %8 = uitofp i64 %7 to double
  %9 = fmul double %6, %8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 @getMyRank() #6
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef %11) #6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0)) #6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i64 0, i64 0), i64 68, i64 1, %struct._IO_FILE* %15)
  br label %17

17:                                               ; preds = %45, %5
  %.01 = phi i32 [ 0, %5 ], [ %46, %45 ]
  %18 = icmp ult i32 %.01, 11
  br i1 %18, label %19, label %47

19:                                               ; preds = %17
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %20, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = uitofp i64 %22 to double
  %24 = fmul double %6, %23
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %25, i32 2
  %27 = load i64, i64* %26, align 8
  %.not3 = icmp eq i64 %27, 0
  br i1 %.not3, label %44, label %28

28:                                               ; preds = %19
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = zext i32 %.01 to i64
  %34 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %33, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %36, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = uitofp i64 %38 to double
  %40 = fdiv double %24, %39
  %41 = fdiv double %24, %9
  %42 = fmul double %41, 1.000000e+02
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* noundef %32, i64 noundef %35, double noundef %40, double noundef %24, double noundef %42) #6
  br label %44

44:                                               ; preds = %28, %19
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.01, 1
  br label %17, !llvm.loop !4

47:                                               ; preds = %17
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = call i32 @getNRanks() #6
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 noundef %49) #6
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i64 @fwrite(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.17, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %53)
  br label %55

55:                                               ; preds = %90, %47
  %.0 = phi i32 [ 0, %47 ], [ %91, %90 ]
  %56 = icmp ult i32 %.0, 11
  br i1 %56, label %57, label %92

57:                                               ; preds = %55
  %58 = zext i32 %.0 to i64
  %59 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %58, i32 2
  %60 = load i64, i64* %59, align 8
  %.not2 = icmp eq i64 %60, 0
  br i1 %.not2, label %89, label %61

61:                                               ; preds = %57
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = zext i32 %.0 to i64
  %64 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = zext i32 %.0 to i64
  %67 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %66, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = zext i32 %.0 to i64
  %70 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %69, i32 6
  %71 = load double, double* %70, align 8
  %72 = fmul double %71, %6
  %73 = zext i32 %.0 to i64
  %74 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %73, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %.0 to i64
  %77 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %76, i32 7
  %78 = load double, double* %77, align 8
  %79 = fmul double %78, %6
  %80 = zext i32 %.0 to i64
  %81 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %80, i32 8
  %82 = load double, double* %81, align 8
  %83 = fmul double %82, %6
  %84 = zext i32 %.0 to i64
  %85 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %84, i32 9
  %86 = load double, double* %85, align 8
  %87 = fmul double %86, %6
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* noundef %65, i32 noundef %68, double noundef %72, i32 noundef %75, double noundef %79, double noundef %83, double noundef %87) #6
  br label %89

89:                                               ; preds = %61, %57
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.0, 1
  br label %55, !llvm.loop !6

92:                                               ; preds = %55
  %93 = sitofp i32 %0 to double
  %94 = call i32 @getNRanks() #6
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %93, %95
  %97 = load double, double* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 8), align 8
  %98 = fmul double %97, %6
  %99 = fmul double %98, 1.000000e+06
  %100 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 2), align 16
  %101 = uitofp i64 %100 to double
  %102 = fmul double %96, %101
  %103 = sitofp i32 %1 to double
  %104 = fmul double %102, %103
  %105 = fdiv double %99, %104
  store double %105, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 0), align 8
  %106 = load double, double* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 8), align 8
  %107 = fmul double %106, %6
  %108 = fmul double %107, 1.000000e+06
  %109 = sext i32 %0 to i64
  %110 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 2, i32 2), align 16
  %111 = mul i64 %110, %109
  %112 = sext i32 %1 to i64
  %113 = mul i64 %111, %112
  %114 = uitofp i64 %113 to double
  %115 = fdiv double %108, %114
  store double %115, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 1), align 8
  %116 = fdiv double 1.000000e+00, %115
  store double %116, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 2), align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %120 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 0), align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0), double noundef %120) #6
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %123 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %125 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %124)
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 1), align 8
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), double noundef %127) #6
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %130 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %129)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %131)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %134 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 2), align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), double noundef %134) #6
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %137 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %136)
  br label %138

138:                                              ; preds = %92, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @timerStats() #0 {
  %1 = alloca [11 x double], align 16
  %2 = alloca [11 x double], align 16
  %3 = alloca [11 x %struct.RankReduceDataSt], align 16
  %4 = alloca [11 x %struct.RankReduceDataSt], align 16
  br label %5

5:                                                ; preds = %14, %0
  %.0 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %6 = icmp ult i32 %.0, 11
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %8, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = uitofp i64 %10 to double
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 %12
  store double %11, double* %13, align 8
  br label %14

14:                                               ; preds = %7
  %15 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !7

16:                                               ; preds = %5
  %17 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 0
  %18 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 0
  call void @addDoubleParallel(double* noundef nonnull %17, double* noundef nonnull %18, i32 noundef 11) #6
  br label %19

19:                                               ; preds = %30, %16
  %.01 = phi i32 [ 0, %16 ], [ %31, %30 ]
  %20 = icmp ult i32 %.01, 11
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = call i32 @getNRanks() #6
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %24, %26
  %28 = zext i32 %.01 to i64
  %29 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %28, i32 8
  store double %27, double* %29, align 8
  br label %30

30:                                               ; preds = %21
  %31 = add nuw nsw i32 %.01, 1
  br label %19, !llvm.loop !8

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %45, %32
  %.02 = phi i32 [ 0, %32 ], [ %46, %45 ]
  %34 = icmp ult i32 %.02, 11
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %36, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = uitofp i64 %38 to double
  %40 = zext i32 %.02 to i64
  %41 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %3, i64 0, i64 %40, i32 0
  store double %39, double* %41, align 16
  %42 = call i32 @getMyRank() #6
  %43 = zext i32 %.02 to i64
  %44 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %3, i64 0, i64 %43, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %35
  %46 = add nuw nsw i32 %.02, 1
  br label %33, !llvm.loop !9

47:                                               ; preds = %33
  %48 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %3, i64 0, i64 0
  %49 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %4, i64 0, i64 0
  call void @minRankDoubleParallel(%struct.RankReduceDataSt* noundef nonnull %48, %struct.RankReduceDataSt* noundef nonnull %49, i32 noundef 11) #6
  br label %50

50:                                               ; preds = %63, %47
  %.03 = phi i32 [ 0, %47 ], [ %64, %63 ]
  %51 = icmp ult i32 %.03, 11
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = zext i32 %.03 to i64
  %54 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %4, i64 0, i64 %53, i32 0
  %55 = load double, double* %54, align 16
  %56 = zext i32 %.03 to i64
  %57 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %56, i32 6
  store double %55, double* %57, align 8
  %58 = zext i32 %.03 to i64
  %59 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %4, i64 0, i64 %58, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = zext i32 %.03 to i64
  %62 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %61, i32 4
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %52
  %64 = add nuw nsw i32 %.03, 1
  br label %50, !llvm.loop !10

65:                                               ; preds = %50
  %66 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %3, i64 0, i64 0
  %67 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %4, i64 0, i64 0
  call void @maxRankDoubleParallel(%struct.RankReduceDataSt* noundef nonnull %66, %struct.RankReduceDataSt* noundef nonnull %67, i32 noundef 11) #6
  br label %68

68:                                               ; preds = %81, %65
  %.04 = phi i32 [ 0, %65 ], [ %82, %81 ]
  %69 = icmp ult i32 %.04, 11
  br i1 %69, label %70, label %83

70:                                               ; preds = %68
  %71 = zext i32 %.04 to i64
  %72 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %4, i64 0, i64 %71, i32 0
  %73 = load double, double* %72, align 16
  %74 = zext i32 %.04 to i64
  %75 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %74, i32 7
  store double %73, double* %75, align 8
  %76 = zext i32 %.04 to i64
  %77 = getelementptr inbounds [11 x %struct.RankReduceDataSt], [11 x %struct.RankReduceDataSt]* %4, i64 0, i64 %76, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %.04 to i64
  %80 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %79, i32 5
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %70
  %82 = add nuw nsw i32 %.04, 1
  br label %68, !llvm.loop !11

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %98, %83
  %.05 = phi i32 [ 0, %83 ], [ %99, %98 ]
  %85 = icmp ult i32 %.05, 11
  br i1 %85, label %86, label %100

86:                                               ; preds = %84
  %87 = zext i32 %.05 to i64
  %88 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %87, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = uitofp i64 %89 to double
  %91 = zext i32 %.05 to i64
  %92 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %91, i32 8
  %93 = load double, double* %92, align 8
  %94 = fsub double %90, %93
  %95 = fmul double %94, %94
  %96 = zext i32 %.05 to i64
  %97 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 %96
  store double %95, double* %97, align 8
  br label %98

98:                                               ; preds = %86
  %99 = add nuw nsw i32 %.05, 1
  br label %84, !llvm.loop !12

100:                                              ; preds = %84
  %101 = getelementptr inbounds [11 x double], [11 x double]* %1, i64 0, i64 0
  %102 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 0
  call void @addDoubleParallel(double* noundef nonnull %101, double* noundef nonnull %102, i32 noundef 11) #6
  br label %103

103:                                              ; preds = %115, %100
  %.06 = phi i32 [ 0, %100 ], [ %116, %115 ]
  %104 = icmp ult i32 %.06, 11
  br i1 %104, label %105, label %117

105:                                              ; preds = %103
  %106 = zext i32 %.06 to i64
  %107 = getelementptr inbounds [11 x double], [11 x double]* %2, i64 0, i64 %106
  %108 = load double, double* %107, align 8
  %109 = call i32 @getNRanks() #6
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = call double @sqrt(double noundef %111) #6
  %113 = zext i32 %.06 to i64
  %114 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %113, i32 9
  store double %112, double* %114, align 8
  br label %115

115:                                              ; preds = %105
  %116 = add nuw nsw i32 %.06, 1
  br label %103, !llvm.loop !13

117:                                              ; preds = %103
  ret void
}

declare dso_local i32 @printRank() #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @getMyRank() #3

declare dso_local i32 @getNRanks() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @printPerformanceResultsYaml(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @printRank() #6
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  br label %106

4:                                                ; preds = %1
  %5 = call double @getTick()
  %6 = load i64, i64* getelementptr inbounds ([11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 1, i32 1), align 16
  %7 = uitofp i64 %6 to double
  %8 = fmul double %5, %7
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %0)
  %10 = call i32 @getNRanks() #6
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 noundef %10) #6
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %0)
  %13 = call i32 @getMyRank() #6
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 noundef %13) #6
  br label %15

15:                                               ; preds = %46, %4
  %.01 = phi i32 [ 0, %4 ], [ %47, %46 ]
  %16 = icmp ult i32 %.01, 11
  br i1 %16, label %17, label %48

17:                                               ; preds = %15
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %18, i32 2
  %20 = load i64, i64* %19, align 8
  %.not3 = icmp eq i64 %20, 0
  br i1 %.not3, label %45, label %21

21:                                               ; preds = %17
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %22, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = uitofp i64 %24 to double
  %26 = fmul double %5, %25
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* noundef %29) #6
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %31, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i64 noundef %33) #6
  %35 = zext i32 %.01 to i64
  %36 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %35, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = uitofp i64 %37 to double
  %39 = fdiv double %26, %38
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), double noundef %39) #6
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), double noundef %26) #6
  %42 = fdiv double %26, %8
  %43 = fmul double %42, 1.000000e+02
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), double noundef %43) #6
  br label %45

45:                                               ; preds = %21, %17
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.01, 1
  br label %15, !llvm.loop !14

48:                                               ; preds = %15
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %0)
  br label %50

50:                                               ; preds = %90, %48
  %.0 = phi i32 [ 0, %48 ], [ %91, %90 ]
  %51 = icmp ult i32 %.0, 11
  br i1 %51, label %52, label %92

52:                                               ; preds = %50
  %53 = zext i32 %.0 to i64
  %54 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %53, i32 2
  %55 = load i64, i64* %54, align 8
  %.not2 = icmp eq i64 %55, 0
  br i1 %.not2, label %89, label %56

56:                                               ; preds = %52
  %57 = zext i32 %.0 to i64
  %58 = getelementptr inbounds [11 x i8*], [11 x i8*]* @timerName, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8* noundef %59) #6
  %61 = zext i32 %.0 to i64
  %62 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %61, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 noundef %63) #6
  %65 = zext i32 %.0 to i64
  %66 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %65, i32 6
  %67 = load double, double* %66, align 8
  %68 = fmul double %67, %5
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), double noundef %68) #6
  %70 = zext i32 %.0 to i64
  %71 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %70, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i32 noundef %72) #6
  %74 = zext i32 %.0 to i64
  %75 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %74, i32 7
  %76 = load double, double* %75, align 8
  %77 = fmul double %76, %5
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), double noundef %77) #6
  %79 = zext i32 %.0 to i64
  %80 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %79, i32 8
  %81 = load double, double* %80, align 8
  %82 = fmul double %81, %5
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), double noundef %82) #6
  %84 = zext i32 %.0 to i64
  %85 = getelementptr inbounds [11 x %struct.TimersSt], [11 x %struct.TimersSt]* @perfTimer, i64 0, i64 %84, i32 9
  %86 = load double, double* %85, align 8
  %87 = fmul double %86, %5
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), double noundef %87) #6
  br label %89

89:                                               ; preds = %56, %52
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.0, 1
  br label %50, !llvm.loop !15

92:                                               ; preds = %50
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %0)
  %94 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %0)
  %95 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 0), align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), double noundef %95) #6
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %0)
  %98 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %0)
  %99 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 1), align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), double noundef %99) #6
  %101 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %0)
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i64 12, i64 1, %struct._IO_FILE* %0)
  %103 = load double, double* getelementptr inbounds (%struct.TimerGlobalSt, %struct.TimerGlobalSt* @perfGlobal, i64 0, i32 2), align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0), double noundef %103) #6
  %105 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %0)
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  br label %106

106:                                              ; preds = %92, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #4

declare dso_local void @addDoubleParallel(double* noundef, double* noundef, i32 noundef) #3

declare dso_local void @minRankDoubleParallel(%struct.RankReduceDataSt* noundef, %struct.RankReduceDataSt* noundef, i32 noundef) #3

declare dso_local void @maxRankDoubleParallel(%struct.RankReduceDataSt* noundef, %struct.RankReduceDataSt* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
