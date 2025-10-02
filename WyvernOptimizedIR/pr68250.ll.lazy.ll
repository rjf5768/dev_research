; ModuleID = './pr68250.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i8 0, align 1
@a = dso_local global i8 0, align 1
@o = dso_local global i8 0, align 1
@d = dso_local global i16 0, align 2
@n = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@m = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4
@l = dso_local global i8 0, align 1
@h = dso_local global i8 0, align 1
@k = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4
@q = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fn1() #0 {
  %1 = load i8, i8* @b, align 1
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %2, label %5

2:                                                ; preds = %0
  %3 = load i8, i8* @a, align 1
  %4 = icmp ne i8 %3, 0
  %phi.cast = zext i1 %4 to i32
  br label %5

5:                                                ; preds = %2, %0
  %6 = phi i32 [ 1, %0 ], [ %phi.cast, %2 ]
  %7 = load i8, i8* @o, align 1
  %8 = icmp sgt i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i16, i16* @d, align 2
  %11 = sext i16 %10 to i32
  %12 = load i8, i8* @o, align 1
  %13 = zext i8 %12 to i32
  %14 = lshr i32 1, %13
  %15 = icmp slt i32 %14, %11
  br i1 %15, label %16, label %19

16:                                               ; preds = %9, %5
  %17 = load i16, i16* @d, align 2
  %18 = sext i16 %17 to i32
  br label %25

19:                                               ; preds = %9
  %20 = load i16, i16* @d, align 2
  %21 = sext i16 %20 to i32
  %22 = load i8, i8* @o, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* @n, align 2
  br label %28

28:                                               ; preds = %43, %25
  %29 = load i32, i32* @j, align 4
  %.not1 = icmp eq i32 %29, 0
  br i1 %.not1, label %46, label %30

30:                                               ; preds = %28
  %31 = load i16, i16* @c, align 2
  %32 = icmp slt i16 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i8, i8* @m, align 1
  %.not2 = icmp eq i8 %34, 0
  br i1 %.not2, label %35, label %40

35:                                               ; preds = %33
  %36 = load i16, i16* @c, align 2
  %37 = sext i16 %36 to i32
  %38 = shl i32 %37, %6
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %33, %30
  %41 = phi i1 [ true, %33 ], [ true, %30 ], [ %39, %35 ]
  %42 = zext i1 %41 to i8
  store i8 %42, i8* @m, align 1
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @j, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @j, align 4
  br label %28, !llvm.loop !4

46:                                               ; preds = %28
  %47 = load i32, i32* @f, align 4
  %48 = trunc i32 %47 to i8
  %49 = add i8 %48, 1
  store i8 %49, i8* @l, align 1
  br label %50

50:                                               ; preds = %56, %46
  %51 = load i32, i32* @f, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8, i8* @h, align 1
  %55 = add i8 %54, 1
  store i8 %55, i8* @k, align 1
  br label %56

56:                                               ; preds = %53
  store i32 1, i32* @f, align 4
  br label %50, !llvm.loop !6

57:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2(i32 noundef %0) #1 {
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #3
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %14, %0
  %.0 = phi i8 [ undef, %0 ], [ %.1, %14 ]
  %2 = load i32, i32* @e, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  call void @fn1()
  %5 = load i8, i8* @k, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = load i8, i8* @k, align 1
  br label %8

8:                                                ; preds = %6, %4
  %.1 = phi i8 [ %7, %6 ], [ %.0, %4 ]
  %9 = sext i8 %.1 to i32
  %10 = load i32, i32* @q, align 4
  %11 = icmp slt i32 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* @g, align 4
  br label %13

13:                                               ; preds = %12, %8
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @e, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @e, align 4
  br label %1, !llvm.loop !7

17:                                               ; preds = %1
  %18 = load i8, i8* @k, align 1
  %19 = sext i8 %18 to i32
  call void @fn2(i32 noundef %19)
  ret i32 0
}

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
