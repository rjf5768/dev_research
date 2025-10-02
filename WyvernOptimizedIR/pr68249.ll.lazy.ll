; ModuleID = './pr68249.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fn1() #0 {
  br label %1

1:                                                ; preds = %38, %0
  %2 = load i32, i32* @k, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %41, label %3

3:                                                ; preds = %1
  %4 = load i32, i32* @b, align 4
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %5, label %11

5:                                                ; preds = %3
  %6 = load i32, i32* @c, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @c, align 4
  %10 = icmp sgt i32 %9, 1
  br label %11

11:                                               ; preds = %8, %5, %3
  %12 = phi i1 [ true, %5 ], [ true, %3 ], [ %10, %8 ]
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = zext i1 %12 to i32
  br label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @c, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* @m, align 4
  %19 = load i32, i32* @n, align 4
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* @m, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @m, align 4
  %25 = icmp sgt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = lshr i32 1, %24
  %28 = icmp ult i32 %27, %26
  br label %29

29:                                               ; preds = %23, %20, %17
  %30 = phi i1 [ true, %20 ], [ true, %17 ], [ %28, %23 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = zext i1 %30 to i32
  br label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @m, align 4
  %35 = shl i32 1, %34
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  store i32 %37, i32* @l, align 4
  store i32 %37, i32* @g, align 4
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* @k, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @k, align 4
  br label %1, !llvm.loop !4

41:                                               ; preds = %1
  %42 = load i32, i32* @b, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @l, align 4
  br label %44

44:                                               ; preds = %51, %41
  %45 = load i32, i32* @b, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @a, align 4
  %49 = trunc i32 %48 to i8
  %50 = add i8 %49, 1
  store i8 %50, i8* @h, align 1
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @b, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @b, align 4
  br label %44, !llvm.loop !6

54:                                               ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i8 [ undef, %0 ], [ %.1, %14 ]
  %2 = load i32, i32* @a, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  call void @fn1()
  %5 = load i8, i8* @h, align 1
  %.not1 = icmp eq i8 %5, 0
  br i1 %.not1, label %8, label %6

6:                                                ; preds = %4
  %7 = load i8, i8* @h, align 1
  br label %8

8:                                                ; preds = %6, %4
  %.1 = phi i8 [ %7, %6 ], [ %.0, %4 ]
  %9 = sext i8 %.1 to i32
  %10 = load i32, i32* @c, align 4
  %11 = icmp slt i32 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* @g, align 4
  br label %13

13:                                               ; preds = %12, %8
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @a, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @a, align 4
  br label %1, !llvm.loop !7

17:                                               ; preds = %1
  %18 = load i8, i8* @h, align 1
  %.not = icmp eq i8 %18, 1
  br i1 %.not, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #3
  unreachable

20:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
