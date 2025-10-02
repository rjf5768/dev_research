; ModuleID = './pr68624.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68624.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @fn1()
  %2 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %2, -4
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @fn1() #2 {
  %1 = load i32, i32* @h, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %33

3:                                                ; preds = %0
  %4 = load i32, i32* @c, align 4
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %5, label %8

5:                                                ; preds = %3
  %6 = load i32, i32* @b, align 4
  %7 = icmp ne i32 %6, 0
  %phi.cast = zext i1 %7 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 1, %3 ], [ %phi.cast, %5 ]
  %10 = load i32, i32* @e, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* @g, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @f, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %17, label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* @b, align 4
  %.not5 = icmp eq i32 %15, 0
  br i1 %.not5, label %17, label %16

16:                                               ; preds = %14
  br label %33

17:                                               ; preds = %14, %12
  %18 = load i32, i32* @d, align 4
  store i32 %18, i32* @e, align 4
  br label %19

19:                                               ; preds = %22, %17
  %storemerge = phi i32 [ 0, %17 ], [ %24, %22 ]
  store i32 %storemerge, i32* @c, align 4
  %20 = icmp sgt i32 %storemerge, -4
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @c, align 4
  %24 = add nsw i32 %23, -1
  br label %19, !llvm.loop !4

25:                                               ; preds = %19
  %26 = load i32, i32* @d, align 4
  %.not4 = icmp eq i32 %26, 0
  br i1 %.not4, label %30, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* @c, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @c, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* @c, align 4
  store i32 %31, i32* @j, align 4
  %32 = load i32, i32* @d, align 4
  br label %33

33:                                               ; preds = %30, %16, %2
  %.0 = phi i32 [ 9, %2 ], [ 9, %16 ], [ %32, %30 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
