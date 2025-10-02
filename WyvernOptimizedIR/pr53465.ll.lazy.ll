; ModuleID = './pr53465.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53465.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal constant [2 x i32] [i32 1, i32 2], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %15, %2
  %.02 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %.not = phi i1 [ true, %2 ], [ false, %15 ]
  %.0 = phi i32 [ undef, %2 ], [ %8, %15 ]
  %4 = icmp slt i32 %.02, %1
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = zext i32 %.02 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %17

11:                                               ; preds = %5
  br i1 %.not, label %14, label %12

12:                                               ; preds = %11
  %.not3 = icmp sgt i32 %8, %.0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %12
  call void @abort() #2
  unreachable

14:                                               ; preds = %12, %11
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.02, 1
  br label %3, !llvm.loop !4

.loopexit:                                        ; preds = %3
  br label %17

17:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i32* noundef getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), i32 noundef 2)
  ret i32 0
}

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
