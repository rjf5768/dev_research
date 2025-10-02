; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._Module = type { %struct._Module*, i64 }
%struct._Net = type { %struct._Net*, i64 }
%struct._ModuleList = type { %struct._ModuleRec*, %struct._ModuleRec* }
%struct._ModuleRec = type { %struct._ModuleRec*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"(%s:%s():%d): \00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ReadData\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to open input file [%s]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@numNets = dso_local global i64 0, align 8
@numModules = dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to parse header in file [%s]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unable to allocate a module list node\00", align 1
@nets = dso_local global [1024 x %struct._Module*] zeroinitializer, align 16
@modules = dso_local global [1024 x %struct._Net*] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"NetsToModules\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to allocate net list node\00", align 1
@cost = dso_local global [1024 x float] zeroinitializer, align 16
@groupA = dso_local global %struct._ModuleList zeroinitializer, align 8
@groupB = dso_local global %struct._ModuleList zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to allocate ModuleRec\00", align 1
@moduleToGroup = dso_local global [1024 x i32] zeroinitializer, align 16
@swapToA = dso_local global %struct._ModuleList zeroinitializer, align 8
@swapToB = dso_local global %struct._ModuleList zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [46 x i8] c"moduleToGroup[(*groupNode).module] == myGroup\00", align 1
@__PRETTY_FUNCTION__.ComputeDs = private unnamed_addr constant [46 x i8] c"void ComputeDs(ModuleListPtr, Groups, Groups)\00", align 1
@D = dso_local global [1024 x float] zeroinitializer, align 16
@GP = dso_local global [1024 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadNetList(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._Module*, align 8
  %9 = alloca %struct._Module*, align 8
  %10 = alloca %struct._Module*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %3, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 46)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %19, i32 noundef 0, i32 noundef 0)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

23:                                               ; preds = %1
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %26 = call i8* @fgets(i8* noundef %24, i32 noundef 1024, %struct._IO_FILE* noundef %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %28 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64* noundef @numNets, i64* noundef @numModules) #6
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 51)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef %34, i32 noundef 0, i32 noundef 0)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

38:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %101, %38
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @numNets, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %104

43:                                               ; preds = %39
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %46 = call i8* @fgets(i8* noundef %44, i32 noundef 1024, %struct._IO_FILE* noundef %45)
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %48 = call i8* @strtok(i8* noundef %47, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #6
  %49 = call i64 @atol(i8* noundef %48) #7
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %7, align 8
  %51 = call noalias i8* @malloc(i64 noundef 16) #6
  %52 = bitcast i8* %51 to %struct._Module*
  store %struct._Module* %52, %struct._Module** %9, align 8
  store %struct._Module* %52, %struct._Module** %10, align 8
  %53 = load %struct._Module*, %struct._Module** %9, align 8
  %54 = icmp ne %struct._Module* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 63)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

62:                                               ; preds = %43
  %63 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #6
  %64 = call i64 @atol(i8* noundef %63) #7
  %65 = sub nsw i64 %64, 1
  %66 = load %struct._Module*, %struct._Module** %9, align 8
  %67 = getelementptr inbounds %struct._Module, %struct._Module* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct._Module*, %struct._Module** %9, align 8
  %69 = getelementptr inbounds %struct._Module, %struct._Module* %68, i32 0, i32 0
  store %struct._Module* null, %struct._Module** %69, align 8
  br label %70

70:                                               ; preds = %85, %62
  %71 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #6
  store i8* %71, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = call noalias i8* @malloc(i64 noundef 16) #6
  %75 = bitcast i8* %74 to %struct._Module*
  store %struct._Module* %75, %struct._Module** %8, align 8
  %76 = load %struct._Module*, %struct._Module** %8, align 8
  %77 = icmp ne %struct._Module* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

85:                                               ; preds = %73
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @atol(i8* noundef %86) #7
  %88 = sub nsw i64 %87, 1
  %89 = load %struct._Module*, %struct._Module** %8, align 8
  %90 = getelementptr inbounds %struct._Module, %struct._Module* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct._Module*, %struct._Module** %8, align 8
  %92 = getelementptr inbounds %struct._Module, %struct._Module* %91, i32 0, i32 0
  store %struct._Module* null, %struct._Module** %92, align 8
  %93 = load %struct._Module*, %struct._Module** %8, align 8
  %94 = load %struct._Module*, %struct._Module** %9, align 8
  %95 = getelementptr inbounds %struct._Module, %struct._Module* %94, i32 0, i32 0
  store %struct._Module* %93, %struct._Module** %95, align 8
  %96 = load %struct._Module*, %struct._Module** %8, align 8
  store %struct._Module* %96, %struct._Module** %9, align 8
  br label %70, !llvm.loop !4

97:                                               ; preds = %70
  %98 = load %struct._Module*, %struct._Module** %10, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %99
  store %struct._Module* %98, %struct._Module** %100, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %39, !llvm.loop !6

