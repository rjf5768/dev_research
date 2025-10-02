; ModuleID = './KS-2.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local float @CAiBj(%struct._ModuleRec* nocapture noundef readonly %0, %struct._ModuleRec* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %6
  br label %8

8:                                                ; preds = %26, %2
  %.02.in = phi %struct._Net** [ %7, %2 ], [ %27, %26 ]
  %.0 = phi float [ 0.000000e+00, %2 ], [ %.1, %26 ]
  %.02 = load %struct._Net*, %struct._Net** %.02.in, align 8
  %.not = icmp eq %struct._Net* %.02, null
  br i1 %.not, label %28, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct._Net, %struct._Net* %.02, i64 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %11
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %11
  br label %15

15:                                               ; preds = %23, %9
  %.01.in = phi %struct._Module** [ %14, %9 ], [ %24, %23 ]
  %.1 = phi float [ %.0, %9 ], [ %.2, %23 ]
  %.01 = load %struct._Module*, %struct._Module** %.01.in, align 8
  %.not3 = icmp eq %struct._Module* %.01, null
  br i1 %.not3, label %25, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct._Module, %struct._Module* %.01, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, %4
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = fadd float %.1, %13
  br label %22

22:                                               ; preds = %20, %16
  %.2 = phi float [ %21, %20 ], [ %.1, %16 ]
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct._Module, %struct._Module* %.01, i64 0, i32 0
  br label %15, !llvm.loop !4

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct._Net, %struct._Net* %.02, i64 0, i32 0
  br label %8, !llvm.loop !6

28:                                               ; preds = %8
  ret float %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @SwapNode(%struct._ModuleRec* noundef %0, %struct._ModuleRec* noundef %1, %struct._ModuleList* nocapture noundef %2, %struct._ModuleList* nocapture noundef %3) #1 {
  %5 = icmp eq %struct._ModuleRec* %0, null
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 0
  %8 = load %struct._ModuleRec*, %struct._ModuleRec** %7, align 8
  %9 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 1
  %10 = load %struct._ModuleRec*, %struct._ModuleRec** %9, align 8
  %11 = icmp eq %struct._ModuleRec* %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %13, align 8
  %14 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 1
  store %struct._ModuleRec* null, %struct._ModuleRec** %14, align 8
  %15 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %15, align 8
  br label %21

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 0
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** %17, align 8
  %19 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 0
  store %struct._ModuleRec* %18, %struct._ModuleRec** %19, align 8
  %20 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %20, align 8
  br label %21

