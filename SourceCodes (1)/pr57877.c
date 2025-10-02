; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57877.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57877.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@c = dso_local global i32* @b, align 8
@f = dso_local global i32 6, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @f, align 4
  %3 = sext i32 %2 to i64
  %4 = call zeroext i8 @foo(i64 noundef %3, i32* noundef @a)
  %5 = load i32, i32* @e, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @foo(i64 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* @g, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  store i16* @d, i16** %5, align 8
  store i32* @e, i32** %6, align 8
  %11 = load i32*, i32** @c, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @h, align 4
  %13 = load i32, i32* @h, align 4
  %14 = trunc i32 %13 to i16
  %15 = load i16*, i16** %5, align 8
  store i16 %14, i16* %15, align 2
  %16 = load i16*, i16** %5, align 8
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %3, align 8
  %25 = icmp ult i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %10
  %29 = load i32, i32* @g, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @g, align 4
  br label %7, !llvm.loop !4

31:                                               ; preds = %7
  ret i8 0
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
