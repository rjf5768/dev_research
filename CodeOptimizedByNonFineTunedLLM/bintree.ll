; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/17-bintr/bintree.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/17-bintr/bintree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binaryTree = type { i32, %struct.binaryTree*, %struct.binaryTree* }

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(%d <L \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" L> <R \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" R>)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binaryTree* @createBinaryTree(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.binaryTree*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.binaryTree* null, %struct.binaryTree** %3, align 8
  %4 = call noalias i8* @malloc(i64 noundef 24) #3
  %5 = bitcast i8* %4 to %struct.binaryTree*
  store %struct.binaryTree* %5, %struct.binaryTree** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %9, i32 0, i32 2
  store %struct.binaryTree* null, %struct.binaryTree** %10, align 8
  %11 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %12 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %11, i32 0, i32 1
  store %struct.binaryTree* null, %struct.binaryTree** %12, align 8
  %13 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  ret %struct.binaryTree* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printBinaryTree(%struct.binaryTree* noundef %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %4 = icmp eq %struct.binaryTree* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %9 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10)
  %12 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 1
  %14 = load %struct.binaryTree*, %struct.binaryTree** %13, align 8
  call void @printBinaryTree(%struct.binaryTree* noundef %14)
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %17 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %16, i32 0, i32 2
  %18 = load %struct.binaryTree*, %struct.binaryTree** %17, align 8
  call void @printBinaryTree(%struct.binaryTree* noundef %18)
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %7, %5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSortedBinaryTree(%struct.binaryTree* noundef %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %4 = icmp ne %struct.binaryTree* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %7 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %6, i32 0, i32 1
  %8 = load %struct.binaryTree*, %struct.binaryTree** %7, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* noundef %8)
  %9 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %11)
  %13 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %14 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %13, i32 0, i32 2
  %15 = load %struct.binaryTree*, %struct.binaryTree** %14, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* noundef %15)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binaryTree* @insertSortedBinaryTree(i32 noundef %0, %struct.binaryTree** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binaryTree**, align 8
  %5 = alloca %struct.binaryTree*, align 8
  %6 = alloca %struct.binaryTree*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.binaryTree** %1, %struct.binaryTree*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.binaryTree* @createBinaryTree(i32 noundef %8)
  store %struct.binaryTree* %9, %struct.binaryTree** %5, align 8
  store %struct.binaryTree* null, %struct.binaryTree** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.binaryTree**, %struct.binaryTree*** %4, align 8
  %11 = load %struct.binaryTree*, %struct.binaryTree** %10, align 8
  %12 = icmp eq %struct.binaryTree* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %15 = load %struct.binaryTree**, %struct.binaryTree*** %4, align 8
  store %struct.binaryTree* %14, %struct.binaryTree** %15, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.binaryTree**, %struct.binaryTree*** %4, align 8
  %18 = load %struct.binaryTree*, %struct.binaryTree** %17, align 8
  store %struct.binaryTree* %18, %struct.binaryTree** %6, align 8
  br label %19

19:                                               ; preds = %62, %16
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %22 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %27 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %26, i32 0, i32 1
  %28 = load %struct.binaryTree*, %struct.binaryTree** %27, align 8
  %29 = icmp eq %struct.binaryTree* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %32 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %33 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %32, i32 0, i32 1
  store %struct.binaryTree* %31, %struct.binaryTree** %33, align 8
  store i32 1, i32* %7, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %36 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %35, i32 0, i32 1
  %37 = load %struct.binaryTree*, %struct.binaryTree** %36, align 8
  store %struct.binaryTree* %37, %struct.binaryTree** %6, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %61

39:                                               ; preds = %19
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %42 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %47 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %46, i32 0, i32 2
  %48 = load %struct.binaryTree*, %struct.binaryTree** %47, align 8
  %49 = icmp eq %struct.binaryTree* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %52 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %53 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %52, i32 0, i32 2
  store %struct.binaryTree* %51, %struct.binaryTree** %53, align 8
  store i32 1, i32* %7, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %56 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %55, i32 0, i32 2
  %57 = load %struct.binaryTree*, %struct.binaryTree** %56, align 8
  store %struct.binaryTree* %57, %struct.binaryTree** %6, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %60

59:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %19, label %66, !llvm.loop !4

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %13
  %68 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  ret %struct.binaryTree* %68
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getArithmeticMeanBinaryTree(%struct.binaryTree* noundef %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %4 = call double @getSumBinaryTree(%struct.binaryTree* noundef %3)
  %5 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %6 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %5)
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %4, %7
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getSumBinaryTree(%struct.binaryTree* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  %4 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %5 = icmp ne %struct.binaryTree* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sitofp i32 %9 to double
  %11 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %12 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %11, i32 0, i32 1
  %13 = load %struct.binaryTree*, %struct.binaryTree** %12, align 8
  %14 = call double @getSumBinaryTree(%struct.binaryTree* noundef %13)
  %15 = fadd double %10, %14
  %16 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %17 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %16, i32 0, i32 2
  %18 = load %struct.binaryTree*, %struct.binaryTree** %17, align 8
  %19 = call double @getSumBinaryTree(%struct.binaryTree* noundef %18)
  %20 = fadd double %15, %19
  store double %20, double* %2, align 8
  br label %22

21:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %22

22:                                               ; preds = %21, %6
  %23 = load double, double* %2, align 8
  ret double %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getSizeBinaryTree(%struct.binaryTree* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  %4 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %5 = icmp ne %struct.binaryTree* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 1
  %9 = load %struct.binaryTree*, %struct.binaryTree** %8, align 8
  %10 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %9)
  %11 = add nsw i32 1, %10
  %12 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 2
  %14 = load %struct.binaryTree*, %struct.binaryTree** %13, align 8
  %15 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %14)
  %16 = add nsw i32 %11, %15
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getArithmeticMeanOptimized(%struct.binaryTree* noundef %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %5, double* noundef %3, double* noundef %4)
  %6 = load double, double* %3, align 8
  %7 = load double, double* %4, align 8
  %8 = fdiv double %6, %7
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %0, double* noundef %1, double* noundef %2) #0 {
  %4 = alloca %struct.binaryTree*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %8 = icmp ne %struct.binaryTree* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load double*, double** %5, align 8
  %11 = load double, double* %10, align 8
  %12 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sitofp i32 %14 to double
  %16 = fadd double %11, %15
  %17 = load double*, double** %5, align 8
  store double %16, double* %17, align 8
  %18 = load double*, double** %6, align 8
  %19 = load double, double* %18, align 8
  %20 = fadd double %19, 1.000000e+00
  %21 = load double*, double** %6, align 8
  store double %20, double* %21, align 8
  %22 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %23 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %22, i32 0, i32 1
  %24 = load %struct.binaryTree*, %struct.binaryTree** %23, align 8
  %25 = load double*, double** %5, align 8
  %26 = load double*, double** %6, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %24, double* noundef %25, double* noundef %26)
  %27 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %28 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %27, i32 0, i32 2
  %29 = load %struct.binaryTree*, %struct.binaryTree** %28, align 8
  %30 = load double*, double** %5, align 8
  %31 = load double*, double** %6, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %29, double* noundef %30, double* noundef %31)
  br label %32

32:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memberOfBinaryTree(%struct.binaryTree* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binaryTree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %7 = load i32, i32* %4, align 4
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %6, i32 noundef %7, i32* noundef %5)
  %8 = load i32, i32* %5, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %0, i32 noundef %1, i32* noundef %2) #0 {
  %4 = alloca %struct.binaryTree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %8 = icmp ne %struct.binaryTree* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %11 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32*, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %33

17:                                               ; preds = %9
  %18 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %19 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %18, i32 0, i32 1
  %20 = load %struct.binaryTree*, %struct.binaryTree** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %20, i32 noundef %21, i32* noundef %22)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %28 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %27, i32 0, i32 2
  %29 = load %struct.binaryTree*, %struct.binaryTree** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %6, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %29, i32 noundef %30, i32* noundef %31)
  br label %32

32:                                               ; preds = %26, %17
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memberOfSortedBinaryTree(%struct.binaryTree* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.binaryTree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binaryTree*, align 8
  %6 = alloca i32, align 4
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  store %struct.binaryTree* %7, %struct.binaryTree** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %13 = icmp ne %struct.binaryTree* %12, null
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %19 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %24 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %23, i32 0, i32 1
  %25 = load %struct.binaryTree*, %struct.binaryTree** %24, align 8
  store %struct.binaryTree* %25, %struct.binaryTree** %5, align 8
  br label %38

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %29 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %34 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %33, i32 0, i32 2
  %35 = load %struct.binaryTree*, %struct.binaryTree** %34, align 8
  store %struct.binaryTree* %35, %struct.binaryTree** %5, align 8
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %22
  br label %8, !llvm.loop !6

39:                                               ; preds = %14
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