21:                                               ; preds = %16, %12
  br label %33

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 1
  %24 = load %struct._ModuleRec*, %struct._ModuleRec** %23, align 8
  %25 = icmp eq %struct._ModuleRec* %24, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %2, i64 0, i32 1
  store %struct._ModuleRec* %0, %struct._ModuleRec** %27, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 0
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** %29, align 8
  %31 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %0, i64 0, i32 0
  store %struct._ModuleRec* %30, %struct._ModuleRec** %31, align 8
  %32 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %32, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %3, i64 0, i32 1
  %35 = load %struct._ModuleRec*, %struct._ModuleRec** %34, align 8
  %36 = icmp eq %struct._ModuleRec* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %3, i64 0, i32 1
  store %struct._ModuleRec* %1, %struct._ModuleRec** %38, align 8
  %39 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %3, i64 0, i32 0
  store %struct._ModuleRec* %1, %struct._ModuleRec** %39, align 8
  br label %45

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %3, i64 0, i32 1
  %42 = load %struct._ModuleRec*, %struct._ModuleRec** %41, align 8
  %43 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %42, i64 0, i32 0
  store %struct._ModuleRec* %1, %struct._ModuleRec** %43, align 8
  %44 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %3, i64 0, i32 1
  store %struct._ModuleRec* %1, %struct._ModuleRec** %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %1, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %46, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @UpdateDs(%struct._ModuleRec* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %4
  br label %6

6:                                                ; preds = %55, %2
  %.01.in = phi %struct._Net** [ %5, %2 ], [ %56, %55 ]
  %.01 = load %struct._Net*, %struct._Net** %.01.in, align 8
  %.not = icmp eq %struct._Net* %.01, null
  br i1 %.not, label %57, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct._Net, %struct._Net* %.01, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %9
  br label %11

11:                                               ; preds = %52, %7
  %.0.in = phi %struct._Module** [ %10, %7 ], [ %53, %52 ]
  %.0 = load %struct._Module*, %struct._Module** %.0.in, align 8
  %.not2 = icmp eq %struct._Module* %.0, null
  br i1 %.not2, label %54, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %26
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct._Net, %struct._Net* %.01, i64 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fadd float %28, %32
  %34 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %35
  store float %33, float* %36, align 4
  br label %50

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %39
  %41 = load float, float* %40, align 4
  %42 = getelementptr inbounds %struct._Net, %struct._Net* %.01, i64 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fsub float %41, %45
  %47 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %48
  store float %46, float* %49, align 4
  br label %50

50:                                               ; preds = %37, %24
  br label %51

51:                                               ; preds = %50, %12
  br label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct._Module, %struct._Module* %.0, i64 0, i32 0
  br label %11, !llvm.loop !7

54:                                               ; preds = %11
  br label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct._Net, %struct._Net* %.01, i64 0, i32 0
  br label %6, !llvm.loop !8

57:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @FindMaxGpAndSwap() #3 {
  br label %1

1:                                                ; preds = %22, %0
  %.014 = phi float [ 0xC16312CFE0000000, %0 ], [ %.115, %22 ]
  %.011 = phi %struct._ModuleRec* [ null, %0 ], [ %.112, %22 ]
  %.08 = phi %struct._ModuleRec* [ null, %0 ], [ %.19, %22 ]
  %.05 = phi %struct._ModuleRec* [ null, %0 ], [ %.16, %22 ]
  %.04 = phi %struct._ModuleRec* [ null, %0 ], [ %.1, %22 ]
  %.01 = phi %struct._ModuleRec* [ null, %0 ], [ %.0, %22 ]
  %.0.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), %0 ], [ %23, %22 ]
  %.0 = load %struct._ModuleRec*, %struct._ModuleRec** %.0.in, align 8
  %.not = icmp eq %struct._ModuleRec* %.0, null
  br i1 %.not, label %24, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %19, %2
  %.115 = phi float [ %.014, %2 ], [ %.216, %19 ]
  %.112 = phi %struct._ModuleRec* [ %.011, %2 ], [ %.213, %19 ]
  %.19 = phi %struct._ModuleRec* [ %.08, %2 ], [ %.210, %19 ]
  %.16 = phi %struct._ModuleRec* [ %.05, %2 ], [ %.27, %19 ]
  %.1 = phi %struct._ModuleRec* [ %.04, %2 ], [ %.2, %19 ]
  %.03 = phi %struct._ModuleRec* [ null, %2 ], [ %.02, %19 ]
  %.02.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), %2 ], [ %20, %19 ]
  %.02 = load %struct._ModuleRec*, %struct._ModuleRec** %.02.in, align 8
  %.not19 = icmp eq %struct._ModuleRec* %.02, null
  br i1 %.not19, label %21, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %6
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.02, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %10
  %12 = load float, float* %11, align 4
  %13 = fadd float %8, %12
  %14 = call float @CAiBj(%struct._ModuleRec* noundef nonnull %.0, %struct._ModuleRec* noundef nonnull %.02)
  %15 = call float @llvm.fmuladd.f32(float %14, float -2.000000e+00, float %13)
  %16 = fcmp ogt float %15, %.115
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %4
  %.216 = phi float [ %15, %17 ], [ %.115, %4 ]
  %.213 = phi %struct._ModuleRec* [ %.03, %17 ], [ %.112, %4 ]
  %.210 = phi %struct._ModuleRec* [ %.02, %17 ], [ %.19, %4 ]
  %.27 = phi %struct._ModuleRec* [ %.01, %17 ], [ %.16, %4 ]
  %.2 = phi %struct._ModuleRec* [ %.0, %17 ], [ %.1, %4 ]
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.02, i64 0, i32 0
  br label %3, !llvm.loop !9

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 0
  br label %1, !llvm.loop !10

