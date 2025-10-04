; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/Random.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/Random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

@dm1 = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Random_struct* @new_Random_seed(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Random_struct*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 noundef 112) #3
  %5 = bitcast i8* %4 to %struct.Random_struct*
  store %struct.Random_struct* %5, %struct.Random_struct** %3, align 8
  %6 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %7 = load i32, i32* %2, align 4
  call void @initialize(%struct.Random_struct* noundef %6, i32 noundef %7)
  %8 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %9 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %8, i32 0, i32 5
  store double 0.000000e+00, double* %9, align 8
  %10 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %11 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %10, i32 0, i32 6
  store double 1.000000e+00, double* %11, align 8
  %12 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %13 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %12, i32 0, i32 7
  store double 1.000000e+00, double* %13, align 8
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %14, i32 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  ret %struct.Random_struct* %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @initialize(%struct.Random_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Random_struct* %0, %struct.Random_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0x3E00000000200000, double* @dm1, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %13 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2147483647
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 2147483647, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %25
  store i32 9069, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 65536
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 65536
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %67, %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 17
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 65536
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = srem i32 %54, 32768
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = srem i32 %56, 65536
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 65536, %59
  %61 = add nsw i32 %58, %60
  %62 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %63 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i32], [17 x i32]* %63, i64 0, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %41
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %38, !llvm.loop !4

70:                                               ; preds = %38
  %71 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %72 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %71, i32 0, i32 2
  store i32 4, i32* %72, align 8
  %73 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %74 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %73, i32 0, i32 3
  store i32 16, i32* %74, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Random_struct* @new_Random(i32 noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.Random_struct*, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = call noalias i8* @malloc(i64 noundef 112) #3
  %9 = bitcast i8* %8 to %struct.Random_struct*
  store %struct.Random_struct* %9, %struct.Random_struct** %7, align 8
  %10 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %11 = load i32, i32* %4, align 4
  call void @initialize(%struct.Random_struct* noundef %10, i32 noundef %11)
  %12 = load double, double* %5, align 8
  %13 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %14 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %13, i32 0, i32 5
  store double %12, double* %14, align 8
  %15 = load double, double* %6, align 8
  %16 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %17 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %16, i32 0, i32 6
  store double %15, double* %17, align 8
  %18 = load double, double* %6, align 8
  %19 = load double, double* %5, align 8
  %20 = fsub double %18, %19
  %21 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %22 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %21, i32 0, i32 7
  store double %20, double* %22, align 8
  %23 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %24 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %23, i32 0, i32 4
  store i32 1, i32* %24, align 8
  %25 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  ret %struct.Random_struct* %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Random_delete(%struct.Random_struct* noundef %0) #0 {
  %2 = alloca %struct.Random_struct*, align 8
  store %struct.Random_struct* %0, %struct.Random_struct** %2, align 8
  %3 = load %struct.Random_struct*, %struct.Random_struct** %2, align 8
  %4 = bitcast %struct.Random_struct* %3 to i8*
  call void @free(i8* noundef %4) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @Random_nextDouble(%struct.Random_struct* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.Random_struct* %0, %struct.Random_struct** %3, align 8
  %8 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %9 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %12 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds [17 x i32], [17 x i32]* %15, i64 0, i64 0
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 2147483647
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %36 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [17 x i32], [17 x i32]* %36, i64 0, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 16, i32* %5, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %49 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 16, i32* %6, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %59 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %61 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %56
  %65 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %66 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %65, i32 0, i32 5
  %67 = load double, double* %66, align 8
  %68 = load double, double* @dm1, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double %68, %70
  %72 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %73 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %72, i32 0, i32 7
  %74 = load double, double* %73, align 8
  %75 = call double @llvm.fmuladd.f64(double %71, double %74, double %67)
  store double %75, double* %2, align 8
  br label %81

76:                                               ; preds = %56
  %77 = load double, double* @dm1, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sitofp i32 %78 to double
  %80 = fmul double %77, %79
  store double %80, double* %2, align 8
  br label %81

81:                                               ; preds = %76, %64
  %82 = load double, double* %2, align 8
  ret double %82
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double* @RandomVector(i32 noundef %0, %struct.Random_struct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Random_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.Random_struct* %1, %struct.Random_struct** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = call noalias i8* @malloc(i64 noundef %9) #3
  %11 = bitcast i8* %10 to double*
  store double* %11, double** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.Random_struct*, %struct.Random_struct** %4, align 8
  %18 = call double @Random_nextDouble(%struct.Random_struct* noundef %17)
  %19 = load double*, double** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  store double %18, double* %22, align 8
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12, !llvm.loop !6

26:                                               ; preds = %12
  %27 = load double*, double** %6, align 8
  ret double* %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @RandomMatrix(i32 noundef %0, i32 noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Random_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.Random_struct* %2, %struct.Random_struct** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = call noalias i8* @malloc(i64 noundef %13) #3
  %15 = bitcast i8* %14 to double**
  store double** %15, double*** %10, align 8
  %16 = load double**, double*** %10, align 8
  %17 = icmp eq double** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store double** null, double*** %4, align 8
  br label %68

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = call noalias i8* @malloc(i64 noundef %27) #3
  %29 = bitcast i8* %28 to double*
  %30 = load double**, double*** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  store double* %29, double** %33, align 8
  %34 = load double**, double*** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double*, double** %34, i64 %36
  %38 = load double*, double** %37, align 8
  %39 = icmp eq double* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load double**, double*** %10, align 8
  %42 = bitcast double** %41 to i8*
  call void @free(i8* noundef %42) #3
  store double** null, double*** %4, align 8
  br label %68

43:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %50 = call double @Random_nextDouble(%struct.Random_struct* noundef %49)
  %51 = load double**, double*** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double*, double** %51, i64 %53
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double %50, double* %58, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %44, !llvm.loop !7

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %20, !llvm.loop !8

66:                                               ; preds = %20
  %67 = load double**, double*** %10, align 8
  store double** %67, double*** %4, align 8
  br label %68

68:                                               ; preds = %66, %40, %18
  %69 = load double**, double*** %4, align 8
  ret double** %69
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
