; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040409-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040409-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -2147483648
  %5 = xor i32 %4, 4660
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, -2147483648
  %5 = xor i32 %4, 4660
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, 4660
  %5 = xor i32 %4, -2147483648
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, 4660
  %5 = xor i32 %4, -2147483648
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add i32 %3, -2147483648
  %5 = xor i32 %4, 4660
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, 4660
  %5 = add i32 %4, -2147483648
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 %3, -2147483648
  %5 = xor i32 %4, 4660
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = xor i32 %3, 4660
  %5 = sub i32 %4, -2147483648
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test7(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -2147483648, i32* %3, align 4
  store i32 4660, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test7u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -2147483648, i32* %3, align 4
  store i32 4660, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test8(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4660, i32* %3, align 4
  store i32 -2147483648, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test8u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4660, i32* %3, align 4
  store i32 -2147483648, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test9u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -2147483648, i32* %3, align 4
  store i32 4660, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = add i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test10u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4660, i32* %3, align 4
  store i32 -2147483648, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test11u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -2147483648, i32* %3, align 4
  store i32 4660, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sub i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test12u(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 4660, i32* %3, align 4
  store i32 -2147483648, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %5, %6
  %8 = load i32, i32* %4, align 4
  %9 = sub i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @test1(i32 noundef %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #2
  unreachable

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @test2(i32 noundef %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @abort() #2
  unreachable

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @test7(i32 noundef %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @abort() #2
  unreachable

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @test8(i32 noundef %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @abort() #2
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testu(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @test1u(i32 noundef %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #2
  unreachable

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @test2u(i32 noundef %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @abort() #2
  unreachable

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @test3u(i32 noundef %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @abort() #2
  unreachable

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @test4u(i32 noundef %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @abort() #2
  unreachable

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @test5u(i32 noundef %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @abort() #2
  unreachable

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @test6u(i32 noundef %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void @abort() #2
  unreachable

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @test7u(i32 noundef %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void @abort() #2
  unreachable

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @test8u(i32 noundef %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  call void @abort() #2
  unreachable

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @test9u(i32 noundef %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  call void @abort() #2
  unreachable

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @test10u(i32 noundef %59)
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  call void @abort() #2
  unreachable

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @test11u(i32 noundef %65)
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call void @abort() #2
  unreachable

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @test12u(i32 noundef %71)
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  call void @abort() #2
  unreachable

76:                                               ; preds = %70
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test(i32 noundef 0, i32 noundef -2147478988)
  call void @test(i32 noundef 4660, i32 noundef -2147483648)
  call void @test(i32 noundef -2147483648, i32 noundef 4660)
  call void @test(i32 noundef -2147478988, i32 noundef 0)
  call void @test(i32 noundef 2147483647, i32 noundef -4661)
  call void @test(i32 noundef -1, i32 noundef 2147478987)
  call void @testu(i32 noundef 0, i32 noundef -2147478988)
  call void @testu(i32 noundef 4660, i32 noundef -2147483648)
  call void @testu(i32 noundef -2147483648, i32 noundef 4660)
  call void @testu(i32 noundef -2147478988, i32 noundef 0)
  call void @testu(i32 noundef 2147483647, i32 noundef -4661)
  call void @testu(i32 noundef -1, i32 noundef 2147478987)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
