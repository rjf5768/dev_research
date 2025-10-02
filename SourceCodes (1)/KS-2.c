; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Net = type { %struct._Net*, i64 }
%struct._Module = type { %struct._Module*, i64 }
%struct._ModuleList = type { %struct._ModuleRec*, %struct._ModuleRec* }
%struct._ModuleRec = type { %struct._ModuleRec*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon = type { i64, i64, i64 }

@modules = external dso_local global [1024 x %struct._Net*], align 16
@cost = external dso_local global [1024 x float], align 16
@nets = external dso_local global [1024 x %struct._Module*], align 16
@moduleToGroup = external dso_local global [1024 x i32], align 16
@D = external dso_local global [1024 x float], align 16
@groupA = external dso_local global %struct._ModuleList, align 8
@groupB = external dso_local global %struct._ModuleList, align 8
@.str = private unnamed_addr constant [13 x i8] c"maxA != NULL\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-2.c\00", align 1
@__PRETTY_FUNCTION__.FindMaxGpAndSwap = private unnamed_addr constant [25 x i8] c"float FindMaxGpAndSwap()\00", align 1
@swapToB = external dso_local global %struct._ModuleList, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"maxB != NULL\00", align 1
@swapToA = external dso_local global %struct._ModuleList, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"moduleToGroup[(*maxA).module] == GroupA\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"moduleToGroup[(*maxB).module] == GroupB\00", align 1
@numModules = external dso_local global i64, align 8
@GP = external dso_local global [1024 x float], align 16
@.str.5 = private unnamed_addr constant [35 x i8] c"mrPrevA != NULL && mrPrevB != NULL\00", align 1
@__PRETTY_FUNCTION__.SwapSubsetAndReset = private unnamed_addr constant [39 x i8] c"void SwapSubsetAndReset(unsigned long)\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"----------------------------------------------\0A\00", align 1
@maxStat = dso_local global i64 0, align 8
@netStats = dso_local global [256 x %struct.anon] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Group A:  \0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%3lu \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Group B:  \0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"moduleToGroup[(*mr).module] == GroupA\00", align 1
@__PRETTY_FUNCTION__.PrintResults = private unnamed_addr constant [23 x i8] c"void PrintResults(int)\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"netSz >= 2\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Conn %3lu - %3lu cut.\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Total edge cuts = %lu\0A\00", align 1
@numNets = external dso_local global i64, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"Net %3lu cut.\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Total net cuts  = %lu\0A\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"sz:%5lu     total:%5lu     edgesCut:%5lu     netsCuts:%5lu\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"Usage: KL <input_file>\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"(numModules % 2) == 0\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"groupA.head == NULL && groupA.tail == NULL\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"groupB.head == NULL && groupB.tail == NULL\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"No progress: gMax = %f\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"gMax = %f, iMax = %lu\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @CAiBj(%struct._ModuleRec* noundef %0, %struct._ModuleRec* noundef %1) #0 {
  %3 = alloca %struct._ModuleRec*, align 8
  %4 = alloca %struct._ModuleRec*, align 8
  %5 = alloca %struct._Net*, align 8
  %6 = alloca %struct._Module*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  store %struct._ModuleRec* %0, %struct._ModuleRec** %3, align 8
  store %struct._ModuleRec* %1, %struct._ModuleRec** %4, align 8
  store float 0.000000e+00, float* %7, align 4
  %10 = load %struct._ModuleRec*, %struct._ModuleRec** %4, align 8
  %11 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %14 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %15
  %17 = load %struct._Net*, %struct._Net** %16, align 8
  store %struct._Net* %17, %struct._Net** %5, align 8
  br label %18

18:                                               ; preds = %51, %2
  %19 = load %struct._Net*, %struct._Net** %5, align 8
  %20 = icmp ne %struct._Net* %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = load %struct._Net*, %struct._Net** %5, align 8
  %23 = getelementptr inbounds %struct._Net, %struct._Net* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %24
  %26 = load float, float* %25, align 4
  store float %26, float* %8, align 4
  %27 = load %struct._Net*, %struct._Net** %5, align 8
  %28 = getelementptr inbounds %struct._Net, %struct._Net* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %29
  %31 = load %struct._Module*, %struct._Module** %30, align 8
  store %struct._Module* %31, %struct._Module** %6, align 8
  br label %32

32:                                               ; preds = %46, %21
  %33 = load %struct._Module*, %struct._Module** %6, align 8
  %34 = icmp ne %struct._Module* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct._Module*, %struct._Module** %6, align 8
  %37 = getelementptr inbounds %struct._Module, %struct._Module* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load float, float* %7, align 4
  %43 = load float, float* %8, align 4
  %44 = fadd float %42, %43
  store float %44, float* %7, align 4
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct._Module*, %struct._Module** %6, align 8
  %48 = getelementptr inbounds %struct._Module, %struct._Module* %47, i32 0, i32 0
  %49 = load %struct._Module*, %struct._Module** %48, align 8
  store %struct._Module* %49, %struct._Module** %6, align 8
  br label %32, !llvm.loop !4

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load %struct._Net*, %struct._Net** %5, align 8
  %53 = getelementptr inbounds %struct._Net, %struct._Net* %52, i32 0, i32 0
  %54 = load %struct._Net*, %struct._Net** %53, align 8
  store %struct._Net* %54, %struct._Net** %5, align 8
  br label %18, !llvm.loop !6

55:                                               ; preds = %18
  %56 = load float, float* %7, align 4
  ret float %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SwapNode(%struct._ModuleRec* noundef %0, %struct._ModuleRec* noundef %1, %struct._ModuleList* noundef %2, %struct._ModuleList* noundef %3) #0 {
  %5 = alloca %struct._ModuleRec*, align 8
  %6 = alloca %struct._ModuleRec*, align 8
  %7 = alloca %struct._ModuleList*, align 8
  %8 = alloca %struct._ModuleList*, align 8
  store %struct._ModuleRec* %0, %struct._ModuleRec** %5, align 8
  store %struct._ModuleRec* %1, %struct._ModuleRec** %6, align 8
  store %struct._ModuleList* %2, %struct._ModuleList** %7, align 8
  store %struct._ModuleList* %3, %struct._ModuleList** %8, align 8
  %9 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %10 = icmp eq %struct._ModuleRec* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %4
  %12 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %13 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %12, i32 0, i32 0
  %14 = load %struct._ModuleRec*, %struct._ModuleRec** %13, align 8
  %15 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %16 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %15, i32 0, i32 1
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** %16, align 8
  %18 = icmp eq %struct._ModuleRec* %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %21 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %20, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %21, align 8
  %22 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %23 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %22, i32 0, i32 1
  store %struct._ModuleRec* null, %struct._ModuleRec** %23, align 8
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %25 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %24, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %25, align 8
  br label %34

26:                                               ; preds = %11
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %28 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %27, i32 0, i32 0
  %29 = load %struct._ModuleRec*, %struct._ModuleRec** %28, align 8
  %30 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %31 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %30, i32 0, i32 0
  store %struct._ModuleRec* %29, %struct._ModuleRec** %31, align 8
  %32 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %33 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %32, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %33, align 8
  br label %34

34:                                               ; preds = %26, %19
  br label %53

35:                                               ; preds = %4
  %36 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %37 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %36, i32 0, i32 1
  %38 = load %struct._ModuleRec*, %struct._ModuleRec** %37, align 8
  %39 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %40 = icmp eq %struct._ModuleRec* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %43 = load %struct._ModuleList*, %struct._ModuleList** %7, align 8
  %44 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %43, i32 0, i32 1
  store %struct._ModuleRec* %42, %struct._ModuleRec** %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %47 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %46, i32 0, i32 0
  %48 = load %struct._ModuleRec*, %struct._ModuleRec** %47, align 8
  %49 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %50 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %49, i32 0, i32 0
  store %struct._ModuleRec* %48, %struct._ModuleRec** %50, align 8
  %51 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %52 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %51, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %52, align 8
  br label %53

53:                                               ; preds = %45, %34
  %54 = load %struct._ModuleList*, %struct._ModuleList** %8, align 8
  %55 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %54, i32 0, i32 1
  %56 = load %struct._ModuleRec*, %struct._ModuleRec** %55, align 8
  %57 = icmp eq %struct._ModuleRec* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %60 = load %struct._ModuleList*, %struct._ModuleList** %8, align 8
  %61 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %60, i32 0, i32 1
  store %struct._ModuleRec* %59, %struct._ModuleRec** %61, align 8
  %62 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %63 = load %struct._ModuleList*, %struct._ModuleList** %8, align 8
  %64 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %63, i32 0, i32 0
  store %struct._ModuleRec* %62, %struct._ModuleRec** %64, align 8
  br label %74

65:                                               ; preds = %53
  %66 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %67 = load %struct._ModuleList*, %struct._ModuleList** %8, align 8
  %68 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %67, i32 0, i32 1
  %69 = load %struct._ModuleRec*, %struct._ModuleRec** %68, align 8
  %70 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %69, i32 0, i32 0
  store %struct._ModuleRec* %66, %struct._ModuleRec** %70, align 8
  %71 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %72 = load %struct._ModuleList*, %struct._ModuleList** %8, align 8
  %73 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %72, i32 0, i32 1
  store %struct._ModuleRec* %71, %struct._ModuleRec** %73, align 8
  br label %74

74:                                               ; preds = %65, %58
  %75 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %76 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %75, i32 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %76, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @UpdateDs(%struct._ModuleRec* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._ModuleRec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._Net*, align 8
  %6 = alloca %struct._Module*, align 8
  store %struct._ModuleRec* %0, %struct._ModuleRec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %8 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %9
  %11 = load %struct._Net*, %struct._Net** %10, align 8
  store %struct._Net* %11, %struct._Net** %5, align 8
  br label %12

12:                                               ; preds = %78, %2
  %13 = load %struct._Net*, %struct._Net** %5, align 8
  %14 = icmp ne %struct._Net* %13, null
  br i1 %14, label %15, label %82

15:                                               ; preds = %12
  %16 = load %struct._Net*, %struct._Net** %5, align 8
  %17 = getelementptr inbounds %struct._Net, %struct._Net* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %18
  %20 = load %struct._Module*, %struct._Module** %19, align 8
  store %struct._Module* %20, %struct._Module** %6, align 8
  br label %21

21:                                               ; preds = %73, %15
  %22 = load %struct._Module*, %struct._Module** %6, align 8
  %23 = icmp ne %struct._Module* %22, null
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  %25 = load %struct._Module*, %struct._Module** %6, align 8
  %26 = getelementptr inbounds %struct._Module, %struct._Module* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %72

31:                                               ; preds = %24
  %32 = load %struct._Module*, %struct._Module** %6, align 8
  %33 = getelementptr inbounds %struct._Module, %struct._Module* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load %struct._Module*, %struct._Module** %6, align 8
  %41 = getelementptr inbounds %struct._Module, %struct._Module* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %42
  %44 = load float, float* %43, align 4
  %45 = load %struct._Net*, %struct._Net** %5, align 8
  %46 = getelementptr inbounds %struct._Net, %struct._Net* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fadd float %44, %49
  %51 = load %struct._Module*, %struct._Module** %6, align 8
  %52 = getelementptr inbounds %struct._Module, %struct._Module* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %53
  store float %50, float* %54, align 4
  br label %71

55:                                               ; preds = %31
  %56 = load %struct._Module*, %struct._Module** %6, align 8
  %57 = getelementptr inbounds %struct._Module, %struct._Module* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load %struct._Net*, %struct._Net** %5, align 8
  %62 = getelementptr inbounds %struct._Net, %struct._Net* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fsub float %60, %65
  %67 = load %struct._Module*, %struct._Module** %6, align 8
  %68 = getelementptr inbounds %struct._Module, %struct._Module* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %69
  store float %66, float* %70, align 4
  br label %71

71:                                               ; preds = %55, %39
  br label %72

72:                                               ; preds = %71, %24
  br label %73

73:                                               ; preds = %72
  %74 = load %struct._Module*, %struct._Module** %6, align 8
  %75 = getelementptr inbounds %struct._Module, %struct._Module* %74, i32 0, i32 0
  %76 = load %struct._Module*, %struct._Module** %75, align 8
  store %struct._Module* %76, %struct._Module** %6, align 8
  br label %21, !llvm.loop !7

77:                                               ; preds = %21
  br label %78

78:                                               ; preds = %77
  %79 = load %struct._Net*, %struct._Net** %5, align 8
  %80 = getelementptr inbounds %struct._Net, %struct._Net* %79, i32 0, i32 0
  %81 = load %struct._Net*, %struct._Net** %80, align 8
  store %struct._Net* %81, %struct._Net** %5, align 8
  br label %12, !llvm.loop !8

82:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @FindMaxGpAndSwap() #0 {
  %1 = alloca %struct._ModuleRec*, align 8
  %2 = alloca %struct._ModuleRec*, align 8
  %3 = alloca %struct._ModuleRec*, align 8
  %4 = alloca %struct._ModuleRec*, align 8
  %5 = alloca %struct._ModuleRec*, align 8
  %6 = alloca %struct._ModuleRec*, align 8
  %7 = alloca %struct._ModuleRec*, align 8
  %8 = alloca %struct._ModuleRec*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float 0xC16312CFE0000000, float* %10, align 4
  store %struct._ModuleRec* null, %struct._ModuleRec** %8, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %7, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %6, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %5, align 8
  %11 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %11, %struct._ModuleRec** %1, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %2, align 8
  br label %12

12:                                               ; preds = %52, %0
  %13 = load %struct._ModuleRec*, %struct._ModuleRec** %1, align 8
  %14 = icmp ne %struct._ModuleRec* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %12
  %16 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %16, %struct._ModuleRec** %3, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %4, align 8
  br label %17

17:                                               ; preds = %46, %15
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %19 = icmp ne %struct._ModuleRec* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load %struct._ModuleRec*, %struct._ModuleRec** %1, align 8
  %22 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %27 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fadd float %25, %30
  %32 = load %struct._ModuleRec*, %struct._ModuleRec** %1, align 8
  %33 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %34 = call float @CAiBj(%struct._ModuleRec* noundef %32, %struct._ModuleRec* noundef %33)
  %35 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %34, float %31)
  store float %35, float* %9, align 4
  %36 = load float, float* %9, align 4
  %37 = load float, float* %10, align 4
  %38 = fcmp ogt float %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = load float, float* %9, align 4
  store float %40, float* %10, align 4
  %41 = load %struct._ModuleRec*, %struct._ModuleRec** %1, align 8
  store %struct._ModuleRec* %41, %struct._ModuleRec** %5, align 8
  %42 = load %struct._ModuleRec*, %struct._ModuleRec** %2, align 8
  store %struct._ModuleRec* %42, %struct._ModuleRec** %6, align 8
  %43 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  store %struct._ModuleRec* %43, %struct._ModuleRec** %7, align 8
  %44 = load %struct._ModuleRec*, %struct._ModuleRec** %4, align 8
  store %struct._ModuleRec* %44, %struct._ModuleRec** %8, align 8
  br label %45

45:                                               ; preds = %39, %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  store %struct._ModuleRec* %47, %struct._ModuleRec** %4, align 8
  %48 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %49 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %48, i32 0, i32 0
  %50 = load %struct._ModuleRec*, %struct._ModuleRec** %49, align 8
  store %struct._ModuleRec* %50, %struct._ModuleRec** %3, align 8
  br label %17, !llvm.loop !9

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %51
  %53 = load %struct._ModuleRec*, %struct._ModuleRec** %1, align 8
  store %struct._ModuleRec* %53, %struct._ModuleRec** %2, align 8
  %54 = load %struct._ModuleRec*, %struct._ModuleRec** %1, align 8
  %55 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %54, i32 0, i32 0
  %56 = load %struct._ModuleRec*, %struct._ModuleRec** %55, align 8
  store %struct._ModuleRec* %56, %struct._ModuleRec** %1, align 8
  br label %12, !llvm.loop !10

57:                                               ; preds = %12
  %58 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %59 = icmp ne %struct._ModuleRec* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #5
  unreachable

62:                                               ; preds = %60
  %63 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %64 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  call void @SwapNode(%struct._ModuleRec* noundef %63, %struct._ModuleRec* noundef %64, %struct._ModuleList* noundef @groupA, %struct._ModuleList* noundef @swapToB)
  %65 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %66 = icmp ne %struct._ModuleRec* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #5
  unreachable

69:                                               ; preds = %67
  %70 = load %struct._ModuleRec*, %struct._ModuleRec** %8, align 8
  %71 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  call void @SwapNode(%struct._ModuleRec* noundef %70, %struct._ModuleRec* noundef %71, %struct._ModuleList* noundef @groupB, %struct._ModuleList* noundef @swapToA)
  %72 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %73 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %80

79:                                               ; preds = %69
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #5
  unreachable

80:                                               ; preds = %78
  %81 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %82 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %83
  store i32 3, i32* %84, align 4
  %85 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %86 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %93

92:                                               ; preds = %80
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #5
  unreachable

93:                                               ; preds = %91
  %94 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %95 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %96
  store i32 2, i32* %97, align 4
  %98 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  call void @UpdateDs(%struct._ModuleRec* noundef %98, i32 noundef 0)
  %99 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  call void @UpdateDs(%struct._ModuleRec* noundef %99, i32 noundef 1)
  %100 = load float, float* %10, align 4
  ret float %100
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @FindGMax(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i64* %0, i64** %2, align 8
  store float 0xC16312CFE0000000, float* %4, align 4
  %5 = load i64*, i64** %2, align 8
  store i64 4294967295, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @numModules, align 8
  %10 = udiv i64 %9, 2
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i64 0, i64 %14
  %16 = load float, float* %15, align 4
  %17 = load float, float* %4, align 4
  %18 = fcmp ogt float %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  store float %23, float* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %2, align 8
  store i64 %25, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6, !llvm.loop !11

31:                                               ; preds = %6
  %32 = load float, float* %4, align 4
  ret float %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SwapSubsetAndReset(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._ModuleRec*, align 8
  %5 = alloca %struct._ModuleRec*, align 8
  %6 = alloca %struct._ModuleRec*, align 8
  %7 = alloca %struct._ModuleRec*, align 8
  store i64 %0, i64* %2, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %4, align 8
  %8 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %8, %struct._ModuleRec** %5, align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** %6, align 8
  %9 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %9, %struct._ModuleRec** %7, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %15, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  %16 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  store %struct._ModuleRec* %16, %struct._ModuleRec** %4, align 8
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %18 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %17, i32 0, i32 0
  %19 = load %struct._ModuleRec*, %struct._ModuleRec** %18, align 8
  store %struct._ModuleRec* %19, %struct._ModuleRec** %5, align 8
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  store %struct._ModuleRec* %20, %struct._ModuleRec** %6, align 8
  %21 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %22 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %21, i32 0, i32 0
  %23 = load %struct._ModuleRec*, %struct._ModuleRec** %22, align 8
  store %struct._ModuleRec* %23, %struct._ModuleRec** %7, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %10, !llvm.loop !12

26:                                               ; preds = %10
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** %4, align 8
  %28 = icmp ne %struct._ModuleRec* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %31 = icmp ne %struct._ModuleRec* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29, %26
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.SwapSubsetAndReset, i64 0, i64 0)) #5
  unreachable

34:                                               ; preds = %32
  %35 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %36 = icmp eq %struct._ModuleRec* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._ModuleList* @groupA to i8*), i8* align 8 bitcast (%struct._ModuleList* @swapToA to i8*), i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._ModuleList* @groupB to i8*), i8* align 8 bitcast (%struct._ModuleList* @swapToB to i8*), i64 16, i1 false)
  br label %49

