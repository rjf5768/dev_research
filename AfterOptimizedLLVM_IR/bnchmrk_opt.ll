; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/17-bintr/bnchmrk.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/17-bintr/bnchmrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binaryTree = type { i32, %struct.binaryTree*, %struct.binaryTree* }

@.str = private unnamed_addr constant [21 x i8] c"Constructing tree\0A\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\0A\0ATree constructed\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Constructing array of values\0A\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0A\0AArray of values constructed\0A\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Beginning of program\0A\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Summary of sorted binary tree\0A=============================\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Size                   : %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Sum                    : %f\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Arithmetic Mean        : %f\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%d is in the tree.\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%d is NOT in the tree.\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\0A\0AEnd of program\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillTree(%struct.binaryTree** noundef %0) #0 {
  %2 = alloca %struct.binaryTree**, align 8
  %3 = alloca i32, align 4
  store %struct.binaryTree** %0, %struct.binaryTree*** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %3)
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.binaryTree**, %struct.binaryTree*** %2, align 8
  %12 = call %struct.binaryTree* @insertSortedBinaryTree(i32 noundef %10, %struct.binaryTree** noundef %11)
  %13 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %3)
  br label %6, !llvm.loop !4

14:                                               ; preds = %6
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

declare dso_local %struct.binaryTree* @insertSortedBinaryTree(i32 noundef, %struct.binaryTree** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillSearchedValues(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %3)
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %3)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %7, !llvm.loop !6

24:                                               ; preds = %13
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.binaryTree*, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.binaryTree* null, %struct.binaryTree** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %6, !llvm.loop !7

16:                                               ; preds = %6
  call void @fillTree(%struct.binaryTree** noundef %2)
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0
  call void @fillSearchedValues(i32* noundef %17)
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %19 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %20 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %19)
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 noundef %20)
  %22 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %23 = call double @getSumBinaryTree(%struct.binaryTree* noundef %22)
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double noundef %23)
  %25 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %26 = call double @getArithmeticMeanBinaryTree(%struct.binaryTree* noundef %25)
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), double noundef %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %52, %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memberOfBinaryTree(%struct.binaryTree* noundef %32, i32 noundef %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef %43)
  br label %51

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 noundef %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %28, !llvm.loop !8

55:                                               ; preds = %28
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @getSizeBinaryTree(%struct.binaryTree* noundef) #1

declare dso_local double @getSumBinaryTree(%struct.binaryTree* noundef) #1

declare dso_local double @getArithmeticMeanBinaryTree(%struct.binaryTree* noundef) #1

declare dso_local i32 @memberOfBinaryTree(%struct.binaryTree* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
