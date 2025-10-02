; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr62151.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr62151.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
  %1 = alloca [2 x i32], align 4
  store i16 0, i16* @b, align 2
  br label %2

2:                                                ; preds = %52, %0
  %3 = load i32, i32* @f, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @h, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* @d, align 4
  br label %52

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32, i32* @f, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @f, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @f, align 4
  br label %10, !llvm.loop !4

17:                                               ; preds = %10
  store i32 0, i32* @a, align 4
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i32, i32* @a, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21
  %23 = load i16, i16* @b, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @b, align 2
  %26 = sext i16 %25 to i32
  %27 = xor i32 %26, 1
  %28 = and i32 %27, 83647
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i16, i16* @b, align 2
  %33 = sext i16 %32 to i32
  br label %38

34:                                               ; preds = %22
  %35 = load i16, i16* @b, align 2
  %36 = sext i16 %35 to i32
  %37 = sub nsw i32 %36, 1
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  store i32 %39, i32* @i, align 4
  %40 = load i32, i32* @i, align 4
  store i32 %40, i32* @g, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @e, align 4
  %43 = load i32, i32* @c, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %47

46:                                               ; preds = %38
  ret i32 0

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @a, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @a, align 4
  br label %18, !llvm.loop !6

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51, %8
  br label %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fn1()
  %3 = load i32, i32* @g, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

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
!6 = distinct !{!6, !5}
