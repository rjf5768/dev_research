; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000412-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %45, %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp sle i32 %27, 2
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  call void @abort() #2
  unreachable

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %26, !llvm.loop !4

48:                                               ; preds = %26
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %54, %48
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %50, !llvm.loop !6

57:                                               ; preds = %50
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* %7, align 4
  call void @f(i32 noundef %13, i32 noundef 1, i32 noundef %14, i32 noundef %17, i32 noundef %18)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %9, !llvm.loop !7

22:                                               ; preds = %9
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
!7 = distinct !{!7, !5}
