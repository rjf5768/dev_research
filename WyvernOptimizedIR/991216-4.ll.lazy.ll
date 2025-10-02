; ModuleID = './991216-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991216-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @bug(i32 noundef 5, i32 noundef 10)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal void @bug(i32 noundef %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %12, %2
  %.0 = phi i32 [ 0, %2 ], [ %.1, %12 ]
  %4 = icmp slt i32 %.0, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %9, %5
  %.01 = phi i32 [ 1, %5 ], [ %11, %9 ]
  %.1 = phi i32 [ %.0, %5 ], [ %10, %9 ]
  %7 = icmp slt i32 %.01, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8
  %10 = add nsw i32 %.1, 1
  %11 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

12:                                               ; preds = %6
  br label %3, !llvm.loop !6

13:                                               ; preds = %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
