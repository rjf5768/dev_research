; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63659.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63659.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@d = dso_local global i32* @b, align 8
@a = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@f = dso_local global i8 0, align 1
@e = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %28, %0
  %6 = load i32, i32* @a, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  store i32 0, i32* @a, align 4
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* @a, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* @c, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @c, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @c, align 4
  br label %13, !llvm.loop !4

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @a, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @a, align 4
  br label %9, !llvm.loop !6

24:                                               ; preds = %9
  %25 = load i32, i32* @i, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  br label %5, !llvm.loop !7

29:                                               ; preds = %27, %5
  %30 = load i32, i32* @c, align 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %2, align 1
  store i8 -1, i8* %3, align 1
  %32 = load i8, i8* %2, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* @h, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* @g, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %4, align 1
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i8, i8* %3, align 1
  %42 = sext i8 %41 to i32
  br label %49

43:                                               ; preds = %29
  %44 = load i8, i8* %3, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %4, align 1
  %47 = sext i8 %46 to i32
  %48 = srem i32 %45, %47
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i32 [ %42, %40 ], [ %48, %43 ]
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* @f, align 1
  %52 = load i8, i8* @f, align 1
  %53 = sext i8 %52 to i32
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* @e, align 1
  %55 = load i8, i8* @e, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32*, i32** @d, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @b, align 4
  %59 = icmp ne i32 %58, 255
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  call void @abort() #2
  unreachable

61:                                               ; preds = %49
  ret i32 0
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
!7 = distinct !{!7, !5}
