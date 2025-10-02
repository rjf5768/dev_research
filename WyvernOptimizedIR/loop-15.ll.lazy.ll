; ModuleID = './loop-15.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(i64* noundef readnone %0, i64* noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i64* [ %1, %2 ], [ %8, %5 ]
  %4 = icmp ugt i64* %.0, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds i64, i64* %.0, i64 -1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %.0, align 8
  %8 = getelementptr inbounds i64, i64* %.0, i64 -1
  br label %3, !llvm.loop !4

9:                                                ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [5 x i64], align 16
  br label %2

2:                                                ; preds = %56, %0
  %.01 = phi i32 [ 0, %0 ], [ %57, %56 ]
  %3 = icmp ult i32 %.01, 5
  br i1 %3, label %4, label %58

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %53, %4
  %.02 = phi i32 [ 0, %4 ], [ %54, %53 ]
  %6 = icmp ult i32 %.02, 5
  br i1 %6, label %7, label %55

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %14, %7
  %.0 = phi i32 [ 0, %7 ], [ %15, %14 ]
  %9 = icmp ult i32 %.0, 5
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [5 x i64], [5 x i64]* %1, i64 0, i64 %12
  store i64 %11, i64* %13, align 8
  br label %14

14:                                               ; preds = %10
  %15 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !6

16:                                               ; preds = %8
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %1, i64 0, i64 %17
  %19 = zext i32 %.02 to i64
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %1, i64 0, i64 %19
  call void @foo(i64* noundef nonnull %18, i64* noundef nonnull %20)
  br label %21

21:                                               ; preds = %29, %16
  %.1 = phi i32 [ 0, %16 ], [ %30, %29 ]
  %.not = icmp ugt i32 %.1, %.01
  br i1 %.not, label %31, label %22

22:                                               ; preds = %21
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %1, i64 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = zext i32 %.1 to i64
  %.not6 = icmp eq i64 %25, %26
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.1, 1
  br label %21, !llvm.loop !7

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %40, %31
  %.2.in = phi i32 [ %.01, %31 ], [ %.2, %40 ]
  %.2 = add nuw nsw i32 %.2.in, 1
  %.not3.not = icmp ult i32 %.2.in, %.02
  br i1 %.not3.not, label %33, label %41

33:                                               ; preds = %32
  %34 = zext i32 %.2 to i64
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %1, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = zext i32 %.2.in to i64
  %.not5 = icmp eq i64 %36, %37
  br i1 %.not5, label %39, label %38

38:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  br label %32, !llvm.loop !8

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %51, %41
  %.3.in = phi i32 [ %.02, %41 ], [ %.3, %51 ]
  %.3 = add nuw nsw i32 %.3.in, 1
  %43 = icmp ult i32 %.3.in, 4
  br i1 %43, label %44, label %52

44:                                               ; preds = %42
  %45 = zext i32 %.3 to i64
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %1, i64 0, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = zext i32 %.3 to i64
  %.not4 = icmp eq i64 %47, %48
  br i1 %.not4, label %50, label %49

49:                                               ; preds = %44
  call void @abort() #3
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  br label %42, !llvm.loop !9

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !10

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %55
  %57 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !11

58:                                               ; preds = %2
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %49, %38, %27
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
