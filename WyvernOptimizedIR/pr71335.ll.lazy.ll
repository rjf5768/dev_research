; ModuleID = './pr71335.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71335.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i1 [ true, %14 ], [ false, %0 ]
  %3 = load i32, i32* @a, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ true, %1 ], [ %2, %5 ]
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %12, %8
  %.1 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %10 = icmp ult i32 %.1, 9
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.1, 1
  br label %9, !llvm.loop !4

14:                                               ; preds = %9
  br label %1, !llvm.loop !6

15:                                               ; preds = %6
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