38:                                               ; preds = %34
  %39 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %40 = load %struct._ModuleRec*, %struct._ModuleRec** %4, align 8
  %41 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %40, i32 0, i32 0
  store %struct._ModuleRec* %39, %struct._ModuleRec** %41, align 8
  %42 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %42, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %43 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 1), align 8
  store %struct._ModuleRec* %43, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  %44 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %45 = load %struct._ModuleRec*, %struct._ModuleRec** %6, align 8
  %46 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %45, i32 0, i32 0
  store %struct._ModuleRec* %44, %struct._ModuleRec** %46, align 8
  %47 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %47, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %48 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 1), align 8
  store %struct._ModuleRec* %48, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  br label %49

49:                                               ; preds = %38, %37
  %50 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %50, %struct._ModuleRec** %5, align 8
  br label %51

51:                                               ; preds = %59, %49
  %52 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %53 = icmp ne %struct._ModuleRec* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %56 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %54
  %60 = load %struct._ModuleRec*, %struct._ModuleRec** %5, align 8
  %61 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %60, i32 0, i32 0
  %62 = load %struct._ModuleRec*, %struct._ModuleRec** %61, align 8
  store %struct._ModuleRec* %62, %struct._ModuleRec** %5, align 8
  br label %51, !llvm.loop !13