24:                                               ; preds = %1
  %.not17 = icmp eq %struct._ModuleRec* %.04, null
  br i1 %.not17, label %26, label %25

25:                                               ; preds = %24
  br label %27

26:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  call void @SwapNode(%struct._ModuleRec* noundef %.05, %struct._ModuleRec* noundef nonnull %.04, %struct._ModuleList* noundef nonnull @groupA, %struct._ModuleList* noundef nonnull @swapToB)
  %.not18 = icmp eq %struct._ModuleRec* %.08, null
  br i1 %.not18, label %29, label %28

28:                                               ; preds = %27
  br label %30

29:                                               ; preds = %27
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  call void @SwapNode(%struct._ModuleRec* noundef %.011, %struct._ModuleRec* noundef nonnull %.08, %struct._ModuleList* noundef nonnull @groupB, %struct._ModuleList* noundef nonnull @swapToA)
  %31 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.04, i64 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.04, i64 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %40
  store i32 3, i32* %41, align 4
  %42 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.08, i64 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %49

48:                                               ; preds = %38
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.FindMaxGpAndSwap, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.08, i64 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %51
  store i32 2, i32* %52, align 4
  call void @UpdateDs(%struct._ModuleRec* noundef nonnull %.04, i32 noundef 0)
  call void @UpdateDs(%struct._ModuleRec* noundef nonnull %.08, i32 noundef 1)
  ret float %.014

UnifiedUnreachableBlock:                          ; preds = %48, %37, %29, %26
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local float @FindGMax(i64* nocapture noundef writeonly %0) #2 {
  store i64 4294967295, i64* %0, align 8
  br label %2

2:                                                ; preds = %18, %1
  %.01 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %.0 = phi float [ 0xC16312CFE0000000, %1 ], [ %.1, %18 ]
  %3 = zext i32 %.01 to i64
  %4 = load i64, i64* @numModules, align 8
  %5 = lshr i64 %4, 1
  %6 = icmp ugt i64 %5, %3
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i64 0, i64 %8
  %10 = load float, float* %9, align 4
  %11 = fcmp ogt float %10, %.0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i64 0, i64 %13
  %15 = load float, float* %14, align 4
  %16 = zext i32 %.01 to i64
  store i64 %16, i64* %0, align 8
  br label %17

17:                                               ; preds = %12, %7
  %.1 = phi float [ %15, %12 ], [ %.0, %7 ]
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !11

20:                                               ; preds = %2
  ret float %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SwapSubsetAndReset(i64 noundef %0) #3 {
  br label %2

2:                                                ; preds = %4, %1
  %.05 = phi %struct._ModuleRec* [ null, %1 ], [ %.0, %4 ]
  %.03.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 0), %1 ], [ %5, %4 ]
  %.02 = phi %struct._ModuleRec* [ null, %1 ], [ %.03, %4 ]
  %.01 = phi i64 [ 0, %1 ], [ %7, %4 ]
  %.0.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 0), %1 ], [ %6, %4 ]
  %.0 = load %struct._ModuleRec*, %struct._ModuleRec** %.0.in, align 8
  %.03 = load %struct._ModuleRec*, %struct._ModuleRec** %.03.in, align 8
  %.not = icmp ugt i64 %.01, %0
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.03, i64 0, i32 0
  %6 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 0
  %7 = add i64 %.01, 1
  br label %2, !llvm.loop !12

8:                                                ; preds = %2
  %.not6 = icmp eq %struct._ModuleRec* %.02, null
  br i1 %.not6, label %11, label %9

