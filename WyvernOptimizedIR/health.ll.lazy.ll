; ModuleID = './health.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/health/health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Village = type { [4 x %struct.Village*], %struct.Village*, %struct.List, %struct.Hosp, i32, i64 }
%struct.List = type { %struct.List*, %struct.Patient*, %struct.List* }
%struct.Patient = type { i32, i32, i32, %struct.Village* }
%struct.Hosp = type { i32, i32, i32, %struct.List, %struct.List, %struct.List, %struct.List }
%struct.Results = type { float, float, float }

@seed = dso_local global i64 0, align 8
@max_level = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0A\0A    Columbian Health Care Simulator\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Working...\0A\00", align 1
@max_time = dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Getting Results\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Done.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"# of people treated:              %f people\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Average length of stay:           %0.2f time units\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Average # of hospitals visited:   %f hospitals\0A\0A\00", align 1
@str = private unnamed_addr constant [39 x i8] c"\0A\0A    Columbian Health Care Simulator\0A\00", align 1
@str.1 = private unnamed_addr constant [11 x i8] c"Working...\00", align 1
@str.2 = private unnamed_addr constant [16 x i8] c"Getting Results\00", align 1
@str.3 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Village* @alloc_tree(i32 noundef %0, i32 noundef %1, %struct.Village* noundef %2) #0 {
  %4 = alloca [4 x %struct.Village*], align 16
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %60

7:                                                ; preds = %3
  %8 = call noalias dereferenceable_or_null(192) i8* @malloc(i64 noundef 192) #7
  %9 = bitcast i8* %8 to %struct.Village*
  br label %10

10:                                               ; preds = %20, %7
  %.01 = phi i32 [ 3, %7 ], [ %21, %20 ]
  %11 = icmp sgt i32 %.01, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  %13 = add nsw i32 %0, -1
  %14 = shl nsw i32 %1, 2
  %15 = add nsw i32 %14, %.01
  %16 = add nsw i32 %15, 1
  %17 = call %struct.Village* @alloc_tree(i32 noundef %13, i32 noundef %16, %struct.Village* noundef %9)
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %4, i64 0, i64 %18
  store %struct.Village* %17, %struct.Village** %19, align 8
  br label %20

20:                                               ; preds = %12
  %21 = add nsw i32 %.01, -1
  br label %10, !llvm.loop !4

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 1
  store %struct.Village* %2, %struct.Village** %23, align 8
  %24 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 4
  store i32 %1, i32* %24, align 8
  %25 = sext i32 %1 to i64
  %26 = load i64, i64* @seed, align 8
  %27 = add nsw i64 %26, 127773
  %28 = mul nsw i64 %27, %25
  %29 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 5
  store i64 %28, i64* %29, align 8
  %30 = add nsw i32 %0, -1
  %ldexp = call double @ldexp(double 1.000000e+00, i32 %30) #7
  %31 = fptosi double %ldexp to i32
  %32 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 2
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 4, i32 0
  store %struct.List* null, %struct.List** %35, align 8
  %36 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 4, i32 2
  store %struct.List* null, %struct.List** %36, align 8
  %37 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 4, i32 1
  store %struct.Patient* null, %struct.Patient** %37, align 8
  %38 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 3, i32 0
  store %struct.List* null, %struct.List** %38, align 8
  %39 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 3, i32 2
  store %struct.List* null, %struct.List** %39, align 8
  %40 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 3, i32 1
  store %struct.Patient* null, %struct.Patient** %40, align 8
  %41 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 5, i32 0
  store %struct.List* null, %struct.List** %41, align 8
  %42 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 5, i32 2
  store %struct.List* null, %struct.List** %42, align 8
  %43 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 5, i32 1
  store %struct.Patient* null, %struct.Patient** %43, align 8
  %44 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 6, i32 0
  store %struct.List* null, %struct.List** %44, align 8
  %45 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 6, i32 2
  store %struct.List* null, %struct.List** %45, align 8
  %46 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 3, i32 6, i32 1
  store %struct.Patient* null, %struct.Patient** %46, align 8
  %47 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 2, i32 2
  store %struct.List* null, %struct.List** %47, align 8
  %48 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 2, i32 0
  store %struct.List* null, %struct.List** %48, align 8
  br label %49

