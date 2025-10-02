; ModuleID = './20030920-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20030920-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\7F\FF\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %.01 = phi i32 [ 0, %0 ], [ %.1, %9 ]
  %.0 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %0 ], [ %10, %9 ]
  %2 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %11, label %3

3:                                                ; preds = %1
  %4 = load i8, i8* %.0, align 1
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %.01, 1
  br label %8

8:                                                ; preds = %6, %3
  %.1 = phi i32 [ %.01, %3 ], [ %7, %6 ]
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
  %.not2 = icmp eq i32 %.01, 1
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %11
  call void @abort() #2
  unreachable

13:                                               ; preds = %11
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