63:                                               ; preds = %51
  %64 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %64, %struct._ModuleRec** %7, align 8
  br label %65

65:                                               ; preds = %73, %63
  %66 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %67 = icmp ne %struct._ModuleRec* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %70 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %71
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %75 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %74, i32 0, i32 0
  %76 = load %struct._ModuleRec*, %struct._ModuleRec** %75, align 8
  store %struct._ModuleRec* %76, %struct._ModuleRec** %7, align 8
  br label %65, !llvm.loop !14

77:                                               ; preds = %65
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i32 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintResults(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._ModuleRec*, align 8
  %4 = alloca %struct._Net*, align 8
  %5 = alloca %struct._Module*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i64 -1, i64* @maxStat, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %28, %1
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %12, !llvm.loop !15

31:                                               ; preds = %12
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %37 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %37, %struct._ModuleRec** %3, align 8
  br label %38

38:                                               ; preds = %48, %34
  %39 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %40 = icmp ne %struct._ModuleRec* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %44 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %46)
  br label %48

48:                                               ; preds = %41
  %49 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %50 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %49, i32 0, i32 0
  %51 = load %struct._ModuleRec*, %struct._ModuleRec** %50, align 8
  store %struct._ModuleRec* %51, %struct._ModuleRec** %3, align 8
  br label %38, !llvm.loop !16

