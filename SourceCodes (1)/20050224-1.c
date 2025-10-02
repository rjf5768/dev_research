; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050224-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050224-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i64 3221225472, align 8
@b = dso_local global i64 3489660928, align 8
@c = dso_local global i64 3223042392, align 8
@d = dso_local global i64 3223732224, align 8
@e = dso_local global i64 3223879680, align 8
@f = dso_local global i64 3224191864, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 245
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 36
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 444
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @a, align 8
  store i64 %6, i64* %2, align 8
  br label %7

7:                                                ; preds = %39, %0
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @b, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @c, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %11
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @d, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @e, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %22, %18
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @f, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %2, align 8
  %41 = add i64 %40, 4096
  store i64 %41, i64* %2, align 8
  br label %7, !llvm.loop !4

42:                                               ; preds = %7
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %3, align 4
  call void @foo(i32 noundef %43, i32 noundef %44, i32 noundef %45)
  ret i32 0
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
