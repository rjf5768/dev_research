; ModuleID = './pr78856.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78856.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
@f = dso_local global [3 x i32] zeroinitializer, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0
  %2 = load i32, i32* @d, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %4, %3
  br label %4

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %37, %5
  %.03 = phi i32 [ 0, %5 ], [ %.1, %37 ]
  %.01 = phi i32 [ 0, %5 ], [ %38, %37 ]
  %7 = icmp ult i32 %.01, 21
  br i1 %7, label %8, label %39

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %14, %8
  %.02 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %10 = icmp ult i32 %.02, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = zext i32 %.02 to i64
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* @f, i64 0, i64 %12
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %.02, 1
  br label %9, !llvm.loop !4

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %34, %16
  %.1 = phi i32 [ %.03, %16 ], [ 1, %34 ]
  %.0 = phi i32 [ 1, %16 ], [ %35, %34 ]
  %18 = icmp ult i32 %.0, 10
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %.not4 = icmp eq i32 %.1, 0
  br i1 %.not4, label %28, label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @b, align 4
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20
  br label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @c, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @d, align 4
  %.not5 = icmp eq i32 %.01, 0
  br i1 %.not5, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @e, align 4
  store i32 %32, i32* @a, align 4
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.0, 1
  br label %17, !llvm.loop !6

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.01, 9
  br label %6, !llvm.loop !7

39:                                               ; preds = %6
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
