; ModuleID = './pr68376-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68376-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %2 = load i32, i32* @a, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %18, %4
  %6 = load i32, i32* @b, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i8, i8* @d, align 1
  %10 = xor i8 %9, -1
  %11 = icmp slt i8 %9, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i8, i8* @d, align 1
  br label %14

14:                                               ; preds = %12, %8
  %.0 = phi i8 [ %13, %12 ], [ %10, %8 ]
  store i8 %.0, i8* @d, align 1
  %15 = load i32, i32* @c, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %16, label %17

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @b, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @b, align 4
  br label %5, !llvm.loop !4

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @a, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @a, align 4
  br label %1, !llvm.loop !6

25:                                               ; preds = %1
  %26 = load i8, i8* @d, align 1
  %.not = icmp eq i8 %26, 0
  br i1 %.not, label %28, label %27

27:                                               ; preds = %25
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %27, %16
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
