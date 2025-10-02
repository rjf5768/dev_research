; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49712.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49712.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* @d, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %16, %5
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  store i32 0, i32* @e, align 4
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32, i32* @e, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13
  store i32 1, i32* @e, align 4
  br label %10, !llvm.loop !4

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %6, !llvm.loop !6

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %19
  store i32 1, i32* @d, align 4
  br label %2, !llvm.loop !7

21:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @b, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = load i32, i32* @b, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %9, %5
  %7 = load i32, i32* @c, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* @b, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  %13 = call i32 @bar()
  call void @foo(i32 noundef 0, i32 noundef %13)
  br label %6, !llvm.loop !8

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* @b, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @b, align 4
  br label %2, !llvm.loop !9

18:                                               ; preds = %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
