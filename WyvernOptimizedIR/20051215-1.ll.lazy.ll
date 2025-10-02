; ModuleID = './20051215-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051215-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @foo(i32 noundef %0, i32 noundef %1, i32* noundef readonly %2) #0 {
  br label %4

4:                                                ; preds = %18, %3
  %.03 = phi i32 [ 0, %3 ], [ %.14, %18 ]
  %.02 = phi i32 [ 0, %3 ], [ %.1, %18 ]
  %.0 = phi i32 [ 0, %3 ], [ %19, %18 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %.not = icmp eq i32* %2, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %6
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %.0, %8
  br label %10

10:                                               ; preds = %7, %6
  %.1 = phi i32 [ %9, %7 ], [ %.02, %6 ]
  br label %11

11:                                               ; preds = %14, %10
  %.14 = phi i32 [ %.03, %10 ], [ %15, %14 ]
  %.01 = phi i32 [ 0, %10 ], [ %16, %14 ]
  %12 = icmp slt i32 %.01, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.14, %.1
  %16 = add nuw nsw i32 %.01, 1
  br label %11, !llvm.loop !4

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

20:                                               ; preds = %4
  ret i32 %.03
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo(i32 noundef 3, i32 noundef 2, i32* noundef null)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
