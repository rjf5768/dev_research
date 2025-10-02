; ModuleID = './pr63659.ll'
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
  br label %1

1:                                                ; preds = %19, %0
  %2 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %13, %3
  %storemerge = phi i32 [ 0, %3 ], [ %15, %13 ]
  store i32 %storemerge, i32* @a, align 4
  %.not2 = icmp eq i32 %storemerge, 0
  br i1 %.not2, label %16, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %9, %5
  %7 = load i32, i32* @c, align 4
  %.not4 = icmp eq i32 %7, 0
  br i1 %.not4, label %12, label %8

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @c, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @c, align 4
  br label %6, !llvm.loop !4

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* @a, align 4
  %15 = add nsw i32 %14, 1
  br label %4, !llvm.loop !6

16:                                               ; preds = %4
  %17 = load i32, i32* @i, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16
  br label %1, !llvm.loop !7

.loopexit:                                        ; preds = %1
  br label %20

20:                                               ; preds = %.loopexit, %18
  %21 = load i32, i32* @c, align 4
  %sext = shl i32 %21, 24
  %22 = ashr exact i32 %sext, 24
  %23 = load i32, i32* @h, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* @g, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %29

27:                                               ; preds = %20
  %28 = srem i32 -1, %24
  %phi.cast = trunc i32 %28 to i8
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i8 [ -1, %26 ], [ %phi.cast, %27 ]
  store i8 %30, i8* @f, align 1
  store i8 %30, i8* @e, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32*, i32** @d, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @b, align 4
  %.not1 = icmp eq i32 %33, 255
  br i1 %.not1, label %35, label %34

34:                                               ; preds = %29
  call void @abort() #2
  unreachable

35:                                               ; preds = %29
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
