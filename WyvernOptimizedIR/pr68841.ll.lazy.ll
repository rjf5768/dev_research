; ModuleID = './pr68841.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68841.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %26, %0
  %storemerge = phi i32 [ 1, %0 ], [ %28, %26 ]
  store i32 %storemerge, i32* %1, align 4
  %3 = icmp slt i32 %storemerge, 17
  br i1 %3, label %4, label %29

4:                                                ; preds = %2
  %5 = call i32 @foo(i32* noundef nonnull %1, i32 noundef 7)
  %6 = load i32, i32* %1, align 4
  %7 = icmp sgt i32 %6, 6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  br label %23

10:                                               ; preds = %4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = shl i32 %14, 1
  br label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %19
  %.0 = phi i32 [ 12, %19 ], [ 8, %20 ]
  br label %22

22:                                               ; preds = %21, %13
  %.1 = phi i32 [ %15, %13 ], [ %.0, %21 ]
  br label %23

23:                                               ; preds = %22, %8
  %.2 = phi i32 [ %9, %8 ], [ %.1, %22 ]
  %.not = icmp eq i32 %5, %.2
  br i1 %.not, label %25, label %24

24:                                               ; preds = %23
  call void @abort() #3
  unreachable

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  br label %2, !llvm.loop !4

29:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @foo(i32* nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = load i32, i32* %0, align 4
  br label %4

4:                                                ; preds = %6, %2
  %.0 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = shl nsw i32 %.0, 1
  br label %4, !llvm.loop !6

8:                                                ; preds = %4
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
