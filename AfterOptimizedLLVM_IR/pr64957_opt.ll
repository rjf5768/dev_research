; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64957.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr64957.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, 5
  %5 = or i32 %4, 1
  %6 = xor i32 %5, 5
  %7 = or i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -6
  %5 = and i32 %4, -2
  %6 = xor i32 %5, -6
  %7 = and i32 %6, -2
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 16
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @foo(i32 noundef %7)
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, 1
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @bar(i32 noundef %13)
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, -2
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %6
  call void @abort() #2
  unreachable

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %3, !llvm.loop !4

23:                                               ; preds = %3
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