49:                                               ; preds = %57, %22
  %.1 = phi i32 [ 0, %22 ], [ %58, %57 ]
  %50 = icmp ult i32 %.1, 4
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds [4 x %struct.Village*], [4 x %struct.Village*]* %4, i64 0, i64 %52
  %54 = load %struct.Village*, %struct.Village** %53, align 8
  %55 = zext i32 %.1 to i64
  %56 = getelementptr inbounds %struct.Village, %struct.Village* %9, i64 0, i32 0, i64 %55
  store %struct.Village* %54, %struct.Village** %56, align 8
  br label %57

57:                                               ; preds = %51
  %58 = add nuw nsw i32 %.1, 1
  br label %49, !llvm.loop !6

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %6
  %.0 = phi %struct.Village* [ null, %6 ], [ %9, %59 ]
  ret %struct.Village* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local { <2 x float>, float } @get_results(%struct.Village* noundef readonly %0) #2 {
  %2 = alloca %struct.Results, align 4
  %3 = alloca [4 x %struct.Results], align 16
  %4 = alloca %struct.Results, align 4
  %5 = alloca { <2 x float>, float }, align 8
  %6 = alloca %struct.Results, align 4
  %7 = alloca { <2 x float>, float }, align 8
  %8 = alloca { <2 x float>, float }, align 8
  %9 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 2
  store float 0.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 0
  store float 0.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 1
  store float 0.000000e+00, float* %11, align 4
  %12 = icmp eq %struct.Village* %0, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %84

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %28, %14
  %.01 = phi i32 [ 3, %14 ], [ %29, %28 ]
  %16 = icmp sgt i32 %.01, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 0, i64 %18
  %20 = load %struct.Village*, %struct.Village** %19, align 8
  %21 = sext i32 %.01 to i64
  %22 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %3, i64 0, i64 %21
  %23 = call { <2 x float>, float } @get_results(%struct.Village* noundef %20)
  store { <2 x float>, float } %23, { <2 x float>, float }* %5, align 8
  %24 = bitcast %struct.Results* %4 to i8*
  %25 = bitcast { <2 x float>, float }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %24, i8* noundef nonnull align 8 dereferenceable(12) %25, i64 12, i1 false)
  %26 = bitcast %struct.Results* %22 to i8*
  %27 = bitcast %struct.Results* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %26, i8* noundef nonnull align 4 dereferenceable(12) %27, i64 12, i1 false)
  br label %28

28:                                               ; preds = %17
  %29 = add nsw i32 %.01, -1
  br label %15, !llvm.loop !7

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 0, i64 0
  %32 = load %struct.Village*, %struct.Village** %31, align 8
  %33 = call { <2 x float>, float } @get_results(%struct.Village* noundef %32)
  store { <2 x float>, float } %33, { <2 x float>, float }* %7, align 8
  %34 = bitcast %struct.Results* %6 to i8*
  %35 = bitcast { <2 x float>, float }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %34, i8* noundef nonnull align 8 dereferenceable(12) %35, i64 12, i1 false)
  %36 = bitcast [4 x %struct.Results]* %3 to i8*
  %37 = bitcast %struct.Results* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %36, i8* noundef nonnull align 4 dereferenceable(12) %37, i64 12, i1 false)
  br label %38

38:                                               ; preds = %59, %30
  %.1 = phi i32 [ 3, %30 ], [ %60, %59 ]
  %39 = icmp sgt i32 %.1, -1
  br i1 %39, label %40, label %61

40:                                               ; preds = %38
  %41 = sext i32 %.1 to i64
  %42 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %3, i64 0, i64 %41, i32 2
  %43 = load float, float* %42, align 4
  %44 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 2
  %45 = load float, float* %44, align 4
  %46 = fadd float %45, %43
  store float %46, float* %44, align 4
  %47 = sext i32 %.1 to i64
  %48 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %3, i64 0, i64 %47, i32 0
  %49 = load float, float* %48, align 4
  %50 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fadd float %51, %49
  store float %52, float* %50, align 4
  %53 = sext i32 %.1 to i64
  %54 = getelementptr inbounds [4 x %struct.Results], [4 x %struct.Results]* %3, i64 0, i64 %53, i32 1
  %55 = load float, float* %54, align 4
  %56 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fadd float %57, %55
  store float %58, float* %56, align 4
  br label %59

59:                                               ; preds = %40
  %60 = add nsw i32 %.1, -1
  br label %38, !llvm.loop !8

61:                                               ; preds = %38
  %62 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 2, i32 0
  br label %63

