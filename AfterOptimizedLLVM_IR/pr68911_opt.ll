; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68911.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68911.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2
@a = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %39, %0
  %6 = load i32, i32* @c, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = xor i32 %9, -1
  %11 = udiv i32 %10, 7
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32, i32* @b, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i16, i16* @d, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = xor i32 %23, -1
  store i32 %24, i32* %2, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* @a, align 1
  br label %26

26:                                               ; preds = %21, %8
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32, i32* %2, align 4
  %29 = icmp ult i32 %28, 94
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  %35 = icmp ugt i32 %34, 100
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  br label %27, !llvm.loop !4

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* @c, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @c, align 4
  br label %5, !llvm.loop !6

42:                                               ; preds = %5
  ret i32 0

43:                                               ; preds = %36
  call void @abort() #2
  unreachable
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
