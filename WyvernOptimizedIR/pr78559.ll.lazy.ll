; ModuleID = './pr78559.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78559.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 20, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @fn2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  %.not = icmp ugt i32 %1, 2
  br i1 %.not, label %6, label %5

5:                                                ; preds = %4, %2
  br label %8

6:                                                ; preds = %4
  %7 = shl i32 %0, %1
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ %0, %5 ], [ %7, %6 ]
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %17, %0
  %2 = load i32, i32* @g, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %6, %3
  %.02 = phi i32 [ -3, %3 ], [ %10, %6 ]
  %.01 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %.not5 = icmp eq i32 %.02, 0
  br i1 %.not5, label %11, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  %7 = load i32, i32* @g, align 4
  %8 = call signext i16 @fn2(i32 noundef 1, i32 noundef %7)
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %.02, 1
  br label %4, !llvm.loop !4

11:                                               ; preds = %4
  br label %22

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %19, %12
  %.0 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp eq i32 %.0, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load i32, i32* @d, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %15
  br label %1

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.0, 2
  br label %13, !llvm.loop !6

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %11
  %.1 = phi i32 [ %.01, %11 ], [ 0, %21 ]
  %.not3 = icmp eq i32 %.1, 1
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #3
  unreachable

24:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
