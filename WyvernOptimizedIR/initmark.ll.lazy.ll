; ModuleID = './initmark.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/initmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ma = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @initmark() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %2 = icmp ult i32 %.0, 19
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %10, %3
  %.01 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %5 = icmp ult i32 %.01, 19
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ma, i64 0, i64 %7, i64 %8
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

15:                                               ; preds = %1
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
