; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70586.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@c = dso_local global i16 0, align 2
@d = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %3, align 4
  br label %19

15:                                               ; preds = %10, %7
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %16, %17
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call signext i16 @bar()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @bar() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i16, i16* @c, align 2
  %6 = sext i16 %5 to i32
  %7 = load i32, i32* @f, align 4
  %8 = call i32 @foo(i32 noundef %6, i32 noundef %7)
  store i32 %8, i32* %2, align 4
  %9 = load i16, i16* @d, align 2
  %10 = sext i16 %9 to i32
  %11 = call i32 @foo(i32 noundef %10, i32 noundef 2)
  store i32 %11, i32* @f, align 4
  %12 = load i16, i16* @b, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @c, align 2
  %15 = sext i16 %14 to i32
  %16 = call i32 @foo(i32 noundef %13, i32 noundef %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i16, i16* @c, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 @foo(i32 noundef %19, i32 noundef %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 3, %23
  %25 = zext i1 %24 to i32
  %26 = xor i32 %25, 7
  %27 = load i32, i32* %2, align 4
  %28 = load i16, i16* @c, align 2
  %29 = sext i16 %28 to i32
  %30 = call i32 @foo(i32 noundef %27, i32 noundef %29)
  %31 = icmp sle i32 %26, %30
  %32 = zext i1 %31 to i32
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* @c, align 2
  %34 = load i32, i32* @e, align 4
  %35 = call i32 @foo(i32 noundef %34, i32 noundef 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %0
  %38 = load i32, i32* @a, align 4
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %1, align 2
  br label %41

40:                                               ; preds = %0
  store i16 0, i16* %1, align 2
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i16, i16* %1, align 2
  ret i16 %42
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
