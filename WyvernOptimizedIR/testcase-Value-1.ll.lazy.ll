; ModuleID = './testcase-Value-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/testcase-Value-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 1, align 2
@d = dso_local global i16 5, align 2
@h = dso_local global i16 1, align 2
@e = dso_local global i32 1, align 4
@f = dso_local global i32 20, align 4
@g = dso_local global i32 1, align 4
@j = dso_local global i32 1, align 4
@c = dso_local global [6 x i8] zeroinitializer, align 1
@a = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %24, %0
  %2 = load i32, i32* @f, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %27, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %20, %3
  %storemerge4 = phi i32 [ %22, %20 ], [ 5, %3 ]
  store i32 %storemerge4, i32* @g, align 4
  %5 = icmp slt i32 %storemerge4, 33
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %14, %6
  br i1 false, label %8, label %15

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %12, %8
  br i1 undef, label %10, label %.loopexit

10:                                               ; preds = %9
  br i1 undef, label %12, label %11

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  br label %9, !llvm.loop !4

.loopexit:                                        ; preds = %9
  br label %13

13:                                               ; preds = %.loopexit, %11
  br label %14

14:                                               ; preds = %13
  br label %7, !llvm.loop !6

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* @j, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %16
  br label %23

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @g, align 4
  %22 = add nsw i32 %21, 1
  br label %4, !llvm.loop !7

23:                                               ; preds = %18, %4
  br label %24

24:                                               ; preds = %23
  %25 = load i8, i8* @a, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* @f, align 4
  br label %1, !llvm.loop !8

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %36, %27
  %.not1 = phi i1 [ false, %36 ], [ true, %27 ]
  %storemerge = phi i32 [ 900, %36 ], [ 0, %27 ]
  store i32 %storemerge, i32* @e, align 4
  br i1 %.not1, label %37, label %29

29:                                               ; preds = %28
  %30 = load i16, i16* @d, align 2
  %31 = add i16 %30, 1
  store i16 %31, i16* @d, align 2
  br label %32

32:                                               ; preds = %29
  %33 = load i16, i16* @h, align 2
  %.not2 = icmp eq i16 %33, 0
  br i1 %.not2, label %35, label %34

34:                                               ; preds = %32
  br label %16

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  br label %28, !llvm.loop !9

37:                                               ; preds = %28
  %38 = load i32, i32* @e, align 4
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %38) #2
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
