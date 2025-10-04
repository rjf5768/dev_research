; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/981019-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/981019-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f3.x = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @f1()
  br label %13

13:                                               ; preds = %12, %9
  br label %15

14:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %31, %15
  %17 = call i32 @f3()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = call i32 @f2()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  call void @f1()
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %6, align 4
  %27 = call i32 @f3()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @f1()
  br label %30

30:                                               ; preds = %29, %25
  call void @f1()
  br label %32

31:                                               ; preds = %22, %19
  br label %16, !llvm.loop !4

32:                                               ; preds = %30, %16
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @f1()
  br label %36

36:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
  %1 = load i32, i32* @f3.x, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  store i32 %4, i32* @f3.x, align 4
  %5 = load i32, i32* @f3.x, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @ff(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