52:                                               ; preds = %38
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %57 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %57, %struct._ModuleRec** %3, align 8
  br label %58

58:                                               ; preds = %68, %52
  %59 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %60 = icmp ne %struct._ModuleRec* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %64 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %66)
  br label %68

68:                                               ; preds = %61
  %69 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %70 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %69, i32 0, i32 0
  %71 = load %struct._ModuleRec*, %struct._ModuleRec** %70, align 8
  store %struct._ModuleRec* %71, %struct._ModuleRec** %3, align 8
  br label %58, !llvm.loop !17

72:                                               ; preds = %58
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %31
  store i64 0, i64* %6, align 8
  %76 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %76, %struct._ModuleRec** %3, align 8
  br label %77

77:                                               ; preds = %174, %75
  %78 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %79 = icmp ne %struct._ModuleRec* %78, null
  br i1 %79, label %80, label %178

80:                                               ; preds = %77
  %81 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %82 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %89

88:                                               ; preds = %80
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.PrintResults, i64 0, i64 0)) #5
  unreachable

89:                                               ; preds = %87
  %90 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %91 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %92
  %94 = load %struct._Net*, %struct._Net** %93, align 8
  store %struct._Net* %94, %struct._Net** %4, align 8
  br label %95

95:                                               ; preds = %169, %89
  %96 = load %struct._Net*, %struct._Net** %4, align 8
  %97 = icmp ne %struct._Net* %96, null
  br i1 %97, label %98, label %173