63:                                               ; preds = %64, %61
  %.0.in = phi %struct.List** [ %62, %61 ], [ %82, %64 ]
  %.0 = load %struct.List*, %struct.List** %.0.in, align 8
  %.not = icmp eq %struct.List* %.0, null
  br i1 %.not, label %83, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 1
  %66 = load %struct.Patient*, %struct.Patient** %65, align 8
  %67 = getelementptr inbounds %struct.Patient, %struct.Patient* %66, i64 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sitofp i32 %68 to float
  %70 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 2
  %71 = load float, float* %70, align 4
  %72 = fadd float %71, %69
  store float %72, float* %70, align 4
  %73 = getelementptr inbounds %struct.Patient, %struct.Patient* %66, i64 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sitofp i32 %74 to float
  %76 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = fadd float %77, %75
  store float %78, float* %76, align 4
  %79 = getelementptr inbounds %struct.Results, %struct.Results* %2, i64 0, i32 0
  %80 = load float, float* %79, align 4
  %81 = fadd float %80, 1.000000e+00
  store float %81, float* %79, align 4
  %82 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 0
  br label %63, !llvm.loop !9

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %13
  %85 = bitcast { <2 x float>, float }* %8 to i8*
  %86 = bitcast %struct.Results* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %85, i8* noundef nonnull align 4 dereferenceable(12) %86, i64 12, i1 false)
  %87 = load { <2 x float>, float }, { <2 x float>, float }* %8, align 8
  ret { <2 x float>, float } %87
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_patients_inside(%struct.Village* noundef %0, %struct.List* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %19, %2
  %.0 = phi %struct.List* [ %1, %2 ], [ %21, %19 ]
  %.not = icmp eq %struct.List* %.0, null
  br i1 %.not, label %22, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 1
  %6 = load %struct.Patient*, %struct.Patient** %5, align 8
  %7 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 5
  call void @removeList(%struct.List* noundef nonnull %17, %struct.Patient* noundef %6) #7
  %18 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 2
  call void @addList(%struct.List* noundef nonnull %18, %struct.Patient* noundef %6) #7
  br label %19

19:                                               ; preds = %12, %4
  %20 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 0
  %21 = load %struct.List*, %struct.List** %20, align 8
  br label %3, !llvm.loop !10

22:                                               ; preds = %3
  ret void
}

declare dso_local void @removeList(%struct.List* noundef, %struct.Patient* noundef) #4

