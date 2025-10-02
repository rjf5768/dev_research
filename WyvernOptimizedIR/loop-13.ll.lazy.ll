; ModuleID = './loop-13.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @scale(i64* nocapture noundef readonly %0, i64* nocapture noundef %1, i32 noundef %2) #0 {
  %4 = load i64, i64* %0, align 8
  %.not = icmp eq i64 %4, 1
  br i1 %.not, label %28, label %5

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %24, %5
  %.01 = phi i32 [ 0, %5 ], [ %25, %24 ]
  %.0 = phi i32 [ 0, %5 ], [ %26, %24 ]
  %7 = icmp slt i32 %.01, %2
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = load i64, i64* %0, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i64, i64* %1, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 %9, %12
  %14 = or i32 %.0, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %1, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 %9, %17
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds i64, i64* %1, i64 %19
  store i64 %13, i64* %20, align 8
  %21 = or i32 %.0, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %1, i64 %22
  store i64 %18, i64* %23, align 8
  br label %24

24:                                               ; preds = %8
  %25 = add nuw nsw i32 %.01, 1
  %26 = add nuw nsw i32 %.0, 2
  br label %6, !llvm.loop !4

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [10 x i64], align 16
  %2 = alloca i64, align 8
  store i64 2, i64* %2, align 8
  br label %3

3:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %4 = icmp ult i32 %.0, 10
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [10 x i64], [10 x i64]* %1, i64 0, i64 %7
  store i64 %6, i64* %8, align 8
  br label %9

9:                                                ; preds = %5
  %10 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !6

11:                                               ; preds = %3
  %12 = getelementptr inbounds [10 x i64], [10 x i64]* %1, i64 0, i64 0
  call void @scale(i64* noundef nonnull %2, i64* noundef nonnull %12, i32 noundef 5)
  %13 = getelementptr inbounds [10 x i64], [10 x i64]* %1, i64 0, i64 9
  %14 = load i64, i64* %13, align 8
  %.not = icmp eq i64 %14, 18
  br i1 %.not, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #3
  unreachable

16:                                               ; preds = %11
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
