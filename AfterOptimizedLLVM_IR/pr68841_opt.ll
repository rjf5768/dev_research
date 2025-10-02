; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68841.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68841.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %5

5:                                                ; preds = %35, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 17
  br i1 %7, label %8, label %38

8:                                                ; preds = %5
  %9 = call i32 @foo(i32* noundef %2, i32 noundef 7)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 7
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %4, align 4
  br label %29

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %18, 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 8, %20
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 12, i32* %4, align 4
  br label %27

26:                                               ; preds = %22
  store i32 8, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %17
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @abort() #2
  unreachable

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %5, !llvm.loop !4

38:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %5, align 4
  br label %8, !llvm.loop !6

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  ret i32 %16
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
