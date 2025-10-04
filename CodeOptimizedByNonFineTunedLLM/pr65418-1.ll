; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65418-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65418-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, -216
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -132
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, -218
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -146
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %6, %1
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store volatile i32 -230, i32* %2, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load volatile i32, i32* %2, align 4
  %5 = icmp slt i32 %4, -120
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = load volatile i32, i32* %2, align 4
  %8 = call i32 @foo(i32 noundef %7)
  %9 = load volatile i32, i32* %2, align 4
  %10 = icmp eq i32 %9, -216
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, i32* %2, align 4
  %13 = icmp eq i32 %12, -132
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %2, align 4
  %16 = icmp eq i32 %15, -218
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load volatile i32, i32* %2, align 4
  %19 = icmp eq i32 %18, -146
  br label %20

20:                                               ; preds = %17, %14, %11, %6
  %21 = phi i1 [ true, %14 ], [ true, %11 ], [ true, %6 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %8, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  call void @abort() #2
  unreachable

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load volatile i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store volatile i32 %28, i32* %2, align 4
  br label %3, !llvm.loop !4

29:                                               ; preds = %3
  ret i32 0
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
