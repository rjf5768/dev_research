; ModuleID = './pimod.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pimod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"pimod\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"divisor too big for single digit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pimod(%struct.precisionType* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  br label %7

7:                                                ; preds = %3, %2
  %8 = icmp slt i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = sub nsw i32 0, %1
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %9
  %.01.in = phi i32 [ %10, %9 ], [ %1, %11 ]
  br i1 false, label %13, label %14

13:                                               ; preds = %12
  br label %41

14:                                               ; preds = %12
  %15 = and i32 %.01.in, 65535
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #2
  br label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %22
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  br label %25

25:                                               ; preds = %33, %19
  %.03 = phi i32 [ 0, %19 ], [ %32, %33 ]
  %.02 = phi i16* [ %23, %19 ], [ %27, %33 ]
  %26 = shl i32 %.03, 16
  %27 = getelementptr inbounds i16, i16* %.02, i64 -1
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %26, %29
  %31 = and i32 %.01.in, 65535
  %32 = urem i32 %30, %31
  br label %33

33:                                               ; preds = %25
  %34 = icmp ugt i16* %27, %24
  br i1 %34, label %25, label %35, !llvm.loop !4

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %37 = load i8, i8* %36, align 2
  %.not4 = icmp eq i8 %37, 0
  br i1 %.not4, label %40, label %38

38:                                               ; preds = %35
  %39 = sub nsw i32 0, %32
  br label %40

40:                                               ; preds = %38, %35
  %.0 = phi i32 [ %39, %38 ], [ %32, %35 ]
  br label %41

41:                                               ; preds = %40, %17, %13
  %.1 = phi i32 [ 0, %13 ], [ 0, %17 ], [ %.0, %40 ]
  %.not5 = icmp eq %struct.precisionType* %0, null
  br i1 %.not5, label %49, label %42

42:                                               ; preds = %41
  %43 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %44 = load i16, i16* %43, align 2
  %45 = add i16 %44, -1
  store i16 %45, i16* %43, align 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %49

49:                                               ; preds = %47, %42, %41
  ret i32 %.1
}

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
