; ModuleID = './pr49712.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49712.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @bar() #1 {
  br label %1

1:                                                ; preds = %15, %0
  %2 = load i32, i32* @d, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %12, %4
  %.0 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %6 = icmp ult i32 %.0, 4
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %10, %7
  %.not = phi i1 [ false, %10 ], [ true, %7 ]
  %storemerge = phi i32 [ 1, %10 ], [ 0, %7 ]
  store i32 %storemerge, i32* @e, align 4
  br i1 %.not, label %11, label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9
  br label %8, !llvm.loop !4

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !6

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  store i32 1, i32* @d, align 4
  br label %1, !llvm.loop !7

16:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %12, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %12 ]
  store i32 %storemerge, i32* @b, align 4
  %2 = icmp slt i32 %storemerge, 2
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %6, %3
  %5 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %4
  %7 = load i32, i32* @b, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %8
  store i32 0, i32* %9, align 4
  %10 = call i32 @bar()
  br label %4, !llvm.loop !8

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  %13 = load i32, i32* @b, align 4
  %14 = add nsw i32 %13, 1
  br label %1, !llvm.loop !9

15:                                               ; preds = %1
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