98:                                               ; preds = %95
  store i32 0, i32* %9, align 4
  %99 = load %struct._Net*, %struct._Net** %4, align 8
  %100 = getelementptr inbounds %struct._Net, %struct._Net* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %101
  %103 = load %struct._Module*, %struct._Module** %102, align 8
  store %struct._Module* %103, %struct._Module** %5, align 8
  br label %104

104:                                              ; preds = %110, %98
  %105 = load %struct._Module*, %struct._Module** %5, align 8
  %106 = icmp ne %struct._Module* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107
  %111 = load %struct._Module*, %struct._Module** %5, align 8
  %112 = getelementptr inbounds %struct._Module, %struct._Module* %111, i32 0, i32 0
  %113 = load %struct._Module*, %struct._Module** %112, align 8
  store %struct._Module* %113, %struct._Module** %5, align 8
  br label %104, !llvm.loop !18

114:                                              ; preds = %104
  %115 = load i32, i32* %9, align 4
  %116 = icmp sge i32 %115, 2
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %119

118:                                              ; preds = %114
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.PrintResults, i64 0, i64 0)) #5
  unreachable

119:                                              ; preds = %117
  %120 = load %struct._Net*, %struct._Net** %4, align 8
  %121 = getelementptr inbounds %struct._Net, %struct._Net* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %122
  %124 = load %struct._Module*, %struct._Module** %123, align 8
  store %struct._Module* %124, %struct._Module** %5, align 8
  br label %125

