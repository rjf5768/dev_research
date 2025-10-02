; ModuleID = './pr68185.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@w = dso_local global i32 1, align 4
@o = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@z = dso_local global i32 0, align 4
@u = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@t = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@q = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %32, %0
  %.0 = phi i8 [ undef, %0 ], [ %.1, %32 ]
  %2 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %35, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %21, %3
  %5 = load i32, i32* @o, align 4
  %.not2 = icmp eq i32 %5, 0
  br i1 %.not2, label %22, label %6

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i32, i32* @e, align 4
  %.not4 = icmp eq i32 %8, 0
  br i1 %.not4, label %21, label %9

9:                                                ; preds = %7
  %10 = load i32, i32* @b, align 4
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* @c, align 2
  %12 = load i32, i32* @z, align 4
  store i32 %12, i32* @o, align 4
  br label %13

13:                                               ; preds = %19, %9
  %14 = load i32, i32* @u, align 4
  %.not5 = icmp eq i32 %14, 0
  br i1 %.not5, label %20, label %15

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %18, %15
  %17 = load i32, i32* @a, align 4
  %.not6 = icmp eq i32 %17, 0
  br i1 %.not6, label %19, label %18

18:                                               ; preds = %16
  br label %16, !llvm.loop !4

19:                                               ; preds = %16
  br label %13, !llvm.loop !6

20:                                               ; preds = %13
  br label %7, !llvm.loop !7

21:                                               ; preds = %7
  br label %4, !llvm.loop !8

22:                                               ; preds = %4
  %23 = load i16, i16* @t, align 2
  %24 = icmp slt i16 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @w, align 4
  %27 = trunc i32 %26 to i8
  br label %28

28:                                               ; preds = %25, %22
  %.1 = phi i8 [ %27, %25 ], [ %.0, %22 ]
  %29 = sext i8 %.1 to i32
  store i32 %29, i32* @f, align 4
  %.not3 = icmp eq i8 %.1, 0
  br i1 %.not3, label %31, label %30

30:                                               ; preds = %28
  store i16 1, i16* @q, align 2
  br label %31

31:                                               ; preds = %30, %28
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @d, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @d, align 4
  br label %1, !llvm.loop !9

35:                                               ; preds = %1
  %36 = load i16, i16* @q, align 2
  %.not1 = icmp eq i16 %36, 1
  br i1 %.not1, label %38, label %37

37:                                               ; preds = %35
  call void @abort() #2
  unreachable

38:                                               ; preds = %35
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
