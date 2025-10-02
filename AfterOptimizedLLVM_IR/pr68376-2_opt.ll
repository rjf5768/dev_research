; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68376-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68376-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = xor i32 %8, -1
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = xor i32 %8, -1
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = xor i32 %8, -1
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f7(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f8(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = xor i32 %8, -1
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f1(i32 noundef 5)
  %3 = icmp ne i32 %2, 5
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i32 @f1(i32 noundef -5)
  %6 = icmp ne i32 %5, 4
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i32 @f1(i32 noundef 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %7
  %12 = call i32 @f2(i32 noundef 5)
  %13 = icmp ne i32 %12, -6
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = call i32 @f2(i32 noundef -5)
  %16 = icmp ne i32 %15, -5
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @f2(i32 noundef 0)
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @f3(i32 noundef 5)
  %23 = icmp ne i32 %22, 5
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = call i32 @f3(i32 noundef -5)
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call i32 @f3(i32 noundef 0)
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21
  call void @abort() #2
  unreachable

31:                                               ; preds = %27
  %32 = call i32 @f4(i32 noundef 5)
  %33 = icmp ne i32 %32, -6
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = call i32 @f4(i32 noundef -5)
  %36 = icmp ne i32 %35, -5
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i32 @f4(i32 noundef 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %31
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i32 @f5(i32 noundef 5)
  %43 = icmp ne i32 %42, -6
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = call i32 @f5(i32 noundef -5)
  %46 = icmp ne i32 %45, -5
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = call i32 @f5(i32 noundef 0)
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44, %41
  call void @abort() #2
  unreachable

51:                                               ; preds = %47
  %52 = call i32 @f6(i32 noundef 5)
  %53 = icmp ne i32 %52, 5
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = call i32 @f6(i32 noundef -5)
  %56 = icmp ne i32 %55, 4
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 @f6(i32 noundef 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54, %51
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call i32 @f7(i32 noundef 5)
  %63 = icmp ne i32 %62, -6
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = call i32 @f7(i32 noundef -5)
  %66 = icmp ne i32 %65, -5
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = call i32 @f7(i32 noundef 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %64, %61
  call void @abort() #2
  unreachable

71:                                               ; preds = %67
  %72 = call i32 @f8(i32 noundef 5)
  %73 = icmp ne i32 %72, 5
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = call i32 @f8(i32 noundef -5)
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = call i32 @f8(i32 noundef 0)
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74, %71
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
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