125:                                              ; preds = %164, %119
  %126 = load %struct._Module*, %struct._Module** %5, align 8
  %127 = icmp ne %struct._Module* %126, null
  br i1 %127, label %128, label %168

128:                                              ; preds = %125
  %129 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %130 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct._Module*, %struct._Module** %5, align 8
  %135 = getelementptr inbounds %struct._Module, %struct._Module* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %133, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %128
  %141 = load i32, i32* %2, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %145 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %146 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  %149 = load %struct._Module*, %struct._Module** %5, align 8
  %150 = getelementptr inbounds %struct._Module, %struct._Module* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %144, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 noundef %148, i64 noundef %152)
  br label %154

154:                                              ; preds = %143, %140
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load i64, i64* %6, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %6, align 8
  br label %163

163:                                              ; preds = %154, %128
  br label %164

164:                                              ; preds = %163
  %165 = load %struct._Module*, %struct._Module** %5, align 8
  %166 = getelementptr inbounds %struct._Module, %struct._Module* %165, i32 0, i32 0
  %167 = load %struct._Module*, %struct._Module** %166, align 8
  store %struct._Module* %167, %struct._Module** %5, align 8
  br label %125, !llvm.loop !19

168:                                              ; preds = %125
  br label %169

169:                                              ; preds = %168
  %170 = load %struct._Net*, %struct._Net** %4, align 8
  %171 = getelementptr inbounds %struct._Net, %struct._Net* %170, i32 0, i32 0
  %172 = load %struct._Net*, %struct._Net** %171, align 8
  store %struct._Net* %172, %struct._Net** %4, align 8
  br label %95, !llvm.loop !20

