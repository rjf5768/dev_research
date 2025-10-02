; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57281.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32* @d, align 8
@c = dso_local global i64 0, align 8
@g = dso_local global i64* @c, align 8
@b = dso_local global i32 0, align 4
@f = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @b, align 4
  %5 = sext i32 %4 to i64
  %6 = load i64*, i64** @g, align 8
  store i64 %5, i64* %6, align 8
  %7 = trunc i64 %5 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @a, align 4
  store i32 %3, i32* %2, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* @b, align 4
  %6 = icmp ne i32 %5, -20
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load volatile i64, i64* @f, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32*, i32** @e, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @foo(i32 noundef %11)
  %13 = load i32*, i32** @e, align 8
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* @b, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* @b, align 4
  br label %4, !llvm.loop !4

17:                                               ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
