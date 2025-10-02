; ModuleID = './20100416-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100416-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64, i32 }

@tests = dso_local global [5 x %struct.test] [%struct.test { i64 -1152921504606846976, i32 -1 }, %struct.test { i64 -1152921504606846977, i32 1 }, %struct.test { i64 -1152921504606846975, i32 -1 }, %struct.test { i64 0, i32 -1 }, %struct.test { i64 -9223372036854775808, i32 1 }], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @movegt(i32 noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %11, %3
  %.01 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %.0 = phi i32 [ 0, %3 ], [ %.1, %11 ]
  %5 = icmp slt i32 %.01, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = icmp sgt i64 %2, -1152921504606846977
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8
  %.1 = phi i32 [ %0, %8 ], [ %1, %9 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %13, %0
  %.0 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %2 = icmp ult i32 %.0, 5
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [5 x %struct.test], [5 x %struct.test]* @tests, i64 0, i64 %4, i32 0
  %6 = load i64, i64* %5, align 16
  %7 = call i32 @movegt(i32 noundef -1, i32 noundef 1, i64 noundef %6)
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [5 x %struct.test], [5 x %struct.test]* @tests, i64 0, i64 %8, i32 1
  %10 = load i32, i32* %9, align 8
  %.not = icmp eq i32 %7, %10
  br i1 %.not, label %12, label %11

11:                                               ; preds = %3
  call void @abort() #3
  unreachable

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

15:                                               ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
