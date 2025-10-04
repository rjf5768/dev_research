; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASCI_Purple/SMG2000/pcg.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASCI_Purple/SMG2000/pcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_PCGFunctions = type { i8* (i32, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*)*, i8* (i8*, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*)*, double (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*)*, i32 (double, i8*)*, i32 (double, i8*, i8*)*, i32 (...)*, i32 (...)* }
%struct.hypre_PCGData = type { double, double, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.hypre_PCGFunctions*, i32, i32, double*, double* }
%struct.hypre_Solver_struct = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Residual norm[%d] = %e   \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Relative residual norm[%d] = %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_PCGFunctions* @hypre_PCGFunctionsCreate(i8* (i32, i32)* noundef %0, i32 (i8*)* noundef %1, i8* (i8*)* noundef %2, i32 (i8*)* noundef %3, i8* (i8*, i8*)* noundef %4, i32 (i8*, double, i8*, i8*, double, i8*)* noundef %5, i32 (i8*)* noundef %6, double (i8*, i8*)* noundef %7, i32 (i8*, i8*)* noundef %8, i32 (i8*)* noundef %9, i32 (double, i8*)* noundef %10, i32 (double, i8*, i8*)* noundef %11, i32 (i8*, i8*, i8*, i8*)* noundef %12, i32 (i8*, i8*, i8*, i8*)* noundef %13) #0 {
  %15 = alloca i8* (i32, i32)*, align 8
  %16 = alloca i32 (i8*)*, align 8
  %17 = alloca i8* (i8*)*, align 8
  %18 = alloca i32 (i8*)*, align 8
  %19 = alloca i8* (i8*, i8*)*, align 8
  %20 = alloca i32 (i8*, double, i8*, i8*, double, i8*)*, align 8
  %21 = alloca i32 (i8*)*, align 8
  %22 = alloca double (i8*, i8*)*, align 8
  %23 = alloca i32 (i8*, i8*)*, align 8
  %24 = alloca i32 (i8*)*, align 8
  %25 = alloca i32 (double, i8*)*, align 8
  %26 = alloca i32 (double, i8*, i8*)*, align 8
  %27 = alloca i32 (i8*, i8*, i8*, i8*)*, align 8
  %28 = alloca i32 (i8*, i8*, i8*, i8*)*, align 8
  %29 = alloca %struct.hypre_PCGFunctions*, align 8
  store i8* (i32, i32)* %0, i8* (i32, i32)** %15, align 8
  store i32 (i8*)* %1, i32 (i8*)** %16, align 8
  store i8* (i8*)* %2, i8* (i8*)** %17, align 8
  store i32 (i8*)* %3, i32 (i8*)** %18, align 8
  store i8* (i8*, i8*)* %4, i8* (i8*, i8*)** %19, align 8
  store i32 (i8*, double, i8*, i8*, double, i8*)* %5, i32 (i8*, double, i8*, i8*, double, i8*)** %20, align 8
  store i32 (i8*)* %6, i32 (i8*)** %21, align 8
  store double (i8*, i8*)* %7, double (i8*, i8*)** %22, align 8
  store i32 (i8*, i8*)* %8, i32 (i8*, i8*)** %23, align 8
  store i32 (i8*)* %9, i32 (i8*)** %24, align 8
  store i32 (double, i8*)* %10, i32 (double, i8*)** %25, align 8
  store i32 (double, i8*, i8*)* %11, i32 (double, i8*, i8*)** %26, align 8
  store i32 (i8*, i8*, i8*, i8*)* %12, i32 (i8*, i8*, i8*, i8*)** %27, align 8
  store i32 (i8*, i8*, i8*, i8*)* %13, i32 (i8*, i8*, i8*, i8*)** %28, align 8
  %30 = load i8* (i32, i32)*, i8* (i32, i32)** %15, align 8
  %31 = call i8* %30(i32 noundef 1, i32 noundef 112)
  %32 = bitcast i8* %31 to %struct.hypre_PCGFunctions*
  store %struct.hypre_PCGFunctions* %32, %struct.hypre_PCGFunctions** %29, align 8
  %33 = load i8* (i32, i32)*, i8* (i32, i32)** %15, align 8
  %34 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %35 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %34, i32 0, i32 0
  store i8* (i32, i32)* %33, i8* (i32, i32)** %35, align 8
  %36 = load i32 (i8*)*, i32 (i8*)** %16, align 8
  %37 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %38 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %37, i32 0, i32 1
  store i32 (i8*)* %36, i32 (i8*)** %38, align 8
  %39 = load i8* (i8*)*, i8* (i8*)** %17, align 8
  %40 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %41 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %40, i32 0, i32 2
  store i8* (i8*)* %39, i8* (i8*)** %41, align 8
  %42 = load i32 (i8*)*, i32 (i8*)** %18, align 8
  %43 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %44 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %43, i32 0, i32 3
  store i32 (i8*)* %42, i32 (i8*)** %44, align 8
  %45 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %19, align 8
  %46 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %47 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %46, i32 0, i32 4
  store i8* (i8*, i8*)* %45, i8* (i8*, i8*)** %47, align 8
  %48 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %20, align 8
  %49 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %50 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %49, i32 0, i32 5
  store i32 (i8*, double, i8*, i8*, double, i8*)* %48, i32 (i8*, double, i8*, i8*, double, i8*)** %50, align 8
  %51 = load i32 (i8*)*, i32 (i8*)** %21, align 8
  %52 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %53 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %52, i32 0, i32 6
  store i32 (i8*)* %51, i32 (i8*)** %53, align 8
  %54 = load double (i8*, i8*)*, double (i8*, i8*)** %22, align 8
  %55 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %56 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %55, i32 0, i32 7
  store double (i8*, i8*)* %54, double (i8*, i8*)** %56, align 8
  %57 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %23, align 8
  %58 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %59 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %58, i32 0, i32 8
  store i32 (i8*, i8*)* %57, i32 (i8*, i8*)** %59, align 8
  %60 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  %61 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %62 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %61, i32 0, i32 9
  store i32 (i8*)* %60, i32 (i8*)** %62, align 8
  %63 = load i32 (double, i8*)*, i32 (double, i8*)** %25, align 8
  %64 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %65 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %64, i32 0, i32 10
  store i32 (double, i8*)* %63, i32 (double, i8*)** %65, align 8
  %66 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %26, align 8
  %67 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %68 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %67, i32 0, i32 11
  store i32 (double, i8*, i8*)* %66, i32 (double, i8*, i8*)** %68, align 8
  %69 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %27, align 8
  %70 = bitcast i32 (i8*, i8*, i8*, i8*)* %69 to i32 (...)*
  %71 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %72 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %71, i32 0, i32 13
  store i32 (...)* %70, i32 (...)** %72, align 8
  %73 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %28, align 8
  %74 = bitcast i32 (i8*, i8*, i8*, i8*)* %73 to i32 (...)*
  %75 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  %76 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %75, i32 0, i32 12
  store i32 (...)* %74, i32 (...)** %76, align 8
  %77 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %29, align 8
  ret %struct.hypre_PCGFunctions* %77
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @hypre_PCGCreate(%struct.hypre_PCGFunctions* noundef %0) #0 {
  %2 = alloca %struct.hypre_PCGFunctions*, align 8
  %3 = alloca %struct.hypre_PCGData*, align 8
  store %struct.hypre_PCGFunctions* %0, %struct.hypre_PCGFunctions** %2, align 8
  %4 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %2, align 8
  %5 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i32 0, i32 0
  %6 = load i8* (i32, i32)*, i8* (i32, i32)** %5, align 8
  %7 = call i8* %6(i32 noundef 1, i32 noundef 112)
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %3, align 8
  %9 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %2, align 8
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 12
  store %struct.hypre_PCGFunctions* %9, %struct.hypre_PCGFunctions** %11, align 8
  %12 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %13 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %12, i32 0, i32 0
  store double 0x3EB0C6F7A0B5ED8D, double* %13, align 8
  %14 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %15 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %14, i32 0, i32 1
  store double 0.000000e+00, double* %15, align 8
  %16 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %17 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %16, i32 0, i32 2
  store i32 1000, i32* %17, align 8
  %18 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %19 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %18, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %21 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %20, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %23 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %22, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %25 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %24, i32 0, i32 10
  store i8* null, i8** %25, align 8
  %26 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %27 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %26, i32 0, i32 11
  store i8* null, i8** %27, align 8
  %28 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %29 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %28, i32 0, i32 14
  store i32 0, i32* %29, align 4
  %30 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %31 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %30, i32 0, i32 15
  store double* null, double** %31, align 8
  %32 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %33 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %32, i32 0, i32 16
  store double* null, double** %33, align 8
  %34 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %35 = bitcast %struct.hypre_PCGData* %34 to i8*
  ret i8* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGDestroy(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hypre_PCGData*, align 8
  %4 = alloca %struct.hypre_PCGFunctions*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %7, %struct.hypre_PCGData** %3, align 8
  %8 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %9 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %8, i32 0, i32 12
  %10 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %9, align 8
  store %struct.hypre_PCGFunctions* %10, %struct.hypre_PCGFunctions** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %12 = icmp ne %struct.hypre_PCGData* %11, null
  br i1 %12, label %13, label %80

13:                                               ; preds = %1
  %14 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %15 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %20 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %19, i32 0, i32 1
  %21 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %22 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %23 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %22, i32 0, i32 15
  %24 = load double*, double** %23, align 8
  %25 = bitcast double* %24 to i8*
  %26 = call i32 %21(i8* noundef %25)
  %27 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %28 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %27, i32 0, i32 15
  store double* null, double** %28, align 8
  %29 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %30 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %29, i32 0, i32 1
  %31 = load i32 (i8*)*, i32 (i8*)** %30, align 8
  %32 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %33 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %32, i32 0, i32 16
  %34 = load double*, double** %33, align 8
  %35 = bitcast double* %34 to i8*
  %36 = call i32 %31(i8* noundef %35)
  %37 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %38 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %37, i32 0, i32 16
  store double* null, double** %38, align 8
  br label %39

39:                                               ; preds = %18, %13
  %40 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %41 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %40, i32 0, i32 6
  %42 = load i32 (i8*)*, i32 (i8*)** %41, align 8
  %43 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %44 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %43, i32 0, i32 10
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 %42(i8* noundef %45)
  %47 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %48 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %47, i32 0, i32 3
  %49 = load i32 (i8*)*, i32 (i8*)** %48, align 8
  %50 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %51 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %50, i32 0, i32 7
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 %49(i8* noundef %52)
  %54 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %55 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %54, i32 0, i32 3
  %56 = load i32 (i8*)*, i32 (i8*)** %55, align 8
  %57 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %58 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %57, i32 0, i32 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 %56(i8* noundef %59)
  %61 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %62 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %61, i32 0, i32 3
  %63 = load i32 (i8*)*, i32 (i8*)** %62, align 8
  %64 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %65 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %64, i32 0, i32 9
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 %63(i8* noundef %66)
  %68 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %69 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %68, i32 0, i32 1
  %70 = load i32 (i8*)*, i32 (i8*)** %69, align 8
  %71 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %3, align 8
  %72 = bitcast %struct.hypre_PCGData* %71 to i8*
  %73 = call i32 %70(i8* noundef %72)
  store %struct.hypre_PCGData* null, %struct.hypre_PCGData** %3, align 8
  %74 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %75 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %74, i32 0, i32 1
  %76 = load i32 (i8*)*, i32 (i8*)** %75, align 8
  %77 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %4, align 8
  %78 = bitcast %struct.hypre_PCGFunctions* %77 to i8*
  %79 = call i32 %76(i8* noundef %78)
  store %struct.hypre_PCGFunctions* null, %struct.hypre_PCGFunctions** %4, align 8
  br label %80

80:                                               ; preds = %39, %1
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetup(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hypre_PCGData*, align 8
  %10 = alloca %struct.hypre_PCGFunctions*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (...)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %16, %struct.hypre_PCGData** %9, align 8
  %17 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %18 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %17, i32 0, i32 12
  %19 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %18, align 8
  store %struct.hypre_PCGFunctions* %19, %struct.hypre_PCGFunctions** %10, align 8
  %20 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %21 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %24 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %23, i32 0, i32 13
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  store i32 (...)* %25, i32 (...)** %12, align 8
  %26 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %27 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %26, i32 0, i32 11
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %31 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %33 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %32, i32 0, i32 2
  %34 = load i8* (i8*)*, i8* (i8*)** %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* %34(i8* noundef %35)
  %37 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %38 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %40 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %39, i32 0, i32 2
  %41 = load i8* (i8*)*, i8* (i8*)** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* %41(i8* noundef %42)
  %44 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %45 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %47 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %46, i32 0, i32 2
  %48 = load i8* (i8*)*, i8* (i8*)** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* %48(i8* noundef %49)
  %51 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %52 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %54 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %53, i32 0, i32 4
  %55 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* %55(i8* noundef %56, i8* noundef %57)
  %59 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %60 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %59, i32 0, i32 10
  store i8* %58, i8** %60, align 8
  %61 = load i32 (...)*, i32 (...)** %12, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = bitcast i32 (...)* %61 to i32 (i8*, i8*, i8*, i8*, ...)*
  %67 = call i32 (i8*, i8*, i8*, i8*, ...) %66(i8* noundef %62, i8* noundef %63, i8* noundef %64, i8* noundef %65)
  %68 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %69 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %68, i32 0, i32 14
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %4
  %73 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %74 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %73, i32 0, i32 0
  %75 = load i8* (i32, i32)*, i8* (i32, i32)** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i8* %75(i32 noundef %77, i32 noundef 8)
  %79 = bitcast i8* %78 to double*
  %80 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %81 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %80, i32 0, i32 15
  store double* %79, double** %81, align 8
  %82 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %83 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %82, i32 0, i32 0
  %84 = load i8* (i32, i32)*, i8* (i32, i32)** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i8* %84(i32 noundef %86, i32 noundef 8)
  %88 = bitcast i8* %87 to double*
  %89 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %90 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %89, i32 0, i32 16
  store double* %88, double** %90, align 8
  br label %91

91:                                               ; preds = %72, %4
  %92 = load i32, i32* %14, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSolve(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hypre_PCGData*, align 8
  %11 = alloca %struct.hypre_PCGFunctions*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32 (...)*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %44, %struct.hypre_PCGData** %10, align 8
  %45 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %46 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %45, i32 0, i32 12
  %47 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %46, align 8
  store %struct.hypre_PCGFunctions* %47, %struct.hypre_PCGFunctions** %11, align 8
  %48 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %49 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  store double %50, double* %12, align 8
  %51 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %52 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  store double %53, double* %13, align 8
  %54 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %55 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %14, align 4
  %57 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %58 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %61 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %16, align 4
  %63 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %64 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %67 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %18, align 8
  %69 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %70 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %69, i32 0, i32 8
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %19, align 8
  %72 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %73 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %72, i32 0, i32 9
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %20, align 8
  %75 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %76 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %75, i32 0, i32 10
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %21, align 8
  %78 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %79 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %78, i32 0, i32 12
  %80 = load i32 (...)*, i32 (...)** %79, align 8
  store i32 (...)* %80, i32 (...)** %22, align 8
  %81 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %82 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %81, i32 0, i32 11
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %23, align 8
  %84 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %85 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %24, align 4
  %87 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %88 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %87, i32 0, i32 15
  %89 = load double*, double** %88, align 8
  store double* %89, double** %25, align 8
  %90 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %91 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %90, i32 0, i32 16
  %92 = load double*, double** %91, align 8
  store double* %92, double** %26, align 8
  store double 0.000000e+00, double* %37, align 8
  store double 0.000000e+00, double* %38, align 8
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store double 0.000000e+00, double* %40, align 8
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %4
  %96 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %97 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %96, i32 0, i32 7
  %98 = load double (i8*, i8*)*, double (i8*, i8*)** %97, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call double %98(i8* noundef %99, i8* noundef %100)
  store double %101, double* %31, align 8
  br label %121

102:                                              ; preds = %4
  %103 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %104 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %103, i32 0, i32 9
  %105 = load i32 (i8*)*, i32 (i8*)** %104, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 %105(i8* noundef %106)
  %108 = load i32 (...)*, i32 (...)** %22, align 8
  %109 = load i8*, i8** %23, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = bitcast i32 (...)* %108 to i32 (i8*, i8*, i8*, i8*, ...)*
  %114 = call i32 (i8*, i8*, i8*, i8*, ...) %113(i8* noundef %109, i8* noundef %110, i8* noundef %111, i8* noundef %112)
  %115 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %116 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %115, i32 0, i32 7
  %117 = load double (i8*, i8*)*, double (i8*, i8*)** %116, align 8
  %118 = load i8*, i8** %18, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call double %117(i8* noundef %118, i8* noundef %119)
  store double %120, double* %31, align 8
  br label %121

121:                                              ; preds = %102, %95
  %122 = load double, double* %12, align 8
  %123 = load double, double* %12, align 8
  %124 = fmul double %122, %123
  store double %124, double* %33, align 8
  %125 = load double, double* %31, align 8
  %126 = fcmp ogt double %125, 0.000000e+00
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load double, double* %33, align 8
  %135 = load double, double* %31, align 8
  %136 = fdiv double %134, %135
  store double %136, double* %33, align 8
  br label %137

137:                                              ; preds = %133, %130, %127
  br label %156

138:                                              ; preds = %121
  %139 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %140 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %139, i32 0, i32 8
  %141 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %140, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 %141(i8* noundef %142, i8* noundef %143)
  %145 = load i32, i32* %24, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load double*, double** %25, align 8
  %149 = getelementptr inbounds double, double* %148, i64 0
  store double 0.000000e+00, double* %149, align 8
  %150 = load double*, double** %26, align 8
  %151 = load i32, i32* %41, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, double* %150, i64 %152
  store double 0.000000e+00, double* %153, align 8
  br label %154

154:                                              ; preds = %147, %138
  store i32 0, i32* %42, align 4
  %155 = load i32, i32* %42, align 4
  store i32 %155, i32* %5, align 4
  br label %400

156:                                              ; preds = %137
  %157 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %158 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %157, i32 0, i32 8
  %159 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %158, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = call i32 %159(i8* noundef %160, i8* noundef %161)
  %163 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %164 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %163, i32 0, i32 5
  %165 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %164, align 8
  %166 = load i8*, i8** %21, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load i8*, i8** %20, align 8
  %170 = call i32 %165(i8* noundef %166, double noundef -1.000000e+00, i8* noundef %167, i8* noundef %168, double noundef 1.000000e+00, i8* noundef %169)
  %171 = load i32, i32* %24, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %156
  %174 = load double, double* %13, align 8
  %175 = fcmp ogt double %174, 0.000000e+00
  br i1 %175, label %176, label %191

176:                                              ; preds = %173, %156
  %177 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %178 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %177, i32 0, i32 7
  %179 = load double (i8*, i8*)*, double (i8*, i8*)** %178, align 8
  %180 = load i8*, i8** %20, align 8
  %181 = load i8*, i8** %20, align 8
  %182 = call double %179(i8* noundef %180, i8* noundef %181)
  store double %182, double* %36, align 8
  %183 = load i32, i32* %24, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load double, double* %36, align 8
  %187 = call double @sqrt(double noundef %186) #4
  %188 = load double*, double** %25, align 8
  %189 = getelementptr inbounds double, double* %188, i64 0
  store double %187, double* %189, align 8
  br label %190

190:                                              ; preds = %185, %176
  br label %191

191:                                              ; preds = %190, %173
  %192 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %193 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %192, i32 0, i32 9
  %194 = load i32 (i8*)*, i32 (i8*)** %193, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = call i32 %194(i8* noundef %195)
  %197 = load i32 (...)*, i32 (...)** %22, align 8
  %198 = load i8*, i8** %23, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = load i8*, i8** %20, align 8
  %201 = load i8*, i8** %18, align 8
  %202 = bitcast i32 (...)* %197 to i32 (i8*, i8*, i8*, i8*, ...)*
  %203 = call i32 (i8*, i8*, i8*, i8*, ...) %202(i8* noundef %198, i8* noundef %199, i8* noundef %200, i8* noundef %201)
  %204 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %205 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %204, i32 0, i32 7
  %206 = load double (i8*, i8*)*, double (i8*, i8*)** %205, align 8
  %207 = load i8*, i8** %20, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = call double %206(i8* noundef %207, i8* noundef %208)
  store double %209, double* %29, align 8
  br label %210

210:                                              ; preds = %379, %191
  %211 = load i32, i32* %41, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32, i32* %14, align 4
  %214 = icmp sle i32 %212, %213
  br i1 %214, label %215, label %395

215:                                              ; preds = %210
  %216 = load i32, i32* %41, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %41, align 4
  %218 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %219 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %218, i32 0, i32 5
  %220 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %219, align 8
  %221 = load i8*, i8** %21, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = load i8*, i8** %18, align 8
  %224 = load i8*, i8** %19, align 8
  %225 = call i32 %220(i8* noundef %221, double noundef 1.000000e+00, i8* noundef %222, i8* noundef %223, double noundef 0.000000e+00, i8* noundef %224)
  %226 = load double, double* %29, align 8
  %227 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %228 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %227, i32 0, i32 7
  %229 = load double (i8*, i8*)*, double (i8*, i8*)** %228, align 8
  %230 = load i8*, i8** %19, align 8
  %231 = load i8*, i8** %18, align 8
  %232 = call double %229(i8* noundef %230, i8* noundef %231)
  %233 = fdiv double %226, %232
  store double %233, double* %27, align 8
  %234 = load double, double* %29, align 8
  store double %234, double* %30, align 8
  %235 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %236 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %235, i32 0, i32 11
  %237 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %236, align 8
  %238 = load double, double* %27, align 8
  %239 = load i8*, i8** %18, align 8
  %240 = load i8*, i8** %9, align 8
  %241 = call i32 %237(double noundef %238, i8* noundef %239, i8* noundef %240)
  %242 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %243 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %242, i32 0, i32 11
  %244 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %243, align 8
  %245 = load double, double* %27, align 8
  %246 = fneg double %245
  %247 = load i8*, i8** %19, align 8
  %248 = load i8*, i8** %20, align 8
  %249 = call i32 %244(double noundef %246, i8* noundef %247, i8* noundef %248)
  %250 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %251 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %250, i32 0, i32 9
  %252 = load i32 (i8*)*, i32 (i8*)** %251, align 8
  %253 = load i8*, i8** %19, align 8
  %254 = call i32 %252(i8* noundef %253)
  %255 = load i32 (...)*, i32 (...)** %22, align 8
  %256 = load i8*, i8** %23, align 8
  %257 = load i8*, i8** %7, align 8
  %258 = load i8*, i8** %20, align 8
  %259 = load i8*, i8** %19, align 8
  %260 = bitcast i32 (...)* %255 to i32 (i8*, i8*, i8*, i8*, ...)*
  %261 = call i32 (i8*, i8*, i8*, i8*, ...) %260(i8* noundef %256, i8* noundef %257, i8* noundef %258, i8* noundef %259)
  %262 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %263 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %262, i32 0, i32 7
  %264 = load double (i8*, i8*)*, double (i8*, i8*)** %263, align 8
  %265 = load i8*, i8** %20, align 8
  %266 = load i8*, i8** %19, align 8
  %267 = call double %264(i8* noundef %265, i8* noundef %266)
  store double %267, double* %29, align 8
  %268 = load i32, i32* %15, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %215
  %271 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %272 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %271, i32 0, i32 7
  %273 = load double (i8*, i8*)*, double (i8*, i8*)** %272, align 8
  %274 = load i8*, i8** %20, align 8
  %275 = load i8*, i8** %20, align 8
  %276 = call double %273(i8* noundef %274, i8* noundef %275)
  store double %276, double* %32, align 8
  br label %279

277:                                              ; preds = %215
  %278 = load double, double* %29, align 8
  store double %278, double* %32, align 8
  br label %279

279:                                              ; preds = %277, %270
  %280 = load i32, i32* %24, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %303

282:                                              ; preds = %279
  %283 = load double, double* %32, align 8
  %284 = call double @sqrt(double noundef %283) #4
  %285 = load double*, double** %25, align 8
  %286 = load i32, i32* %41, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds double, double* %285, i64 %287
  store double %284, double* %288, align 8
  %289 = load double, double* %31, align 8
  %290 = fcmp une double %289, 0.000000e+00
  br i1 %290, label %291, label %296

291:                                              ; preds = %282
  %292 = load double, double* %32, align 8
  %293 = load double, double* %31, align 8
  %294 = fdiv double %292, %293
  %295 = call double @sqrt(double noundef %294) #4
  br label %297

296:                                              ; preds = %282
  br label %297

297:                                              ; preds = %296, %291
  %298 = phi double [ %295, %291 ], [ 0.000000e+00, %296 ]
  %299 = load double*, double** %26, align 8
  %300 = load i32, i32* %41, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds double, double* %299, i64 %301
  store double %298, double* %302, align 8
  br label %303

303:                                              ; preds = %297, %279
  %304 = load double, double* %32, align 8
  %305 = load double, double* %31, align 8
  %306 = fdiv double %304, %305
  %307 = load double, double* %33, align 8
  %308 = fcmp olt double %306, %307
  br i1 %308, label %309, label %342

309:                                              ; preds = %303
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %340

312:                                              ; preds = %309
  %313 = load double, double* %32, align 8
  %314 = load double, double* %40, align 8
  %315 = fcmp ogt double %313, %314
  br i1 %315, label %316, label %340

316:                                              ; preds = %312
  %317 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %318 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %317, i32 0, i32 7
  %319 = load double (i8*, i8*)*, double (i8*, i8*)** %318, align 8
  %320 = load i8*, i8** %18, align 8
  %321 = load i8*, i8** %18, align 8
  %322 = call double %319(i8* noundef %320, i8* noundef %321)
  store double %322, double* %34, align 8
  %323 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %324 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %323, i32 0, i32 7
  %325 = load double (i8*, i8*)*, double (i8*, i8*)** %324, align 8
  %326 = load i8*, i8** %9, align 8
  %327 = load i8*, i8** %9, align 8
  %328 = call double %325(i8* noundef %326, i8* noundef %327)
  store double %328, double* %35, align 8
  %329 = load double, double* %27, align 8
  %330 = load double, double* %27, align 8
  %331 = fmul double %329, %330
  %332 = load double, double* %34, align 8
  %333 = fmul double %331, %332
  %334 = load double, double* %35, align 8
  %335 = fdiv double %333, %334
  %336 = load double, double* %33, align 8
  %337 = fcmp olt double %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %316
  br label %395

339:                                              ; preds = %316
  br label %341

340:                                              ; preds = %312, %309
  br label %395

341:                                              ; preds = %339
  br label %342

342:                                              ; preds = %341, %303
  %343 = load double, double* %13, align 8
  %344 = fcmp ogt double %343, 0.000000e+00
  br i1 %344, label %345, label %379

345:                                              ; preds = %342
  %346 = load double, double* %38, align 8
  store double %346, double* %37, align 8
  %347 = load double, double* %32, align 8
  %348 = load double, double* %36, align 8
  %349 = fdiv double %347, %348
  %350 = load i32, i32* %41, align 4
  %351 = sitofp i32 %350 to double
  %352 = fmul double 2.000000e+00, %351
  %353 = fdiv double 1.000000e+00, %352
  %354 = call double @pow(double noundef %349, double noundef %353) #4
  store double %354, double* %38, align 8
  %355 = load double, double* %38, align 8
  %356 = load double, double* %37, align 8
  %357 = fsub double %355, %356
  %358 = call double @llvm.fabs.f64(double %357)
  store double %358, double* %39, align 8
  %359 = load double, double* %39, align 8
  %360 = load double, double* %38, align 8
  %361 = load double, double* %37, align 8
  %362 = fcmp olt double %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %345
  %364 = load double, double* %37, align 8
  br label %367

365:                                              ; preds = %345
  %366 = load double, double* %38, align 8
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi double [ %364, %363 ], [ %366, %365 ]
  %369 = fdiv double %359, %368
  store double %369, double* %39, align 8
  %370 = load double, double* %39, align 8
  %371 = fsub double 1.000000e+00, %370
  store double %371, double* %39, align 8
  %372 = load double, double* %39, align 8
  %373 = load double, double* %38, align 8
  %374 = fmul double %372, %373
  %375 = load double, double* %13, align 8
  %376 = fcmp ogt double %374, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %367
  br label %395

378:                                              ; preds = %367
  br label %379

379:                                              ; preds = %378, %342
  %380 = load double, double* %29, align 8
  %381 = load double, double* %30, align 8
  %382 = fdiv double %380, %381
  store double %382, double* %28, align 8
  %383 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %384 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %383, i32 0, i32 10
  %385 = load i32 (double, i8*)*, i32 (double, i8*)** %384, align 8
  %386 = load double, double* %28, align 8
  %387 = load i8*, i8** %18, align 8
  %388 = call i32 %385(double noundef %386, i8* noundef %387)
  %389 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %11, align 8
  %390 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %389, i32 0, i32 11
  %391 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %390, align 8
  %392 = load i8*, i8** %19, align 8
  %393 = load i8*, i8** %18, align 8
  %394 = call i32 %391(double noundef 1.000000e+00, i8* noundef %392, i8* noundef %393)
  br label %210, !llvm.loop !4

395:                                              ; preds = %377, %340, %338, %210
  %396 = load i32, i32* %41, align 4
  %397 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %10, align 8
  %398 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %397, i32 0, i32 13
  store i32 %396, i32* %398, align 8
  %399 = load i32, i32* %42, align 4
  store i32 %399, i32* %5, align 4
  br label %400

400:                                              ; preds = %395, %154
  %401 = load i32, i32* %5, align 4
  ret i32 %401
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetTol(i8* noundef %0, double noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load double, double* %4, align 8
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 0
  store double %9, double* %11, align 8
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetConvergenceFactorTol(i8* noundef %0, double noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load double, double* %4, align 8
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 1
  store double %9, double* %11, align 8
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetMaxIter(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetTwoNorm(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetRelChange(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetStopCrit(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGGetPrecond(i8* noundef %0, %struct.hypre_Solver_struct** noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hypre_Solver_struct**, align 8
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hypre_Solver_struct** %1, %struct.hypre_Solver_struct*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %10 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %9, i32 0, i32 11
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.hypre_Solver_struct*
  %13 = load %struct.hypre_Solver_struct**, %struct.hypre_Solver_struct*** %4, align 8
  store %struct.hypre_Solver_struct* %12, %struct.hypre_Solver_struct** %13, align 8
  %14 = load i32, i32* %6, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetPrecond(i8* noundef %0, i32 (...)* noundef %1, i32 (...)* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (...)*, align 8
  %7 = alloca i32 (...)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hypre_PCGData*, align 8
  %10 = alloca %struct.hypre_PCGFunctions*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 (...)* %1, i32 (...)** %6, align 8
  store i32 (...)* %2, i32 (...)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %13, %struct.hypre_PCGData** %9, align 8
  %14 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %15 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %14, i32 0, i32 12
  %16 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %15, align 8
  store %struct.hypre_PCGFunctions* %16, %struct.hypre_PCGFunctions** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32 (...)*, i32 (...)** %6, align 8
  %18 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %19 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %18, i32 0, i32 12
  store i32 (...)* %17, i32 (...)** %19, align 8
  %20 = load i32 (...)*, i32 (...)** %7, align 8
  %21 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %10, align 8
  %22 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %21, i32 0, i32 13
  store i32 (...)* %20, i32 (...)** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %9, align 8
  %25 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetLogging(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %10, i32 0, i32 14
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGGetNumIterations(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %8, %struct.hypre_PCGData** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %10 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %9, i32 0, i32 13
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGPrintLogging(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %13, %struct.hypre_PCGData** %5, align 8
  %14 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %15 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %14, i32 0, i32 13
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %18 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %21 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %20, i32 0, i32 15
  %22 = load double*, double** %21, align 8
  store double* %22, double** %8, align 8
  %23 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %24 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %23, i32 0, i32 16
  %25 = load double*, double** %24, align 8
  store double* %25, double** %9, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load double*, double** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %37, double noundef %42)
  %44 = load i32, i32* %10, align 4
  %45 = load double*, double** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %44, double noundef %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %32, !llvm.loop !6

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %28
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGGetFinalRelativeResidualNorm(i8* noundef %0, double* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double*, align 8
  %5 = alloca %struct.hypre_PCGData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store double* %1, double** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.hypre_PCGData*
  store %struct.hypre_PCGData* %11, %struct.hypre_PCGData** %5, align 8
  %12 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %13 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %16 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.hypre_PCGData*, %struct.hypre_PCGData** %5, align 8
  %19 = getelementptr inbounds %struct.hypre_PCGData, %struct.hypre_PCGData* %18, i32 0, i32 16
  %20 = load double*, double** %19, align 8
  store double* %20, double** %8, align 8
  store i32 -1, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load double*, double** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = load double*, double** %4, align 8
  store double %28, double* %29, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
