; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69097-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr69097-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @b, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @a, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @b, align 4
  %9 = or i32 %7, %8
  %10 = add nsw i32 %5, %9
  %11 = xor i32 %10, -1
  store i32 %11, i32* @b, align 4
  %12 = load i32, i32* @c, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @b, align 4
  %15 = lshr i32 %13, %14
  %16 = xor i32 %15, -1
  store i32 %16, i32* @a, align 4
  %17 = load i32, i32* @a, align 4
  %18 = load i32, i32* @b, align 4
  %19 = srem i32 %17, %18
  store i32 %19, i32* @c, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
