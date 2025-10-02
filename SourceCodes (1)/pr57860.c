; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57860.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %32, %1
  br label %4

4:                                                ; preds = %8, %3
  %5 = load i32, i32* @c, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7
  %9 = load i32, i32* @c, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @c, align 4
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* @a, align 4
  %15 = sext i32 %14 to i64
  %16 = xor i64 8589934591, %15
  %17 = load i32*, i32** @b, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %16, %19
  %21 = icmp sgt i64 %13, %20
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** @h, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @f, align 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @g, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* @k, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  ret i32 0

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @g, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @g, align 4
  br label %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i32 noundef 1)
  %3 = load i32, i32* @d, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