9:                                                ; preds = %8
  %.not7 = icmp eq %struct._ModuleRec* %.05, null
  br i1 %.not7, label %11, label %10

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9, %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.SwapSubsetAndReset, i64 0, i64 0)) #10
  unreachable

12:                                               ; preds = %10
  %13 = icmp eq %struct._ModuleRec* %.03, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @groupA to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @swapToA to i8*), i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @groupB to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @swapToB to i8*), i64 16, i1 false)
  br label %22

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.02, i64 0, i32 0
  store %struct._ModuleRec* %.0, %struct._ModuleRec** %16, align 8
  %17 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 0), align 8
  store %struct._ModuleRec* %17, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), align 8
  %18 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 1), align 8
  store %struct._ModuleRec* %18, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 1), align 8
  %19 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.05, i64 0, i32 0
  store %struct._ModuleRec* %.03, %struct._ModuleRec** %19, align 8
  %20 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 0), align 8
  store %struct._ModuleRec* %20, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), align 8
  %21 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 1), align 8
  store %struct._ModuleRec* %21, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 1), align 8
  br label %22

22:                                               ; preds = %15, %14
  br label %23

23:                                               ; preds = %28, %22
  %.14.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), %22 ], [ %29, %28 ]
  %.14 = load %struct._ModuleRec*, %struct._ModuleRec** %.14.in, align 8
  %.not8 = icmp eq %struct._ModuleRec* %.14, null
  br i1 %.not8, label %30, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.14, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %26
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.14, i64 0, i32 0
  br label %23, !llvm.loop !13

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %36, %30
  %.1.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), %30 ], [ %37, %36 ]
  %.1 = load %struct._ModuleRec*, %struct._ModuleRec** %.1.in, align 8
  %.not9 = icmp eq %struct._ModuleRec* %.1, null
  br i1 %.not9, label %38, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.1, i64 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %34
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.1, i64 0, i32 0
  br label %31, !llvm.loop !14

38:                                               ; preds = %31
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintResults(i32 noundef %0) #3 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %2)
  store i64 -1, i64* @maxStat, align 8
  br label %4

4:                                                ; preds = %13, %1
  %.011 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %5 = icmp ult i32 %.011, 256
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = zext i32 %.011 to i64
  %8 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %7, i32 2
  store i64 0, i64* %8, align 8
  %9 = zext i32 %.011 to i64
  %10 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %9, i32 1
  store i64 0, i64* %10, align 8
  %11 = zext i32 %.011 to i64
  %12 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %11, i32 0
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %.011, 1
  br label %4, !llvm.loop !15

15:                                               ; preds = %4
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %43, label %16

16:                                               ; preds = %15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %17)
  br label %19

19:                                               ; preds = %26, %16
  %.01.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), %16 ], [ %27, %26 ]
  %.01 = load %struct._ModuleRec*, %struct._ModuleRec** %.01.in, align 8
  %.not29 = icmp eq %struct._ModuleRec* %.01, null
  br i1 %.not29, label %28, label %20

20:                                               ; preds = %19
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.01, i64 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %24) #11
  br label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.01, i64 0, i32 0
  br label %19, !llvm.loop !16

28:                                               ; preds = %19
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %30)
  br label %32

32:                                               ; preds = %39, %28
  %.12.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), %28 ], [ %40, %39 ]
  %.12 = load %struct._ModuleRec*, %struct._ModuleRec** %.12.in, align 8
  %.not30 = icmp eq %struct._ModuleRec* %.12, null
  br i1 %.not30, label %41, label %33

33:                                               ; preds = %32
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.12, i64 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64 noundef %37) #11
  br label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.12, i64 0, i32 0
  br label %32, !llvm.loop !17

41:                                               ; preds = %32
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc31 = call i32 @fputc(i32 10, %struct._IO_FILE* %42)
  br label %43

43:                                               ; preds = %41, %15
  br label %44

