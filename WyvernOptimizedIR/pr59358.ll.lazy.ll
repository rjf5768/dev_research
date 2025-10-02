; ModuleID = './pr59358.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @foo(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, i32* %0, align 4
  %4 = icmp slt i32 %3, %1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 17
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %10, %7
  %.0 = phi i32 [ %3, %7 ], [ %11, %10 ]
  %9 = icmp slt i32 %.0, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = shl nsw i32 %.0, 1
  br label %8, !llvm.loop !4

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %5, %2
  %.1 = phi i32 [ %.0, %12 ], [ %3, %5 ], [ %3, %2 ]
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %54, %0
  %storemerge = phi i32 [ 1, %0 ], [ %56, %54 ]
  store i32 %storemerge, i32* %1, align 4
  %3 = icmp slt i32 %storemerge, 17
  br i1 %3, label %4, label %57

4:                                                ; preds = %2
  %5 = call i32 @foo(i32* noundef nonnull %1, i32 noundef 16)
  %6 = load i32, i32* %1, align 4
  %7 = icmp sgt i32 %6, 7
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 %12, 1
  br label %30

14:                                               ; preds = %8, %4
  %15 = load i32, i32* %1, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = shl i32 %21, 2
  br label %29

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %26
  %.0 = phi i32 [ 24, %26 ], [ 16, %27 ]
  br label %29

29:                                               ; preds = %28, %20
  %.1 = phi i32 [ %22, %20 ], [ %.0, %28 ]
  br label %30

30:                                               ; preds = %29, %11
  %.2 = phi i32 [ %13, %11 ], [ %.1, %29 ]
  %.not = icmp eq i32 %5, %.2
  br i1 %.not, label %32, label %31

31:                                               ; preds = %30
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %30
  %33 = call i32 @foo(i32* noundef nonnull %1, i32 noundef 7)
  %34 = load i32, i32* %1, align 4
  %35 = icmp sgt i32 %34, 6
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %1, align 4
  br label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %1, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %1, align 4
  %43 = shl i32 %42, 1
  br label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %1, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %49

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %47
  %.3 = phi i32 [ 12, %47 ], [ 8, %48 ]
  br label %50

50:                                               ; preds = %49, %41
  %.4 = phi i32 [ %43, %41 ], [ %.3, %49 ]
  br label %51

51:                                               ; preds = %50, %36
  %.5 = phi i32 [ %37, %36 ], [ %.4, %50 ]
  %.not1 = icmp eq i32 %33, %.5
  br i1 %.not1, label %53, label %52

52:                                               ; preds = %51
  call void @abort() #3
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  br label %2, !llvm.loop !6

57:                                               ; preds = %2
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %52, %31
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
