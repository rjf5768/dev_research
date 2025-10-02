; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/memstats.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/memstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stat_fp = dso_local global %struct._IO_FILE* null, align 8
@meminfo_fp = dso_local global %struct._IO_FILE* null, align 8
@pid = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/%d/status\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"fflush %s failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fseek %s failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Warning: Error in reading %s for memory stats\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"VmRSS\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"VmRSS %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"VmHWM\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"fopen failed: \0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"fflush failed: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"fseek failed: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"p: |%s|\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"MemFree\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"MemTotal\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_memused() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [50 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %0
  %11 = call i32 @getpid() #4
  store i32 %11, i32* @pid, align 4
  %12 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %13 = load i32, i32* @pid, align 4
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %12, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %13) #4
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %16 = call noalias %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** @stat_fp, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store i64 -1, i64* %1, align 8
  br label %80

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @strerror(i32 noundef %28) #4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* noundef %27, i8* noundef %29)
  store i64 -1, i64* %1, align 8
  br label %80

31:                                               ; preds = %21
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %33 = call i32 @fseek(%struct._IO_FILE* noundef %32, i64 noundef 0, i32 noundef 0)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @strerror(i32 noundef %38) #4
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef %37, i8* noundef %39)
  store i64 -1, i64* %1, align 8
  br label %80

41:                                               ; preds = %31
  %42 = call noalias i8* @malloc(i64 noundef 140) #4
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %74, %41
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %45 = call i32 @feof(%struct._IO_FILE* noundef %44) #4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %51 = call i8* @fgets(i8* noundef %49, i32 noundef 132, %struct._IO_FILE* noundef %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strtok(i8* noundef %58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #5
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %57
  %64 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  store i8* %64, i8** %4, align 8
  %65 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @atoll(i8* noundef %66) #5
  store i64 %67, i64* %2, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* %2, align 8
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 noundef %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %75

74:                                               ; preds = %57
  br label %43, !llvm.loop !4

75:                                               ; preds = %73, %43
  %76 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %76) #4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %78 = call i32 @fclose(%struct._IO_FILE* noundef %77)
  store %struct._IO_FILE* null, %struct._IO_FILE** @stat_fp, align 8
  %79 = load i64, i64* %2, align 8
  store i64 %79, i64* %1, align 8
  br label %80

