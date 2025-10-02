; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59358.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 16
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %5, align 4
  br label %15, !llvm.loop !4

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %11, %2
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %5

5:                                                ; preds = %70, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 17
  br i1 %7, label %8, label %73

8:                                                ; preds = %5
  %9 = call i32 @foo(i32* noundef %2, i32 noundef 16)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 8
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 %13, 15
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 8
  %18 = mul nsw i32 %17, 2
  %19 = add nsw i32 16, %18
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %12, %8
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp sle i32 %24, 7
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %27, 4
  %29 = mul nsw i32 %28, 4
  %30 = add nsw i32 16, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 24, i32* %4, align 4
  br label %36

35:                                               ; preds = %31
  store i32 16, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @abort() #2
  unreachable

43:                                               ; preds = %38
  %44 = call i32 @foo(i32* noundef %2, i32 noundef 7)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp sge i32 %45, 7
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %4, align 4
  br label %64

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %53, 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 8, %55
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %2, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 12, i32* %4, align 4
  br label %62

61:                                               ; preds = %57
  store i32 8, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @abort() #2
  unreachable

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %5, !llvm.loop !6

73:                                               ; preds = %5
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
!6 = distinct !{!6, !5}
