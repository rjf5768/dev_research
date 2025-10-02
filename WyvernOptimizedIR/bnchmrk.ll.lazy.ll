; ModuleID = './bnchmrk.ll'
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
@str = private unnamed_addr constant [20 x i8] c"Constructing tree\0A\0A\00", align 1
@str.1 = private unnamed_addr constant [21 x i8] c"\0A\0ATree constructed\0A\0A\00", align 1
@str.2 = private unnamed_addr constant [31 x i8] c"Constructing array of values\0A\0A\00", align 1
@str.3 = private unnamed_addr constant [32 x i8] c"\0A\0AArray of values constructed\0A\0A\00", align 1
@str.4 = private unnamed_addr constant [23 x i8] c"Beginning of program\0A\0A\00", align 1
@str.5 = private unnamed_addr constant [61 x i8] c"Summary of sorted binary tree\0A=============================\0A\00", align 1
@str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.7 = private unnamed_addr constant [17 x i8] c"\0A\0AEnd of program\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillTree(%struct.binaryTree** noundef %0) #0 {
  %2 = alloca i32, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %2) #3
  br label %4

4:                                                ; preds = %6, %1
  %5 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.binaryTree* @insertSortedBinaryTree(i32 noundef %7, %struct.binaryTree** noundef %0) #3
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %2) #3
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

declare dso_local %struct.binaryTree* @insertSortedBinaryTree(i32 noundef, %struct.binaryTree** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillSearchedValues(i32* nocapture noundef writeonly %0) #0 {
  %2 = alloca i32, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.2, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %2) #3
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %16, %11 ]
  %5 = icmp ult i32 %.0, 100
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i1 [ false, %4 ], [ %8, %6 ]
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load i32, i32* %2, align 4
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  store i32 %12, i32* %14, align 4
  %15 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %2) #3
  %16 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

17:                                               ; preds = %9
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.binaryTree*, align 8
  %2 = alloca [100 x i32], align 16
  store %struct.binaryTree* null, %struct.binaryTree** %1, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.4, i64 0, i64 0))
  br label %3

3:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %6
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !7

10:                                               ; preds = %3
  call void @fillTree(%struct.binaryTree** noundef nonnull %1)
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  call void @fillSearchedValues(i32* noundef nonnull %11)
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([61 x i8], [61 x i8]* @str.5, i64 0, i64 0))
  %12 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  %13 = call i32 @getSizeBinaryTree(%struct.binaryTree* noundef %12) #3
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 noundef %13) #3
  %15 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  %16 = call double @getSumBinaryTree(%struct.binaryTree* noundef %15) #3
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double noundef %16) #3
  %18 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  %19 = call double @getArithmeticMeanBinaryTree(%struct.binaryTree* noundef %18) #3
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), double noundef %19) #3
  br label %21

21:                                               ; preds = %40, %10
  %.1 = phi i32 [ 0, %10 ], [ %41, %40 ]
  %22 = icmp ult i32 %.1, 100
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memberOfBinaryTree(%struct.binaryTree* noundef %24, i32 noundef %27) #3
  %.not = icmp eq i32 %28, 0
  br i1 %.not, label %34, label %29

29:                                               ; preds = %23
  %30 = zext i32 %.1 to i64
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef %32) #3
  br label %39

34:                                               ; preds = %23
  %35 = zext i32 %.1 to i64
  %36 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 noundef %37) #3
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.1, 1
  br label %21, !llvm.loop !8

42:                                               ; preds = %21
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.6, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @getSizeBinaryTree(%struct.binaryTree* noundef) #1

declare dso_local double @getSumBinaryTree(%struct.binaryTree* noundef) #1

declare dso_local double @getArithmeticMeanBinaryTree(%struct.binaryTree* noundef) #1

declare dso_local i32 @memberOfBinaryTree(%struct.binaryTree* noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
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
