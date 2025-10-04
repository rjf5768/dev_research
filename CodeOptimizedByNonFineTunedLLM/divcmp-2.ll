; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp eq i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, 10
  %5 = icmp eq i32 %4, -2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp eq i32 %4, 2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sdiv i32 %3, -10
  %5 = icmp eq i32 %4, -2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test1(i32 noundef 19)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @test1(i32 noundef 20)
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @test1(i32 noundef 29)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @test1(i32 noundef 30)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i32 @test2(i32 noundef -10)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @test2(i32 noundef -9)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i32 @test2(i32 noundef 9)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i32 @test2(i32 noundef 10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call i32 @test3(i32 noundef -30)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call i32 @test3(i32 noundef -29)
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i32 @test3(i32 noundef -20)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call i32 @test3(i32 noundef -19)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call i32 @test4(i32 noundef -30)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call i32 @test4(i32 noundef -29)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call i32 @test4(i32 noundef -20)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call i32 @test4(i32 noundef -19)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61
  %66 = call i32 @test5(i32 noundef -10)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = call i32 @test5(i32 noundef -9)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call i32 @test5(i32 noundef 9)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call i32 @test5(i32 noundef 10)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
  %82 = call i32 @test6(i32 noundef 19)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  %86 = call i32 @test6(i32 noundef 20)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @abort() #2
  unreachable

89:                                               ; preds = %85
  %90 = call i32 @test6(i32 noundef 29)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89
  %94 = call i32 @test6(i32 noundef 30)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @abort() #2
  unreachable

97:                                               ; preds = %93
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