173:                                              ; preds = %95
  br label %174

174:                                              ; preds = %173
  %175 = load %struct._ModuleRec*, %struct._ModuleRec** %3, align 8
  %176 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %175, i32 0, i32 0
  %177 = load %struct._ModuleRec*, %struct._ModuleRec** %176, align 8
  store %struct._ModuleRec* %177, %struct._ModuleRec** %3, align 8
  br label %77, !llvm.loop !21

178:                                              ; preds = %77
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i64 noundef %180)
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %270, %178
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @numNets, align 8
  %186 = icmp ult i64 %184, %185
  br i1 %186, label %187, label %273

187:                                              ; preds = %182
  store i32 0, i32* %9, align 4
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %189
  %191 = load %struct._Module*, %struct._Module** %190, align 8
  store %struct._Module* %191, %struct._Module** %5, align 8
  br label %192

192:                                              ; preds = %198, %187
  %193 = load %struct._Module*, %struct._Module** %5, align 8
  %194 = icmp ne %struct._Module* %193, null
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %195
  %199 = load %struct._Module*, %struct._Module** %5, align 8
  %200 = getelementptr inbounds %struct._Module, %struct._Module* %199, i32 0, i32 0
  %201 = load %struct._Module*, %struct._Module** %200, align 8
  store %struct._Module* %201, %struct._Module** %5, align 8
  br label %192, !llvm.loop !22

202:                                              ; preds = %192
  %203 = load i32, i32* %9, align 4
  %204 = icmp sge i32 %203, 2
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %207

206:                                              ; preds = %202
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.PrintResults, i64 0, i64 0)) #5
  unreachable

207:                                              ; preds = %205
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %211, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* @maxStat, align 8
  %217 = icmp sgt i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %207
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  store i64 %220, i64* @maxStat, align 8
  br label %221

221:                                              ; preds = %218, %207
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %223
  %225 = load %struct._Module*, %struct._Module** %224, align 8
  %226 = getelementptr inbounds %struct._Module, %struct._Module* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %231
  %233 = load %struct._Module*, %struct._Module** %232, align 8
  %234 = getelementptr inbounds %struct._Module, %struct._Module* %233, i32 0, i32 0
  %235 = load %struct._Module*, %struct._Module** %234, align 8
  store %struct._Module* %235, %struct._Module** %5, align 8
  br label %236

236:                                              ; preds = %265, %221
  %237 = load %struct._Module*, %struct._Module** %5, align 8
  %238 = icmp ne %struct._Module* %237, null
  br i1 %238, label %239, label %269

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = load %struct._Module*, %struct._Module** %5, align 8
  %242 = getelementptr inbounds %struct._Module, %struct._Module* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %240, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %239
  %248 = load i32, i32* %2, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  %254 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %251, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 noundef %253)
  br label %255

255:                                              ; preds = %250, %247
  %256 = load i64, i64* %6, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %6, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %259
  %261 = getelementptr inbounds %struct.anon, %struct.anon* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %261, align 8
  br label %269

264:                                              ; preds = %239
  br label %265

265:                                              ; preds = %264
  %266 = load %struct._Module*, %struct._Module** %5, align 8
  %267 = getelementptr inbounds %struct._Module, %struct._Module* %266, i32 0, i32 0
  %268 = load %struct._Module*, %struct._Module** %267, align 8
  store %struct._Module* %268, %struct._Module** %5, align 8
  br label %236, !llvm.loop !23

269:                                              ; preds = %255, %236
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %8, align 4
  br label %182, !llvm.loop !24

273:                                              ; preds = %182
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %275 = load i64, i64* %6, align 8
  %276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %274, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i64 noundef %275)
  store i32 2, i32* %8, align 4
  br label %277

277:                                              ; preds = %301, %273
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* @maxStat, align 8
  %281 = icmp sle i64 %279, %280
  br i1 %281, label %282, label %304

282:                                              ; preds = %277
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %286
  %288 = getelementptr inbounds %struct.anon, %struct.anon* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %291
  %293 = getelementptr inbounds %struct.anon, %struct.anon* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %283, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i32 noundef %284, i64 noundef %289, i64 noundef %294, i64 noundef %299)
  br label %301

301:                                              ; preds = %282
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  br label %277, !llvm.loop !25

304:                                              ; preds = %277
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct._ModuleRec*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  call void @ReadNetList(i8* noundef %19)
  call void @NetsToModules()
  call void @ComputeNetCosts()
  %20 = load i64, i64* @numModules, align 8
  %21 = urem i64 %20, 2
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

