; ModuleID = './bintree.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/17-bintr/bintree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binaryTree = type { i32, %struct.binaryTree*, %struct.binaryTree* }

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(%d <L \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" L> <R \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" R>)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@str = private unnamed_addr constant [5 x i8] c" R>)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.binaryTree* @createBinaryTree(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #7
  %3 = bitcast i8* %2 to %struct.binaryTree*
  %4 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i64 0, i32 0
  store i32 %0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i64 0, i32 2
  store %struct.binaryTree* null, %struct.binaryTree** %5, align 8
  %6 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i64 0, i32 1
  store %struct.binaryTree* null, %struct.binaryTree** %6, align 8
  ret %struct.binaryTree* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printBinaryTree(%struct.binaryTree* noundef readonly %0) #0 {
  %2 = icmp eq %struct.binaryTree* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  %putchar = call i32 @putchar(i32 88)
  br label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #7
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 1
  %9 = load %struct.binaryTree*, %struct.binaryTree** %8, align 8
  call void @printBinaryTree(%struct.binaryTree* noundef %9)
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #7
  %11 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 2
  %12 = load %struct.binaryTree*, %struct.binaryTree** %11, align 8
  call void @printBinaryTree(%struct.binaryTree* noundef %12)
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSortedBinaryTree(%struct.binaryTree* noundef readonly %0) #0 {
  %.not = icmp eq %struct.binaryTree* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 1
  %4 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* noundef %4)
  %5 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %6) #7
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 2
  %9 = load %struct.binaryTree*, %struct.binaryTree** %8, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* noundef %9)
  br label %10

10:                                               ; preds = %2, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binaryTree* @insertSortedBinaryTree(i32 noundef %0, %struct.binaryTree** nocapture noundef %1) #0 {
  %3 = call %struct.binaryTree* @createBinaryTree(i32 noundef %0)
  %4 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  %5 = icmp eq %struct.binaryTree* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store %struct.binaryTree* %3, %struct.binaryTree** %1, align 8
  br label %42

7:                                                ; preds = %2
  %8 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  br label %9

9:                                                ; preds = %40, %7
  %.01 = phi %struct.binaryTree* [ %8, %7 ], [ %.45, %40 ]
  %.0 = phi i32 [ 0, %7 ], [ %.4, %40 ]
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 1
  %15 = load %struct.binaryTree*, %struct.binaryTree** %14, align 8
  %16 = icmp eq %struct.binaryTree* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 1
  store %struct.binaryTree* %3, %struct.binaryTree** %18, align 8
  br label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 1
  %21 = load %struct.binaryTree*, %struct.binaryTree** %20, align 8
  br label %22

22:                                               ; preds = %19, %17
  %.12 = phi %struct.binaryTree* [ %.01, %17 ], [ %21, %19 ]
  %.1 = phi i32 [ 1, %17 ], [ %.0, %19 ]
  br label %39

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, %0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 2
  %29 = load %struct.binaryTree*, %struct.binaryTree** %28, align 8
  %30 = icmp eq %struct.binaryTree* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 2
  store %struct.binaryTree* %3, %struct.binaryTree** %32, align 8
  br label %36

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 2
  %35 = load %struct.binaryTree*, %struct.binaryTree** %34, align 8
  br label %36

36:                                               ; preds = %33, %31
  %.23 = phi %struct.binaryTree* [ %.01, %31 ], [ %35, %33 ]
  %.2 = phi i32 [ 1, %31 ], [ %.0, %33 ]
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %36
  %.34 = phi %struct.binaryTree* [ %.23, %36 ], [ %.01, %37 ]
  %.3 = phi i32 [ %.2, %36 ], [ 1, %37 ]
  br label %39

39:                                               ; preds = %38, %22
  %.45 = phi %struct.binaryTree* [ %.12, %22 ], [ %.34, %38 ]
  %.4 = phi i32 [ %.1, %22 ], [ %.3, %38 ]
  br label %40

