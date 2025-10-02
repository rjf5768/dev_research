; ModuleID = './20120427-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20120427-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@a = dso_local global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @sreal_compare(%struct.sreal* nocapture noundef readonly %0, %struct.sreal* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sreal, %struct.sreal* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.sreal, %struct.sreal* %1, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sreal, %struct.sreal* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sreal, %struct.sreal* %1, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %31

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.sreal, %struct.sreal* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sreal, %struct.sreal* %1, i64 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.sreal, %struct.sreal* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.sreal, %struct.sreal* %1, i64 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %29, %22, %15, %8
  %.0 = phi i32 [ 1, %8 ], [ -1, %15 ], [ 1, %22 ], [ -1, %29 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %37, %0
  %.01 = phi i32 [ 0, %0 ], [ %38, %37 ]
  %2 = icmp ult i32 %.01, 4
  br i1 %2, label %3, label %39

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %34, %3
  %.0 = phi i32 [ 0, %3 ], [ %35, %34 ]
  %5 = icmp ult i32 %.0, 3
  br i1 %5, label %6, label %36

6:                                                ; preds = %4
  %7 = icmp ult i32 %.01, %.0
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %9
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %11
  %13 = call i32 @sreal_compare(%struct.sreal* noundef nonnull %10, %struct.sreal* noundef nonnull %12)
  %.not3 = icmp eq i32 %13, -1
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %8, %6
  %16 = icmp eq i32 %.01, %.0
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = zext i32 %.01 to i64
  %19 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %18
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %20
  %22 = call i32 @sreal_compare(%struct.sreal* noundef nonnull %19, %struct.sreal* noundef nonnull %21)
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %24, label %23

23:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %17, %15
  %25 = icmp ugt i32 %.01, %.0
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %27
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [4 x %struct.sreal], [4 x %struct.sreal]* @a, i64 0, i64 %29
  %31 = call i32 @sreal_compare(%struct.sreal* noundef nonnull %28, %struct.sreal* noundef nonnull %30)
  %.not = icmp eq i32 %31, 1
  br i1 %.not, label %33, label %32

32:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %26, %24
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

39:                                               ; preds = %1
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %32, %23, %14
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