44:                                               ; preds = %108, %43
  %.07 = phi i64 [ 0, %43 ], [ %.18, %108 ]
  %.2.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), %43 ], [ %109, %108 ]
  %.2 = load %struct._ModuleRec*, %struct._ModuleRec** %.2.in, align 8
  %.not18 = icmp eq %struct._ModuleRec* %.2, null
  br i1 %.not18, label %110, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.2, i64 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %45
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.PrintResults, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.2, i64 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %55
  br label %57

57:                                               ; preds = %105, %53
  %.18 = phi i64 [ %.07, %53 ], [ %.29, %105 ]
  %.03.in = phi %struct._Net** [ %56, %53 ], [ %106, %105 ]
  %.03 = load %struct._Net*, %struct._Net** %.03.in, align 8
  %.not24 = icmp eq %struct._Net* %.03, null
  br i1 %.not24, label %107, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct._Net, %struct._Net* %.03, i64 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %60
  br label %62

62:                                               ; preds = %64, %58
  %.04.in = phi %struct._Module** [ %61, %58 ], [ %66, %64 ]
  %.0 = phi i32 [ 0, %58 ], [ %65, %64 ]
  %.04 = load %struct._Module*, %struct._Module** %.04.in, align 8
  %.not25 = icmp eq %struct._Module* %.04, null
  br i1 %.not25, label %67, label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.0, 1
  %66 = getelementptr inbounds %struct._Module, %struct._Module* %.04, i64 0, i32 0
  br label %62, !llvm.loop !18

67:                                               ; preds = %62
  %68 = icmp ugt i32 %.0, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %71

70:                                               ; preds = %67
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.PrintResults, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct._Net, %struct._Net* %.03, i64 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %73
  br label %75

75:                                               ; preds = %102, %71
  %.29 = phi i64 [ %.18, %71 ], [ %.310, %102 ]
  %.15.in = phi %struct._Module** [ %74, %71 ], [ %103, %102 ]
  %.15 = load %struct._Module*, %struct._Module** %.15.in, align 8
  %.not26 = icmp eq %struct._Module* %.15, null
  br i1 %.not26, label %104, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.2, i64 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct._Module, %struct._Module* %.15, i64 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %.not27 = icmp eq i32 %80, %84
  br i1 %.not27, label %101, label %85

85:                                               ; preds = %76
  %.not28 = icmp eq i32 %0, 0
  br i1 %.not28, label %95, label %86

86:                                               ; preds = %85
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %88 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.2, i64 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds %struct._Module, %struct._Module* %.15, i64 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %87, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 noundef %90, i64 noundef %93) #11
  br label %95

95:                                               ; preds = %86, %85
  %96 = zext i32 %.0 to i64
  %97 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %96, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = add i64 %.29, 1
  br label %101

101:                                              ; preds = %95, %76
  %.310 = phi i64 [ %100, %95 ], [ %.29, %76 ]
  br label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct._Module, %struct._Module* %.15, i64 0, i32 0
  br label %75, !llvm.loop !19

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct._Net, %struct._Net* %.03, i64 0, i32 0
  br label %57, !llvm.loop !20

107:                                              ; preds = %57
  br label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.2, i64 0, i32 0
  br label %44, !llvm.loop !21

110:                                              ; preds = %44
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i64 noundef %.07) #11
  br label %113

113:                                              ; preds = %170, %110
  %.112 = phi i32 [ 0, %110 ], [ %171, %170 ]
  %.4 = phi i64 [ 0, %110 ], [ %.5, %170 ]
  %114 = zext i32 %.112 to i64
  %115 = load i64, i64* @numNets, align 8
  %116 = icmp ugt i64 %115, %114
  br i1 %116, label %117, label %172

117:                                              ; preds = %113
  %118 = zext i32 %.112 to i64
  %119 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %118
  br label %120