declare dso_local void @addList(%struct.List* noundef, %struct.Patient* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.List* @check_patients_assess(%struct.Village* noundef %0, %struct.List* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %41, %2
  %.01 = phi %struct.List* [ null, %2 ], [ %.2, %41 ]
  %.0 = phi %struct.List* [ %1, %2 ], [ %43, %41 ]
  %.not = icmp eq %struct.List* %.0, null
  br i1 %.not, label %44, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 1
  %6 = load %struct.Patient*, %struct.Patient** %5, align 8
  %7 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call float @my_rand(i64 noundef %14) #7
  %16 = fmul float %15, 0x41E0000000000000
  %17 = fptosi float %16 to i64
  %18 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 5
  store i64 %17, i64* %18, align 8
  %19 = fpext float %15 to double
  %20 = fcmp ogt double %19, 1.000000e-01
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 4
  call void @removeList(%struct.List* noundef nonnull %26, %struct.Patient* noundef %6) #7
  %27 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 5
  call void @addList(%struct.List* noundef nonnull %27, %struct.Patient* noundef %6) #7
  %28 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 2
  store i32 10, i32* %28, align 8
  %29 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 10
  %32 = getelementptr inbounds %struct.Patient, %struct.Patient* %6, i64 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %40

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 4
  call void @removeList(%struct.List* noundef nonnull %38, %struct.Patient* noundef %6) #7
  %39 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 6
  call void @addList(%struct.List* noundef nonnull %39, %struct.Patient* noundef %6) #7
  br label %40

40:                                               ; preds = %33, %25
  %.1 = phi %struct.List* [ %.01, %25 ], [ %39, %33 ]
  br label %41

41:                                               ; preds = %40, %4
  %.2 = phi %struct.List* [ %.1, %40 ], [ %.01, %4 ]
  %42 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 0
  %43 = load %struct.List*, %struct.List** %42, align 8
  br label %3, !llvm.loop !11

44:                                               ; preds = %3
  ret %struct.List* %.01
}

declare dso_local float @my_rand(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_patients_waiting(%struct.Village* noundef %0, %struct.List* noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %27, %2
  %.0 = phi %struct.List* [ %1, %2 ], [ %29, %27 ]
  %.not = icmp eq %struct.List* %.0, null
  br i1 %.not, label %30, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 1
  %8 = load %struct.Patient*, %struct.Patient** %7, align 8
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.Patient, %struct.Patient* %8, i64 0, i32 2
  store i32 3, i32* %15, align 8
  %16 = getelementptr inbounds %struct.Patient, %struct.Patient* %8, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 3
  %19 = getelementptr inbounds %struct.Patient, %struct.Patient* %8, i64 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 3
  call void @removeList(%struct.List* noundef nonnull %20, %struct.Patient* noundef %8) #7
  %21 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 4
  call void @addList(%struct.List* noundef nonnull %21, %struct.Patient* noundef %8) #7
  br label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.Patient, %struct.Patient* %8, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.Patient, %struct.Patient* %8, i64 0, i32 1
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %10
  %28 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 0
  %29 = load %struct.List*, %struct.List** %28, align 8
  br label %3, !llvm.loop !12

30:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @put_in_hosp(%struct.Hosp* noundef %0, %struct.Patient* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Patient, %struct.Patient* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = add nsw i32 %4, 1
  %6 = getelementptr inbounds %struct.Patient, %struct.Patient* %1, i64 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %0, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  %14 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %0, i64 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %0, i64 0, i32 4
  call void @addList(%struct.List* noundef nonnull %15, %struct.Patient* noundef %1) #7
  %16 = getelementptr inbounds %struct.Patient, %struct.Patient* %1, i64 0, i32 2
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds %struct.Patient, %struct.Patient* %1, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 3
  %20 = getelementptr inbounds %struct.Patient, %struct.Patient* %1, i64 0, i32 1
  store i32 %19, i32* %20, align 4
  br label %23

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Hosp, %struct.Hosp* %0, i64 0, i32 3
  call void @addList(%struct.List* noundef nonnull %22, %struct.Patient* noundef %1) #7
  br label %23

23:                                               ; preds = %21, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Patient* @generate_patient(%struct.Village* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 5
  %3 = load i64, i64* %2, align 8
  %4 = call float @my_rand(i64 noundef %3) #7
  %5 = fmul float %4, 0x41E0000000000000
  %6 = fptosi float %5 to i64
  %7 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 5
  store i64 %6, i64* %7, align 8
  %8 = fpext float %4 to double
  %9 = fcmp ogt double %8, 6.660000e-01
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %12 = bitcast i8* %11 to %struct.Patient*
  %13 = getelementptr inbounds %struct.Patient, %struct.Patient* %12, i64 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.Patient, %struct.Patient* %12, i64 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.Patient, %struct.Patient* %12, i64 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.Patient, %struct.Patient* %12, i64 0, i32 3
  store %struct.Village* %0, %struct.Village** %16, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %10
  %.0 = phi %struct.Patient* [ %12, %10 ], [ null, %17 ]
  ret %struct.Patient* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.Results, align 4
  %4 = alloca %struct.Results, align 4
  %5 = alloca { <2 x float>, float }, align 8
  call void @dealwithargs(i32 noundef %0, i8** noundef %1) #7
  %6 = load i32, i32* @max_level, align 4
  %7 = call %struct.Village* @alloc_tree(i32 noundef %6, i32 noundef 0, %struct.Village* noundef null)
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %19, %2
  %.0 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %9 = zext i32 %.0 to i64
  %10 = load i64, i64* @max_time, align 8
  %11 = icmp sgt i64 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = urem i32 %.0, 50
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.0) #7
  br label %17

17:                                               ; preds = %15, %12
  %18 = call %struct.List* @sim(%struct.Village* noundef %7)
  br label %19

19:                                               ; preds = %17
  %20 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !13

21:                                               ; preds = %8
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.2, i64 0, i64 0))
  %22 = call { <2 x float>, float } @get_results(%struct.Village* noundef %7)
  store { <2 x float>, float } %22, { <2 x float>, float }* %5, align 8
  %23 = bitcast %struct.Results* %4 to i8*
  %24 = bitcast { <2 x float>, float }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %23, i8* noundef nonnull align 8 dereferenceable(12) %24, i64 12, i1 false)
  %25 = bitcast %struct.Results* %3 to i8*
  %26 = bitcast %struct.Results* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %25, i8* noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  %27 = getelementptr inbounds %struct.Results, %struct.Results* %3, i64 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.Results, %struct.Results* %3, i64 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.Results, %struct.Results* %3, i64 0, i32 2
  %32 = load float, float* %31, align 4
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.3, i64 0, i64 0))
  %33 = fpext float %28 to double
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), double noundef %33) #7
  %35 = fdiv float %30, %28
  %36 = fpext float %35 to double
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), double noundef %36) #7
  %38 = fdiv float %32, %28
  %39 = fpext float %38 to double
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), double noundef %39) #7
  ret i32 0
}

