; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53160.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@e = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i8 0, align 1
@i = dso_local global i16 0, align 2
@h = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  store i32 0, i32* @e, align 4
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i32, i32* @e, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4
  %6 = load i32, i32* @e, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @e, align 4
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @g, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @b, align 4
  br label %8

8:                                                ; preds = %6, %0
  call void @foo()
  store i32 0, i32* @d, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i32, i32* @d, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load volatile i8, i8* @f, align 1
  %14 = sext i8 %13 to i16
  store i16 %14, i16* %2, align 2
  store i32 0, i32* %3, align 4
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i16, i16* %2, align 2
  %20 = sext i16 %19 to i32
  br label %26

21:                                               ; preds = %12
  %22 = load i16, i16* %2, align 2
  %23 = sext i16 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %23, %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* @i, align 2
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @d, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @d, align 4
  br label %9, !llvm.loop !6

32:                                               ; preds = %9
  %33 = load i32, i32* @c, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %39

36:                                               ; preds = %32
  %37 = load i16, i16* @i, align 2
  %38 = sext i16 %37 to i32
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  %41 = sext i32 %40 to i64
  store i64 %41, i64* @h, align 8
  %42 = load i64, i64* @h, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @a, align 4
  %44 = load i32, i32* @a, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  call void @abort() #2
  unreachable

47:                                               ; preds = %39
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