25:                                               ; preds = %23
  call void @InitLists()
  store float 0.000000e+00, float* %9, align 4
  br label %26

26:                                               ; preds = %78, %25
  call void @ComputeDs(%struct._ModuleList* noundef @groupA, i32 noundef 0, i32 noundef 2)
  call void @ComputeDs(%struct._ModuleList* noundef @groupB, i32 noundef 1, i32 noundef 3)
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @numModules, align 8
  %30 = udiv i64 %29, 2
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = call float @FindMaxGpAndSwap()
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i64 0, i64 %34
  store float %33, float* %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %27, !llvm.loop !26

39:                                               ; preds = %27
  %40 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  %41 = icmp eq %struct._ModuleRec* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 1), align 8
  %44 = icmp eq %struct._ModuleRec* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42, %39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

47:                                               ; preds = %45
  %48 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  %49 = icmp eq %struct._ModuleRec* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 1), align 8
  %52 = icmp eq %struct._ModuleRec* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %55

54:                                               ; preds = %50, %47
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

55:                                               ; preds = %53
  %56 = call float @FindGMax(i64* noundef %7)
  store float %56, float* %8, align 4
  %57 = load float, float* %9, align 4
  %58 = load float, float* %8, align 4
  %59 = fcmp oeq float %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = load float, float* %8, align 4
  %63 = fpext float %62 to double
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), double noundef %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load float, float* %8, align 4
  store float %66, float* %9, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = load float, float* %8, align 4
  %69 = fpext float %68 to double
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), double noundef %69, i64 noundef %70)
  %72 = load float, float* %8, align 4
  %73 = fpext float %72 to double
  %74 = fcmp ogt double %73, 0.000000e+00
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* %7, align 8
  call void @SwapSubsetAndReset(i64 noundef %76)
  br label %77

77:                                               ; preds = %75, %65
  call void @PrintResults(i32 noundef 0)
  br label %78

78:                                               ; preds = %77
  %79 = load float, float* %8, align 4
  %80 = fpext float %79 to double
  %81 = fcmp ogt double %80, 0.000000e+00
  br i1 %81, label %26, label %82, !llvm.loop !27

82:                                               ; preds = %78
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._ModuleList* @groupA to i8*), i8* align 8 bitcast (%struct._ModuleList* @swapToB to i8*), i64 16, i1 false)
  %83 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i32 0, i32 0), align 8
  store %struct._ModuleRec* %83, %struct._ModuleRec** %10, align 8
  br label %84

84:                                               ; preds = %92, %82
  %85 = load %struct._ModuleRec*, %struct._ModuleRec** %10, align 8
  %86 = icmp ne %struct._ModuleRec* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct._ModuleRec*, %struct._ModuleRec** %10, align 8
  %89 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %90
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %87
  %93 = load %struct._ModuleRec*, %struct._ModuleRec** %10, align 8
  %94 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %93, i32 0, i32 0
  %95 = load %struct._ModuleRec*, %struct._ModuleRec** %94, align 8
  store %struct._ModuleRec* %95, %struct._ModuleRec** %10, align 8
  br label %84, !llvm.loop !28

96:                                               ; preds = %84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct._ModuleList* @groupB to i8*), i8* align 8 bitcast (%struct._ModuleList* @swapToA to i8*), i64 16, i1 false)
  %97 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i32 0, i32 0), align 8
  store %struct._ModuleRec* %97, %struct._ModuleRec** %10, align 8
  br label %98

98:                                               ; preds = %106, %96
  %99 = load %struct._ModuleRec*, %struct._ModuleRec** %10, align 8
  %100 = icmp ne %struct._ModuleRec* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct._ModuleRec*, %struct._ModuleRec** %10, align 8
  %103 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %104
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %101
  %107 = load %struct._ModuleRec*, %struct._ModuleRec** %10, align 8
  %108 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %107, i32 0, i32 0
  %109 = load %struct._ModuleRec*, %struct._ModuleRec** %108, align 8
  store %struct._ModuleRec* %109, %struct._ModuleRec** %10, align 8
  br label %98, !llvm.loop !29

110:                                              ; preds = %98
  call void @PrintResults(i32 noundef 1)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @ReadNetList(i8* noundef) #4

declare dso_local void @NetsToModules() #4

declare dso_local void @ComputeNetCosts() #4

declare dso_local void @InitLists() #4

declare dso_local void @ComputeDs(%struct._ModuleList* noundef, i32 noundef, i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
