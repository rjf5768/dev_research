; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58640.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58640.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call signext i8 @foo()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @foo() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @a, align 4
  store i32 %4, i32* %3, align 4
  store i32 1, i32* %2, align 4
  br label %5

5:                                                ; preds = %55, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %58

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %51, %8
  %10 = load i32, i32* @b, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load i32, i32* @d, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  store i32 0, i32* @c, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* @c, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  store i32 0, i32* @e, align 4
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i32, i32* @e, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* @a, align 4
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* @e, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @e, align 4
  br label %24, !llvm.loop !4

32:                                               ; preds = %24
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %40

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %20, !llvm.loop !6

40:                                               ; preds = %35, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* @c, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @c, align 4
  br label %16, !llvm.loop !7

44:                                               ; preds = %16
  br label %50

45:                                               ; preds = %12
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %51

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %44
  store i8 0, i8* %1, align 1
  br label %59

51:                                               ; preds = %48
  %52 = load i32, i32* @b, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @b, align 4
  br label %9, !llvm.loop !8

54:                                               ; preds = %9
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %5, !llvm.loop !9

58:                                               ; preds = %5
  store i8 0, i8* %1, align 1
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i8, i8* %1, align 1
  ret i8 %60
}

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
