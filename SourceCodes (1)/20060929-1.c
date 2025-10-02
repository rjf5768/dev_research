; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060929-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060929-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32**, i32*** %3, align 8
  %9 = getelementptr inbounds i32*, i32** %8, i32 1
  store i32** %9, i32*** %3, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %8, align 8
  store i32 %7, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32 %7, i32* %9, align 4
  %10 = load i32**, i32*** %3, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %11, i32*** %3, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i32** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32 %7, i32* %9, align 4
  %10 = load i32**, i32*** %3, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i32 1
  store i32** %11, i32*** %3, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 42, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* %2, i32** %4, align 8
  call void @foo(i32** noundef %4, i32* noundef %3)
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 -1
  %7 = icmp ne i32* %6, %2
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8, %0
  call void @abort() #2
  unreachable

15:                                               ; preds = %11
  store i32 43, i32* %2, align 4
  store i32* %2, i32** %4, align 8
  call void @bar(i32** noundef %4, i32* noundef %3)
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 -1
  %18 = icmp ne i32* %17, %2
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %15
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  store i32 44, i32* %2, align 4
  store i32* %2, i32** %4, align 8
  call void @baz(i32** noundef %4, i32* noundef %3)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 -1
  %29 = icmp ne i32* %28, %2
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %30, %26
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
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