104:                                              ; preds = %39
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @NetsToModules() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct._Module*, align 8
  %4 = alloca %struct._Net*, align 8
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @numModules, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %10
  store %struct._Net* null, %struct._Net** %11, align 8
  br label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %2, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %2, align 8
  br label %5, !llvm.loop !7

15:                                               ; preds = %5
  store i64 0, i64* %1, align 8
  br label %16

16:                                               ; preds = %60, %15
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @numNets, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load i64, i64* %1, align 8
  %22 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %21
  %23 = load %struct._Module*, %struct._Module** %22, align 8
  store %struct._Module* %23, %struct._Module** %3, align 8
  br label %24

24:                                               ; preds = %55, %20
  %25 = load %struct._Module*, %struct._Module** %3, align 8
  %26 = icmp ne %struct._Module* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = call noalias i8* @malloc(i64 noundef 16) #6
  %29 = bitcast i8* %28 to %struct._Net*
  store %struct._Net* %29, %struct._Net** %4, align 8
  %30 = load %struct._Net*, %struct._Net** %4, align 8
  %31 = icmp ne %struct._Net* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 noundef 96)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

39:                                               ; preds = %27
  %40 = load i64, i64* %1, align 8
  %41 = load %struct._Net*, %struct._Net** %4, align 8
  %42 = getelementptr inbounds %struct._Net, %struct._Net* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct._Module*, %struct._Module** %3, align 8
  %44 = getelementptr inbounds %struct._Module, %struct._Module* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %45
  %47 = load %struct._Net*, %struct._Net** %46, align 8
  %48 = load %struct._Net*, %struct._Net** %4, align 8
  %49 = getelementptr inbounds %struct._Net, %struct._Net* %48, i32 0, i32 0
  store %struct._Net* %47, %struct._Net** %49, align 8
  %50 = load %struct._Net*, %struct._Net** %4, align 8
  %51 = load %struct._Module*, %struct._Module** %3, align 8
  %52 = getelementptr inbounds %struct._Module, %struct._Module* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %53
  store %struct._Net* %50, %struct._Net** %54, align 8
  br label %55

55:                                               ; preds = %39
  %56 = load %struct._Module*, %struct._Module** %3, align 8
  %57 = getelementptr inbounds %struct._Module, %struct._Module* %56, i32 0, i32 0
  %58 = load %struct._Module*, %struct._Module** %57, align 8
  store %struct._Module* %58, %struct._Module** %3, align 8
  br label %24, !llvm.loop !8

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %1, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %1, align 8
  br label %16, !llvm.loop !9

63:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ComputeNetCosts() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @numNets, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load i64, i64* %1, align 8
  %8 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %7
  store float 1.000000e+00, float* %8, align 4
  br label %9

9:                                                ; preds = %6
  %10 = load i64, i64* %1, align 8
  %11 = add i64 %10, 1
  store i64 %11, i64* %1, align 8
  br label %2, !llvm.loop !10

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitLists() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct._ModuleRec*, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %77, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @numModules, align 8
  %6 = udiv i64 %5, 2
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %8, label %80

8:                                                ; preds = %3
  %9 = call noalias i8* @malloc(i64 noundef 16) #6
  %10 = bitcast i8* %9 to %struct._ModuleRec*
  store %struct._ModuleRec* %10, %struct._ModuleRec** %2, align 8
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %12 = icmp ne %struct._ModuleRec* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef 145)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

20:                                               ; preds = %8
  %21 = load i64, i64* %1, align 8
  %22 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %23 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %25 = icmp eq %struct._ModuleRec* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  store %struct._ModuleRec* %27, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  store %struct._ModuleRec* %27, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %28 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %29 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %28, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %29, align 8
  br label %37

30:                                               ; preds = %20
  %31 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %32 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %31, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %32, align 8
  %33 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %34 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  %35 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %34, i32 0, i32 0
  store %struct._ModuleRec* %33, %struct._ModuleRec** %35, align 8
  %36 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  store %struct._ModuleRec* %36, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %38
  store i32 0, i32* %39, align 4
  %40 = call noalias i8* @malloc(i64 noundef 16) #6
  %41 = bitcast i8* %40 to %struct._ModuleRec*
  store %struct._ModuleRec* %41, %struct._ModuleRec** %2, align 8
  %42 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %43 = icmp ne %struct._ModuleRec* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef 164)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

51:                                               ; preds = %37
  %52 = load i64, i64* @numModules, align 8
  %53 = udiv i64 %52, 2
  %54 = load i64, i64* %1, align 8
  %55 = add i64 %53, %54
  %56 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %57 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %59 = icmp eq %struct._ModuleRec* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  store %struct._ModuleRec* %61, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  store %struct._ModuleRec* %61, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %62 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %63 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %62, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %63, align 8
  br label %71

64:                                               ; preds = %51
  %65 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %66 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %65, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %66, align 8
  %67 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  %68 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  %69 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %68, i32 0, i32 0
  store %struct._ModuleRec* %67, %struct._ModuleRec** %69, align 8
  %70 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  store %struct._ModuleRec* %70, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i64, i64* @numModules, align 8
  %73 = udiv i64 %72, 2
  %74 = load i64, i64* %1, align 8
  %75 = add i64 %73, %74
  %76 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %75
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %1, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %1, align 8
  br label %3, !llvm.loop !11

