; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68249.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68249.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@l = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@h = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1() #0 {
  br label %1

1:                                                ; preds = %42, %0
  %2 = load i32, i32* @k, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %45

4:                                                ; preds = %1
  %5 = load i32, i32* @b, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @c, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @c, align 4
  %12 = icmp sgt i32 %11, 1
  br label %13

13:                                               ; preds = %10, %7, %4
  %14 = phi i1 [ true, %7 ], [ true, %4 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  br i1 %14, label %16, label %17

16:                                               ; preds = %13
  br label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @c, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ %15, %16 ], [ %18, %17 ]
  store i32 %20, i32* @m, align 4
  %21 = load i32, i32* @n, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @m, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @m, align 4
  %28 = icmp sgt i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @m, align 4
  %31 = ashr i32 1, %30
  %32 = icmp sgt i32 %29, %31
  br label %33

33:                                               ; preds = %26, %23, %19
  %34 = phi i1 [ true, %23 ], [ true, %19 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  br i1 %34, label %36, label %37

36:                                               ; preds = %33
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @m, align 4
  %39 = shl i32 1, %38
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ %35, %36 ], [ %39, %37 ]
  store i32 %41, i32* @l, align 4
  store i32 %41, i32* @g, align 4
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* @k, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @k, align 4
  br label %1, !llvm.loop !4

45:                                               ; preds = %1
  %46 = load i32, i32* @b, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @l, align 4
  br label %48

48:                                               ; preds = %55, %45
  %49 = load i32, i32* @b, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @a, align 4
  %53 = add nsw i32 %52, 1
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* @h, align 1
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @b, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @b, align 4
  br label %48, !llvm.loop !6

58:                                               ; preds = %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* @a, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  call void @fn1()
  %7 = load i8, i8* @h, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i8, i8* @h, align 1
  store i8 %10, i8* %2, align 1
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8, i8* %2, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* @c, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* @g, align 4
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @a, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @a, align 4
  br label %3, !llvm.loop !7

21:                                               ; preds = %3
  %22 = load i8, i8* @h, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @abort() #2
  unreachable

26:                                               ; preds = %21
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
