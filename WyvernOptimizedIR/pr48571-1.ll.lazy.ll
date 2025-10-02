; ModuleID = './pr48571-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48571-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global [624 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @bar() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %.0 = phi i32 [ 1, %0 ], [ %14, %13 ]
  %2 = icmp ult i32 %.0, 624
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = add nsw i64 %5, -4
  %7 = getelementptr i8, i8* bitcast ([624 x i32]* @c to i8*), i64 %6
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 1
  %11 = zext i32 %.0 to i64
  %12 = getelementptr [624 x i32], [624 x i32]* @c, i64 0, i64 %11
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %3
  %14 = add i32 %.0, 1
  br label %1, !llvm.loop !4

15:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %6, %0
  %.01 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.01, 624
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.01 to i64
  %5 = getelementptr inbounds [624 x i32], [624 x i32]* @c, i64 0, i64 %4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add i32 %.01, 1
  br label %1, !llvm.loop !6

8:                                                ; preds = %1
  call void @bar()
  br label %9

9:                                                ; preds = %17, %8
  %.1 = phi i32 [ 0, %8 ], [ %19, %17 ]
  %.0 = phi i32 [ 1, %8 ], [ %18, %17 ]
  %10 = icmp ult i32 %.1, 624
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = zext i32 %.1 to i64
  %13 = getelementptr inbounds [624 x i32], [624 x i32]* @c, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %.not = icmp eq i32 %14, %.0
  br i1 %.not, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #3
  unreachable

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = shl i32 %.0, 1
  %19 = add i32 %.1, 1
  br label %9, !llvm.loop !7

20:                                               ; preds = %9
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
