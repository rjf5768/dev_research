; ModuleID = './ptou.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/ptou.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [5 x i8] c"ptou\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ptou(%struct.precisionType* noundef %0) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %8 = load i8, i8* %7, align 2
  %.not2 = icmp eq i8 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %6
  %10 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #2
  %11 = ptrtoint %struct.precisionType* %10 to i64
  %12 = trunc i64 %11 to i32
  br label %34

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %16
  br label %18

18:                                               ; preds = %30, %13
  %.01 = phi i16* [ %17, %13 ], [ %19, %30 ]
  %.0 = phi i32 [ 0, %13 ], [ %29, %30 ]
  %19 = getelementptr inbounds i16, i16* %.01, i64 -1
  %20 = icmp ugt i32 %.0, 65535
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call %struct.precisionType* @errorp(i32 noundef 5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #2
  %23 = ptrtoint %struct.precisionType* %22 to i64
  %24 = trunc i64 %23 to i32
  br label %33

25:                                               ; preds = %18
  %26 = shl i32 %.0, 16
  %27 = load i16, i16* %19, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %26, %28
  br label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %32 = icmp ugt i16* %19, %31
  br i1 %32, label %18, label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %30
  br label %33

33:                                               ; preds = %.loopexit, %21
  %.1 = phi i32 [ %24, %21 ], [ %29, %.loopexit ]
  br label %34

34:                                               ; preds = %33, %9
  %.2 = phi i32 [ %12, %9 ], [ %.1, %33 ]
  %.not3 = icmp eq %struct.precisionType* %0, null
  br i1 %.not3, label %42, label %35

35:                                               ; preds = %34
  %36 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %37 = load i16, i16* %36, align 2
  %38 = add i16 %37, -1
  store i16 %38, i16* %36, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %42

42:                                               ; preds = %40, %35, %34
  ret i32 %.2
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
