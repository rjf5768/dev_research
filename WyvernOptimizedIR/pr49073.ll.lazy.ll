; ModuleID = './pr49073.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %.01 = phi i32 [ 1, %0 ], [ %13, %11 ]
  %.0 = phi i1 [ false, %0 ], [ %12, %11 ]
  %2 = zext i32 %.01 to i64
  %3 = getelementptr inbounds [7 x i32], [7 x i32]* @a, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  br i1 %.0, label %5, label %10

5:                                                ; preds = %1
  %6 = icmp eq i32 %4, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = load i32, i32* @c, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @c, align 4
  br label %15

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %10
  %12 = icmp eq i32 %4, 3
  %13 = add nuw nsw i32 %.01, 1
  %14 = icmp slt i32 %4, 7
  br i1 %14, label %1, label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %11
  br label %15

15:                                               ; preds = %.loopexit, %7
  %16 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %16, 1
  br i1 %.not, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #2
  unreachable

18:                                               ; preds = %15
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
