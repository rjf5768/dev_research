; ModuleID = './pr37102.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37102.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 5
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  call void @abort() #2
  unreachable

3:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %.01 = phi i32 [ 1, %0 ], [ %9, %8 ]
  %2 = icmp ult i32 %.01, 5
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load i32, i32* @c, align 4
  %.not2 = icmp eq i32 %4, 0
  br i1 %.not2, label %7, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* @b, align 4
  store i32 %6, i32* @a, align 4
  br label %7

7:                                                ; preds = %5, %3
  br label %8

8:                                                ; preds = %7
  %9 = add i32 %.01, 1
  br label %1, !llvm.loop !4

10:                                               ; preds = %1
  %11 = load i32, i32* @b, align 4
  store i32 %11, i32* @a, align 4
  %12 = shl i32 %11, 1
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %16, label %13

13:                                               ; preds = %10
  %14 = shl i32 %11, 2
  %15 = or i32 %14, 1
  br label %16

16:                                               ; preds = %13, %10
  %.0 = phi i32 [ %15, %13 ], [ %12, %10 ]
  call void @foo(i32 noundef %.0)
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
