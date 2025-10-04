; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/MM.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/MM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double** @MakeMatrix(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double**, align 8
  store i32 %0, i32* %2, align 4
  %6 = call double** @newMatrix()
  store double** %6, double*** %5, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 51
  br i1 %9, label %10, label %79

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %72, %10
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 51
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @abs(i32 noundef %18) #4
  %20 = load i32, i32* %2, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load double**, double*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double*, double** %23, i64 %25
  %27 = load double*, double** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  store double 0.000000e+00, double* %30, align 8
  %31 = load double**, double*** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double*, double** %31, i64 %33
  %35 = load double*, double** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  store double 0.000000e+00, double* %38, align 8
  br label %71

39:                                               ; preds = %15
  %40 = call double @sqrt(double noundef 0x401921FB54442D18) #5
  %41 = fmul double 5.000000e+00, %40
  %42 = fdiv double 4.000000e+00, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sitofp i32 %45 to double
  %47 = fmul double -3.200000e-01, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sitofp i32 %50 to double
  %52 = fmul double %47, %51
  %53 = call double @exp(double noundef %52) #5
  %54 = fmul double %42, %53
  %55 = load double**, double*** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double*, double** %55, i64 %57
  %59 = load double*, double** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double %54, double* %62, align 8
  %63 = load double**, double*** %5, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double*, double** %63, i64 %65
  %67 = load double*, double** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %54, double* %70, align 8
  br label %71

71:                                               ; preds = %39, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %12, !llvm.loop !4

75:                                               ; preds = %12
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %7, !llvm.loop !6

79:                                               ; preds = %7
  %80 = load double**, double*** %5, align 8
  ret double** %80
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @newMatrix() #0 {
  %1 = alloca double**, align 8
  %2 = alloca i32, align 4
  %3 = call noalias i8* @malloc(i64 noundef 408) #5
  %4 = bitcast i8* %3 to double**
  store double** %4, double*** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 51
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = call noalias i8* @malloc(i64 noundef 408) #5
  %10 = bitcast i8* %9 to double*
  %11 = load double**, double*** %1, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double*, double** %11, i64 %13
  store double* %10, double** %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %5, !llvm.loop !7

18:                                               ; preds = %5
  %19 = load double**, double*** %1, align 8
  ret double** %19
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double* @newVector() #0 {
  %1 = alloca double*, align 8
  %2 = call noalias i8* @malloc(i64 noundef 408) #5
  %3 = bitcast i8* %2 to double*
  store double* %3, double** %1, align 8
  %4 = load double*, double** %1, align 8
  ret double* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrixMult(double** noundef %0, double** noundef %1, double** noundef %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
  %6 = alloca double**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store double** %1, double*** %5, align 8
  store double** %2, double*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %66, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 51
  br i1 %12, label %13, label %69

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %62, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 51
  br i1 %16, label %17, label %65

17:                                               ; preds = %14
  %18 = load double**, double*** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  store double 0.000000e+00, double* %25, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %58, %17
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 51
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load double**, double*** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double**, double*** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double**, double*** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double*, double** %48, i64 %50
  %52 = load double*, double** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = call double @llvm.fmuladd.f64(double %38, double %47, double %56)
  store double %57, double* %55, align 8
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %26, !llvm.loop !8

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %14, !llvm.loop !9

65:                                               ; preds = %14
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %10, !llvm.loop !10

69:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrixTranspose(double** noundef %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  store double** %0, double*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 51
  br i1 %8, label %9, label %58

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %51, %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 51
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load double**, double*** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double*, double** %16, i64 %18
  %20 = load double*, double** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  %24 = load double, double* %23, align 8
  store double %24, double* %5, align 8
  %25 = load double**, double*** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double*, double** %25, i64 %27
  %29 = load double*, double** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load double**, double*** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double*, double** %34, i64 %36
  %38 = load double*, double** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  store double %33, double* %41, align 8
  %42 = load double, double* %5, align 8
  %43 = load double**, double*** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double*, double** %43, i64 %45
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  store double %42, double* %50, align 8
  br label %51

51:                                               ; preds = %15
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %12, !llvm.loop !11

54:                                               ; preds = %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %6, !llvm.loop !12

58:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @newIdMatrix() #0 {
  %1 = alloca double**, align 8
  %2 = call double** @newMatrix()
  store double** %2, double*** %1, align 8
  %3 = load double**, double*** %1, align 8
  call void @MakeID(double** noundef %3)
  %4 = load double**, double*** %1, align 8
  ret double** %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MakeID(double** noundef %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 51
  br i1 %7, label %8, label %51

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %44, %8
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 51
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load double**, double*** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  store double 1.000000e+00, double* %25, align 8
  br label %43

26:                                               ; preds = %13
  %27 = load double**, double*** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double*, double** %27, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  store double 0.000000e+00, double* %34, align 8
  %35 = load double**, double*** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double*, double** %35, i64 %37
  %39 = load double*, double** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double 0.000000e+00, double* %42, align 8
  br label %43

43:                                               ; preds = %26, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %10, !llvm.loop !13

47:                                               ; preds = %10
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %5, !llvm.loop !14

51:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeMatrix(double** noundef %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 51
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load double**, double*** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double*, double** %8, i64 %10
  %12 = load double*, double** %11, align 8
  %13 = bitcast double* %12 to i8*
  call void @free(i8* noundef %13) #5
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4, !llvm.loop !15

17:                                               ; preds = %4
  %18 = load double**, double*** %2, align 8
  %19 = bitcast double** %18 to i8*
  call void @free(i8* noundef %19) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @NormInf(double** noundef %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 51
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 51
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load double**, double*** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double*, double** %15, i64 %17
  %19 = load double*, double** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = load double, double* %4, align 8
  %26 = fadd double %25, %24
  store double %26, double* %4, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11, !llvm.loop !16

30:                                               ; preds = %11
  %31 = load double, double* %4, align 8
  %32 = load double, double* %3, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %4, align 8
  store double %35, double* %3, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %7, !llvm.loop !17

40:                                               ; preds = %7
  %41 = load double, double* %3, align 8
  ret double %41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @NormOne(double** noundef %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 51
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 51
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load double**, double*** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double*, double** %15, i64 %17
  %19 = load double*, double** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = load double, double* %4, align 8
  %26 = fadd double %25, %24
  store double %26, double* %4, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11, !llvm.loop !18

30:                                               ; preds = %11
  %31 = load double, double* %4, align 8
  %32 = load double, double* %3, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %4, align 8
  store double %35, double* %3, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7, !llvm.loop !19

40:                                               ; preds = %7
  %41 = load double, double* %3, align 8
  ret double %41
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

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
