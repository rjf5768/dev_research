; ModuleID = './pr38048-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38048-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca [2 x [1 x i32]], align 4
  %2 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %1, i64 0, i64 0, i64 0
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %1, i64 0, i64 1, i64 0
  store i32 2, i32* %3, align 4
  br label %4

4:                                                ; preds = %7, %0
  %.01 = phi i32 [ 0, %0 ], [ %11, %7 ]
  %.0 = phi i32 [ 0, %0 ], [ %12, %7 ]
  %5 = icmp ult i32 %.0, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %1, i64 0, i64 %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %.01, %10
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @foo()
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
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
