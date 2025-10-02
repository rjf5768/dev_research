; ModuleID = './20000819-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000819-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [2 x i32] [i32 2, i32 0], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32* noundef readonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = sub nsw i64 0, %3
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  br label %6

6:                                                ; preds = %12, %2
  %.0 = phi i32* [ %5, %2 ], [ %13, %12 ]
  %.not = icmp ugt i32* %.0, %0
  br i1 %.not, label %14, label %7

7:                                                ; preds = %6
  %8 = load i32, i32* %.0, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @exit(i32 noundef 0) #3
  unreachable

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds i32, i32* %.0, i64 1
  br label %6, !llvm.loop !4

14:                                               ; preds = %6
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @foo(i32* noundef getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 1), i32 noundef 1)
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
