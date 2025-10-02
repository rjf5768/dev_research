; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57861.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr57861.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i16 1, align 2
@b = dso_local global i32 0, align 4
@g = dso_local global i32* @b, align 8
@f = dso_local global i16 0, align 2
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i16, i16* @a, align 2
  %3 = trunc i16 %2 to i8
  %4 = call i32 @foo(i8 noundef signext %3)
  %5 = load i32*, i32** @g, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i16, i16* @a, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  store i8 %0, i8* %2, align 1
  store i32 0, i32* @c, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* @c, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %38

8:                                                ; preds = %5
  store i32 0, i32* @j, align 4
  br i1 false, label %13, label %9

9:                                                ; preds = %8
  %10 = load i8, i8* %2, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %8
  %14 = phi i1 [ true, %8 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @i, align 4
  %16 = load i32, i32* @i, align 4
  %17 = load i8, i8* %2, align 1
  %18 = sext i8 %17 to i32
  %19 = mul nsw i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @e, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  store i16* @f, i16** %4, align 8
  %24 = load i32, i32* @d, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @h, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* @a, align 2
  %33 = load i16*, i16** %4, align 8
  store i16 0, i16* %33, align 2
  br label %34

34:                                               ; preds = %29, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @c, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @c, align 4
  br label %5, !llvm.loop !4

38:                                               ; preds = %5
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
