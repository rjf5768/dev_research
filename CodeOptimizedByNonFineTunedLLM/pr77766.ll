; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr77766.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr77766.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i16 5, align 2
@f = dso_local global i32 4, align 4
@g = dso_local global i32 0, align 4
@c = dso_local global [1 x i8] zeroinitializer, align 1
@b = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4
@h = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %41, %0
  %4 = load i32, i32* @f, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %3
  store i32 0, i32* @g, align 4
  br label %7

7:                                                ; preds = %37, %6
  %8 = load i32, i32* @g, align 4
  %9 = icmp sle i32 %8, 32
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i16, i16* @d, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i32 1, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i16, i16* @b, align 2
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* @c, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %19
  br label %15, !llvm.loop !4

27:                                               ; preds = %25, %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %11, !llvm.loop !6

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* @j, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %40

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @g, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @g, align 4
  br label %7, !llvm.loop !7

40:                                               ; preds = %35, %7
  br label %41

41:                                               ; preds = %40
  %42 = load i8, i8* @a, align 1
  %43 = sext i8 %42 to i32
  store i32 %43, i32* @f, align 4
  br label %3, !llvm.loop !8

44:                                               ; preds = %3
  store i32 0, i32* @e, align 4
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i32, i32* @e, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i16, i16* @d, align 2
  %50 = add i16 %49, 1
  store i16 %50, i16* @d, align 2
  br label %51

51:                                               ; preds = %48
  %52 = load i16, i16* @h, align 2
  %53 = icmp ne i16 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %32

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* @e, align 4
  br label %45, !llvm.loop !9

57:                                               ; preds = %45
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