declare dso_local void @dealwithargs(i32 noundef, i8** noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.List* @sim(%struct.Village* noundef %0) #0 {
  %2 = alloca [4 x %struct.List*], align 16
  %3 = icmp eq %struct.Village* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %52

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %15, %5
  %.01 = phi i32 [ 3, %5 ], [ %16, %15 ]
  %7 = icmp sgt i32 %.01, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = sext i32 %.01 to i64
  %10 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 0, i64 %9
  %11 = load %struct.Village*, %struct.Village** %10, align 8
  %12 = call %struct.List* @sim(%struct.Village* noundef %11)
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %2, i64 0, i64 %13
  store %struct.List* %12, %struct.List** %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = add nsw i32 %.01, -1
  br label %6, !llvm.loop !14

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 0, i64 0
  %19 = load %struct.Village*, %struct.Village** %18, align 8
  %20 = call %struct.List* @sim(%struct.Village* noundef %19)
  %21 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %2, i64 0, i64 0
  store %struct.List* %20, %struct.List** %21, align 16
  %22 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3
  br label %23

23:                                               ; preds = %38, %17
  %.1 = phi i32 [ 3, %17 ], [ %39, %38 ]
  %24 = icmp sgt i32 %.1, -1
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = sext i32 %.1 to i64
  %27 = getelementptr inbounds [4 x %struct.List*], [4 x %struct.List*]* %2, i64 0, i64 %26
  %28 = load %struct.List*, %struct.List** %27, align 8
  %.not3 = icmp eq %struct.List* %28, null
  br i1 %.not3, label %37, label %29

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %31, %29
  %.pn = phi %struct.List* [ %28, %29 ], [ %.02, %31 ]
  %.02.in = getelementptr inbounds %struct.List, %struct.List* %.pn, i64 0, i32 0
  %.02 = load %struct.List*, %struct.List** %.02.in, align 8
  %.not4 = icmp eq %struct.List* %.02, null
  br i1 %.not4, label %36, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.List, %struct.List* %.02, i64 0, i32 1
  %33 = load %struct.Patient*, %struct.Patient** %32, align 8
  call void @put_in_hosp(%struct.Hosp* noundef nonnull %22, %struct.Patient* noundef %33)
  %34 = getelementptr inbounds %struct.List, %struct.List* %.02, i64 0, i32 1
  %35 = load %struct.Patient*, %struct.Patient** %34, align 8
  call void @removeList(%struct.List* noundef nonnull %28, %struct.Patient* noundef %35) #7
  br label %30, !llvm.loop !15

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %.1, -1
  br label %23, !llvm.loop !16

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 5, i32 0
  %42 = load %struct.List*, %struct.List** %41, align 8
  call void @check_patients_inside(%struct.Village* noundef nonnull %0, %struct.List* noundef %42)
  %43 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 4, i32 0
  %44 = load %struct.List*, %struct.List** %43, align 8
  %45 = call %struct.List* @check_patients_assess(%struct.Village* noundef nonnull %0, %struct.List* noundef %44)
  %46 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3, i32 3, i32 0
  %47 = load %struct.List*, %struct.List** %46, align 8
  call void @check_patients_waiting(%struct.Village* noundef nonnull %0, %struct.List* noundef %47)
  %48 = call %struct.Patient* @generate_patient(%struct.Village* noundef nonnull %0)
  %.not = icmp eq %struct.Patient* %48, null
  br i1 %.not, label %51, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.Village, %struct.Village* %0, i64 0, i32 3
  call void @put_in_hosp(%struct.Hosp* noundef nonnull %50, %struct.Patient* noundef nonnull %48)
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %51, %4
  %.0 = phi %struct.List* [ null, %4 ], [ %45, %51 ]
  ret %struct.List* %.0
}

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32 signext) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
