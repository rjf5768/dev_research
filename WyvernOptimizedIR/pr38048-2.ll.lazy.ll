; ModuleID = './pr38048-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38048-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca [2 x [2 x i32]], align 16
  %2 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %1, i64 0, i64 0, i64 0
  store i32 1, i32* %2, align 16
  %3 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %1, i64 0, i64 0, i64 1
  store i32 2, i32* %3, align 4
  %4 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %1, i64 0, i64 1, i64 0
  store i32 4, i32* %4, align 8
  %5 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %1, i64 0, i64 1, i64 1
  store i32 8, i32* %5, align 4
  %6 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %1, i64 0, i64 0
  %7 = call i32 @inv_J([2 x i32]* noundef nonnull %6)
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @inv_J([2 x i32]* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.01 = phi i32 [ 0, %1 ], [ %14, %5 ]
  %.0 = phi i32 [ 0, %1 ], [ %13, %5 ]
  %3 = icmp ult i32 %.01, 2
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = add nsw i32 %.0, %12
  %14 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

15:                                               ; preds = %2
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo()
  %.not = icmp eq i32 %1, 15
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