80:                                               ; preds = %75, %36, %26, %19
  %81 = load i64, i64* %1, align 8
  ret i64 %81
}

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atoll(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_mempeak() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [50 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %0
  %11 = call i32 @getpid() #4
  store i32 %11, i32* @pid, align 4
  %12 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %13 = load i32, i32* @pid, align 4
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %12, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %13) #4
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %16 = call noalias %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** @stat_fp, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store i64 -1, i64* %1, align 8
  br label %80

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @strerror(i32 noundef %28) #4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* noundef %27, i8* noundef %29)
  store i64 -1, i64* %1, align 8
  br label %80

31:                                               ; preds = %21
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %33 = call i32 @fseek(%struct._IO_FILE* noundef %32, i64 noundef 0, i32 noundef 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %38 = load i32, i32* %4, align 4
  %39 = call i8* @strerror(i32 noundef %38) #4
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef %37, i8* noundef %39)
  store i64 -1, i64* %1, align 8
  br label %80

41:                                               ; preds = %31
  %42 = call noalias i8* @malloc(i64 noundef 140) #4
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %74, %41
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %45 = call i32 @feof(%struct._IO_FILE* noundef %44) #4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %51 = call i8* @fgets(i8* noundef %49, i32 noundef 132, %struct._IO_FILE* noundef %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds [50 x i8], [50 x i8]* %2, i64 0, i64 0
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @strtok(i8* noundef %58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  store i8* %59, i8** %3, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strcmp(i8* noundef %60, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #5
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %57
  %64 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  store i8* %64, i8** %3, align 8
  %65 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  store i8* %65, i8** %3, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @atoll(i8* noundef %66) #5
  store i64 %67, i64* %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 noundef %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %75

74:                                               ; preds = %57
  br label %43, !llvm.loop !6

75:                                               ; preds = %73, %43
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stat_fp, align 8
  %77 = call i32 @fclose(%struct._IO_FILE* noundef %76)
  store %struct._IO_FILE* null, %struct._IO_FILE** @stat_fp, align 8
  %78 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %78) #4
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %1, align 8
  br label %80

80:                                               ; preds = %75, %36, %26, %19
  %81 = load i64, i64* %1, align 8
  ret i64 %81
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_memfree() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [260 x i8], align 16
  %6 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i64 -1, i64* %2, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** @meminfo_fp, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i64 -1, i64* %1, align 8
  br label %67

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %18 = call i32 @fflush(%struct._IO_FILE* noundef %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @strerror(i32 noundef %22) #4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* noundef %23)
  store i64 -1, i64* %1, align 8
  br label %67

25:                                               ; preds = %16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %27 = call i32 @fseek(%struct._IO_FILE* noundef %26, i64 noundef 0, i32 noundef 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i8* @strerror(i32 noundef %31) #4
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* noundef %32)
  store i64 -1, i64* %1, align 8
  br label %67

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %62, %34
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %37 = call i32 @feof(%struct._IO_FILE* noundef %36) #4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = getelementptr inbounds [260 x i8], [260 x i8]* %5, i64 0, i64 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %43 = call i8* @fgets(i8* noundef %41, i32 noundef 255, %struct._IO_FILE* noundef %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = getelementptr inbounds [260 x i8], [260 x i8]* %5, i64 0, i64 0
  %47 = call i8* @strtok(i8* noundef %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* noundef %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #5
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @atoll(i8* noundef %59) #5
  store i64 %60, i64* %2, align 8
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %40
  br label %35, !llvm.loop !7

63:                                               ; preds = %57, %35
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* noundef %64)
  store %struct._IO_FILE* null, %struct._IO_FILE** @meminfo_fp, align 8
  %66 = load i64, i64* %2, align 8
  store i64 %66, i64* %1, align 8
  br label %67

67:                                               ; preds = %63, %30, %21, %13
  %68 = load i64, i64* %1, align 8
  ret i64 %68
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @memstats_memtotal() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [260 x i8], align 16
  %6 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i64 -1, i64* %2, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** @meminfo_fp, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i64 -1, i64* %1, align 8
  br label %67

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %18 = call i32 @fflush(%struct._IO_FILE* noundef %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @strerror(i32 noundef %22) #4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* noundef %23)
  store i64 -1, i64* %1, align 8
  br label %67

25:                                               ; preds = %16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %27 = call i32 @fseek(%struct._IO_FILE* noundef %26, i64 noundef 0, i32 noundef 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i8* @strerror(i32 noundef %31) #4
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* noundef %32)
  store i64 -1, i64* %1, align 8
  br label %67

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %62, %34
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %37 = call i32 @feof(%struct._IO_FILE* noundef %36) #4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = getelementptr inbounds [260 x i8], [260 x i8]* %5, i64 0, i64 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %43 = call i8* @fgets(i8* noundef %41, i32 noundef 255, %struct._IO_FILE* noundef %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = getelementptr inbounds [260 x i8], [260 x i8]* %5, i64 0, i64 0
  %47 = call i8* @strtok(i8* noundef %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  store i8* %47, i8** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* noundef %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strcmp(i8* noundef %54, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #5
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #4
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @atoll(i8* noundef %59) #5
  store i64 %60, i64* %2, align 8
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %40
  br label %35, !llvm.loop !8

63:                                               ; preds = %57, %35
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @meminfo_fp, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* noundef %64)
  store %struct._IO_FILE* null, %struct._IO_FILE** @meminfo_fp, align 8
  %66 = load i64, i64* %2, align 8
  store i64 %66, i64* %1, align 8
  br label %67

67:                                               ; preds = %63, %30, %21, %13
  %68 = load i64, i64* %1, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
