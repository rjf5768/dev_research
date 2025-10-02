; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990127-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990127-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 10, i32* %2, align 4
  store i32 20, i32* %3, align 4
  store i32 30, i32* %4, align 4
  store i32* %2, i32** %5, align 8
  store i32* %3, i32** %6, align 8
  store i32* %4, i32** %7, align 8
  store i32** %5, i32*** %8, align 8
  store i32** %6, i32*** %9, align 8
  store i32** %7, i32*** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %43, %0
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, %2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32* %3, i32** %5, align 8
  br label %25

24:                                               ; preds = %20
  store i32* %2, i32** %5, align 8
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %40

38:                                               ; preds = %31
  store i32* %3, i32** %5, align 8
  br label %39

39:                                               ; preds = %38
  br label %26, !llvm.loop !4

40:                                               ; preds = %37, %26
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  store i32* %3, i32** %5, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %17, !llvm.loop !6

46:                                               ; preds = %17
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -5
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -5
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 43
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %50, %46
  call void @abort() #2
  unreachable

58:                                               ; preds = %54
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
