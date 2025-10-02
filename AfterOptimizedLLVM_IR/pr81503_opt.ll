; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81503.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81503.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i16 -24075, align 2
@b = dso_local global i16 3419, align 2
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i16, i16* @a, align 2
  %2 = zext i16 %1 to i32
  %3 = load i16, i16* @b, align 2
  %4 = zext i16 %3 to i32
  %5 = mul nsw i32 %4, -2
  %6 = add nsw i32 %2, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i16, i16* @b, align 2
  %10 = zext i16 %9 to i32
  %11 = mul nsw i32 %10, -2
  %12 = xor i32 %11, -1
  %13 = sub nsw i32 0, %12
  %14 = add nsw i32 %13, 2147483647
  store i32 %14, i32* @c, align 4
  br label %15

15:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i32, i32* @c, align 4
  %3 = icmp ne i32 %2, 2147476810
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* %1, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
