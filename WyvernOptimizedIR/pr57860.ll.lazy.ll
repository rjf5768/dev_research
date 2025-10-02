; ModuleID = './pr57860.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57860.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32* @a, align 8
@e = dso_local global i32 0, align 4
@f = dso_local global i32* @e, align 8
@d = dso_local global i32 0, align 4
@h = dso_local global i32* @d, align 8
@k = dso_local global [1 x i32] [i32 1], align 4
@c = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  br label %3

3:                                                ; preds = %28, %1
  br label %4

4:                                                ; preds = %7, %3
  %5 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = load i32, i32* @c, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @c, align 4
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  %11 = load i32, i32* @a, align 4
  %12 = sext i32 %11 to i64
  %13 = xor i64 %12, 8589934591
  %14 = load i32*, i32** @b, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %13, %16
  %18 = icmp slt i64 %17, %2
  %19 = zext i1 %18 to i32
  %20 = load i32*, i32** @h, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** @f, align 8
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @g, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* @k, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %.not1 = icmp eq i32 %25, 0
  br i1 %.not1, label %27, label %26

26:                                               ; preds = %10
  ret i32 0

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @g, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @g, align 4
  br label %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(i32 noundef 1)
  %2 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
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
