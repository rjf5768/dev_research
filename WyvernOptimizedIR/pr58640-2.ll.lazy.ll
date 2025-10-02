; ModuleID = './pr58640-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58640-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [20 x i32] zeroinitializer, align 16
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @fn1() #0 {
  store i32 1, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @a, i64 0, i64 12), align 16
  br label %1

1:                                                ; preds = %39, %0
  %.04 = phi i32 [ 0, %0 ], [ %.1, %39 ]
  %.02 = phi i32 [ 0, %0 ], [ %40, %39 ]
  %2 = icmp ult i32 %.02, 3
  br i1 %2, label %3, label %41

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %36, %3
  %.1 = phi i32 [ %.04, %3 ], [ %.3, %36 ]
  %.01 = phi i32 [ 0, %3 ], [ %37, %36 ]
  %5 = icmp ult i32 %.01, 2
  br i1 %5, label %6, label %38

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %19, %6
  %.2 = phi i32 [ %.1, %6 ], [ %13, %19 ]
  %.03 = phi i32 [ 0, %6 ], [ %20, %19 ]
  %8 = icmp ult i32 %.03, 2
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %7
  %10 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @a, i64 0, i64 12), align 16
  %11 = icmp sgt i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = xor i32 %.2, %12
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %9
  br label %42

15:                                               ; preds = %9
  %16 = load i32, i32* @b, align 4
  %.not9 = icmp eq i32 %16, 0
  br i1 %.not9, label %18, label %17

17:                                               ; preds = %15
  br label %21

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !4

.loopexit:                                        ; preds = %7
  br label %21

21:                                               ; preds = %.loopexit, %17
  %.3 = phi i32 [ %13, %17 ], [ %.2, %.loopexit ]
  br label %22

22:                                               ; preds = %32, %21
  %storemerge = phi i32 [ 0, %21 ], [ %34, %32 ]
  store i32 %storemerge, i32* @c, align 4
  %23 = icmp slt i32 %storemerge, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = mul nsw i32 %.02, 3
  %26 = add nuw nsw i32 %25, 9
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* @a, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* @a, i64 0, i64 %30
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @c, align 4
  %34 = add nsw i32 %33, 1
  br label %22, !llvm.loop !6

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !7

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !8

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %14
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @fn1()
  %2 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @a, i64 0, i64 0), align 16
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