120:                                              ; preds = %122, %117
  %.26.in = phi %struct._Module** [ %119, %117 ], [ %124, %122 ]
  %.1 = phi i32 [ 0, %117 ], [ %123, %122 ]
  %.26 = load %struct._Module*, %struct._Module** %.26.in, align 8
  %.not20 = icmp eq %struct._Module* %.26, null
  br i1 %.not20, label %125, label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  %123 = add nuw nsw i32 %.1, 1
  %124 = getelementptr inbounds %struct._Module, %struct._Module* %.26, i64 0, i32 0
  br label %120, !llvm.loop !22

125:                                              ; preds = %120
  %126 = icmp ugt i32 %.1, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  br label %129

128:                                              ; preds = %125
  call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.PrintResults, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

129:                                              ; preds = %127
  %130 = zext i32 %.1 to i64
  %131 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %130, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = zext i32 %.1 to i64
  %135 = load i64, i64* @maxStat, align 8
  %136 = icmp slt i64 %135, %134
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = zext i32 %.1 to i64
  store i64 %138, i64* @maxStat, align 8
  br label %139

139:                                              ; preds = %137, %129
  %140 = zext i32 %.112 to i64
  %141 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %140
  %142 = load %struct._Module*, %struct._Module** %141, align 8
  %143 = getelementptr inbounds %struct._Module, %struct._Module* %142, i64 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %.112 to i64
  %148 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %147
  %149 = load %struct._Module*, %struct._Module** %148, align 8
  br label %150

150:                                              ; preds = %168, %139
  %.pn = phi %struct._Module* [ %149, %139 ], [ %.3, %168 ]
  %.3.in = getelementptr inbounds %struct._Module, %struct._Module* %.pn, i64 0, i32 0
  %.3 = load %struct._Module*, %struct._Module** %.3.in, align 8
  %.not21 = icmp eq %struct._Module* %.3, null
  br i1 %.not21, label %.loopexit, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct._Module, %struct._Module* %.3, i64 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %.not22 = icmp eq i32 %146, %155
  br i1 %.not22, label %167, label %156

156:                                              ; preds = %151
  %.not23 = icmp eq i32 %0, 0
  br i1 %.not23, label %161, label %157

157:                                              ; preds = %156
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %159 = add nuw nsw i32 %.112, 1
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %158, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 noundef %159) #11
  br label %161

161:                                              ; preds = %157, %156
  %162 = add i64 %.4, 1
  %163 = zext i32 %.1 to i64
  %164 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %163, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %169

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167
  br label %150, !llvm.loop !23

.loopexit:                                        ; preds = %150
  br label %169

169:                                              ; preds = %.loopexit, %161
  %.5 = phi i64 [ %162, %161 ], [ %.4, %.loopexit ]
  br label %170

170:                                              ; preds = %169
  %171 = add nuw nsw i32 %.112, 1
  br label %113, !llvm.loop !24

172:                                              ; preds = %113
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i64 noundef %.4) #11
  br label %175

175:                                              ; preds = %190, %172
  %.213 = phi i32 [ 2, %172 ], [ %191, %190 ]
  %176 = zext i32 %.213 to i64
  %177 = load i64, i64* @maxStat, align 8
  %.not19 = icmp slt i64 %177, %176
  br i1 %.not19, label %192, label %178

178:                                              ; preds = %175
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = zext i32 %.213 to i64
  %181 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %180, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = zext i32 %.213 to i64
  %184 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %183, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = zext i32 %.213 to i64
  %187 = getelementptr inbounds [256 x %struct.anon], [256 x %struct.anon]* @netStats, i64 0, i64 %186, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i32 noundef %.213, i64 noundef %182, i64 noundef %185, i64 noundef %188) #11
  br label %190

190:                                              ; preds = %178
  %191 = add nuw nsw i32 %.213, 1
  br label %175, !llvm.loop !25

192:                                              ; preds = %175
  ret void

