; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/switch-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/switch-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 4, label %5
    i32 6, label %5
    i32 9, label %5
    i32 11, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1
  store i32 30, i32* %2, align 4
  br label %7

6:                                                ; preds = %1
  store i32 31, i32* %2, align 4
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i32, i32* %2, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  br label %4

4:                                                ; preds = %50, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 66
  br i1 %6, label %7, label %53

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @foo(i32 noundef %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 30
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #2
  unreachable

16:                                               ; preds = %12
  br label %49

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 30
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #2
  unreachable

24:                                               ; preds = %20
  br label %48

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 30
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  br label %47

33:                                               ; preds = %25
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 11
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 30
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @abort() #2
  unreachable

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 31
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %24
  br label %49

49:                                               ; preds = %48, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %4, !llvm.loop !4

53:                                               ; preds = %4
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
