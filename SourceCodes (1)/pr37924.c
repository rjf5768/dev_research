; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37924.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37924.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i8 0, align 1
@b = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i8, i8* @a, align 1
  %3 = sext i8 %2 to i32
  %4 = load i32, i32* %1, align 4
  %5 = xor i32 %3, %4
  %6 = lshr i32 %5, 9
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i8, i8* @b, align 1
  %3 = zext i8 %2 to i32
  %4 = load i32, i32* %1, align 4
  %5 = xor i32 %3, %4
  %6 = lshr i32 %5, 9
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 0, i8* @a, align 1
  %2 = call i32 @test1()
  %3 = icmp ne i32 %2, 8388607
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  store i8 64, i8* @a, align 1
  %6 = call i32 @test1()
  %7 = icmp ne i32 %6, 8388607
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  store i8 -128, i8* @a, align 1
  %10 = call i32 @test1()
  %11 = load i8, i8* @a, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br i1 false, label %18, label %19

17:                                               ; preds = %9
  br i1 true, label %18, label %19

18:                                               ; preds = %17, %16
  call void @abort() #2
  unreachable

19:                                               ; preds = %17, %16
  store i8 -1, i8* @a, align 1
  %20 = call i32 @test1()
  %21 = load i8, i8* @a, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = icmp ne i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br i1 false, label %28, label %29

27:                                               ; preds = %19
  br i1 true, label %28, label %29

28:                                               ; preds = %27, %26
  call void @abort() #2
  unreachable

29:                                               ; preds = %27, %26
  store i8 0, i8* @b, align 1
  %30 = call i32 @test2()
  %31 = icmp ne i32 %30, 8388607
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  store i8 64, i8* @b, align 1
  %34 = call i32 @test2()
  %35 = icmp ne i32 %34, 8388607
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  store i8 -128, i8* @b, align 1
  %38 = call i32 @test2()
  %39 = icmp ne i32 %38, 8388607
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  store i8 -1, i8* @b, align 1
  %42 = call i32 @test2()
  %43 = icmp ne i32 %42, 8388607
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
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