UnifiedUnreachableBlock:                          ; preds = %128, %70, %52
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #7

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #8 {
  %3 = alloca i64, align 8
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %5) #12
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  call void @ReadNetList(i8* noundef %9) #11
  call void @NetsToModules() #11
  call void @ComputeNetCosts() #11
  %10 = load i64, i64* @numModules, align 8
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %15

14:                                               ; preds = %7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  call void @InitLists() #11
  br label %16

16:                                               ; preds = %58, %15
  %.01 = phi float [ 0.000000e+00, %15 ], [ %43, %58 ]
  call void @ComputeDs(%struct._ModuleList* noundef nonnull @groupA, i32 noundef 0, i32 noundef 2) #11
  call void @ComputeDs(%struct._ModuleList* noundef nonnull @groupB, i32 noundef 1, i32 noundef 3) #11
  br label %17

17:                                               ; preds = %24, %16
  %.02 = phi i64 [ 0, %16 ], [ %25, %24 ]
  %18 = load i64, i64* @numModules, align 8
  %19 = lshr i64 %18, 1
  %20 = icmp ult i64 %.02, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = call float @FindMaxGpAndSwap()
  %23 = getelementptr inbounds [1024 x float], [1024 x float]* @GP, i64 0, i64 %.02
  store float %22, float* %23, align 4
  br label %24

24:                                               ; preds = %21
  %25 = add i64 %.02, 1
  br label %17, !llvm.loop !26

26:                                               ; preds = %17
  %27 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), align 8
  %28 = icmp eq %struct._ModuleRec* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 1), align 8
  %31 = icmp eq %struct._ModuleRec* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29, %26
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %32
  %35 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), align 8
  %36 = icmp eq %struct._ModuleRec* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 1), align 8
  %39 = icmp eq %struct._ModuleRec* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %37, %34
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %40
  %43 = call float @FindGMax(i64* noundef nonnull %3)
  %44 = fcmp oeq float %.01, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = fpext float %43 to double
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), double noundef %47) #11
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = fpext float %43 to double
  %52 = load i64, i64* %3, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), double noundef %51, i64 noundef %52) #11
  %54 = fcmp ogt float %43, 0.000000e+00
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* %3, align 8
  call void @SwapSubsetAndReset(i64 noundef %56)
  br label %57

57:                                               ; preds = %55, %49
  call void @PrintResults(i32 noundef 0)
  br label %58

58:                                               ; preds = %57
  %59 = fcmp ogt float %43, 0.000000e+00
  br i1 %59, label %16, label %60, !llvm.loop !27

60:                                               ; preds = %58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @groupA to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @swapToB to i8*), i64 16, i1 false)
  br label %61

61:                                               ; preds = %66, %60
  %.0.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), %60 ], [ %67, %66 ]
  %.0 = load %struct._ModuleRec*, %struct._ModuleRec** %.0.in, align 8
  %.not3 = icmp eq %struct._ModuleRec* %.0, null
  br i1 %.not3, label %68, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %64
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 0
  br label %61, !llvm.loop !28

68:                                               ; preds = %61
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @groupB to i8*), i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct._ModuleList* @swapToA to i8*), i64 16, i1 false)
  br label %69

69:                                               ; preds = %74, %68
  %.1.in = phi %struct._ModuleRec** [ getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), %68 ], [ %75, %74 ]
  %.1 = load %struct._ModuleRec*, %struct._ModuleRec** %.1.in, align 8
  %.not4 = icmp eq %struct._ModuleRec* %.1, null
  br i1 %.not4, label %76, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.1, i64 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %72
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.1, i64 0, i32 0
  br label %69, !llvm.loop !29

76:                                               ; preds = %69
  call void @PrintResults(i32 noundef 1)
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %76, %41, %33, %14, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local void @ReadNetList(i8* noundef) #7

declare dso_local void @NetsToModules() #7

declare dso_local void @ComputeNetCosts() #7

declare dso_local void @InitLists() #7

declare dso_local void @ComputeDs(%struct._ModuleList* noundef, i32 noundef, i32 noundef) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #9

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }

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
