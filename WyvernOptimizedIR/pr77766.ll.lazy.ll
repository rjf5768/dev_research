; ModuleID = './pr77766.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr77766.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i16 5, align 2
@f = dso_local global i32 4, align 4
@g = dso_local global i32 0, align 4
@c = dso_local global [1 x i8] zeroinitializer, align 1
@b = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4
@h = dso_local global i16 0, align 2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %32, %0
  %2 = load i32, i32* @f, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %35, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %28, %3
  %storemerge = phi i32 [ %30, %28 ], [ 0, %3 ]
  store i32 %storemerge, i32* @g, align 4
  %5 = icmp slt i32 %storemerge, 33
  br i1 %5, label %6, label %31

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %21, %6
  %.0 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %8 = icmp ult i32 %.0, 3
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %19, %9
  %11 = load i16, i16* @d, align 2
  %12 = icmp slt i16 %11, 1
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %10
  %14 = load i16, i16* @b, align 2
  %15 = sext i16 %14 to i64
  %16 = getelementptr inbounds [1 x i8], [1 x i8]* @c, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %.not3 = icmp eq i8 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %10, !llvm.loop !4

.loopexit:                                        ; preds = %10
  br label %20

20:                                               ; preds = %.loopexit, %18
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !6

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* @j, align 4
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %27, label %26

26:                                               ; preds = %24
  br label %31

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @g, align 4
  %30 = add nsw i32 %29, 1
  br label %4, !llvm.loop !7

31:                                               ; preds = %26, %4
  br label %32

32:                                               ; preds = %31
  %33 = load i8, i8* @a, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* @f, align 4
  br label %1, !llvm.loop !8

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %41, %35
  store i32 0, i32* @e, align 4
  br i1 false, label %37, label %42

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  br i1 undef, label %40, label %39

39:                                               ; preds = %38
  br label %24

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  br label %36, !llvm.loop !9

42:                                               ; preds = %36
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
