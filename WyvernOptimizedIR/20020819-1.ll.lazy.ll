; ModuleID = './20020819-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020819-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo() #0 {
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %15, %0
  %.01 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %.0 = phi i32 [ 0, %0 ], [ %.1, %15 ]
  %2 = icmp ult i32 %.01, 10
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %10, %3
  %.02 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %.1 = phi i32 [ %.0, %3 ], [ %.2, %10 ]
  %5 = icmp ult i32 %.02, 10
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = call i32 @foo()
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  %.2 = phi i32 [ 1, %8 ], [ %.1, %6 ]
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

17:                                               ; preds = %1
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %17, %13
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
