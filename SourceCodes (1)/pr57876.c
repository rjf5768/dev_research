; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57876.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57876.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32* @c, align 8
@f = dso_local global i32 0, align 4
@e = internal global i32 0, align 4
@j = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@g = dso_local global i32* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %34, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load i32, i32* @b, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  store i32 0, i32* @f, align 4
  br label %12

12:                                               ; preds = %30, %9
  %13 = load i32, i32* @f, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  store i32* @e, i32** %5, align 8
  %16 = load i32*, i32** @d, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* @j, align 4
  %18 = load i32, i32* @a, align 4
  %19 = load i32, i32* @j, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* @h, align 4
  %22 = load i32, i32* @h, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = icmp slt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32* %4, i32** @g, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @f, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @f, align 4
  br label %12, !llvm.loop !4

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %6, !llvm.loop !6

37:                                               ; preds = %6
  %38 = load i32, i32* @e, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
