; ModuleID = './pr43783.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43783.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UINT192 = type { [3 x i64] }

@bid_Kx192 = dso_local global [32 x %struct.UINT192] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %.01 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %2 = icmp ult i32 %.01, 32
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = icmp eq i32 %.01, 1
  %5 = zext i1 %4 to i64
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds [32 x %struct.UINT192], [32 x %struct.UINT192]* @bid_Kx192, i64 0, i64 %6, i32 0, i64 1
  store i64 %5, i64* %7, align 8
  br label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %14, %10
  %.1 = phi i32 [ 0, %10 ], [ %17, %14 ]
  %.0 = phi i64 [ 0, %10 ], [ %16, %14 ]
  %12 = icmp ult i32 %.1, 32
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
  %15 = load i64, i64* getelementptr inbounds ([32 x %struct.UINT192], [32 x %struct.UINT192]* @bid_Kx192, i64 0, i64 1, i32 0, i64 1), align 16
  %16 = add i64 %.0, %15
  %17 = add nuw nsw i32 %.1, 1
  br label %11, !llvm.loop !6

18:                                               ; preds = %11
  %.not = icmp eq i64 %.0, 32
  br i1 %.not, label %20, label %19

19:                                               ; preds = %18
  call void @abort() #2
  unreachable

20:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
