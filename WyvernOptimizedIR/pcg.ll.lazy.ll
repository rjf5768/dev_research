; ModuleID = './pcg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASCI_Purple/SMG2000/pcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_PCGFunctions = type { i8* (i32, i32)*, i32 (i8*)*, i8* (i8*)*, i32 (i8*)*, i8* (i8*, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*)*, double (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*)*, i32 (double, i8*)*, i32 (double, i8*, i8*)*, i32 (...)*, i32 (...)* }
%struct.hypre_Solver_struct = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Residual norm[%d] = %e   \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Relative residual norm[%d] = %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_PCGFunctions* @hypre_PCGFunctionsCreate(i8* (i32, i32)* noundef %0, i32 (i8*)* noundef %1, i8* (i8*)* noundef %2, i32 (i8*)* noundef %3, i8* (i8*, i8*)* noundef %4, i32 (i8*, double, i8*, i8*, double, i8*)* noundef %5, i32 (i8*)* noundef %6, double (i8*, i8*)* noundef %7, i32 (i8*, i8*)* noundef %8, i32 (i8*)* noundef %9, i32 (double, i8*)* noundef %10, i32 (double, i8*, i8*)* noundef %11, i32 (i8*, i8*, i8*, i8*)* noundef %12, i32 (i8*, i8*, i8*, i8*)* noundef %13) #0 {
  %15 = call i8* %0(i32 noundef 1, i32 noundef 112) #6
  %16 = bitcast i8* %15 to %struct.hypre_PCGFunctions*
  %17 = bitcast i8* %15 to i8* (i32, i32)**
  store i8* (i32, i32)* %0, i8* (i32, i32)** %17, align 8
  %18 = getelementptr inbounds i8, i8* %15, i64 8
  %19 = bitcast i8* %18 to i32 (i8*)**
  store i32 (i8*)* %1, i32 (i8*)** %19, align 8
  %20 = getelementptr inbounds i8, i8* %15, i64 16
  %21 = bitcast i8* %20 to i8* (i8*)**
  store i8* (i8*)* %2, i8* (i8*)** %21, align 8
  %22 = getelementptr inbounds i8, i8* %15, i64 24
  %23 = bitcast i8* %22 to i32 (i8*)**
  store i32 (i8*)* %3, i32 (i8*)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %15, i64 32
  %25 = bitcast i8* %24 to i8* (i8*, i8*)**
  store i8* (i8*, i8*)* %4, i8* (i8*, i8*)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %15, i64 40
  %27 = bitcast i8* %26 to i32 (i8*, double, i8*, i8*, double, i8*)**
  store i32 (i8*, double, i8*, i8*, double, i8*)* %5, i32 (i8*, double, i8*, i8*, double, i8*)** %27, align 8
  %28 = getelementptr inbounds i8, i8* %15, i64 48
  %29 = bitcast i8* %28 to i32 (i8*)**
  store i32 (i8*)* %6, i32 (i8*)** %29, align 8
  %30 = getelementptr inbounds i8, i8* %15, i64 56
  %31 = bitcast i8* %30 to double (i8*, i8*)**
  store double (i8*, i8*)* %7, double (i8*, i8*)** %31, align 8
  %32 = getelementptr inbounds i8, i8* %15, i64 64
  %33 = bitcast i8* %32 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %8, i32 (i8*, i8*)** %33, align 8
  %34 = getelementptr inbounds i8, i8* %15, i64 72
  %35 = bitcast i8* %34 to i32 (i8*)**
  store i32 (i8*)* %9, i32 (i8*)** %35, align 8
  %36 = getelementptr inbounds i8, i8* %15, i64 80
  %37 = bitcast i8* %36 to i32 (double, i8*)**
  store i32 (double, i8*)* %10, i32 (double, i8*)** %37, align 8
  %38 = getelementptr inbounds i8, i8* %15, i64 88
  %39 = bitcast i8* %38 to i32 (double, i8*, i8*)**
  store i32 (double, i8*, i8*)* %11, i32 (double, i8*, i8*)** %39, align 8
  %40 = getelementptr inbounds i8, i8* %15, i64 104
  %41 = bitcast i8* %40 to i32 (i8*, i8*, i8*, i8*)**
  store i32 (i8*, i8*, i8*, i8*)* %12, i32 (i8*, i8*, i8*, i8*)** %41, align 8
  %42 = getelementptr inbounds i8, i8* %15, i64 96
  %43 = bitcast i8* %42 to i32 (i8*, i8*, i8*, i8*)**
  store i32 (i8*, i8*, i8*, i8*)* %13, i32 (i8*, i8*, i8*, i8*)** %43, align 8
  ret %struct.hypre_PCGFunctions* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @hypre_PCGCreate(%struct.hypre_PCGFunctions* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %0, i64 0, i32 0
  %3 = load i8* (i32, i32)*, i8* (i32, i32)** %2, align 8
  %4 = call i8* %3(i32 noundef 1, i32 noundef 112) #6
  %5 = getelementptr inbounds i8, i8* %4, i64 80
  %6 = bitcast i8* %5 to %struct.hypre_PCGFunctions**
  store %struct.hypre_PCGFunctions* %0, %struct.hypre_PCGFunctions** %6, align 8
  %7 = bitcast i8* %4 to double*
  store double 0x3EB0C6F7A0B5ED8D, double* %7, align 8
  %8 = getelementptr inbounds i8, i8* %4, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 8
  %10 = getelementptr inbounds i8, i8* %4, i64 16
  %11 = bitcast i8* %10 to i32*
  store i32 1000, i32* %11, align 8
  %12 = getelementptr inbounds i8, i8* %4, i64 20
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i8, i8* %4, i64 24
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds i8, i8* %4, i64 28
  %17 = bitcast i8* %16 to i32*
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i8, i8* %4, i64 64
  %19 = bitcast i8* %18 to i8**
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds i8, i8* %4, i64 72
  %21 = bitcast i8* %20 to i8**
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds i8, i8* %4, i64 92
  %23 = bitcast i8* %22 to i32*
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds i8, i8* %4, i64 96
  %25 = bitcast i8* %24 to double**
  store double* null, double** %25, align 8
  %26 = getelementptr inbounds i8, i8* %4, i64 104
  %27 = bitcast i8* %26 to double**
  store double* null, double** %27, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGDestroy(i8* noundef %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 80
  %3 = bitcast i8* %2 to %struct.hypre_PCGFunctions**
  %4 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %3, align 8
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %59, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, i8* %0, i64 92
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 1
  %12 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %13 = getelementptr inbounds i8, i8* %0, i64 96
  %14 = bitcast i8* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 %12(i8* noundef %15) #6
  %17 = getelementptr inbounds i8, i8* %0, i64 96
  %18 = bitcast i8* %17 to double**
  store double* null, double** %18, align 8
  %19 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 1
  %20 = load i32 (i8*)*, i32 (i8*)** %19, align 8
  %21 = getelementptr inbounds i8, i8* %0, i64 104
  %22 = bitcast i8* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 %20(i8* noundef %23) #6
  %25 = getelementptr inbounds i8, i8* %0, i64 104
  %26 = bitcast i8* %25 to double**
  store double* null, double** %26, align 8
  br label %27

27:                                               ; preds = %10, %5
  %28 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 6
  %29 = load i32 (i8*)*, i32 (i8*)** %28, align 8
  %30 = getelementptr inbounds i8, i8* %0, i64 64
  %31 = bitcast i8* %30 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 %29(i8* noundef %32) #6
  %34 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 3
  %35 = load i32 (i8*)*, i32 (i8*)** %34, align 8
  %36 = getelementptr inbounds i8, i8* %0, i64 40
  %37 = bitcast i8* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 %35(i8* noundef %38) #6
  %40 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 3
  %41 = load i32 (i8*)*, i32 (i8*)** %40, align 8
  %42 = getelementptr inbounds i8, i8* %0, i64 48
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 %41(i8* noundef %44) #6
  %46 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 3
  %47 = load i32 (i8*)*, i32 (i8*)** %46, align 8
  %48 = getelementptr inbounds i8, i8* %0, i64 56
  %49 = bitcast i8* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 %47(i8* noundef %50) #6
  %52 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 1
  %53 = load i32 (i8*)*, i32 (i8*)** %52, align 8
  %54 = call i32 %53(i8* noundef nonnull %0) #6
  %55 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %4, i64 0, i32 1
  %56 = load i32 (i8*)*, i32 (i8*)** %55, align 8
  %57 = bitcast %struct.hypre_PCGFunctions* %4 to i8*
  %58 = call i32 %56(i8* noundef %57) #6
  br label %59

59:                                               ; preds = %27, %1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSetup(i8* nocapture noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = getelementptr inbounds i8, i8* %0, i64 80
  %6 = bitcast i8* %5 to %struct.hypre_PCGFunctions**
  %7 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %6, align 8
  %8 = getelementptr inbounds i8, i8* %0, i64 16
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 13
  %12 = bitcast i32 (...)** %11 to i32 (i8*, i8*, i8*, i8*, ...)**
  %13 = load i32 (i8*, i8*, i8*, i8*, ...)*, i32 (i8*, i8*, i8*, i8*, ...)** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 72
  %15 = bitcast i8* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %0, i64 32
  %18 = bitcast i8* %17 to i8**
  store i8* %1, i8** %18, align 8
  %19 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 2
  %20 = load i8* (i8*)*, i8* (i8*)** %19, align 8
  %21 = call i8* %20(i8* noundef %3) #6
  %22 = getelementptr inbounds i8, i8* %0, i64 40
  %23 = bitcast i8* %22 to i8**
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 2
  %25 = load i8* (i8*)*, i8* (i8*)** %24, align 8
  %26 = call i8* %25(i8* noundef %3) #6
  %27 = getelementptr inbounds i8, i8* %0, i64 48
  %28 = bitcast i8* %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 2
  %30 = load i8* (i8*)*, i8* (i8*)** %29, align 8
  %31 = call i8* %30(i8* noundef %2) #6
  %32 = getelementptr inbounds i8, i8* %0, i64 56
  %33 = bitcast i8* %32 to i8**
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 4
  %35 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %34, align 8
  %36 = call i8* %35(i8* noundef %1, i8* noundef %3) #6
  %37 = getelementptr inbounds i8, i8* %0, i64 64
  %38 = bitcast i8* %37 to i8**
  store i8* %36, i8** %38, align 8
  %39 = call i32 (i8*, i8*, i8*, i8*, ...) %13(i8* noundef %16, i8* noundef %1, i8* noundef %2, i8* noundef %3) #6
  %40 = getelementptr inbounds i8, i8* %0, i64 92
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 0
  %46 = load i8* (i32, i32)*, i8* (i32, i32)** %45, align 8
  %47 = add nsw i32 %10, 1
  %48 = call i8* %46(i32 noundef %47, i32 noundef 8) #6
  %49 = getelementptr inbounds i8, i8* %0, i64 96
  %50 = bitcast i8* %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 0
  %52 = load i8* (i32, i32)*, i8* (i32, i32)** %51, align 8
  %53 = add nsw i32 %10, 1
  %54 = call i8* %52(i32 noundef %53, i32 noundef 8) #6
  %55 = getelementptr inbounds i8, i8* %0, i64 104
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %44, %4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGSolve(i8* nocapture noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = getelementptr inbounds i8, i8* %0, i64 80
  %6 = bitcast i8* %5 to %struct.hypre_PCGFunctions**
  %7 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %6, align 8
  %8 = bitcast i8* %0 to double*
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to double*
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds i8, i8* %0, i64 16
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds i8, i8* %0, i64 20
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds i8, i8* %0, i64 24
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds i8, i8* %0, i64 28
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds i8, i8* %0, i64 40
  %26 = bitcast i8* %25 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %0, i64 48
  %29 = bitcast i8* %28 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %0, i64 56
  %32 = bitcast i8* %31 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %0, i64 64
  %35 = bitcast i8* %34 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 12
  %38 = load i32 (...)*, i32 (...)** %37, align 8
  %39 = getelementptr inbounds i8, i8* %0, i64 72
  %40 = bitcast i8* %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %0, i64 92
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds i8, i8* %0, i64 96
  %46 = bitcast i8* %45 to double**
  %47 = load double*, double** %46, align 8
  %48 = getelementptr inbounds i8, i8* %0, i64 104
  %49 = bitcast i8* %48 to double**
  %50 = load double*, double** %49, align 8
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %55, label %51

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %53 = load double (i8*, i8*)*, double (i8*, i8*)** %52, align 8
  %54 = call double %53(i8* noundef %2, i8* noundef %2) #6
  br label %64

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 9
  %57 = load i32 (i8*)*, i32 (i8*)** %56, align 8
  %58 = call i32 %57(i8* noundef %27) #6
  %59 = bitcast i32 (...)* %38 to i32 (i8*, i8*, i8*, i8*, ...)*
  %60 = call i32 (i8*, i8*, i8*, i8*, ...) %59(i8* noundef %41, i8* noundef %1, i8* noundef %2, i8* noundef %27) #6
  %61 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %62 = load double (i8*, i8*)*, double (i8*, i8*)** %61, align 8
  %63 = call double %62(i8* noundef %27, i8* noundef %2) #6
  br label %64

64:                                               ; preds = %55, %51
  %.07 = phi double [ %54, %51 ], [ %63, %55 ]
  %65 = fmul double %9, %9
  %66 = fcmp ogt double %.07, 0.000000e+00
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %.not14 = icmp eq i32 %24, 0
  br i1 %.not14, label %71, label %68

68:                                               ; preds = %67
  %.not18 = icmp eq i32 %21, 0
  br i1 %.not18, label %69, label %71

69:                                               ; preds = %68
  %70 = fdiv double %65, %.07
  br label %71

71:                                               ; preds = %69, %68, %67
  %.05 = phi double [ %65, %68 ], [ %70, %69 ], [ %65, %67 ]
  br label %79

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 8
  %74 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %73, align 8
  %75 = call i32 %74(i8* noundef %2, i8* noundef %3) #6
  %76 = icmp sgt i32 %44, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store double 0.000000e+00, double* %47, align 8
  store double 0.000000e+00, double* %50, align 8
  br label %78

78:                                               ; preds = %77, %72
  br label %204

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 8
  %81 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %80, align 8
  %82 = call i32 %81(i8* noundef %2, i8* noundef %33) #6
  %83 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 5
  %84 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %83, align 8
  %85 = call i32 %84(i8* noundef %36, double noundef -1.000000e+00, i8* noundef %1, i8* noundef %3, double noundef 1.000000e+00, i8* noundef %33) #6
  %86 = icmp sgt i32 %44, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = fcmp ogt double %12, 0.000000e+00
  br i1 %88, label %89, label %97

89:                                               ; preds = %87, %79
  %90 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %91 = load double (i8*, i8*)*, double (i8*, i8*)** %90, align 8
  %92 = call double %91(i8* noundef %33, i8* noundef %33) #6
  %93 = icmp sgt i32 %44, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call double @sqrt(double noundef %92) #6
  store double %95, double* %47, align 8
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %87
  %.04 = phi double [ %92, %96 ], [ undef, %87 ]
  %98 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 9
  %99 = load i32 (i8*)*, i32 (i8*)** %98, align 8
  %100 = call i32 %99(i8* noundef %27) #6
  %101 = bitcast i32 (...)* %38 to i32 (i8*, i8*, i8*, i8*, ...)*
  %102 = call i32 (i8*, i8*, i8*, i8*, ...) %101(i8* noundef %41, i8* noundef %1, i8* noundef %33, i8* noundef %27) #6
  %103 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %104 = load double (i8*, i8*)*, double (i8*, i8*)** %103, align 8
  %105 = call double %104(i8* noundef %33, i8* noundef %27) #6
  br label %106

106:                                              ; preds = %193, %97
  %.08 = phi double [ %105, %97 ], [ %130, %193 ]
  %.02 = phi double [ 0.000000e+00, %97 ], [ %.13, %193 ]
  %.01 = phi i32 [ 0, %97 ], [ %108, %193 ]
  %.not15.not = icmp slt i32 %.01, %15
  br i1 %.not15.not, label %107, label %.loopexit

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %.01, 1
  %109 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 5
  %110 = load i32 (i8*, double, i8*, i8*, double, i8*)*, i32 (i8*, double, i8*, i8*, double, i8*)** %109, align 8
  %111 = call i32 %110(i8* noundef %36, double noundef 1.000000e+00, i8* noundef %1, i8* noundef %27, double noundef 0.000000e+00, i8* noundef %30) #6
  %112 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %113 = load double (i8*, i8*)*, double (i8*, i8*)** %112, align 8
  %114 = call double %113(i8* noundef %30, i8* noundef %27) #6
  %115 = fdiv double %.08, %114
  %116 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 11
  %117 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %116, align 8
  %118 = call i32 %117(double noundef %115, i8* noundef %27, i8* noundef %3) #6
  %119 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 11
  %120 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %119, align 8
  %121 = fneg double %115
  %122 = call i32 %120(double noundef %121, i8* noundef %30, i8* noundef %33) #6
  %123 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 9
  %124 = load i32 (i8*)*, i32 (i8*)** %123, align 8
  %125 = call i32 %124(i8* noundef %30) #6
  %126 = bitcast i32 (...)* %38 to i32 (i8*, i8*, i8*, i8*, ...)*
  %127 = call i32 (i8*, i8*, i8*, i8*, ...) %126(i8* noundef %41, i8* noundef %1, i8* noundef %33, i8* noundef %30) #6
  %128 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %129 = load double (i8*, i8*)*, double (i8*, i8*)** %128, align 8
  %130 = call double %129(i8* noundef %33, i8* noundef %30) #6
  %.not16 = icmp eq i32 %18, 0
  br i1 %.not16, label %135, label %131

131:                                              ; preds = %107
  %132 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %133 = load double (i8*, i8*)*, double (i8*, i8*)** %132, align 8
  %134 = call double %133(i8* noundef %33, i8* noundef %33) #6
  br label %136

135:                                              ; preds = %107
  br label %136

136:                                              ; preds = %135, %131
  %.06 = phi double [ %134, %131 ], [ %130, %135 ]
  %137 = icmp sgt i32 %44, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %136
  %139 = call double @sqrt(double noundef %.06) #6
  %140 = zext i32 %108 to i64
  %141 = getelementptr inbounds double, double* %47, i64 %140
  store double %139, double* %141, align 8
  %142 = fcmp une double %.07, 0.000000e+00
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = fdiv double %.06, %.07
  %145 = call double @sqrt(double noundef %144) #6
  br label %147

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi double [ %145, %143 ], [ 0.000000e+00, %146 ]
  %149 = zext i32 %108 to i64
  %150 = getelementptr inbounds double, double* %50, i64 %149
  store double %148, double* %150, align 8
  br label %151

151:                                              ; preds = %147, %136
  %152 = fdiv double %.06, %.07
  %153 = fcmp olt double %152, %.05
  br i1 %153, label %154, label %172

154:                                              ; preds = %151
  %.not17 = icmp eq i32 %21, 0
  br i1 %.not17, label %170, label %155

155:                                              ; preds = %154
  %156 = fcmp ogt double %.06, 0.000000e+00
  br i1 %156, label %157, label %170

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %159 = load double (i8*, i8*)*, double (i8*, i8*)** %158, align 8
  %160 = call double %159(i8* noundef %27, i8* noundef %27) #6
  %161 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 7
  %162 = load double (i8*, i8*)*, double (i8*, i8*)** %161, align 8
  %163 = call double %162(i8* noundef %3, i8* noundef %3) #6
  %164 = fmul double %115, %115
  %165 = fmul double %164, %160
  %166 = fdiv double %165, %163
  %167 = fcmp olt double %166, %.05
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %201

169:                                              ; preds = %157
  br label %171

170:                                              ; preds = %155, %154
  br label %201

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171, %151
  %173 = fcmp ogt double %12, 0.000000e+00
  br i1 %173, label %174, label %193

174:                                              ; preds = %172
  %175 = fdiv double %.06, %.04
  %176 = sitofp i32 %108 to double
  %177 = fmul double %176, 2.000000e+00
  %178 = fdiv double 1.000000e+00, %177
  %179 = call double @pow(double noundef %175, double noundef %178) #6
  %180 = fsub double %179, %.02
  %181 = call double @llvm.fabs.f64(double %180)
  %182 = fcmp olt double %179, %.02
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %185

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %183
  %186 = phi double [ %.02, %183 ], [ %179, %184 ]
  %187 = fdiv double %181, %186
  %188 = fsub double 1.000000e+00, %187
  %189 = fmul double %188, %179
  %190 = fcmp ogt double %189, %12
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %201

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %172
  %.13 = phi double [ %179, %192 ], [ %.02, %172 ]
  %194 = fdiv double %130, %.08
  %195 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 10
  %196 = load i32 (double, i8*)*, i32 (double, i8*)** %195, align 8
  %197 = call i32 %196(double noundef %194, i8* noundef %27) #6
  %198 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 11
  %199 = load i32 (double, i8*, i8*)*, i32 (double, i8*, i8*)** %198, align 8
  %200 = call i32 %199(double noundef 1.000000e+00, i8* noundef %30, i8* noundef %27) #6
  br label %106, !llvm.loop !4

.loopexit:                                        ; preds = %106
  br label %201

201:                                              ; preds = %.loopexit, %191, %170, %168
  %.1 = phi i32 [ %108, %168 ], [ %108, %191 ], [ %108, %170 ], [ %.01, %.loopexit ]
  %202 = getelementptr inbounds i8, i8* %0, i64 88
  %203 = bitcast i8* %202 to i32*
  store i32 %.1, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %78
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetTol(i8* nocapture noundef writeonly %0, double noundef %1) #3 {
  %3 = bitcast i8* %0 to double*
  store double %1, double* %3, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetConvergenceFactorTol(i8* nocapture noundef writeonly %0, double noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to double*
  store double %1, double* %4, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetMaxIter(i8* nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 16
  %4 = bitcast i8* %3 to i32*
  store i32 %1, i32* %4, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetTwoNorm(i8* nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 20
  %4 = bitcast i8* %3 to i32*
  store i32 %1, i32* %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetRelChange(i8* nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 24
  %4 = bitcast i8* %3 to i32*
  store i32 %1, i32* %4, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetStopCrit(i8* nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 28
  %4 = bitcast i8* %3 to i32*
  store i32 %1, i32* %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @hypre_PCGGetPrecond(i8* nocapture noundef readonly %0, %struct.hypre_Solver_struct** nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 72
  %4 = bitcast i8* %3 to %struct.hypre_Solver_struct**
  %5 = load %struct.hypre_Solver_struct*, %struct.hypre_Solver_struct** %4, align 8
  store %struct.hypre_Solver_struct* %5, %struct.hypre_Solver_struct** %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @hypre_PCGSetPrecond(i8* nocapture noundef %0, i32 (...)* noundef %1, i32 (...)* noundef %2, i8* noundef %3) #4 {
  %5 = getelementptr inbounds i8, i8* %0, i64 80
  %6 = bitcast i8* %5 to %struct.hypre_PCGFunctions**
  %7 = load %struct.hypre_PCGFunctions*, %struct.hypre_PCGFunctions** %6, align 8
  %8 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 12
  store i32 (...)* %1, i32 (...)** %8, align 8
  %9 = getelementptr inbounds %struct.hypre_PCGFunctions, %struct.hypre_PCGFunctions* %7, i64 0, i32 13
  store i32 (...)* %2, i32 (...)** %9, align 8
  %10 = getelementptr inbounds i8, i8* %0, i64 72
  %11 = bitcast i8* %10 to i8**
  store i8* %3, i8** %11, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_PCGSetLogging(i8* nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds i8, i8* %0, i64 92
  %4 = bitcast i8* %3 to i32*
  store i32 %1, i32* %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @hypre_PCGGetNumIterations(i8* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 88
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 8
  store i32 %5, i32* %1, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_PCGPrintLogging(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds i8, i8* %0, i64 88
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds i8, i8* %0, i64 96
  %7 = bitcast i8* %6 to double**
  %8 = load double*, double** %7, align 8
  %9 = getelementptr inbounds i8, i8* %0, i64 104
  %10 = bitcast i8* %9 to double**
  %11 = load double*, double** %10, align 8
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 92
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %30, %18
  %.0 = phi i32 [ 0, %18 ], [ %31, %30 ]
  %20 = icmp slt i32 %.0, %5
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds double, double* %8, i64 %22
  %24 = load double, double* %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, double noundef %24) #6
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds double, double* %11, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.0, double noundef %28) #6
  br label %30

30:                                               ; preds = %21
  %31 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !6

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33, %2
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @hypre_PCGGetFinalRelativeResidualNorm(i8* nocapture noundef readonly %0, double* nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds i8, i8* %0, i64 92
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %0, i64 104
  %9 = bitcast i8* %8 to double**
  %10 = load double*, double** %9, align 8
  %11 = getelementptr inbounds i8, i8* %0, i64 88
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %10, i64 %14
  %16 = load double, double* %15, align 8
  store double %16, double* %1, align 8
  br label %17

17:                                               ; preds = %7, %2
  %.0 = phi i32 [ 0, %7 ], [ -1, %2 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
