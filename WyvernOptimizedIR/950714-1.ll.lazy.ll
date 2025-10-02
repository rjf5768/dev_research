; ModuleID = './950714-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950714-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [10 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %.01 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %2 = icmp ult i32 %.01, 10
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi i32* [ getelementptr inbounds ([10 x i32], [10 x i32]* @array, i64 0, i64 0), %3 ], [ %11, %10 ]
  %.not4 = icmp eq i32* %.0, getelementptr inbounds ([10 x i32], [10 x i32]* @array, i64 0, i64 9)
  br i1 %.not4, label %12, label %5

5:                                                ; preds = %4
  %6 = load i32, i32* %.0, align 4
  %7 = icmp eq i32 %6, %.01
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %16

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds i32, i32* %.0, i64 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %8
  %.not = icmp eq i32 %.01, 1
  br i1 %.not, label %18, label %17

17:                                               ; preds = %16
  call void @abort() #2
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %16
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %18, %17
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
