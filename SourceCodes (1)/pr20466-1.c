; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20466-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20466-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32** noundef %0, i32* noundef %1, i32* noundef %2, i32** noundef %3, i32** noundef %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32**, i32*** %6, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32**, i32*** %10, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32**, i32*** %9, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  store i32 99, i32* %21, align 4
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 42, i32* %2, align 4
  store i32 66, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 55, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %5, i32** %8, align 8
  store i32* %6, i32** %9, align 8
  %10 = call i32 @f(i32** noundef %7, i32* noundef %3, i32* noundef %4, i32** noundef %8, i32** noundef %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 66
  br i1 %12, label %29, label %13

13:                                               ; preds = %0
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, %4
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 99
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 55
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %22, %19, %16, %13, %0
  call void @abort() #2
  unreachable

30:                                               ; preds = %26
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
