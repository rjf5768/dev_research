; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68624.c'
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
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fn1()
  %3 = load i32, i32* @c, align 4
  %4 = icmp ne i32 %3, -4
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fn1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @c, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @h, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 9, i32* %1, align 4
  br label %45

7:                                                ; preds = %0
  %8 = load i32, i32* @c, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @b, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ true, %7 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @e, align 4
  %17 = srem i32 %15, %16
  store i32 %17, i32* @g, align 4
  %18 = load i32, i32* @g, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @f, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @b, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 9, i32* %1, align 4
  br label %45

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @d, align 4
  store i32 %28, i32* @e, align 4
  store i32 0, i32* @c, align 4
  br label %29

29:                                               ; preds = %33, %27
  %30 = load i32, i32* @c, align 4
  %31 = icmp sgt i32 %30, -4
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @c, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @c, align 4
  br label %29, !llvm.loop !4

36:                                               ; preds = %29
  %37 = load i32, i32* @d, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @c, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @c, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @c, align 4
  store i32 %43, i32* @j, align 4
  %44 = load i32, i32* @d, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %42, %26, %6
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
