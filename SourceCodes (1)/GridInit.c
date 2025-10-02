; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/GridInit.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/GridInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.GridPoint = type { double, i32* }

@.str = private unnamed_addr constant [37 x i8] c"Generating Unionized Energy Grid...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Copying and Sorting all nuclide grids...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Assigning energies to unionized grid...\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"ERROR - Out Of Memory!\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Assigning pointers to Unionized Energy Grid...\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_grids(%struct.NuclideGridPoint** noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.NuclideGridPoint**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %83, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %79, %13
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = call i32 @rand() #5
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 0x41DFFFFFFFC00000
  %22 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %22, i64 %23
  %25 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %25, i64 %26
  %28 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %27, i32 0, i32 0
  store double %21, double* %28, align 8
  %29 = call i32 @rand() #5
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 0x41DFFFFFFFC00000
  %32 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %32, i64 %33
  %35 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %35, i64 %36
  %38 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %37, i32 0, i32 1
  store double %31, double* %38, align 8
  %39 = call i32 @rand() #5
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 0x41DFFFFFFFC00000
  %42 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %42, i64 %43
  %45 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %45, i64 %46
  %48 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %47, i32 0, i32 2
  store double %41, double* %48, align 8
  %49 = call i32 @rand() #5
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 0x41DFFFFFFFC00000
  %52 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %52, i64 %53
  %55 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %55, i64 %56
  %58 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %57, i32 0, i32 3
  store double %51, double* %58, align 8
  %59 = call i32 @rand() #5
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 0x41DFFFFFFFC00000
  %62 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %62, i64 %63
  %65 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %65, i64 %66
  %68 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %67, i32 0, i32 4
  store double %61, double* %68, align 8
  %69 = call i32 @rand() #5
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %70, 0x41DFFFFFFFC00000
  %72 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %72, i64 %73
  %75 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %75, i64 %76
  %78 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %77, i32 0, i32 5
  store double %71, double* %78, align 8
  br label %79

79:                                               ; preds = %18
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %14, !llvm.loop !4

82:                                               ; preds = %14
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %9, !llvm.loop !6

86:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_grids_v(%struct.NuclideGridPoint** noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.NuclideGridPoint**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %71, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = call double @rn_v()
  %20 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %20, i64 %21
  %23 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %23, i64 %24
  %26 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %25, i32 0, i32 0
  store double %19, double* %26, align 8
  %27 = call double @rn_v()
  %28 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %28, i64 %29
  %31 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %31, i64 %32
  %34 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %33, i32 0, i32 1
  store double %27, double* %34, align 8
  %35 = call double @rn_v()
  %36 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %36, i64 %37
  %39 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %39, i64 %40
  %42 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %41, i32 0, i32 2
  store double %35, double* %42, align 8
  %43 = call double @rn_v()
  %44 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %44, i64 %45
  %47 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %47, i64 %48
  %50 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %49, i32 0, i32 3
  store double %43, double* %50, align 8
  %51 = call double @rn_v()
  %52 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %52, i64 %53
  %55 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %55, i64 %56
  %58 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %57, i32 0, i32 4
  store double %51, double* %58, align 8
  %59 = call double @rn_v()
  %60 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %60, i64 %61
  %63 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %63, i64 %64
  %66 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %65, i32 0, i32 5
  store double %59, double* %66, align 8
  br label %67

67:                                               ; preds = %18
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %14, !llvm.loop !7

70:                                               ; preds = %14
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %9, !llvm.loop !8

74:                                               ; preds = %9
  ret void
}

declare dso_local double @rn_v() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort_nuclide_grids(%struct.NuclideGridPoint** noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.NuclideGridPoint**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i64, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %14, i64 %15
  %17 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %16, align 8
  %18 = bitcast %struct.NuclideGridPoint* %17 to i8*
  %19 = load i64, i64* %6, align 8
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  call void @qsort(i8* noundef %18, i64 noundef %19, i64 noundef 48, i32 (i8*, i8*)* noundef %20)
  br label %21

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %9, !llvm.loop !9

24:                                               ; preds = %9
  ret void
}

declare dso_local i32 @NGP_compare(i8* noundef, i8* noundef) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GridPoint* @generate_energy_grid(i64 noundef %0, i64 noundef %1, %struct.NuclideGridPoint** noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.NuclideGridPoint**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca %struct.GridPoint*, align 8
  %11 = alloca %struct.NuclideGridPoint**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.NuclideGridPoint** %2, %struct.NuclideGridPoint*** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = mul nsw i64 %20, %21
  store i64 %22, i64* %8, align 8
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = mul i64 %23, 16
  %25 = call noalias i8* @malloc(i64 noundef %24) #5
  %26 = bitcast i8* %25 to %struct.GridPoint*
  store %struct.GridPoint* %26, %struct.GridPoint** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.NuclideGridPoint** @gpmatrix(i64 noundef %32, i64 noundef %33)
  store %struct.NuclideGridPoint** %34, %struct.NuclideGridPoint*** %11, align 8
  %35 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  %36 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %35, i64 0
  %37 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %36, align 8
  %38 = bitcast %struct.NuclideGridPoint* %37 to i8*
  %39 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %6, align 8
  %40 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %39, i64 0
  %41 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %40, align 8
  %42 = bitcast %struct.NuclideGridPoint* %41 to i8*
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = mul nsw i64 %43, %44
  %46 = mul i64 %45, 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %42, i64 %46, i1 false)
  %47 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  %48 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %47, i64 0
  %49 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %48, align 8
  %50 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %49, i64 0
  %51 = bitcast %struct.NuclideGridPoint* %50 to i8*
  %52 = load i64, i64* %8, align 8
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  call void @qsort(i8* noundef %51, i64 noundef %52, i64 noundef 48, i32 (i8*, i8*)* noundef %53)
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %31
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  %65 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %64, i64 0
  %66 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %66, i64 %67
  %69 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = load %struct.GridPoint*, %struct.GridPoint** %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %71, i64 %72
  %74 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %73, i32 0, i32 0
  store double %70, double* %74, align 8
  br label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %59, !llvm.loop !10

78:                                               ; preds = %59
  %79 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  call void @gpmatrix_free(%struct.NuclideGridPoint** noundef %79)
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = mul nsw i64 %80, %81
  %83 = mul i64 %82, 4
  %84 = call noalias i8* @malloc(i64 noundef %83) #5
  %85 = bitcast i8* %84 to i32*
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

91:                                               ; preds = %78
  store i64 0, i64* %14, align 8
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32*, i32** %13, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* %14, align 8
  %100 = mul nsw i64 %98, %99
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load %struct.GridPoint*, %struct.GridPoint** %10, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %102, i64 %103
  %105 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %104, i32 0, i32 1
  store i32* %101, i32** %105, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load i64, i64* %14, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %92, !llvm.loop !11

109:                                              ; preds = %92
  %110 = load %struct.GridPoint*, %struct.GridPoint** %10, align 8
  ret %struct.GridPoint* %110
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local %struct.NuclideGridPoint** @gpmatrix(i64 noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @gpmatrix_free(%struct.NuclideGridPoint** noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_grid_ptrs(%struct.GridPoint* noundef %0, %struct.NuclideGridPoint** noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.GridPoint*, align 8
  %6 = alloca %struct.NuclideGridPoint**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  store %struct.GridPoint* %0, %struct.GridPoint** %5, align 8
  store %struct.NuclideGridPoint** %1, %struct.NuclideGridPoint*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %4
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %56, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = mul nsw i64 %22, %23
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.GridPoint*, %struct.GridPoint** %5, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %27, i64 %28
  %30 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  store double %31, double* %13, align 8
  store i64 0, i64* %14, align 8
  br label %32

32:                                               ; preds = %52, %26
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %6, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %37, i64 %38
  %40 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %39, align 8
  %41 = load double, double* %13, align 8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @binary_search(%struct.NuclideGridPoint* noundef %40, double noundef %41, i32 noundef %43)
  %45 = load %struct.GridPoint*, %struct.GridPoint** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %45, i64 %46
  %48 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = load i64, i64* %14, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %32, !llvm.loop !12

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %20, !llvm.loop !13

59:                                               ; preds = %20
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @binary_search(%struct.NuclideGridPoint* noundef, double noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
