; ModuleID = './20000731-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000731-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.01 = phi i32 [ 1, %0 ], [ %7, %6 ]
  %.0 = phi i32 [ 0, %0 ], [ %8, %6 ]
  %.not = icmp eq i32 %.01, 1024
  br i1 %.not, label %2, label %4

2:                                                ; preds = %1
  %3 = icmp eq i32 %.0, 0
  br label %4

4:                                                ; preds = %2, %1
  %5 = phi i1 [ true, %1 ], [ %3, %2 ]
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = shl nsw i32 %.01, 1
  %8 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %4
  %.not2 = icmp eq i32 %.0, 10
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %9
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %11, %10
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
