; ModuleID = './pr70586.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@c = dso_local global i16 0, align 2
@d = dso_local global i16 0, align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %4
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %2
  br label %10

8:                                                ; preds = %5, %4
  %9 = srem i32 %0, %1
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i32 [ %0, %7 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @main() #1 {
  %1 = call signext i16 @bar()
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal signext i16 @bar() #1 {
  %1 = load i16, i16* @c, align 2
  %2 = sext i16 %1 to i32
  %3 = load i32, i32* @f, align 4
  %4 = call i32 @foo(i32 noundef %2, i32 noundef %3)
  %5 = load i16, i16* @d, align 2
  %6 = sext i16 %5 to i32
  %7 = call i32 @foo(i32 noundef %6, i32 noundef 2)
  store i32 %7, i32* @f, align 4
  %8 = load i16, i16* @b, align 2
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* @c, align 2
  %11 = sext i16 %10 to i32
  %12 = call i32 @foo(i32 noundef %9, i32 noundef %11)
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sext i16 %10 to i32
  %16 = call i32 @foo(i32 noundef %14, i32 noundef %15)
  %17 = icmp slt i32 %16, 4
  %18 = zext i1 %17 to i32
  %19 = xor i32 %18, 7
  %20 = load i16, i16* @c, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 @foo(i32 noundef %4, i32 noundef %21)
  %23 = icmp sle i32 %19, %22
  %24 = zext i1 %23 to i16
  store i16 %24, i16* @c, align 2
  %25 = load i32, i32* @e, align 4
  %26 = call i32 @foo(i32 noundef %25, i32 noundef 1)
  %.not = icmp eq i32 %26, 0
  br i1 %.not, label %30, label %27

27:                                               ; preds = %0
  %28 = load i32, i32* @a, align 4
  %29 = trunc i32 %28 to i16
  br label %31

30:                                               ; preds = %0
  br label %31

31:                                               ; preds = %30, %27
  %.0 = phi i16 [ %29, %27 ], [ 0, %30 ]
  ret i16 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
