; ModuleID = './20010221-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010221-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = dso_local global i32 2, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %.01 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %.0 = phi i32 [ 45, %0 ], [ %.1, %11 ]
  %2 = load i32, i32* @n, align 4
  %3 = icmp slt i32 %.01, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %.not2 = icmp eq i32 %.01, 0
  br i1 %.not2, label %10, label %5

5:                                                ; preds = %4
  br i1 true, label %6, label %7

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %.01, %6 ], [ 0, %7 ]
  br label %10

10:                                               ; preds = %8, %4
  %.1 = phi i32 [ %9, %8 ], [ %.0, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !4

13:                                               ; preds = %1
  %.not = icmp eq i32 %.0, 1
  br i1 %.not, label %15, label %14

14:                                               ; preds = %13
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14
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