80:                                               ; preds = %3
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ComputeDs(%struct._ModuleList* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._ModuleList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct._Net*, align 8
  %10 = alloca %struct._Module*, align 8
  %11 = alloca %struct._ModuleRec*, align 8
  store %struct._ModuleList* %0, %struct._ModuleList** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct._ModuleList*, %struct._ModuleList** %4, align 8
  %13 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %12, i32 0, i32 0
  %14 = load %struct._ModuleRec*, %struct._ModuleRec** %13, align 8
  store %struct._ModuleRec* %14, %struct._ModuleRec** %11, align 8
  br label %15

15:                                               ; preds = %104, %3
  %16 = load %struct._ModuleRec*, %struct._ModuleRec** %11, align 8
  %17 = icmp ne %struct._ModuleRec* %16, null
  br i1 %17, label %18, label %108

18:                                               ; preds = %15
  %19 = load %struct._ModuleRec*, %struct._ModuleRec** %11, align 8
  %20 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %28

27:                                               ; preds = %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.ComputeDs, i64 0, i64 0)) #5
  unreachable

28:                                               ; preds = %26
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %7, align 4
  %29 = load %struct._ModuleRec*, %struct._ModuleRec** %11, align 8
  %30 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %31
  %33 = load %struct._Net*, %struct._Net** %32, align 8
  store %struct._Net* %33, %struct._Net** %9, align 8
  br label %34

34:                                               ; preds = %92, %28
  %35 = load %struct._Net*, %struct._Net** %9, align 8
  %36 = icmp ne %struct._Net* %35, null
  br i1 %36, label %37, label %96

37:                                               ; preds = %34
  %38 = load %struct._Net*, %struct._Net** %9, align 8
  %39 = getelementptr inbounds %struct._Net, %struct._Net* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %40
  %42 = load %struct._Module*, %struct._Module** %41, align 8
  store %struct._Module* %42, %struct._Module** %10, align 8
  br label %43

43:                                               ; preds = %87, %37
  %44 = load %struct._Module*, %struct._Module** %10, align 8
  %45 = icmp ne %struct._Module* %44, null
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  %47 = load %struct._Module*, %struct._Module** %10, align 8
  %48 = getelementptr inbounds %struct._Module, %struct._Module* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct._ModuleRec*, %struct._ModuleRec** %11, align 8
  %51 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %46
  %55 = load %struct._Module*, %struct._Module** %10, align 8
  %56 = getelementptr inbounds %struct._Module, %struct._Module* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %61, label %86

61:                                               ; preds = %54
  %62 = load %struct._Module*, %struct._Module** %10, align 8
  %63 = getelementptr inbounds %struct._Module, %struct._Module* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load float, float* %7, align 4
  %71 = load %struct._Net*, %struct._Net** %9, align 8
  %72 = getelementptr inbounds %struct._Net, %struct._Net* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fadd float %70, %75
  store float %76, float* %7, align 4
  br label %85

77:                                               ; preds = %61
  %78 = load float, float* %8, align 4
  %79 = load %struct._Net*, %struct._Net** %9, align 8
  %80 = getelementptr inbounds %struct._Net, %struct._Net* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %81
  %83 = load float, float* %82, align 4
  %84 = fadd float %78, %83
  store float %84, float* %8, align 4
  br label %85

85:                                               ; preds = %77, %69
  br label %86

86:                                               ; preds = %85, %54, %46
  br label %87

87:                                               ; preds = %86
  %88 = load %struct._Module*, %struct._Module** %10, align 8
  %89 = getelementptr inbounds %struct._Module, %struct._Module* %88, i32 0, i32 0
  %90 = load %struct._Module*, %struct._Module** %89, align 8
  store %struct._Module* %90, %struct._Module** %10, align 8
  br label %43, !llvm.loop !12

91:                                               ; preds = %43
  br label %92

92:                                               ; preds = %91
  %93 = load %struct._Net*, %struct._Net** %9, align 8
  %94 = getelementptr inbounds %struct._Net, %struct._Net* %93, i32 0, i32 0
  %95 = load %struct._Net*, %struct._Net** %94, align 8
  store %struct._Net* %95, %struct._Net** %9, align 8
  br label %34, !llvm.loop !13

96:                                               ; preds = %34
  %97 = load float, float* %8, align 4
  %98 = load float, float* %7, align 4
  %99 = fsub float %97, %98
  %100 = load %struct._ModuleRec*, %struct._ModuleRec** %11, align 8
  %101 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %102
  store float %99, float* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load %struct._ModuleRec*, %struct._ModuleRec** %11, align 8
  %106 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %105, i32 0, i32 0
  %107 = load %struct._ModuleRec*, %struct._ModuleRec** %106, align 8
  store %struct._ModuleRec* %107, %struct._ModuleRec** %11, align 8
  br label %15, !llvm.loop !14

108:                                              ; preds = %15
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