40:                                               ; preds = %39
  %.not = icmp eq i32 %.4, 0
  br i1 %.not, label %9, label %41, !llvm.loop !4

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %6
  ret %struct.binaryTree* %3
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @getArithmeticMeanBinaryTree(%struct.binaryTree* noundef %0) #3 {
  %2 = call double @getSumBinaryTree(%struct.binaryTree* noundef %0)
  %3 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %0)
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %2, %4
  ret double %5
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @getSumBinaryTree(%struct.binaryTree* noundef readonly %0) #3 {
  %.not = icmp eq %struct.binaryTree* %0, null
  br i1 %.not, label %14, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = sitofp i32 %4 to double
  %6 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 1
  %7 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %8 = call double @getSumBinaryTree(%struct.binaryTree* noundef %7)
  %9 = fadd double %8, %5
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 2
  %11 = load %struct.binaryTree*, %struct.binaryTree** %10, align 8
  %12 = call double @getSumBinaryTree(%struct.binaryTree* noundef %11)
  %13 = fadd double %9, %12
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi double [ %13, %2 ], [ 0.000000e+00, %14 ]
  ret double %.0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @getSizeBinaryTree(%struct.binaryTree* noundef readonly %0) #3 {
  %.not = icmp eq %struct.binaryTree* %0, null
  br i1 %.not, label %11, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 1
  %4 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %5 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %4)
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 2
  %8 = load %struct.binaryTree*, %struct.binaryTree** %7, align 8
  %9 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %8)
  %10 = add nsw i32 %6, %9
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %2
  %.0 = phi i32 [ %10, %2 ], [ 0, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local double @getArithmeticMeanOptimized(%struct.binaryTree* noundef %0) #4 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double 0.000000e+00, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %0, double* noundef nonnull %2, double* noundef nonnull %3)
  %4 = load double, double* %2, align 8
  %5 = load double, double* %3, align 8
  %6 = fdiv double %4, %5
  ret double %6
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef readonly %0, double* noundef %1, double* noundef %2) #4 {
  %.not = icmp eq %struct.binaryTree* %0, null
  br i1 %.not, label %16, label %4

4:                                                ; preds = %3
  %5 = load double, double* %1, align 8
  %6 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sitofp i32 %7 to double
  %9 = fadd double %5, %8
  store double %9, double* %1, align 8
  %10 = load double, double* %2, align 8
  %11 = fadd double %10, 1.000000e+00
  store double %11, double* %2, align 8
  %12 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 1
  %13 = load %struct.binaryTree*, %struct.binaryTree** %12, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %13, double* noundef nonnull %1, double* noundef nonnull %2)
  %14 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 2
  %15 = load %struct.binaryTree*, %struct.binaryTree** %14, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* noundef %15, double* noundef nonnull %1, double* noundef nonnull %2)
  br label %16

16:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @memberOfBinaryTree(%struct.binaryTree* noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %0, i32 noundef %1, i32* noundef nonnull %3)
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef readonly %0, i32 noundef %1, i32* noundef %2) #4 {
  %.not = icmp eq %struct.binaryTree* %0, null
  br i1 %.not, label %18, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 1, i32* %2, align 4
  br label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 1
  %11 = load %struct.binaryTree*, %struct.binaryTree** %10, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %11, i32 noundef %1, i32* noundef %2)
  %12 = load i32, i32* %2, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %0, i64 0, i32 2
  %15 = load %struct.binaryTree*, %struct.binaryTree** %14, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* noundef %15, i32 noundef %1, i32* noundef nonnull %2)
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %8
  br label %18

18:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @memberOfSortedBinaryTree(%struct.binaryTree* noundef readonly %0, i32 noundef %1) #5 {
  br label %3

3:                                                ; preds = %24, %2
  %.01 = phi %struct.binaryTree* [ %0, %2 ], [ %.23, %24 ]
  %.0 = phi i32 [ 0, %2 ], [ %.2, %24 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %4, label %6

4:                                                ; preds = %3
  %5 = icmp ne %struct.binaryTree* %.01, null
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i1 [ false, %3 ], [ %5, %4 ]
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 1
  %14 = load %struct.binaryTree*, %struct.binaryTree** %13, align 8
  br label %24

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %.01, i64 0, i32 2
  %21 = load %struct.binaryTree*, %struct.binaryTree** %20, align 8
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %19
  %.12 = phi %struct.binaryTree* [ %21, %19 ], [ %.01, %22 ]
  %.1 = phi i32 [ %.0, %19 ], [ 1, %22 ]
  br label %24

24:                                               ; preds = %23, %12
  %.23 = phi %struct.binaryTree* [ %14, %12 ], [ %.12, %23 ]
  %.2 = phi i32 [ %.0, %12 ], [ %.1, %23 ]
  br label %3, !llvm.loop !6

25:                                               ; preds = %6
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
