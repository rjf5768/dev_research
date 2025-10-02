; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85582-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 2, align 4
@c = dso_local global i64 1, align 8
@e = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 6, i32* %2, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* @d, align 4
  store i32 %5, i32* @e, align 4
  %6 = load i32, i32* @a, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %4

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %2, align 4
  %12 = load i64, i64* @c, align 8
  %13 = load i32, i32* @e, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %2, align 4
  %16 = xor i32 %15, -1
  %17 = or i32 %14, %16
  %18 = xor i32 %17, -1
  %19 = zext i32 %18 to i64
  %20 = ashr i64 %12, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %32, %9
  %23 = load i32, i32* @b, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @c, align 8
  %26 = srem i64 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %26, %28
  store i64 %29, i64* @c, align 8
  %30 = load i32, i32* @e, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %22

33:                                               ; preds = %22
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
